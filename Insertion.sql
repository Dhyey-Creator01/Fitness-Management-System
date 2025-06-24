INSERT INTO "User" ("user_id", "name", "email", "password", "gender", "age", "contact_no", "role") VALUES
(1, 'John Doe', 'john.doe@example.com', 'hashed_password_1', 'Male', 28, '1234567890', 'Member'),
(2, 'Jane Smith', 'jane.smith@example.com', 'hashed_password_2', 'Female', 34, '1234567891', 'Trainer'),
(3, 'Alex Johnson', 'alex.johnson@example.com', 'hashed_password_3', 'Non-binary', 25, '1234567892', 'Member'),
(4, 'Emily Davis', 'emily.davis@example.com', 'hashed_password_4', 'Female', 45, '1234567893', 'Member'),
(5, 'Michael Brown', 'michael.brown@example.com', 'hashed_password_5', 'Male', 31, '1234567894', 'Trainer'),
(6, 'Sarah Wilson', 'sarah.wilson@example.com', 'hashed_password_6', 'Female', 23, '1234567895', 'Member'),
(7, 'David Lee', 'david.lee@example.com', 'hashed_password_7', 'Male', 29, '1234567896', 'Trainer'),
(8, 'Rachel Green', 'rachel.green@example.com', 'hashed_password_8', 'Female', 38, '1234567897', 'Member'),
(9, 'Thomas Harris', 'thomas.harris@example.com', 'hashed_password_9', 'Male', 32, '1234567898', 'Trainer'),
(10, 'Olivia Scott', 'olivia.scott@example.com', 'hashed_password_10', 'Female', 27, '1234567899', 'Member'),
(11, 'Chris Walker', 'chris.walker@example.com', 'hashed_password_11', 'Male', 36, '1234567800', 'Member'),
(12, 'Jessica Adams', 'jessica.adams@example.com', 'hashed_password_12', 'Female', 41, '1234567801', 'Trainer'),
(13, 'William Martinez', 'william.martinez@example.com', 'hashed_password_13', 'Male', 30, '1234567802', 'Member'),
(14, 'Sophia Clark', 'sophia.clark@example.com', 'hashed_password_14', 'Female', 28, '1234567803', 'Trainer'),
(15, 'Daniel Rodriguez', 'daniel.rodriguez@example.com', 'hashed_password_15', 'Male', 26, '1234567804', 'Member'),
(16, 'Charlotte Turner', 'charlotte.turner@example.com', 'hashed_password_16', 'Female', 33, '1234567805', 'Member'),
(17, 'Ethan Walker', 'ethan.walker@example.com', 'hashed_password_17', 'Male', 37, '1234567806', 'Trainer'),
(18, 'Isabella Lewis', 'isabella.lewis@example.com', 'hashed_password_18', 'Female', 24, '1234567807', 'Member'),
(19, 'Jack Martin', 'jack.martin@example.com', 'hashed_password_19', 'Male', 40, '1234567808', 'Member'),
(20, 'Mia Thompson', 'mia.thompson@example.com', 'hashed_password_20', 'Female', 26, '1234567809', 'Trainer'),
(21, 'Luke Robinson', 'luke.robinson@example.com', 'hashed_password_21', 'Male', 30, '1234567810', 'Member'),
(22, 'Ava Harris', 'ava.harris@example.com', 'hashed_password_22', 'Female', 32, '1234567811', 'Trainer'),
(23, 'Sebastian Allen', 'sebastian.allen@example.com', 'hashed_password_23', 'Male', 28, '1234567812', 'Member'),
(24, 'Grace Young', 'grace.young@example.com', 'hashed_password_24', 'Female', 29, '1234567813', 'Trainer'),
(25, 'Oscar King', 'oscar.king@example.com', 'hashed_password_25', 'Male', 35, '1234567814', 'Member'),
(26, 'Lily Moore', 'lily.moore@example.com', 'hashed_password_26', 'Female', 39, '1234567815', 'Trainer'),
(27, 'James Wright', 'james.wright@example.com', 'hashed_password_27', 'Male', 27, '1234567816', 'Member'),
(28, 'Zoe Perez', 'zoe.perez@example.com', 'hashed_password_28', 'Female', 31, '1234567817', 'Trainer'),
(29, 'Benjamin White', 'benjamin.white@example.com', 'hashed_password_29', 'Male', 44, '1234567818', 'Member'),
(30, 'Ella Allen', 'ella.allen@example.com', 'hashed_password_30', 'Female', 33, '1234567819', 'Member');


