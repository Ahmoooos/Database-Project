-- add a new course
create procedure addcourse
    @crs_name varchar(100),
    @duration int,
    @ins_id int
as
begin
    insert into course (crs_name, duration, ins_id)
    values (@crs_name, @duration, @ins_id);
end;

-- get all courses
create procedure getallcourses
as
begin
    select * from course;
end;

-- update course name by id
create procedure updatecoursename
    @crs_id int,
    @newname varchar(100)
as
begin
    update course
    set crs_name = @newname
    where crs_id = @crs_id;
end;

-- delete a course by id
create procedure deletecourse
    @crs_id int
as
begin
    delete from course where crs_id = @crs_id;
end;

-- get courses by instructor id
create procedure getcoursesbyinstructor
    @ins_id int
as
begin
    select * from course where ins_id = @ins_id;
end;

-- get students enrolled in a course by course id
create procedure getstudentsbycourse
    @crs_id int
as
begin
    select s.* 
    from student s
    join student_course sc on s.st_id = sc.studentid
    where sc.courseid = @crs_id;
end;

-- calculate the average score for a course by course id
create procedure calculateavgcoursescore
    @courseid int
as
begin
    select avg(score) as avgscore
    from answers
    where courseid = @courseid;
end;
