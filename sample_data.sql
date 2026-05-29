USE Student_Performance_DB;

-- =========================================
-- 1. STUDENTS TABLE (30 VALUES)
-- =========================================

INSERT INTO Students (student_name, gender, age, learning_disabilities) VALUES
('Aarav Sharma', 'Male', 19, 'None'),
('Mahitha Otikunta', 'Female', 18, 'Dyslexia'),
('Rahul Verma', 'Male', 20, 'None'),
('Sneha Iyer', 'Female', 19, 'None'),
('Arjun Patel', 'Male', 18, 'ADHD'),
('Meera Nair', 'Female', 20, 'None'),
('Karan Gupta', 'Male', 19, 'None'),
('Ananya Singh', 'Female', 18, 'None'),
('Vikram Joshi', 'Male', 21, 'Dyscalculia'),
('Diya Kapoor', 'Female', 19, 'None'),
('Rohan Mehta', 'Male', 18, 'None'),
('Ishita Rao', 'Female', 20, 'ADHD'),
('Lokesh Panuganti', 'Male', 19, 'None'),
('Pooja Menon', 'Female', 18, 'None'),
('Harsh Kumar', 'Male', 20, 'None'),
('Neha Jain', 'Female', 19, 'None'),
('Arun Nelli', 'Male', 18, 'None'),
('Aditi Sharma', 'Female', 20, 'Dyslexia'),
('Krishna Rao', 'Male', 21, 'None'),
('Simran Kaur', 'Female', 19, 'None'),
('Sathwika Munugoti', 'Female', 18, 'None'),
('Varun Nair', 'Male', 20, 'ADHD'),
('Tanya Gupta', 'Female', 19, 'None'),
('Nikhil Jain', 'Male', 18, 'None'),
('Lavanya Reddy', 'Female', 20, 'None'),
('Siddharth Roy', 'Male', 21, 'None'),
('Maya Kapoor', 'Female', 18, 'Dyscalculia'),
('Dev Patel', 'Male', 19, 'None'),
('Anjali Verma', 'Female', 20, 'None'),
('Rithish raj Nagula', 'Male', 19, 'None');

-- =========================================
-- 2. TEACHERS TABLE (10 VALUES)
-- =========================================

INSERT INTO Teachers (teacher_name, teacher_quality, access_to_resources) VALUES
('Mr. Safwan', 'High', 'High'),
('Mrs. Aswathi', 'Medium', 'Medium'),
('Dr. Rohan', 'High', 'High'),
('Ms. Lavanya', 'Low', 'Low'),
('Mr. Sathvik', 'Medium', 'Medium'),
('Mrs. Jennifer', 'High', 'High'),
('Dr. Vivek', 'Medium', 'Medium'),
('Ms. Neha', 'High', 'High'),
('Mr. Suresh', 'Low', 'Low'),
('Mrs. Deepa', 'Medium', 'Medium');

-- =========================================
-- 3. ACADEMIC_RECORD TABLE
-- ONE-TO-MANY RELATION
-- SAME student_id APPEARS MULTIPLE TIMES
-- =========================================

INSERT INTO Academic_Record 
(student_id, hours_studied, attendance, tutoring_sessions, previous_scores)
VALUES
(1, 5, 90, 2, 85),

(2, 4, 80, 1, 75),

(3, 7, 95, 4, 91),

(4, 3, 72, 0, 65),

(5, 6, 88, 2, 82),

(6, 5, 85, 2, 80),

(3, 8, 97, 5, 94),

(7, 4, 79, 1, 74),

(8, 8, 98, 5, 96),

(9, 2, 68, 0, 58),

(10, 6, 89, 2, 84),

(11, 5, 90, 3, 87),

(12, 4, 77, 1, 72),

(13, 8, 96, 4, 95),

(14, 3, 73, 0, 66),

(15, 6, 87, 2, 81),

(16, 5, 86, 2, 83),

(17, 7, 93, 3, 89),
(5, 7, 91, 3, 86),

(18, 4, 81, 1, 76),

(19, 8, 97, 5, 94),
(2, 5, 84, 2, 78),

(20, 5, 84, 2, 79),

(21, 4, 78, 1, 73),

(22, 6, 88, 3, 85),
(1, 6, 92, 3, 88),

(23, 7, 92, 4, 90),

