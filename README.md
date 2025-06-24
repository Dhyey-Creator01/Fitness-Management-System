# Fitness Management System (DBMS Project)

> A PostgreSQL-based academic database project for managing users, fitness plans, and trainers using DDL, triggers, and normalized schema design.

📌 **Tech Stack:** PostgreSQL, SQL, PL/pgSQL  
📁 **Academic Project:** DA-IICT, Summer 2025

---

## Overview

This project simulates a backend system for a fitness center. It manages users, trainers, workout plans, memberships, payments, and exercise data. The schema is normalized (BCNF), and includes sample data and triggers for automation.

---

## File Structure

| File | Description |
|------|-------------|
| `schema_DDL.sql` | All table definitions (12+ entities with PK, FK, CHECK constraints) |
| `Trigger_functions.sql` | Triggers for BMI updates, payment status, notifications |
| `Insertion.sql` | Sample INSERTs for Users, Trainers, Plans, Exercises |
| `G07_ERD_final.pdf` | ER Diagram |
| `G07_Queries.pdf` | Analytical queries (JOINs, filters, aggregates) |
| `G07_Relational_Schema.pdf` | BCNF proof and normalization |

---

## How to Run

1. Create database:
   ```sql
   CREATE DATABASE fitness_db;
   \c fitness_db
