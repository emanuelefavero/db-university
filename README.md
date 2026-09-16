# DB University

A database relationships planning exercise from my web dev course

## Exercise

Design a university database schema based on the following requirements:

- Departments & Degrees: A Department offers multiple Degree Courses.

- Courses & Teachers: A Degree Course has multiple Courses; a Course can have multiple Teachers.

- Students: A Student belongs to one Degree Course.

- Exams & Grades: A Course has multiple Exam Sessions. Students can enroll in multiple sessions. Record all exam grades, including fails.

## Solution

### ER Diagram

![er-diagram.jpg](er-diagram.jpg 'ER Diagram')

### DBML Schema

See [db/schema.dbml](db/schema.dbml)

### SQL Schema

See [db/schema.sql](db/schema.sql)

## References

- [DBML Documentation](https://dbml.dbdiagram.io/home)
- [DBDiagram](https://dbdiagram.io/home)
- [DrawSQL](https://drawsql.app/)
