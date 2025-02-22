-- Insert data into Instructor
INSERT INTO Instructor (ins_name, ins_password, salary, ins_mail, specialization)
VALUES
('Ahmed Khaled', 'pass123', 15000, 'ahmed.khaled@gmail.com', 'C#'),
('Sara Mohamed', 'pass456', 14000, 'sara.mohamed@gmail.com', 'SQL'),
('Khaled Hassan', 'pass789', 16000, 'khaled.hassan@gmail.com', 'Java'),
('Nour Ali', 'pass321', 13000, 'nour.ali@gmail.com', 'Python'),
('Youssef Omar', 'pass654', 15500, 'youssef.omar@gmail.com', 'Data Science'),
('Mona Ahmed', 'pass987', 14500, 'mona.ahmed@gmail.com', 'React'),
('Hassan Amr', 'pass111', 15000, 'hassan.amr@gmail.com', 'Angular'),
('Fatma Tarek', 'pass222', 13500, 'fatma.tarek@gmail.com', 'JavaScript'),
('Amr Salah', 'pass333', 14800, 'amr.salah@gmail.com', 'Machine Learning'),
('Rania Magdy', 'pass444', 15200, 'rania.magdy@gmail.com', 'Database Management');

-- Insert data into ins_phone
INSERT INTO ins_phone (ins_id, phone)
VALUES
(1, '01012345678'),
(2, '01023456789'),
(3, '01034567890'),
(4, '01045678901'),
(5, '01056789012'),
(6, '01067890123'),
(7, '01078901234'),
(8, '01089012345'),
(9, '01090123456'),
(1, '01001234567');

-- Insert data into course
INSERT INTO course (crs_name, duration, ins_id)
VALUES
('C# Basics', 30, 1),
('Advanced SQL', 45, 2),
('Java Essentials', 35, 3),
('Python for Data Science', 50, 4),
('Data Science with Python', 40, 5),

-- Insert data into branch
INSERT INTO branch (br_name, city, zip_code, t_id)
VALUES
('Cairo Branch', 'Cairo', '12345', 1),
('Alex Branch', 'Alexandria', '23456', 2),
('Giza Branch', 'Giza', '34567', 3),
('Mansoura Branch', 'Mansoura', '45678', 4),
('Asyut Branch', 'Asyut', '56789', 5),
('Suez Branch', 'Suez', '67890', 6),
('Tanta Branch', 'Tanta', '78901', 7),
('Ismailia Branch', 'Ismailia', '89012', 8),
('Fayoum Branch', 'Fayoum', '90123', 9),
('Zagazig Branch', 'Zagazig', '01234', 10);

-- Insert data into br_phone
INSERT INTO br_phone (br_id, phone)
VALUES
(2, '01023423423'),
(3, '01034534534'),
(4, '01045645645'),
(5, '01056756756'),
(6, '01067867867'),
(7, '01078978978'),
(9, '01090190190')


-- Insert data into track
select * from track
INSERT INTO track (t_name, start_date, end_date)
VALUES
('Data Analysis', '2024-01-01', '2024-04-01'),
('Software Engineering', '2024-02-01', '2024-05-01'),
('AI Development', '2024-03-01', '2024-06-01'),
('Cyber Security', '2024-04-01', '2024-07-01'),
('Full Stack Development', '2024-05-01', '2024-08-01')


-- Insert data into Student
INSERT INTO Student (st_fname, st_lname, st_password, gender, address, st_age, st_mail, phone, t_id)
VALUES
('Mohamed', 'Ali', 'stpass123', 'Male', 'Cairo', 22, 'mohamed.ali@gmail.com', '01011112222', 1),
('Sara', 'Hassan', 'stpass456', 'Female', 'Alexandria', 21, 'sara.hassan@gmail.com', '01022223333', 2),
('Khaled', 'Omar', 'stpass789', 'Male', 'Giza', 23, 'khaled.omar@gmail.com', '01033334444', 3),
('Nour', 'Mohamed', 'stpass321', 'Female', 'Mansoura', 20, 'nour.mohamed@gmail.com', '01044445555', 4),
('Youssef', 'Ahmed', 'stpass654', 'Male', 'Asyut', 24, 'youssef.ahmed@gmail.com', '01055556666', 5);

-- Insert sample data into exam table
select * from exam
INSERT INTO exam (ex_name, start_time, duration, total_marks, num_of_questions, crs_id, st_id)
VALUES
    ('Midterm Exam', '2025-03-10 09:00:00', 120, 100, 10, 2, 1),
    ('Final Exam', '2025-05-20 10:00:00', 180, 150, 15, 2, 2),
    ('Quiz 1', '2025-02-15 14:00:00', 60, 50, 5, 3, 3),
    ('Practice Test', '2025-04-05 12:00:00', 90, 75, 8, 3, 4);

-- Insert sample data into questions table
select * from questions
select * from exam
INSERT INTO questions ( text, answer, mark, mcq, tfq, ins_id)
VALUES
    ( 'What is a database?', 'A structured set of data', 10, 1, 0, 1),
    ( 'Define primary key.', 'A unique identifier', 10, 0, 1, 2),
    ( 'Explain normalization.', 'Database design technique', 15, 1, 0, 3),
    ('What is SQL?', 'Structured Query Language', 10, 0, 1, 4);

-- Insert sample data into choice table
INSERT INTO choice (is_correct, text, q_id, examid)
VALUES
    (1, 'A structured set of data', 3, 2),
    (0, 'A random collection of files', 6, 2),
    (1, 'A unique identifier', 8, 2),
    (0, 'A primary attribute', 9, 2);

select * from student
select * from course
select * from exam

-- Insert sample data into student_course table
INSERT INTO student_course (studentid, courseid)
VALUES
    (1, 2),
    (2, 3),
    (3, 3),
    (4, 7);

-- Insert sample data into answers table
INSERT INTO answers (studentid, examid, courseid, score, timestamp)
VALUES
    (1, 2, 2, 85, '2025-03-10 11:00:00'),
    (2, 2, 2, 90, '2025-05-20 13:00:00'),
    (3, 4, 3, 75, '2025-02-15 15:00:00'),
    (4, 4, 7, 80, '2025-04-05 13:30:00');


select * from branch
select * from track
select * from course
select * from track_branch
-- Insert sample data into track_branch table
INSERT INTO track_branch (branch_id, trackid)
VALUES
    (5, 4);

-- Insert sample data into track_course table
INSERT INTO track_course (course_id, trackid)
VALUES
    (3, 3)
    

-- Insert sample data into ins_track table
INSERT INTO ins_track (ins_id, trackid)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);

-- Insert sample data into Exam_Question table
select * from exam
select * from questions
select * from Exam_Question
INSERT INTO Exam_Question (ExamID, Q_ID)
VALUES
    (2, 3)
    