INSERT INTO "Trainer" ("trainer_id", "user_id", "specialization", "experience", "rating") VALUES
(1, 2, 'Yoga', 6, 4.5),
(2, 5, 'Strength Training', 8, 4.7),
(3, 7, 'Cardio Fitness', 5, 4.3),
(4, 9, 'Weight Loss', 7, 4.6),
(5, 12, 'Pilates', 10, 4.8),
(6, 14, 'CrossFit', 4, 4.4),
(7, 17, 'Nutrition and Fitness', 9, 4.7),
(8, 20, 'Bodybuilding', 3, 4.2),
(9, 22, 'HIIT', 5, 4.6),
(10, 24, 'Functional Fitness', 6, 4.5),
(11, 26, 'Weight Training', 8, 4.7),
(12, 28, 'Zumba', 4, 4.3);

INSERT INTO "Plans" ("plan_id", "trainer_id", "plan_name", "duration_weeks", "rating", "price", "fitness_level", "age_min", "age_max", "bmi_min", "bmi_max", "description") VALUES
(1, 1, 'Strength Max', 12, 4.5, 99.99, 5, 18, 40, 18.0, 35.0, 'A strength program designed to increase muscle mass and overall strength. Focuses on heavy compound lifts and a tailored diet plan for muscle growth.'),
(2, 2, 'Lean Bulk Builder', 10, 4.7, 89.99, 4, 18, 40, 18.5, 30.0, 'Focuses on building lean muscle mass without excessive fat gain. Includes hypertrophy workouts and functional movements for a balanced physique.'),
(3, 3, 'Power Lifting Mastery', 14, 4.8, 129.99, 5, 18, 40, 20.0, 35.0, 'A powerlifting program designed to improve your one-rep max (1RM) in squats, deadlifts, and bench press. Includes strength-building exercises and accessory work.'),
(4, 4, 'Fat Burner Express', 8, 4.2, 59.99, 3, 18, 50, 18.0, 29.0, 'A high-intensity fat-burning program that combines cardio and metabolic conditioning exercises. Designed for those looking to burn fat quickly and boost endurance.'),
(5, 5, 'Metabolic Shred', 12, 4.4, 69.99, 4, 18, 50, 18.5, 28.0, 'Focuses on metabolic rate enhancement and fat loss through high-intensity workouts and a calorie-deficit diet. Ideal for users looking for efficient weight loss.'),
(6, 6, 'Weight Loss for Beginners', 6, 3.8, 39.99, 2, 18, 50, 19.0, 32.0, 'A beginner-friendly program that emphasizes steady, sustainable weight loss with foundational exercises, healthy eating, and building good habits.'),
(7, 7, 'Zen Yoga Flow', 6, 4.9, 49.99, 2, 18, 60, 18.0, 40.0, 'A restorative yoga plan aimed at improving flexibility, reducing stress, and promoting relaxation. Ideal for beginners and intermediate yoga practitioners.'),
(8, 8, 'Flexibility Boost', 8, 4.6, 55.99, 3, 18, 60, 19.0, 35.0, 'A flexibility and mobility improvement program combining yoga and stretching exercises. Great for athletes or those with tight muscles seeking better range of motion.'),
(9, 9, 'Endurance Builder', 12, 4.3, 69.99, 4, 18, 50, 18.0, 30.0, 'A cardio-focused program designed to boost cardiovascular endurance and stamina. Includes running, cycling, and rowing workouts.'),
(10, 10, 'HIIT for Endurance', 10, 4.4, 79.99, 5, 18, 50, 18.5, 30.0, 'High-Intensity Interval Training (HIIT) designed for increasing endurance, fat loss, and improving overall cardiovascular health.'),
(11, 11, 'Age 50+ Strength', 12, 4.0, 89.99, 3, 50, 100, 20.0, 35.0, 'A strength program tailored for individuals over 50, focusing on low-impact exercises and building functional strength to improve daily living.'),
(12, 12, 'Youth Strength & Power', 8, 4.6, 59.99, 3, 18, 25, 18.0, 30.0, 'A strength training program for young adults focusing on building muscle, power, and athleticism using compound movements and bodyweight exercises.'),
(13, 2, 'Hybrid Fitness Boost', 12, 4.6, 99.99, 4, 18, 50, 18.5, 32.0, 'A hybrid fitness program combining strength training, cardio, and flexibility exercises. Ideal for users seeking an overall fitness boost.'),
(14, 3, 'Total Body Conditioning', 10, 4.7, 89.99, 5, 18, 50, 19.0, 30.0, 'A total body conditioning plan mixing weight training, endurance, and flexibility to improve overall fitness and physical performance.'),
(15, 3, 'Injury Recovery Program', 14, 4.8, 79.99, 2, 18, 60, 15.0, 30.0, 'A program tailored for individuals recovering from injuries. Focuses on mobility, rehab exercises, and rebuilding functional strength.'),
(16, 6, 'Post-Pregnancy Fitness', 12, 4.5, 69.99, 2, 18, 40, 18.0, 30.0, 'Designed for post-pregnancy recovery, this plan helps regain strength, flexibility, and cardiovascular health through safe exercises.');


