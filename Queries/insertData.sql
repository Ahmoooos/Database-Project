-- Insert Instructors
INSERT INTO Instructor (Ins_Name, Salary, Ins_Mail, Specialization) VALUES
('Ahmed Elsayed', 15000, 'ahmed.elsayed@fci.edu.eg', 'Database Systems'),
('Nourhan Mohamed', 17000, 'nourhan.mohamed@fci.edu.eg', 'Artificial Intelligence'),
('Tamer Hassan', 16000, 'tamer.hassan@fci.edu.eg', 'Software Engineering');

-- Insert Instructor Phone Numbers
INSERT INTO Ins_Phone (Ins_ID, Phone) VALUES
(1, '01012345678'),
(2, '01122334455'),
(3, '01234567890');

-- Insert Courses
INSERT INTO Course (Crs_Name, Duration, Ins_ID) VALUES
('Database Management', 40, 1),
('Machine Learning', 50, 2),
('Web Development', 45, 3);

-- Insert Branches
INSERT INTO Branch (Br_Name, City, Zip_Code, T_ID) VALUES
('Nasr City', 'Cairo', '11865', NULL),
('6th October', 'Giza', '12566', NULL),
('Mansoura', 'Mansoura', '35511', NULL);

-- Insert Branch Phones
INSERT INTO Br_Phone (Br_ID, Phone) VALUES
(1, '0223456789'),
(2, '0234567890'),
(3, '0501234567');

-- Insert Tracks
INSERT INTO Track (T_Name, Start_Date, End_Date, St_ID) VALUES
('AI Track', '2024-03-01', '2024-07-01', NULL),
('Web Development Track', '2024-04-01', '2024-08-01', NULL);

-- Insert Students
INSERT INTO Student (St_FName, St_LName, Gender, Address, St_Age, St_Mail, Phone, T_ID) VALUES
('Mohamed', 'Ali', 'Male', 'Nasr City, Cairo', 22, 'mohamed.ali@student.eg', '01098765432', 1),
('Hend', 'Ahmed', 'Female', 'Heliopolis, Cairo', 21, 'hend.ahmed@student.eg', '01223456789', 2),
('Karim', 'Tarek', 'Male', 'Dokki, Giza', 23, 'karim.tarek@student.eg', '01111223344', 1);

-- Insert Exams
INSERT INTO Exam (Ex_Name, Start_Time, Duration, Total_Marks, Num_of_Questions, Crs_ID) VALUES
('Database Midterm', '2024-05-10 10:00:00', 60, 100, 10, 1),
('ML Final Exam', '2024-06-20 12:00:00', 90, 100, 15, 2);

-- Insert Questions
INSERT INTO Questions (Text, Answer, Mark, MCQ, TFQ, Ins_ID) VALUES
('What is the primary key used for?', 'To uniquely identify records', 10, 1, 0,  1),
('Which SQL command is used to retrieve data from a database?', 'SELECT', 10, 1, 0, 1),
('True or False: A neural network can be used for classification tasks.', 'True', 10, 0, 1, 2);

-- Insert Choices for MCQ Questions
INSERT INTO Choice (Is_Correct, Text, Q_ID) VALUES
(1, 'To uniquely identify records', 1),
(0, 'To store duplicate records', 1),
(0, 'To delete records', 1),
(1, 'SELECT', 2),
(0, 'DELETE', 2),
(0, 'UPDATE', 2);

-- Insert Student Course Enrollment
INSERT INTO Student_Course (StudentID, CourseID) VALUES
(1, 1),
(2, 2),
(3, 1);

-- Insert Student Answers
INSERT INTO Answers (StudentID, ExamID, CourseID, Score, TimeStamp) VALUES
(1, 1, 1, 85, GETDATE()),
(2, 1, 1, 75, GETDATE()),
(3, 2, 2, 90, GETDATE());


INSERT INTO Exam_Question (ExamID, Q_ID) VALUES (2, 3); 
INSERT INTO Exam_Question (ExamID, Q_ID) VALUES (2, 6); 
; 
INSERT INTO Exam_Question (ExamID, Q_ID) VALUES (4, 3); 
INSERT INTO Exam_Question (ExamID, Q_ID) VALUES (4, 6); 