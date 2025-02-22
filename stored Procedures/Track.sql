-- create a new track
create procedure createtrack
(
    @trackname varchar(100)
)
as
begin
    insert into track (t_name)
    values (@trackname);
end;

-- get all tracks
create procedure gettracks
as
begin
    select * from track;
end;


-- update track name by id
create procedure updatetrack
(
    @trackid int,
    @trackname varchar(100)
)
as
begin
    update track
    set t_name = @trackname
    where t_id = @trackid;
end;

-- assign a course to a track
create procedure assigncoursetotrack
(
    @trackid int,
    @courseid int
)
as
begin
    insert into track_course (trackid, course_id)
    values (@trackid, @courseid);
end;

-- get the top 3 students by track based on their total scores
create procedure gettopstudentsbytrack
(
    @trackid int
)
as
begin
    select top(3) s.st_id, s.st_fname, s.st_lname, sum(a.score) as totalscore
    from student s
    join answers a on s.st_id = a.studentid
    where s.t_id = @trackid
    group by s.st_id, s.st_fname, s.st_lname
    order by totalscore desc;
end;