-- For 'Strength Max' (Plan 1)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(1, 'Barbell Squat', 8.5),
(2, 'Deadlift', 9.0),
(3, 'Barbell Bench Press', 8.0),
(4, 'Overhead Press', 7.5),
(5, 'Farmers Walk', 8.5);

-- For 'Lean Bulk Builder' (Plan 2)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(6, 'Deadlift', 9.0),
(7, 'Pull-Ups', 8.0),
(8, 'Barbell Row', 8.0),
(9, 'Dumbbell Chest Press', 7.5),
(10, 'Leg Press', 7.5);

-- For 'Power Lifting Mastery' (Plan 3)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(11, 'Sumo Deadlift', 8.5),
(12, 'Rack Pulls', 8.5),
(13, 'Barbell Squat', 8.5),
(14, 'Barbell Bench Press', 8.0),
(15, 'Overhead Press', 7.5);

-- For 'Fat Burner Express' (Plan 4)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(16, 'Jump Rope', 7.5),
(17, 'Burpees', 9.0),
(18, 'Jump Squats', 8.0),
(19, 'High Knees', 6.5),
(20, 'Treadmill Sprints', 8.0);

-- For 'Metabolic Shred' (Plan 5)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(21, 'Burpees', 9.0),
(22, 'Treadmill HIIT', 7.5),
(23, 'Jump Rope', 7.5),
(24, 'Box Jumps', 8.5),
(25, 'Bodyweight Squats', 6.0);

-- For 'Weight Loss for Beginners' (Plan 6)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(26, 'Walking', 4.5),
(27, 'Bodyweight Squats', 6.0),
(28, 'Step-Ups', 6.5),
(29, 'Chair Squats', 5.5),
(30, 'Cycling', 7.0);

-- For 'Zen Yoga Flow' (Plan 7)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(31, 'Child’s Pose', 3.5),
(32, 'Cobra Pose', 4.0),
(33, 'Downward Dog', 5.0),
(34, 'Warrior I Pose', 5.0),
(35, 'Triangle Pose', 5.0);

-- For 'Flexibility Boost' (Plan 8)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(36, 'Yoga Flow Cooldown', 4.0),
(37, 'Dynamic Stretching', 5.0),
(38, 'Glute Bridges', 6.5),
(39, 'Seated Leg Extensions', 5.0),
(40, 'Standing Hamstring Stretch', 3.5);

-- For 'Endurance Builder' (Plan 9)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(41, 'HIIT on Bike', 8.0),
(42, 'Treadmill HIIT', 7.5),
(43, 'Cycling', 7.0),
(44, 'Jump Rope', 7.5),
(45, 'Running', 8.5);

-- For 'HIIT for Endurance' (Plan 10)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(46, 'Treadmill Sprint', 8.5),
(47, 'Jumping Jacks', 7.0),
(48, 'Burpees', 9.0),
(49, 'Mountain Climbers', 7.5),
(50, 'High Knees', 6.5);

