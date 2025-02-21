
----------------------------------------------------------------------------------------------------------------
--***************************************Course Crude**********************************************
--------------------------------------select-------------------------------------
go
create proc Get_all_Courses
 as
  begin
   select * from course;
  end;
--------------------------------------------------------------------------------
go
create proc Get_course_by_id 
@Id int
 as
  begin
   select * from course
   where crs_id= @Id
  end
------------------------------------------------------------------------------
--------------------------------     ---Insrt--------------------------------------
go
create proc Insert_course @C_name varchar(20), @Duration int, @Ins_id int
 as
  begin
  insert into course
  values( @C_name,@Duration, @Ins_id)
  end
----------------------------------------------------------------------------------
---------------------------------------------update-------------------------------
go 
create proc Update_course_name @C_Id_Updat int, @new_course_name varchar(20)
as
begin
update course
set crs_name=@new_course_name
where crs_id=@C_Id_Updat
end
--------------------------------------------------------------------------------------
go
create proc Update_course_ins_id @C_Id_Updat int, @new_course_ins_id int
as
begin
update course
set ins_id=@new_course_ins_id
where crs_id=@C_Id_Updat
end
------------------------------------------------------------------------------------------
go
create proc Update_course_duration @C_Id_Updat int, @new_course_duration int
as
begin
update course
set duration=@new_course_duration
where crs_id=@C_Id_Updat
end
------------------------------------------------------------------------------------------
go
create proc Update_cours_ins_id @C_Id_Updat int, @new_course_ins_id int
as
begin
update course
set ins_id=@new_course_ins_id
where crs_id=@C_Id_Updat
end
--------------------------------------------------------------------------------------------
---------------------------------------delete-------------------------------------------
go
create proc Delete_course @C_Id_Deleted int
as
begin
delete from course
where crs_id=@C_Id_Deleted
end
