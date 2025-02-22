create procedure AddStudent
    @St_FName varchar(50),
    @St_LName varchar(50),
    @Gender varchar(10),
    @Address text,
    @St_Age int,
    @St_Mail varchar(100),
    @Phone varchar(20),
    @T_ID int
as
begin
    insert into Student (St_FName, St_LName, Gender, Address, St_Age, St_Mail, Phone, T_ID)
    values (@St_FName, @St_LName, @Gender, @Address, @St_Age, @St_Mail, @Phone, @T_ID);
end;


create procedure GetAllStudents
as
begin
    select * from Student;
end;



create procedure UpdateStudentEmail
    @St_ID int,
    @NewEmail varchar(100)
as
begin
    update Student
    set St_Mail = @NewEmail
    where St_ID = @St_ID;
end;


CREATE PROCEDURE UpdateStudent (
    @St_ID INT,
    @St_Fname VARCHAR(50),
    @St_Lname VARCHAR(50),
    @Gender CHAR(1),
    @Address VARCHAR(255),
    @St_Age INT,
    @Phone VARCHAR(15),
    @St_Mail VARCHAR(100),
    @T_ID INT
)
AS
BEGIN
    UPDATE Student
    SET St_Fname = @St_Fname, St_Lname = @St_Lname, Gender = @Gender, Address = @Address,
        St_Age = @St_Age, Phone = @Phone, St_Mail = @St_Mail, T_ID = @T_ID
    WHERE St_ID = @St_ID
END


create procedure DeleteStudent
    @St_ID int
as
begin
    delete from Student where St_ID = @St_ID;
end;



create procedure GetStudentsByTrack
    @T_ID int
as
begin
    select * from Student where T_ID = @T_ID;
end;


CREATE PROCEDURE StudentLogin
    @Stu_Username VARCHAR(50),
    @Stu_Password VARCHAR(50)
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM Student
        WHERE st_fname + ' '+ st_lname  = @Stu_Username AND st_password = @Stu_Password
    )
    BEGIN
        PRINT 'Login successful!';
    END
    ELSE
    BEGIN
        PRINT 'Invalid username or password.';
    END
END;



CREATE TABLE SystemLogins (
    UserID INT,
    Role VARCHAR(50),
    LoginTime DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER LogUserLogin
ON Student
AFTER INSERT
AS
BEGIN
    INSERT INTO SystemLogins (UserID, Role)
    SELECT St_ID, 'Student' FROM inserted;
END;

CREATE PROCEDURE GetStudentGrades
    @StudentID INT
AS
BEGIN
    SELECT E.Ex_name, A.Score
    FROM answers A
    JOIN Exam E ON A.ExamID = E.Ex_id
    WHERE A.studentid = @StudentID;
END;