-- For 'Age 50+ Strength' (Plan 11)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(51, 'Resistance Band Rows', 6.0),
(52, 'Leg Press', 7.5),
(53, 'Seated Dumbbell Press', 7.5),
(54, 'Back Squat', 8.0),
(55, 'Walking Lunges', 7.0);

-- For 'Youth Strength & Power' (Plan 12)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(56, 'Jump Rope', 7.5),
(57, 'Pull-Ups', 8.0),
(58, 'Barbell Row', 8.0),
(59, 'Push-Ups', 7.5),
(60, 'Box Jumps', 8.5);

-- For 'Hybrid Fitness Boost' (Plan 13)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(61, 'Deadlift', 9.0),
(62, 'Squat to Press', 8.5),
(63, 'Dumbbell Chest Press', 7.5),
(64, 'Jump Squats', 8.0),
(65, 'Treadmill Sprints', 8.0);

-- For 'Total Body Conditioning' (Plan 14)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(66, 'Jump Rope', 7.5),
(67, 'Treadmill HIIT', 7.5),
(68, 'Barbell Squat', 8.0),
(69, 'Deadlift', 9.0),
(70, 'Push-Ups', 7.5);

-- For 'Injury Recovery Program' (Plan 15)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(71, 'Resistance Band Rows', 6.0),
(72, 'Seated Leg Extensions', 5.0),
(73, 'Bodyweight Squats', 6.0),
(74, 'Child’s Pose', 3.5),
(75, 'Walking Lunges', 7.0);

-- For 'Post-Pregnancy Fitness' (Plan 16)
INSERT INTO "Exercise" ("exercise_id", "exercise_name", "intensity") VALUES
(76, 'Bodyweight Squats', 6.0),
(77, 'Seated Leg Extensions', 5.0),
(78, 'Glute Bridges', 6.5),
(79, 'Dynamic Stretching', 5.0),
(80, 'Walking', 4.5);





-- For 'Strength Max' (Plan 1)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(1, 1, 4, 10),
(1, 2, 4, 8),
(1, 3, 3, 12),
(1, 4, 5, 10),
(1, 5, 4, 9);

-- For 'Lean Bulk Builder' (Plan 2)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(2, 6, 4, 10),
(2, 7, 5, 8),
(2, 8, 4, 12),
(2, 9, 3, 15),
(2, 10, 5, 10);

-- For 'Power Lifting Mastery' (Plan 3)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(3, 11, 4, 8),
(3, 12, 5, 8),
(3, 13, 4, 10),
(3, 14, 5, 9),
(3, 15, 3, 12);

-- For 'Fat Burner Express' (Plan 4)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(4, 16, 5, 10),
(4, 17, 4, 12),
(4, 18, 5, 8),
(4, 19, 4, 15),
(4, 20, 3, 10);

-- For 'Metabolic Shred' (Plan 5)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(5, 21, 4, 12),
(5, 22, 5, 9),
(5, 23, 4, 10),
(5, 24, 3, 15),
(5, 25, 5, 8);

-- For 'Weight Loss for Beginners' (Plan 6)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(6, 26, 3, 12),
(6, 27, 4, 10),
(6, 28, 4, 15),
(6, 29, 5, 8),
(6, 30, 3, 10);

-- For 'Zen Yoga Flow' (Plan 7)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(7, 31, 3, 15),
(7, 32, 4, 10),
(7, 33, 3, 12),
(7, 34, 5, 8),
(7, 35, 4, 12);

-- For 'Flexibility Boost' (Plan 8)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(8, 36, 4, 12),
(8, 37, 5, 10),
(8, 38, 3, 12),
(8, 39, 4, 8),
(8, 40, 5, 9);

-- For 'Endurance Builder' (Plan 9)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(9, 41, 4, 15),
(9, 42, 3, 10),
(9, 43, 5, 8),
(9, 44, 4, 12),
(9, 45, 5, 10);

-- For 'HIIT for Endurance' (Plan 10)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(10, 46, 4, 12),
(10, 47, 5, 9),
(10, 48, 3, 15),
(10, 49, 5, 8),
(10, 50, 4, 10);

-- For 'Age 50+ Strength' (Plan 11)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(11, 51, 4, 10),
(11, 52, 3, 12),
(11, 53, 4, 9),
(11, 54, 5, 8),
(11, 55, 3, 15);

