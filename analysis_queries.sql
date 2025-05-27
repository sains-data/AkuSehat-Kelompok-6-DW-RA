--Total Kalori Terbakar per Bulan
SELECT 
    d.year,
    d.month,
    SUM(f.calories_burned) AS total_calories_burned
FROM fact_fitness_activity f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;

--Rata-Rata Durasi Latihan per Pelanggan
SELECT 
    u.user_id,
    u.name,
    AVG(f.duration_minutes) AS avg_duration
FROM fact_fitness_activity f
JOIN dim_user u ON f.user_id = u.user_id
GROUP BY u.user_id, u.name
ORDER BY avg_duration DESC;

--Jenis Workout Terpopuler (Paling Sering Dipilih)
SELECT 
    w.workout_type,
    COUNT(f.activity_id) AS total_sessions
FROM fact_fitness_activity f
JOIN dim_workout w ON f.workout_id = w.workout_id
GROUP BY w.workout_type
ORDER BY total_sessions DESC;

--Tren Durasi Latihan per Tahun
SELECT 
    d.year,
    SUM(f.duration_minutes) AS total_duration,
    COUNT(f.activity_id) AS total_sessions
FROM fact_fitness_activity f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year
ORDER BY d.year;

--Pengguna Aktif Berdasarkan Langganan
SELECT 
    s.plan_name,
    COUNT(DISTINCT f.user_id) AS active_users
FROM fact_fitness_activity f
JOIN dim_subscription s ON f.subscription_id = s.subscription_id
WHERE f.is_subscribed = 1
GROUP BY s.plan_name
ORDER BY active_users DESC;

--Total Aktivitas dan Kalori Bulanan
SELECT 
    d.year,
    d.month,
    COUNT(f.activity_id) AS total_activities,
    SUM(f.calories_burned) AS total_calories
FROM fact_fitness_activity f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;
