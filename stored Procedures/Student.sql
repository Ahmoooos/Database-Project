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