-- For 'Youth Strength & Power' (Plan 12)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(12, 56, 4, 10),
(12, 57, 5, 8),
(12, 58, 4, 12),
(12, 59, 5, 9),
(12, 60, 3, 15);

-- For 'Hybrid Fitness Boost' (Plan 13)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(13, 61, 4, 12),
(13, 62, 3, 10),
(13, 63, 5, 8),
(13, 64, 4, 9),
(13, 65, 5, 10);

-- For 'Total Body Conditioning' (Plan 14)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(14, 66, 4, 10),
(14, 67, 5, 8),
(14, 68, 3, 12),
(14, 69, 4, 15),
(14, 70, 5, 9);

-- For 'Injury Recovery Program' (Plan 15)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(15, 71, 4, 12),
(15, 72, 5, 10),
(15, 73, 3, 8),
(15, 74, 4, 15),
(15, 75, 5, 9);

-- For 'Post-Pregnancy Fitness' (Plan 16)
INSERT INTO "Plan_Exercise" ("plan_id", "exercise_id", "sets", "reps") VALUES
(16, 76, 4, 12),
(16, 77, 3, 10),
(16, 78, 5, 8),
(16, 79, 4, 9),
(16, 80, 3, 15);

-- Inserting data for the 'Member' table based on the 'User' table data

INSERT INTO "Member" ("member_id", "user_id", "height", "weight", "BMI", "fitness_level", "registration_date") VALUES
(1, 1, 178.5, 72, 22.7, 1.0, '2023-05-02'),
(2, 3, 183.0, 69, 20.6, 1.0, '2024-01-15'),
(3, 4, 160.0, 58, 22.7, 2.0, '2022-09-20'),
(4, 6, 161.5, 54, 20.8, 1.0, '2022-06-30'),
(5, 8, 167.0, 61, 21.9, 2.0, '2023-11-10'),
(6, 10, 169.0, 62, 21.7, 1.0, '2023-08-22'),
(7, 11, 180.5, 74, 22.7, 2.0, '2023-04-05'),
(8, 13, 181.0, 76, 23.2, 1.0, '2024-03-12'),
(9, 15, 175.0, 71, 23.2, 1.0, '2022-12-19'),
(10, 16, 163.5, 64, 24.0, 2.0, '2025-02-01'),
(11, 19, 177.5, 86, 27.3, 1.0, '2022-07-25'),
(12, 21, 179.0, 70, 21.9, 1.0, '2024-05-18'),
(13, 23, 182.0, 73, 22.0, 1.0, '2023-02-14'),
(14, 25, 184.0, 79, 23.3, 2.0, '2024-10-10'),
(15, 27, 176.0, 75, 24.2, 1.0, '2023-01-03'),
(16, 29, 180.5, 91, 28.0, 1.0, '2025-03-08'),
(17, 30, 168.5, 66, 23.3, 1.0, '2024-07-26');


INSERT INTO "Salary" ("salary_id", "trainer_id", "amount", "date_received", "status") VALUES
(1, 2, 49502.34, '2025-03-23', 'Paid'),
(2, 7, 47499.56, '2024-07-11', 'Pending'),
(3, 9, 46451.43, '2023-08-05', 'Paid'),
(4, 12, 57724.55, '2023-12-25', 'Paid'),
(5, 5, 46141.58, '2024-05-13', 'Paid'),
(6, 6, 58049.32, '2022-11-22', 'Pending'),
(7, 10, 54820.68, '2023-04-14', 'Paid'),
(8, 4, 59274.75, '2022-09-18', 'Paid'),
(9, 3, 62562.41, '2025-01-10', 'Paid'),
(10, 1, 61818.53, '2024-02-03', 'Pending'),
(11, 11, 62234.51, '2023-10-29', 'Pending');

INSERT INTO "Member_Plan" ("member_id", "plan_id", "start_date") VALUES
(1, 1, '2025-03-21'),
(2, 2, '2025-04-05'),
(3, 3, '2025-03-28'),
(4, 4, '2025-04-01'),
(5, 5, '2025-03-20'),
(6, 6, '2025-04-02'),
(7, 9, '2025-03-30'),
(8, 2, '2025-03-25'),
(9, 10, '2025-03-27'),
(10, 4, '2025-04-04'),
(11, 11, '2025-03-22'),
(12, 7, '2025-04-03'),
(13, 1, '2025-03-19'),
(14, 12, '2025-04-06'),
(15, 3, '2025-03-18'),
(16, 8, '2025-03-15'),
(17, 9, '2025-08-01');

