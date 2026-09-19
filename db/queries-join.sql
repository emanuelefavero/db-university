-- Count how many students enrolled each year
select
  year(enrolment_date) year,
  count(id) student_count
from
  students
group by
  year;

-- Count how many teachers have their office in the same building
select
  office_address,
  count(id) teacher_count
from
  teachers
group by
  office_address;
