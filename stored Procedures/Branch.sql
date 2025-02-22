-- create branch
create procedure createbranch
(
    @branchname varchar(100)
)
as
begin
    insert into branch (br_name)
    values (@branchname)
end

-- get all branches
create procedure getbranches
as
begin
    select * from branch
end

-- update branch name by id
create procedure updatebranch
(
    @branchid int,
    @branchname varchar(100)
)
as
begin
    update branch
    set br_name = @branchname
    where br_id = @branchid
end

-- delete branch by id
create procedure deletebranch
(
    @branchid int
)
as
begin
    delete from branch
    where br_id = @branchid
end

-- assign student to track
create procedure assignstudenttotrack
(
    @studentid int,
    @trackid int
)
as
begin
    update student
    set t_id = @trackid
    where st_id = @studentid
end