INSERT INTO "History" ("history_id", "user_id", "status") VALUES
(1, 1, 'Active'),
(2, 2, 'Inactive'),
(3, 3, 'Active'),
(4, 4, 'Inactive'),
(5, 5, 'Active'),
(6, 6, 'Inactive'),
(7, 7, 'Active'),
(8, 8, 'Inactive'),
(9, 9, 'Active'),
(10, 10, 'Inactive'),
(11, 11, 'Active'),
(12, 12, 'Inactive'),
(13, 13, 'Active'),
(14, 14, 'Inactive'),
(15, 15, 'Active'),
(16, 16, 'Inactive'),
(17, 17, 'Active'),
(18, 18, 'Inactive'),
(19, 19, 'Active'),
(20, 20, 'Inactive'),
(21, 21, 'Active'),
(22, 22, 'Inactive'),
(23, 23, 'Active'),
(24, 24, 'Inactive'),
(25, 25, 'Active'),
(26, 26, 'Inactive'),
(27, 27, 'Active'),
(28, 28, 'Inactive'),
(29, 29, 'Active'),
(30, 30, 'Inactive');


INSERT INTO "Notification" ("notif_id", "user_id", "message", "notif_type", "timestamp", "is_read") VALUES
(1, 1, 'Your membership has been successfully activated.', 'Membership', '2025-04-10 10:00:00', FALSE),
(2, 3, 'Your trainer has updated your workout plan.', 'Workout Plan', '2025-04-11 14:30:00', TRUE),
(3, 5, 'Your next training session is scheduled for tomorrow at 9:00 AM.', 'Training Session', '2025-04-12 08:00:00', FALSE),
(4, 7, 'Reminder: Your subscription will renew in 3 days.', 'Subscription', '2025-04-13 12:45:00', TRUE),
(5, 9, 'You have successfully completed your workout for the day.', 'Workout', '2025-04-14 16:20:00', FALSE),
(6, 11, 'New workout challenges available in your dashboard.', 'Workout Challenge', '2025-04-15 09:10:00', TRUE),
(7, 13, 'Your payment was successfully processed.', 'Payment', '2025-04-16 17:30:00', FALSE),
(8, 15, 'Your trainer has uploaded new diet recommendations.', 'Diet Plan', '2025-04-17 11:25:00', TRUE),
(9, 17, 'Your progress has been successfully updated in the system.', 'Progress', '2025-04-18 13:15:00', FALSE),
(10, 19, 'A new update is available for your workout plan.', 'Workout Plan', '2025-04-19 18:05:00', TRUE),
(11, 21, 'You have a new message from your trainer.', 'Message', '2025-04-20 09:00:00', FALSE),
(12, 23, 'Reminder: Your next workout session is tomorrow at 7:00 AM.', 'Session Reminder', '2025-04-21 08:00:00', TRUE),
(13, 25, 'Your trainer has added new exercises to your plan.', 'Workout Plan', '2025-04-22 10:35:00', FALSE),
(14, 27, 'Your membership will expire in 5 days. Renew now to continue.', 'Membership', '2025-04-23 14:50:00', TRUE),
(15, 29, 'You have successfully completed your monthly fitness assessment.', 'Fitness Assessment', '2025-04-24 16:45:00', FALSE),
(16, 2, 'Your membership renewal is due soon. Please make sure to complete the payment.', 'Membership', '2025-04-10 10:00:00', FALSE),
(17, 4, 'Reminder: Your next training session is scheduled for tomorrow at 8:00 AM.', 'Training Session', '2025-04-11 08:00:00', TRUE),
(18, 6, 'Your workout plan has been updated. Please check your dashboard.', 'Workout Plan', '2025-04-12 12:30:00', FALSE),
(19, 8, 'New progress challenges are available for you to complete.', 'Progress Challenge', '2025-04-13 09:45:00', TRUE),
(20, 10, 'Your payment for the membership has been successfully processed.', 'Payment', '2025-04-14 14:20:00', FALSE),
(21, 12, 'You have successfully completed your workout for the day.', 'Workout', '2025-04-15 18:25:00', TRUE),
(22, 14, 'Reminder: Your trainer has updated your diet plan.', 'Diet Plan', '2025-04-16 10:10:00', FALSE),
(23, 16, 'New workout challenges available in your dashboard.', 'Workout Challenge', '2025-04-17 11:00:00', TRUE),
(24, 18, 'You have a new message from your trainer regarding your fitness plan.', 'Message', '2025-04-18 13:05:00', FALSE),
(25, 20, 'Your next training session is scheduled for tomorrow at 6:00 PM.', 'Session Reminder', '2025-04-19 08:30:00', TRUE),
(26, 22, 'You have successfully completed your monthly fitness assessment.', 'Fitness Assessment', '2025-04-20 17:00:00', FALSE),
(27, 24, 'Reminder: Your subscription will renew in 2 days.', 'Subscription', '2025-04-21 12:00:00', TRUE),
(28, 26, 'Your progress has been successfully updated in the system.', 'Progress', '2025-04-22 09:50:00', FALSE),
(29, 28, 'Your trainer has uploaded new exercises to your plan.', 'Workout Plan', '2025-04-23 14:30:00', TRUE),
(30, 30, 'You have successfully completed your workout for the day.', 'Workout', '2025-04-24 16:15:00', FALSE);


