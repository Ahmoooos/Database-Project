
--------------------------------------select-------------------------------------
create proc Get_all_exams
 as
  begin
   select * from exam;
  end;
--------------------------------------------------------------------------------
go
create proc Get_exam_by_id 
@Id int
 as
  begin
   select * from exam
   where ex_id= @Id
  end
------------------------------------------------------------------------------
--------------------------------     ---Insrt--------------------------------------
go
create proc Insert_exam @E_name varchar(20), @Start_time date, @Duration int, @Total_marks int, @Num_of_q int, @Crs_id int, @St_id int
 as
  begin
  insert into exam
  values( @E_name, @Start_time, @Duration, @Total_marks, @Num_of_q, @Crs_id, @St_id)
  end
----------------------------------------------------------------------------------
---------------------------------------------update-------------------------------
go 
create proc Update_exam_name @E_Id_Updat int, @new_exam_name varchar(20)
as
begin
update exam
set ex_name=@new_exam_name
where ex_id=@E_Id_Updat
end
--------------------------------------------------------------------------------------
go
create proc Update_exam_satrt_time @E_Id_Updat int, @new_exam_start_time date
as
begin
update exam
set start_time=@new_exam_start_time
where ex_id=@E_Id_Updat
end
------------------------------------------------------------------------------------------
go
create proc Update_exam_duration @E_Id_Updat int, @new_exam_duration int
as
begin
update exam
set duration=@new_exam_duration
where ex_id=@E_Id_Updat
end
------------------------------------------------------------------------------------------
go
create proc Update_exam_Total_marks @E_Id_Updat int, @new_exam_total_marks int
as
begin
update exam
set total_marks=@new_exam_total_marks
where ex_id=@E_Id_Updat
end
------------------------------------------------------------------------------------------
go
create proc Update_exam_numOfQues @E_Id_Updat int, @new_exam_numOfQues int
as
begin
update exam
set num_of_questions=@new_exam_numOfQues
where ex_id=@E_Id_Updat
end
------------------------------------------------------------------------------------------
go
create proc Update_exam_Crs_id @E_Id_Updat int, @new_exam_Crs_id int
as
begin
update exam
set crs_id=@new_exam_Crs_id
where ex_id=@E_Id_Updat
end
------------------------------------------------------------------------------------------
go
create proc Update_exam_St_id @E_Id_Updat int, @new_exam_St_id int
as
begin
update exam
set st_id=@new_exam_St_id
where ex_id=@E_Id_Updat
end
--------------------------------------------------------------------------------------------
---------------------------------------delete-------------------------------------------
go
create proc Delete_exam @E_Id_Deleted int
as
begin
delete from exam
where ex_id=@E_Id_Deleted
end
