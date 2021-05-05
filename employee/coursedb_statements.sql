use coursedb;

select * from student;
select * from courseParticipant;
select * from course;

select * from student join courseParticipant on studentNumber=studentID
join course on courseID=courseNumber;


select courseName, firstname, lastname from student join courseParticipant on studentNumber=studentID
join course on courseID=courseNumber;


select courseName, startDate from course join courseParticipant on courseID=courseNumber;

select courseName, startDate from course where startDate<current_date;

select firstname, lastname from student join courseParticipant on studentID=studentNumber where grade is not null;

select firstname, lastname from student join courseParticipant on studentID=studentNumber where grade is null;

select distinct lastname,firstname from student join courseParticipant on studentID=studentNumber where grade is null;

select distinct lastname,firstname from student join courseParticipant on studentID=studentNumber where grade is null order by lastname, firstname;



select courseName, count(studentNumber) as numberofregistrants from course join courseParticipant on courseID=courseNumber group by courseName order by numberofregistrants desc, courseName asc;


