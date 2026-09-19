# DB University

A database exercise from my web dev course, covering ER modelling and MySQL queries.

## ER diagram

![University database ER diagram](er-diagram.webp 'University database ER diagram')

## Exercise

### Phase 1 — Database modelling

Design a relational database that stores the data of a university with the following requirements:

- a university has several departments;
- each department offers multiple degree programmes;
- each degree programme includes multiple courses;
- each course can be taught by multiple teachers;
- each course has multiple exam sessions;
- each student is enrolled in one degree programme;
- each student can register for multiple exam sessions;
- every exam result must be recorded, including failing grades.

Define the entities, their relationships, the table columns, and the appropriate data types. Create the schema with [DrawSQL](https://drawsql.app/) or [dbdiagram.io](https://dbdiagram.io/) and export the ER diagram as an image.

### Phase 2 — MySQL queries

Create a new database in MySQL Workbench (or another database client), import the provided populated schema, and write the following queries:

1. Select all students born in 1990 (160 results).
2. Select all courses worth more than 10 credits (479 results).
3. Select all students over 30 years old.
4. Select all first-year, first-semester courses from any degree programme (286 results).
5. Select all exam sessions taking place after 14:00 on 20 June 2020 (21 results).
6. Select all master's degree programmes (38 results).
7. Count the university departments (12 departments).
8. Count the teachers without a phone number (50 teachers).

Use `GROUP BY` to:

1. count how many students enrolled in each year;
2. count how many teachers have an office in each building;
3. calculate the average grade for each exam session;
4. count the degree programmes offered by each department.

### Phase 3 - JOIN queries

Use `JOIN` to:

1. Select all students enrolled in the Economics Degree Program
2. Select all Master's Degree Programs in the Department of Neuroscience
3. Select all courses taught by Fulvio Amato (id=44)
4. Select all students along with the details of the degree program they are enrolled in and its department, ordered alphabetically by last name and first name
5. Select all degree programs along with their related courses and teachers
6. Select all teachers who teach in the Department of Mathematics (54)
7. BONUS: For each student, select the number of attempts made for each exam, also displaying the highest grade. Then filter the attempts to include only those with a minimum grade of 18.

Test every query in the database client, then save the solutions in a text file.

## Repository contents

- [SQL query file](queries.sql) — the requested MySQL queries.
- [SQL query file with JOIN queries](queries-join.sql) — the requested MySQL queries involving JOIN operations.
- [ER diagram](er-diagram.webp) — visual representation of the current database schema.
- [Provided MySQL schema](db/db_university.sql) — schema and seed data used for Phase 2-3.

## Notes

The populated schema supplied for Phase 2-3 differs from the schema originally designed in Phase 1. The ER diagram in this repository represents the current database used to run the MySQL queries.

## Resources

- [DrawSQL](https://drawsql.app/) — tool for creating and sharing database diagrams.
- [dbdiagram.io](https://dbdiagram.io/) — another tool for creating and sharing database diagrams.
- [DBML](https://www.dbml.org/) — database markup language for designing and sharing database diagrams.
- [MySQL Workbench](https://www.mysql.com/products/workbench/) — official MySQL graphical user interface for database design and query execution.
- [DataGrip](https://www.jetbrains.com/datagrip/) — database management tool for working with multiple database systems.
