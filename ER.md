# ER

```dbml
ENTITY Department {
  id: INT [PK]
  name: VARCHAR [NOT NULL]
}

ENTITY DegreeProgram {
  id: INT [PK]
  name: VARCHAR [NOT NULL]
  department_id: INT [FK N:1 Department.id]
}

ENTITY Course {
  id: INT [PK]
  name: VARCHAR [NOT NULL]
  degree_program_id: INT [FK N:1 DegreeProgram.id]
}

ENTITY Teacher {
  id: INT [PK]
  name: VARCHAR [NOT NULL]
}

ENTITY Student {
  id: INT [PK]
  name: VARCHAR [NOT NULL]
  degree_program_id: INT [FK N:1 DegreeProgram.id]
}

ENTITY ExamSession {
  id: INT [PK]
  date: DATE [NOT NULL]
  course_id: INT [FK N:1 Course.id]
}

RELATIONSHIP CourseTeacher {
  Course N:N Teacher

  teacher_id: INT [FK N:1 Teacher.id]
  course_id: INT [FK N:1 Course.id]

  [PK teacher_id, course_id]
}

RELATIONSHIP ExamSessionRegistration {
  Student N:N ExamSession

  student_id: INT [FK N:1 Student.id]
  exam_session_id: INT [FK N:1 ExamSession.id]

  grade: INT [NULL]

  [PK student_id, exam_session_id]
}
```
