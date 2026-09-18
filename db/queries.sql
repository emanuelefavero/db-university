-- Select all students born in 1990
select
  *
from
  students
where
  year(date_of_birth) = 1990;

-- Select all courses worth more than 10 credits (479)
select
  *
from
  courses
where
  cfu > 10;

-- Select all students who are over 30 years old
select
  *
from
  students
where
  date_of_birth < curdate() - interval 30 year;

-- Select all first-semester courses from the first year of any degree program (286)
select
  *
from
  courses
where
  `period` = "I semestre"
  and `year` = 1;

-- Select all exam sessions taking place in the afternoon (after 2:00 PM) on June 20, 2020 (21)
select
  *
from
  exams
where
  `date` = '2020-06-20'
  and `hour` > '14:00:00';

-- Select all "magistrale" degree programs (38)
select
  *
from
  `degrees`
where
  `level` = "magistrale";

-- How many departments does the university have? (12)
select
  count(id) as department_count
from
  departments;

-- How many teachers do not have a phone number? (50)
select
  count(id) as teachers_without_phone
from
  teachers
where
  phone is null;

-- Count how many students enrolled each year
select
  year(enrolment_date) as enrolment_year,
  count(id) as student_count
from
  students
group by
  enrolment_year;

-- Count the teachers who have their office in the same building
select
  office_address,
  count(id) as teacher_count
from
  teachers
group by
  office_address;
