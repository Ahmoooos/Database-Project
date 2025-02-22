-- ================================
-- Branch Testing
-- ================================

exec createbranch 'Main Branch';
exec createbranch null; 

exec getbranches;

exec updatebranch 7, 'Updated Branch';
exec updatebranch 999, 'Non-existing Branch';

exec deletebranch 1;
exec deletebranch 999;

-- ================================
-- Track Testing
-- ================================

exec createtrack 'AI Track';

exec gettracks;

exec updatetrack 1, 'Updated Track';

exec assigncoursetotrack 1, 1; 
exec assigncoursetotrack 999, 1; 

-- ================================
-- Student Testing
-- ================================

exec addstudent 'Eman', 'Elsayed', 'Female', '123 Street', 20, 'eman@example.com', '1234567890', 1;
exec addstudent null, 'Ahmed', 'Male', '123 Street', 20, 'ahmed@example.com', '1234567890', 1;

exec getallstudents;

exec updatestudentemail 1, 'newemail@example.com';
exec updatestudentemail 999, 'invalid@example.com';

exec deletestudent 1;
exec deletestudent 999;

exec getstudentsbytrack 1;
exec getstudentsbytrack 999;

-- ================================
-- Course Testing
-- ================================

exec addcourse 'Python 101', 30, 1;

exec getallcourses;

exec updatecoursename 1, 'Advanced Python';

exec deletecourse 1;

exec getcoursesbyinstructor 1;
exec getcoursesbyinstructor 999;

-- ================================
-- Instructor Testing
-- ================================

exec addinstructor 'Dr.Hend', 5000, 'dr.hend@example.com', 'AI';

exec getallinstructors;

exec updateinstructorsalary 1, 6000;

exec updateinstructor 1, 'Dr. Ahmed', 5500, 'ahmad@example.com', 'ML';

exec deleteinstructor 1;

exec getinstructorsbyspecialization 'AI';

exec getinstructorbyid 1;
exec getinstructorbyid 999;

-- ================================
-- Exam Testing
-- ================================

exec addexam 'Midterm Exam', '2025-03-01 09:00:00', 120, 100, 20, 1;

exec getallexams;

exec updateexamduration 1, 150;

exec deleteexam 1;

exec getexamsbycourse 1;
exec getexamsbycourse 999;

exec generaterandomexam 'Python 101', 5, 5;
exec generaterandomexam 'Invalid Course', 5, 5;

exec countquestionsbytype 1;
exec countquestionsbytype 999;

-- ================================
-- Question Testing
-- ================================

exec addquestion 'What is AI?', 'Artificial Intelligence', 10, 1, 0, 1, 1;

exec getallquestions;

exec updatequestiontext 1, 'What is Machine Learning?';

exec deletequestion 1;

exec getquestionsbyexam 1;
exec getquestionsbyexam 999;

-- ================================
-- Score & Statistics Testing
-- ================================

exec calculatestudentscores 1, 1;
exec calculatestudentscores 999, 1;

exec getexamstatistics 1;
exec getexamstatistics 999;

