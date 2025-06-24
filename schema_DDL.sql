-- SQL DDL Script for Fitness Management System
CREATE TABLE "User" (
  "user_id" INT PRIMARY KEY,
  "name" VARCHAR(100) NOT NULL,
  "email" VARCHAR(100) UNIQUE NOT NULL,
  "password" VARCHAR(255) NOT NULL,
  "gender" VARCHAR(10),
  "age" INT CHECK ("age" >= 18),
  "contact_no" VARCHAR(15),
  "role" VARCHAR(50) CHECK ("role" IN ('Member', 'Trainer'))
);

CREATE TABLE "Notification" (
  "notif_id" INT PRIMARY KEY,
  "user_id" INT,
  "message" TEXT NOT NULL,
  "notif_type" VARCHAR(50),
  "timestamp" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  "is_read" BOOLEAN DEFAULT FALSE,
  CONSTRAINT notif_user_fk FOREIGN KEY ("user_id") REFERENCES "User" ("user_id") ON DELETE CASCADE
);

CREATE TABLE "History" (
  "history_id" INT PRIMARY KEY,
  "user_id" INT,
  "status" VARCHAR(50) NOT NULL,
  CONSTRAINT history_user_fk FOREIGN KEY ("user_id") REFERENCES "User" ("user_id") ON DELETE CASCADE
);

CREATE TABLE "Member" (
  "member_id" INT PRIMARY KEY,
  "user_id" INT UNIQUE,
  "height" FLOAT CHECK ("height" > 0),
  "weight" FLOAT CHECK ("weight" > 0),
  "BMI" FLOAT,
  "fitness_level" FLOAT CHECK ("fitness_level" >= 0 AND "fitness_level" <= 100),
  "registration_date" DATE DEFAULT CURRENT_DATE,
  CONSTRAINT member_user_fk FOREIGN KEY ("user_id") REFERENCES "User" ("user_id") ON DELETE CASCADE
);

CREATE TABLE "Trainer" (
  "trainer_id" INT PRIMARY KEY,
  "user_id" INT UNIQUE,
  "specialization" VARCHAR(100),
  "experience" INT CHECK ("experience" >= 0),
  "rating" FLOAT CHECK ("rating" >= 0 AND "rating" <= 5),
  CONSTRAINT trainer_user_fk FOREIGN KEY ("user_id") REFERENCES "User" ("user_id") ON DELETE CASCADE
);

CREATE TABLE "Salary" (
  "salary_id" INT PRIMARY KEY,
  "trainer_id" INT,
  "amount" DECIMAL(10,2) CHECK ("amount" > 0),
  "date_received" DATE DEFAULT CURRENT_DATE,
  "status" VARCHAR(50) CHECK ("status" IN ('Paid', 'Pending')),
  CONSTRAINT salary_trainer_fk FOREIGN KEY ("trainer_id") REFERENCES "Trainer" ("trainer_id") ON DELETE CASCADE
);

CREATE TABLE "Plans" (
  "plan_id" INT PRIMARY KEY,
  "trainer_id" INT,
  "plan_name" VARCHAR(100) NOT NULL,
  "duration_weeks" INT CHECK ("duration_weeks" > 0),
  "rating" FLOAT CHECK ("rating" >= 0 AND "rating" <= 5),
  "price" DECIMAL(10,2) CHECK ("price" > 0),
  "fitness_level" FLOAT CHECK ("fitness_level" >= 0 AND "fitness_level" <= 100),
  "age_min" INT CHECK ("age_min" >= 0),
  "age_max" INT CHECK ("age_max" >= "age_min"),
  "bmi_min" FLOAT CHECK ("bmi_min" >= 0),
  "bmi_max" FLOAT CHECK ("bmi_max" >= "bmi_min"),
  "description" TEXT,
  CONSTRAINT plans_trainer_fk FOREIGN KEY ("trainer_id") REFERENCES "Trainer" ("trainer_id") ON DELETE RESTRICT
);

CREATE TABLE "Payment" (
  "payment_id" INT PRIMARY KEY,
  "member_id" INT,
  "plan_id" INT,
  "transaction_id" VARCHAR(50) UNIQUE NOT NULL,
  "date" DATE DEFAULT CURRENT_DATE,
  "status" VARCHAR(50) CHECK ("status" IN ('Success', 'Failed', 'Pending')),
  "total_amount" DECIMAL(10,2) CHECK ("total_amount" > 0),
  CONSTRAINT payment_member_fk FOREIGN KEY ("member_id") REFERENCES "Member" ("member_id") ON DELETE CASCADE,
  CONSTRAINT payment_plan_fk FOREIGN KEY ("plan_id") REFERENCES "Plans" ("plan_id") ON DELETE CASCADE
);

CREATE TABLE "Member_Plan" (
  "member_id" INT,
  "plan_id" INT,
  "start_date" DATE DEFAULT CURRENT_DATE,
  PRIMARY KEY ("member_id", "plan_id"),
  CONSTRAINT member_plan_member_fk FOREIGN KEY ("member_id") REFERENCES "Member" ("member_id") ON DELETE CASCADE,
  CONSTRAINT member_plan_plan_fk FOREIGN KEY ("plan_id") REFERENCES "Plans" ("plan_id") ON DELETE CASCADE
);

CREATE TABLE "Exercise" (
  "exercise_id" INT PRIMARY KEY,
  "exercise_name" VARCHAR(100) NOT NULL,
  "intensity" FLOAT CHECK ("intensity" >= 0)
);

CREATE TABLE "Plan_Exercise" (
  "plan_id" INT,
  "exercise_id" INT,
  "sets" INT CHECK ("sets" > 0),
  "reps" INT CHECK ("reps" > 0),
  PRIMARY KEY ("plan_id", "exercise_id"),
  CONSTRAINT plan_exercise_plan_fk FOREIGN KEY ("plan_id") REFERENCES "Plans" ("plan_id") ON DELETE CASCADE,
  CONSTRAINT plan_exercise_exercise_fk FOREIGN KEY ("exercise_id") REFERENCES "Exercise" ("exercise_id") ON DELETE CASCADE
);

CREATE TABLE "Review" (
  "review_id" INT PRIMARY KEY,
  "plan_id" INT,
  "rating" FLOAT CHECK ("rating" >= 0 AND "rating" <= 5),
  "comment" TEXT,
  "date_added" DATE DEFAULT CURRENT_DATE,
  CONSTRAINT review_plan_fk FOREIGN KEY ("plan_id") REFERENCES "Plans" ("plan_id") ON DELETE CASCADE
);
