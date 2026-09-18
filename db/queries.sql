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
  period = "I semestre"
  and year = 1;

-- Select all exam sessions taking place in the afternoon (after 2:00 PM) on June 20, 2020 (21)
select
  *
from
  exams
where
  `date` = '2020-06-20'
  and `hour` > '14:00:00';
