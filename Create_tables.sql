USE TUBES_DW;
GO

-- TABLE
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    year INT,
    quarter INT
);
CREATE TABLE dim_subscription (
    subscription_id INT PRIMARY KEY,
    plan_name VARCHAR(100),
    features_included TEXT
);
CREATE TABLE dim_user (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    height FLOAT,
    weight FLOAT
);
CREATE TABLE dim_workout (
    workout_id INT PRIMARY KEY,
    workout_type VARCHAR(100),
    intensity_level VARCHAR(50),
    target_muscle VARCHAR(100)
);
CREATE TABLE fact_fitness_activity (
    activity_id INT PRIMARY KEY,
    user_id INT,
    workout_id INT,
    subscription_id INT,
    date_id INT,
    duration_minutes FLOAT,
    calories_burned FLOAT,
    is_subscribed BIT,
    FOREIGN KEY (user_id) REFERENCES dim_user(user_id),
    FOREIGN KEY (workout_id) REFERENCES dim_workout(workout_id),
    FOREIGN KEY (subscription_id) REFERENCES dim_subscription(subscription_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);
 
-- INDEX
CREATE INDEX idx_dim_date_full_date ON dim_date(full_date);
CREATE INDEX idx_fact_date_id ON fact_fitness_activity(date_id);
CREATE INDEX idx_fact_subscription_id ON fact_fitness_activity(subscription_id);
CREATE INDEX idx_fact_user_id ON fact_fitness_activity(user_id);
CREATE INDEX idx_fact_workout_id ON fact_fitness_activity(workout_id);