INSERT INTO "Review" ("review_id", "plan_id", "rating", "comment", "date_added") VALUES
(1, 1, 4.5, 'Great plan! It helped me build strength and endurance.', '2025-04-10'),
(2, 2, 4.0, 'The plan is good, but I would like more variety in the exercises.', '2025-04-11'),
(3, 3, 5.0, 'Excellent plan! I saw great results and felt motivated throughout.', '2025-04-12'),
(4, 4, 3.5, 'It was a decent plan, but I had some issues with recovery times.', '2025-04-13'),
(5, 5, 4.8, 'I loved the combination of cardio and strength exercises in this plan.', '2025-04-14'),
(6, 6, 4.2, 'Overall, good, but I think it could use more flexibility in the routines.', '2025-04-15'),
(7, 7, 5.0, 'The plan was fantastic! I feel much healthier and fitter now.', '2025-04-16'),
(8, 8, 3.0, 'This plan really helped improve my flexibility, but I was hoping for more variety in the exercises to target different muscle groups.', '2025-04-17'),
(9, 9, 4.7, 'Great structure, but I would like more focus on muscle recovery.', '2025-04-18'),
(10, 10, 4.6, 'A well-balanced plan with excellent guidance for beginners.', '2025-04-19');


INSERT INTO "Payment" ("payment_id", "member_id", "plan_id", "transaction_id", "date", "status", "total_amount") VALUES
(1, 1, 1, 'TXN123456', '2023-07-10', 'Success', 99.99),
(2, 2, 2, 'TXN234567', '2024-03-20', 'Pending', 89.99),
(3, 3, 3, 'TXN345678', '2023-01-15', 'Success', 129.99),
(4, 4, 4, 'TXN456789', '2022-11-05', 'Pending', 59.99),
(5, 5, 5, 'TXN567890', '2024-03-15', 'Success', 69.99),
(6, 6, 6, 'TXN678901', '2024-01-10', 'Success', 39.99),
(7, 7, 1, 'TXN789012', '2023-08-15', 'Success', 99.99),
(8, 8, 2, 'TXN890123', '2024-06-20', 'Pending', 89.99),
(9, 9, 10, 'TXN901234', '2023-05-05', 'Success', 79.99),
(10, 10, 4, 'TXN012345', '2025-04-01', 'Success', 59.99),
(11, 11, 12, 'TXN123987', '2022-11-25', 'Pending', 59.99),
(12, 12, 6, 'TXN234876', '2024-08-10', 'Success', 39.99),
(13, 13, 7, 'TXN345765', '2023-05-01', 'Success', 49.99),
(14, 14, 9, 'TXN456654', '2025-03-01', 'Pending', 69.99),
(15, 15, 8, 'TXN567543', '2023-04-25', 'Success', 55.99),
(16, 16, 11, 'TXN678654', '2025-04-10', 'Success', 89.99),
(17, 17, 2, 'TXN789543', '2024-12-20', 'Pending', 89.99);