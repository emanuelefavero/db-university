-- 1. Select all students born in 1990
select
  *
from
  students
where
  year(date_of_birth) = 1990;

-- 2. Select all courses worth more than 10 credits (479)
select
  *
from
  courses
where
  cfu > 10;

-- 3. Select all students who are over 30 years old
select
  *
from
  students
where
  date_of_birth < curdate() - interval 30 year;

-- 4. Select all first-semester courses from the first year of any degree program (286)
select
  *
from
  courses
where
  `period` = 'I semestre'
  and `year` = 1;

-- 5. Select all exam sessions taking place in the afternoon (after 2:00 PM) on June 20, 2020 (21)
select
  *
from
  exams
where
  `date` = '2020-06-20'
  and `hour` > '14:00:00';

-- 6. Select all 'magistrale' degree programs (38)
select
  *
from
  `degrees`
where
  `level` = 'magistrale';

-- 7. How many departments does the university have? (12)
select
  count(id) as department_count
from
  departments;

-- 8. How many teachers do not have a phone number? (50)
select
  count(id) as teachers_without_phone
from
  teachers
where
  phone is null;

-- GROUP BY queries
-- 1. Count how many students enrolled each year
select
  year(enrolment_date) as enrolment_year,
  count(id) as student_count
from
  students
group by
  enrolment_year;

-- 2. Count the teachers who have their office in the same building
select
  office_address,
  count(id) as teacher_count
from
  teachers
group by
  office_address;

-- 3. Calculate the average grade for each exam session
select
  exam_id,
  round(avg(vote), 2) as average_grade
from
  exam_student
group by
  exam_id;

-- 4. Count how many degree programs there are in each department
select
  department_id,
  count(id) as degree_count
from
  `degrees`
group by
  department_id;
