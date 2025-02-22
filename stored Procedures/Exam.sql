-- 1.Insert an Exam

create procedure AddExam
    @Ex_Name varchar(100),
    @Start_Time datetime,
    @Duration int,
    @Total_Marks int,
    @Num_of_Questions int,
    @Crs_ID int
as
begin
    insert into Exam (Ex_Name, Start_Time, Duration, Total_Marks, Num_of_Questions, Crs_ID)
    values (@Ex_Name, @Start_Time, @Duration, @Total_Marks, @Num_of_Questions, @Crs_ID);
end;

-- 2.Get All Exams
create procedure GetAllExams
as
begin
    select * from Exam;
end;


-- 3.Update Exam Duration
create procedure UpdateExamDuration
    @Ex_ID int,
    @NewDuration int
as
begin
    update Exam
    set Duration = @NewDuration
    where Ex_ID = @Ex_ID;
end;


-- 4.Delete an Exam
create procedure DeleteExam
    @Ex_ID int
as
begin
    delete from Exam where Ex_ID = @Ex_ID;
end;

-- Get Exams for a Course
create procedure GetExamsByCourse
    @Crs_ID int
as
begin
    select * from Exam where Crs_ID = @Crs_ID;
end;


CREATE PROCEDURE ViewAllInstructorsAndCourses
AS
BEGIN
    SELECT I.Ins_name, C.crs_name AS CourseName
    FROM Instructor I
    JOIN course C ON I.Ins_id = C.Ins_ID;
END;



