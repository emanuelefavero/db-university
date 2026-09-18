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
