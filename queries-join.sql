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

-- 4. Select all students along with the details of the degree program they are enrolled in and its department, ordered alphabetically by last name and first name
select
  concat(s.surname, ' ', s.name) full_name,
  d.name degree_name,
  dep.name department_name,
  d.level level,
  d.address,
  d.email,
  d.website
from
  students s
  join degrees d on s.degree_id = d.id
  join departments dep on d.department_id = dep.id
order by
  full_name asc;

-- 5. Select all degree programs along with their related courses and teachers
select
  d.name degree,
  c.name course,
  concat(t.name, ' ', t.surname) teacher
from
  degrees d
  join courses c on c.degree_id = d.id
  join course_teacher ct on ct.course_id = c.id
  join teachers t on t.id = ct.teacher_id
order by
  `degree`,
  `course`,
  teacher;

-- 6. Select all teachers who teach in the Dipartimento di Matematica (54)
select distinct
  t.*
from
  teachers t
  join course_teacher ct on t.id = ct.teacher_id
  join courses c on ct.course_id = c.id
  join degrees d on c.degree_id = d.id
  join departments dep on d.department_id = dep.id
where
  dep.name = 'Dipartimento di Matematica'
order by
  t.surname,
  t.name;

-- 7. BONUS: For each student, select the number of attempts made for each exam, also displaying the highest grade. Then filter the attempts to include only those with a minimum grade of 18
-- ? having mantiene i tentativi falliti filtrando il risultato dopo il calcolo, al contrario di where
select
  s.id as student_id,
  concat(s.surname, ' ', s.name) as student_name,
  c.id as course_id,
  c.name as course_name,
  count(*) as attempt_count,
  max(es.vote) as highest_grade
from
  students s
  join exam_student es on es.student_id = s.id
  join exams e on e.id = es.exam_id
  join courses c on c.id = e.course_id
group by
  s.id,
  s.name,
  s.surname,
  c.id,
  c.name
having
  max(es.vote) >= 18
order by
  s.surname,
  s.name,
  c.name;
