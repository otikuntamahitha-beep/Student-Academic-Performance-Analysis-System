CREATE DATABASE Student_Performance_DB;
USE Student_Performance_DB;

-- =========================================
-- 1. Students Table
-- =========================================

CREATE TABLE Students (
    student_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    gender VARCHAR(10),
    age INT,
    learning_disabilities VARCHAR(50)
);

-- =========================================
-- 2. Teachers Table
-- =========================================

CREATE TABLE Teachers (
    teacher_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(100) NOT NULL,
    teacher_quality VARCHAR(50),
    access_to_resources VARCHAR(50)
);

-- =========================================
-- 3. Academic_Record Table
-- =========================================

CREATE TABLE Academic_Record (
    record_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    hours_studied INT,
    attendance INT,
    tutoring_sessions INT,
    previous_scores INT,

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id)
    ON DELETE CASCADE
);

-- =========================================
-- 4. Lifestyle Table
-- =========================================

CREATE TABLE Lifestyle (
    lifestyle_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_id INT UNIQUE,
    sleep_hours DECIMAL(4,2),
    physical_activity_hours DECIMAL(4,2),
    extracurricular_activity VARCHAR(10),
    internet_access VARCHAR(10),

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id)
    ON DELETE CASCADE
);

-- =========================================
-- 5. Enrollment Table
-- =========================================

CREATE TABLE Enrollment (
    enrollment_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    teacher_id INT,
    academic_year YEAR,
    course_stream VARCHAR(50),
    enrollment_date DATE,

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id)
    ON DELETE CASCADE,

    FOREIGN KEY (teacher_id)
    REFERENCES Teachers(teacher_id)
    ON DELETE CASCADE
);

-- =========================================
-- 6. Performance Table
-- =========================================

CREATE TABLE Performance (
    performance_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    record_id INT UNIQUE,
    student_activeness VARCHAR(50),
    exam_score INT,

    FOREIGN KEY (student_id)
    REFERENCES Students(student_id)
    ON DELETE CASCADE,

    FOREIGN KEY (record_id)
    REFERENCES Academic_Record(record_id)
    ON DELETE CASCADE
);

