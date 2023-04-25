    use project;

    create table Admin
    (
    username varchar(255),
    password varchar(255)
    );

    create table Faculty
    (
    facultyId int primary key auto_increment,
    facultyFname varchar(255),
    facultyLname varchar(255),
    facultyAddress varchar(255),
    facultyState varchar(255),
    facultyPin varchar(255),
    mobile varchar(10),
    email varchar(255),
    username varchar(255),
    password varchar(255)
    );

    create table Course
    (
    courseId int primary key auto_increment,
    courseName varchar(255),
    courseFee int,
    courseDesc varchar(255)
    );

    create table Batch
    (
    batchId varchar(200) primary key,
    courseId int,
    facultyId int,
    numberofStudents int,
    batchstartDate date,
    duration varchar(255),
    foreign key (courseId) references Course (courseid),
    foreign key (facultyId) references faculty (facultyid)
    );

    create table courseplan
    (
    planid int primary key auto_increment,
    batchId varchar(300),
    daynumber int,
    topic varchar(255),
    planDate date,
    status boolean,
    foreign key (batchId) references Batch (batchId)
    );




