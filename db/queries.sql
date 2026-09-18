-- Select all students born in 1990
select
  *
from
  students
where
  year(date_of_birth) = 1990;
