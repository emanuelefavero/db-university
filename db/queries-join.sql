-- Count how many students enrolled each year
select
  year(enrolment_date) year,
  count(id) student_count
from
  students
group by
  year;
