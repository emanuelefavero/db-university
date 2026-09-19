-- GROUP BY queries
-- 1. Count how many students enrolled each year
select
  year(enrolment_date) year,
  count(id) student_count
from
  students
group by
  year;

-- 2. Count how many teachers have their office in the same building
select
  office_address,
  count(id) teacher_count
from
  teachers
group by
  office_address;

-- 3. Calculate the average grade for each exam session
select
  exam_id,
  round(avg(vote), 1) average_grade
from
  exam_student
group by
  exam_id;

-- 4. Count how many degree programs there are in each department
select
  dep.name,
  count(d.id)
from
  degrees d
  join departments dep on d.department_id = dep.id
group by
  dep.name;

-- JOIN queries
-- 1. Select all students enrolled in the "Corso di Laurea in Economia"
select
  concat(s.name, " ", s.surname),
  s.email,
  d.name
from
  students s
  join degrees d on s.degree_id = d.id
where
  d.name = 'Corso di Laurea in Economia'
