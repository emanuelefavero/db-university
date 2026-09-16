# ER

```text
ENTITY Department {}
ENTITY DegreeProgram {}
ENTITY Course {}
ENTITY Teacher {}
ENTITY Student {}
ENTITY ExamSession {}

RELATIONSHIP DepartmentDegreeProgram {
  Department 1:N DegreeProgram
}

RELATIONSHIP DegreeProgramCourse {
  DegreeProgram 1:N Course
}

RELATIONSHIP DegreeProgramStudent {
  DegreeProgram 1:N Student
}

RELATIONSHIP CourseTeacher {
  Course N:N Teacher
}

RELATIONSHIP CourseExamSession {
  Course 1:N ExamSession
}

RELATIONSHIP ExamSessionRegistration {
  Student N:N ExamSession
}
```
