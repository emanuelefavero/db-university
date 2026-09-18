CREATE TABLE `departments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL
);

CREATE TABLE `degree_programs` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `department_id` int NOT NULL
);

CREATE TABLE `courses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `degree_program_id` int NOT NULL
);

CREATE TABLE `teachers` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL
);

CREATE TABLE `students` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `degree_program_id` int NOT NULL
);

CREATE TABLE `exam_sessions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `date` date NOT NULL,
  `course_id` int NOT NULL
);

CREATE TABLE `courses_teachers` (
  `teacher_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`teacher_id`, `course_id`)
);

CREATE TABLE `exam_session_registrations` (
  `student_id` int NOT NULL,
  `exam_session_id` int NOT NULL,
  `grade` int,
  PRIMARY KEY (`student_id`, `exam_session_id`)
);

ALTER TABLE `degree_programs` ADD FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`degree_program_id`) REFERENCES `degree_programs` (`id`);

ALTER TABLE `students` ADD FOREIGN KEY (`degree_program_id`) REFERENCES `degree_programs` (`id`);

ALTER TABLE `exam_sessions` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `courses_teachers` ADD FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

ALTER TABLE `courses_teachers` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `exam_session_registrations` ADD FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

ALTER TABLE `exam_session_registrations` ADD FOREIGN KEY (`exam_session_id`) REFERENCES `exam_sessions` (`id`);
