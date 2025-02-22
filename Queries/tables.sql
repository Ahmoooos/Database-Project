use ITIExaminationSystem


create table Instructor (
    ins_id INT PRIMARY KEY IDENTITY(1,1),
    ins_name VARCHAR(100) NOT NULL,
    ins_password VARCHAR(50) NOT NULL,
    salary MONEY,
    ins_mail VARCHAR(100) UNIQUE,
    specialization VARCHAR(100)
);


create table ins_phone (
    ins_id int,
    phone varchar(20),
    primary key (ins_id, phone),
    foreign key (ins_id) references instructor(ins_id) on delete cascade
);

create table course (
    crs_id int primary key identity,
    crs_name varchar(100) not null,
    duration int not null,
    ins_id int,
    foreign key (ins_id) references instructor(ins_id) on delete set null
);

create table branch (
    br_id int primary key identity(1,1),
    br_name varchar(100) not null,
    city varchar(100),
    zip_code varchar(10),
    t_id int
);

create table br_phone (
    br_id int,
    phone varchar(20),
    primary key (br_id, phone),
    foreign key (br_id) references branch(br_id) on delete cascade
);

create table track (
    t_id int primary key identity(1,1),
    t_name varchar(100) not null,
    start_date date,
    end_date date,
    st_id int
);

create table Student (
    st_id INT PRIMARY KEY IDENTITY(1,1),
    st_fname VARCHAR(50) NOT NULL,
    st_lname VARCHAR(50) NOT NULL,
    st_password VARCHAR(50) NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female')),
    address TEXT,
    st_age INT CHECK (st_age >= 0),
    st_mail VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    t_id INT,
    FOREIGN KEY (t_id) REFERENCES Track(t_id) ON DELETE SET NULL
);


create table exam (
    ex_id int primary key identity,
    ex_name varchar(100) not null,
    start_time datetime,
    duration int,
    total_marks int,
    num_of_questions int,
    crs_id int,
	st_id int,
    foreign key (crs_id) references course(crs_id) on delete cascade,
	foreign key (st_id) references student(st_id) on delete set null
);

CREATE TABLE questions (
    q_id INT IDENTITY(1,1) primary key, 
    examid INT,
    text NVARCHAR(MAX) NOT NULL,
    answer VARCHAR(200),
    mark INT,
    mcq bit default 0,  
    tfq bit default 0,  
    ins_id INT,
    foreign key (ins_id) references instructor(ins_id) ON DELETE SET NULL
);

create table choice (
    choice_id INT identity(1,1),
    is_correct BIT default 0,
    text VARCHAR(255) NOT NULL,
    q_id INT,
    examid INT,  
    PRIMARY KEY (choice_id, q_id), 
    FOREIGN KEY (q_id) references questions(q_id) ON DELETE CASCADE
);




create table student_course (
    studentid int,
    courseid int,
    primary key (studentid, courseid),
    foreign key (studentid) references student(st_id) on delete cascade,
    foreign key (courseid) references course(crs_id) on delete cascade
);

create table answers (
    studentid int,
    examid int,
    courseid int,
    score int,
    timestamp datetime default current_timestamp,
    primary key (studentid, examid, courseid),
    foreign key (studentid) references student(st_id) on delete cascade,
    foreign key (examid) references exam(ex_id) on delete cascade,
    foreign key (courseid) references course(crs_id) on delete set null
);

create table track_branch (
    branch_id int,
    trackid int,
    primary key (branch_id, trackid),
    foreign key (branch_id) references branch(br_id) on delete cascade,
    foreign key (trackid) references track(t_id) on delete cascade
);

create table track_course (
    course_id int,
    trackid int,
    primary key (course_id, trackid),
    foreign key (course_id) references course(crs_id) on delete cascade,
    foreign key (trackid) references track(t_id) on delete cascade
);

create table ins_track (
    ins_id int,
    trackid int,
    primary key (ins_id, trackid),
    foreign key (ins_id) references instructor(ins_id) on delete cascade,
    foreign key (trackid) references track(t_id) on delete cascade
);


CREATE TABLE Exam_Question (
    ExamID INT,
    Q_ID INT,
    PRIMARY KEY (ExamID, Q_ID),
    FOREIGN KEY (ExamID) REFERENCES Exam(Ex_id),
    FOREIGN KEY (Q_ID) REFERENCES Questions(Q_ID)
);
