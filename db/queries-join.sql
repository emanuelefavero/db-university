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
  d.name = 'Corso di Laurea in Economia';

-- 2. Select all "Corso di Laurea Magistrale" in "Dipartimento di Neuroscienze"
select
  c.name course_name,
  d.name degree_name,
  dep.name department_name
from
  courses c
  join degrees d on c.degree_id = d.id
  join departments dep on d.department_id = dep.id
where
  d.name like '%laurea magistrale%'
  and dep.name = 'dipartimento di neuroscienze';

-- 3. Select all courses taught by Fulvio Amato (id=44)
select
  concat(t.name, ' ', t.surname),
  c.name,
  c.period
from
  course_teacher ct
  join courses c on ct.course_id = c.id
  join teachers t on ct.teacher_id = t.id
where
  t.id = 44;