(24, 5, 83, 2, 77),
(8, 7, 95, 4, 93),

(25, 8, 98, 5, 97);

-- =========================================
-- 4. LIFESTYLE TABLE
-- ONE-TO-ONE RELATION
-- =========================================

INSERT INTO Lifestyle
(student_id, sleep_hours, physical_activity_hours, extracurricular_activity, internet_access)
VALUES
(1, 7.5, 1.5, 'Yes', 'Yes'),
(2, 6.5, 1.0, 'No', 'Yes'),
(3, 8.0, 2.0, 'Yes', 'Yes'),
(4, 5.5, 0.5, 'No', 'No'),
(5, 7.0, 2.5, 'Yes', 'Yes'),
(6, 6.8, 1.8, 'Yes', 'Yes'),
(7, 7.2, 1.2, 'No', 'Yes'),
(8, 8.1, 2.3, 'Yes', 'Yes'),
(9, 5.9, 0.8, 'No', 'No'),
(10, 7.4, 1.6, 'Yes', 'Yes'),
(11, 7.8, 2.1, 'Yes', 'Yes'),
(12, 6.3, 1.0, 'No', 'Yes'),
(13, 8.2, 2.7, 'Yes', 'Yes'),
(14, 5.8, 0.7, 'No', 'No'),
(15, 7.1, 1.9, 'Yes', 'Yes');

-- =========================================
-- 5. ENROLLMENT TABLE
-- MANY-TO-MANY RELATION
-- SAME teacher_id AND student_id REPEATED
-- =========================================

INSERT INTO Enrollment
(student_id, teacher_id, academic_year, course_stream, enrollment_date)
VALUES
(1, 1, 2025, 'Computer Science', '2025-01-10'),
(2, 1, 2025, 'Computer Science', '2025-01-12'),
(3, 2, 2025, 'Data Science', '2025-01-15'),
(4, 2, 2025, 'Cyber Security', '2025-01-18'),
(5, 3, 2025, 'Artificial Intelligence', '2025-01-20'),
(6, 3, 2025, 'Artificial Intelligence', '2025-01-22'),
(7, 4, 2025, 'Data Science', '2025-01-24'),
(8, 4, 2025, 'Computer Science', '2025-01-26'),
(9, 5, 2025, 'Cyber Security', '2025-01-28'),
(10, 5, 2025, 'Computer Science', '2025-02-01'),
(11, 6, 2025, 'Artificial Intelligence', '2025-02-03'),
(12, 6, 2025, 'Data Science', '2025-02-05'),
(13, 7, 2025, 'Cyber Security', '2025-02-08'),
(14, 7, 2025, 'Computer Science', '2025-02-10'),
(15, 8, 2025, 'Artificial Intelligence', '2025-02-12'),
(1, 2, 2025, 'Data Science', '2025-03-01'),
(2, 3, 2025, 'Artificial Intelligence', '2025-03-03'),
(3, 4, 2025, 'Computer Science', '2025-03-05'),
(4, 5, 2025, 'Cyber Security', '2025-03-08'),
(5, 6, 2025, 'Data Science', '2025-03-10');

-- =========================================
-- 6. PERFORMANCE TABLE
-- ONE-TO-ONE WITH RECORD_ID
-- =========================================

INSERT INTO Performance
(student_id, record_id, student_activeness, exam_score)
VALUES
(1, 1, 'High', 88),
(1, 2, 'High', 91),
(2, 3, 'Medium', 75),
(2, 4, 'Medium', 79),
(3, 5, 'High', 94),
(3, 6, 'High', 97),
(4, 7, 'Low', 64),
(5, 8, 'High', 86),
(5, 9, 'High', 90),
(6, 10, 'Medium', 82),
(7, 11, 'Medium', 74),
(8, 12, 'High', 96),
(8, 13, 'High', 94),
(9, 14, 'Low', 58),
(10, 15, 'High', 85),
(11, 16, 'High', 88),
(12, 17, 'Medium', 73),
(13, 18, 'High', 95),
(14, 19, 'Low', 66),
(15, 20, 'Medium', 81),
(16, 21, 'Medium', 83),
(17, 22, 'High', 90),
(18, 23, 'Medium', 76),
(19, 24, 'High', 96),
(20, 25, 'Medium', 80);