INSERT INTO dim_user (user_id, name, age, gender, height, weight) VALUES
(1, 'Alice', 28, 'Female', 165.5, 60.0),
(2, 'Bob', 34, 'Male', 175.0, 75.5),
(3, 'Charlie', 22, 'Male', 168.2, 68.0),
(4, 'Diana', 30, 'Female', 160.0, 58.0),
(5, 'Edward', 40, 'Male', 180.0, 85.0),
(6, 'Fiona', 27, 'Female', 158.0, 52.0),
(7, 'George', 36, 'Male', 172.0, 78.0),
(8, 'Hannah', 29, 'Female', 162.0, 55.0),
(9, 'Ian', 25, 'Male', 170.0, 70.0),
(10, 'Julia', 32, 'Female', 167.0, 63.0),
(11, 'Kevin', 33, 'Male', 176.0, 76.0),
(12, 'Laura', 26, 'Female', 163.0, 57.0),
(13, 'Mark', 31, 'Male', 174.0, 72.0),
(14, 'Nina', 24, 'Female', 159.0, 54.0),
(15, 'Oscar', 29, 'Male', 178.0, 80.0),
(16, 'Paula', 35, 'Female', 161.0, 59.0),
(17, 'Quinn', 23, 'Male', 169.0, 66.0),
(18, 'Rachel', 38, 'Female', 164.0, 62.0),
(19, 'Steve', 37, 'Male', 181.0, 83.0),
(20, 'Tina', 28, 'Female', 166.0, 61.0);



INSERT INTO dim_workout (workout_id, workout_type, intensity_level, target_muscle) VALUES
(1, 'Running', 'High', 'Legs'),
(2, 'Yoga', 'Low', 'Full Body'),
(3, 'Weightlifting', 'Medium', 'Upper Body'),
(4, 'Cycling', 'High', 'Legs'),
(5, 'Pilates', 'Medium', 'Core'),
(6, 'Swimming', 'High', 'Full Body'),
(7, 'HIIT', 'High', 'Full Body'),
(8, 'Zumba', 'Medium', 'Lower Body'),
(9, 'Boxing', 'High', 'Upper Body'),
(10, 'Rowing', 'Medium', 'Back'),
(11, 'CrossFit', 'High', 'Full Body'),
(12, 'Jump Rope', 'High', 'Legs'),
(13, 'Climbing', 'High', 'Upper Body'),
(14, 'Dance', 'Medium', 'Core'),
(15, 'Stretching', 'Low', 'Full Body'),
(16, 'Bodyweight', 'Medium', 'All'),
(17, 'Barre', 'Low', 'Legs'),
(18, 'Aerobics', 'Medium', 'Full Body'),
(19, 'Core Blast', 'High', 'Core'),
(20, 'Treadmill', 'High', 'Legs');


INSERT INTO dim_subscription (subscription_id, plan_name, features_included) VALUES
(1, 'Basic', 'Access to gym and basic workouts'),
(2, 'Premium', 'All workouts + personal coach + diet plan'),
(3, 'Free Trial', 'Limited workouts for 7 days'),
(4, 'Family', 'Multiple users + basic features'),
(5, 'Student', 'Discounted rate for students'),
(6, 'Gold', 'Advanced workouts + monthly check-ins'),
(7, 'Platinum', 'Gold + 24/7 support'),
(8, 'Annual Basic', '12-month plan with discount'),
(9, 'Annual Premium', 'All features + 1 month free'),
(10, 'Corporate', 'For teams of 10+ users'),
(11, 'Weekend Plan', 'Access only on weekends'),
(12, 'Morning Plan', 'Valid 5-10am daily'),
(13, 'Evening Plan', 'Valid 5-10pm daily'),
(14, 'Fitness Pro', 'Unlimited + fitness gear'),
(15, 'Couple Plan', '2 users linked under 1 plan'),
(16, 'Gym Only', 'No digital classes included'),
(17, 'Digital Only', 'App access only'),
(18, 'Premium Trial', 'Premium for 14 days'),
(19, 'VIP Plan', 'Private trainer + nutritionist'),
(20, 'Adventure', 'Includes outdoor events');


INSERT INTO dim_date (date_id, full_date, day, month, year, quarter) VALUES
(1, '2025-05-01', 1, 5, 2025, 2),
(2, '2025-05-02', 2, 5, 2025, 2),
(3, '2025-05-03', 3, 5, 2025, 2),
(4, '2025-05-04', 4, 5, 2025, 2),
(5, '2025-05-05', 5, 5, 2025, 2),
(6, '2025-05-06', 6, 5, 2025, 2),
(7, '2025-05-07', 7, 5, 2025, 2),
(8, '2025-05-08', 8, 5, 2025, 2),
(9, '2025-05-09', 9, 5, 2025, 2),
(10, '2025-05-10', 10, 5, 2025, 2),
(11, '2025-05-11', 11, 5, 2025, 2),
(12, '2025-05-12', 12, 5, 2025, 2),
(13, '2025-05-13', 13, 5, 2025, 2),
(14, '2025-05-14', 14, 5, 2025, 2),
(15, '2025-05-15', 15, 5, 2025, 2),
(16, '2025-05-16', 16, 5, 2025, 2),
(17, '2025-05-17', 17, 5, 2025, 2),
(18, '2025-05-18', 18, 5, 2025, 2),
(19, '2025-05-19', 19, 5, 2025, 2),
(20, '2025-05-20', 20, 5, 2025, 2);


INSERT INTO fact_fitness_activity (
    activity_id, user_id, workout_id, subscription_id, date_id,
    duration_minutes, calories_burned, is_subscribed
) VALUES
(1, 1, 1, 2, 1, 45.0, 400.0, 1),
(2, 2, 3, 1, 2, 60.0, 500.0, 1),
(3, 3, 2, 3, 3, 30.0, 150.0, 0),
(4, 4, 4, 4, 4, 55.0, 410.0, 1),
(5, 5, 5, 5, 5, 40.0, 370.0, 1),
(6, 6, 6, 6, 6, 50.0, 430.0, 1),
(7, 7, 7, 7, 7, 65.0, 600.0, 1),
(8, 8, 8, 8, 8, 35.0, 300.0, 1),
(9, 9, 9, 9, 9, 25.0, 240.0, 1),
(10, 10, 10, 10, 10, 70.0, 620.0, 1),
(11, 11, 11, 11, 11, 48.0, 410.0, 1),
(12, 12, 12, 12, 12, 43.0, 390.0, 1),
(13, 13, 13, 13, 13, 39.0, 380.0, 1),
(14, 14, 14, 14, 14, 32.0, 320.0, 1),
(15, 15, 15, 15, 15, 38.0, 360.0, 1),
(16, 16, 16, 16, 16, 46.0, 400.0, 1),
(17, 17, 17, 17, 17, 29.0, 260.0, 1),
(18, 18, 18, 18, 18, 52.0, 470.0, 1),
(19, 19, 19, 19, 19, 60.0, 510.0, 1),
(20, 20, 20, 20, 20, 55.0, 490.0, 1);


