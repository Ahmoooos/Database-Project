-- generate random exam questions
create procedure generaterandomexam (
    @examname varchar(100),
    @num_of_tfq int,
    @num_of_mcq int
)
as
begin
    declare @examid int
    declare @totalmarks int
    declare @num_of_questions int
    declare @coursecount int

    
    select @coursecount = count(*) from course where crs_name = @examname

    if @coursecount = 0
    begin
        print 'course not found.'
        return
    end

    set @num_of_questions = @num_of_tfq + @num_of_mcq
    set @totalmarks = @num_of_questions

    insert into exam (ex_name, total_marks, num_of_questions)
    values (@examname, @totalmarks, @num_of_questions)

    set @examid = scope_identity()

    select top (@num_of_tfq) q_id, text, answer, mark
    from questions
    where tfq = 1
    order by newid()

    select top (@num_of_mcq) q_id, text, answer, mark
    from questions
    where mcq = 1
    order by newid()

    select @examid as generatedexamid
end

-- assign student to a course
create procedure assignstudenttocourse (
    @studentid int,
    @courseid int
)
as
begin
    insert into student_course (studentid, courseid)
    values (@studentid, @courseid)
end

-- assign instructor to a track
create procedure assigninstructortotrack (
    @ins_id int,
    @trackid int
)
as
begin
    insert into ins_track (ins_id, trackid)
    values (@ins_id, @trackid)
end

-- count questions by type for a specific exam
create procedure countquestionsbytype (
    @examid int
)
as
begin
    select mcq, tfq, count(*) as questioncount
    from questions
    where examid = @examid
    group by mcq, tfq
end

-- calculate total student scores for a course
create procedure calculatestudentscores (
    @studentid int,
    @courseid int
)
as
begin
    select sum(score) as totalscore
    from answers
    where studentid = @studentid and courseid = @courseid
end

-- get exam statistics (average, max, min score)
create procedure getexamstatistics (
    @examid int
)
as
begin
    select avg(score) as avgscore, max(score) as maxscore, min(score) as minscore
    from answers
    where examid = @examid
end

-- count students in a track
create procedure countstudentsbytrack (
    @t_id int
)
as
begin
    select count(*) as studentcount from student where t_id = @t_id
end
