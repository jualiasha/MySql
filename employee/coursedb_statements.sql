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

select * from student, courseParticipant, course where studentId=studentNumber and courseId=courseNumber;

select * from student, courseParticipant, course where studentId=studentNumber and courseId=courseNumber and firstname='Matt' and lastname='River';

select firstname, lastname, courseName, grade from student, courseParticipant, course where studentId=studentNumber and courseId=courseNumber and grade is not null;

select firstname, lastname, courseName, grade, enddate from student, courseParticipant, course where studentId=studentNumber and courseId=courseNumber and grade is not null;

update courseParticipant set grade=7 where courseNumber=1 and studentNumber=1;
select firstname, lastname, courseName, grade, enddate from student, courseParticipant, course where studentId=studentNumber and courseId=courseNumber and grade is not null;
update courseParticipant set grade=7 where courseNumber=4 and studentNumber=1;
select firstname, lastname, courseName, grade, enddate from student, courseParticipant, course where studentId=studentNumber and courseId=courseNumber and grade is not null;

select courseName, count(studentNumber) as Numberofregistrants from course join courseParticipant on courseNumber=courseID group by courseName;
select courseName, count(studentNumber) as Numberofregistrants from course join courseParticipant on courseNumber=courseID group by courseName order by Numberofregistrants asc, courseName asc;

select courseName, count(studentNumber) as Numberofregistrants from course left join courseParticipant on courseNumber=courseID group by courseName order by Numberofregistrants asc, courseName asc;

select courseName, count(studentNumber) as Numberofregistrants from course left join courseParticipant on courseNumber=courseID group by courseId;

select courseName, count(studentNumber) as Numberofregistrants from course left join courseParticipant on courseNumber=courseID group by courseId order by Numberofregistrants asc, courseName asc;

select courseName, day(startDate) as day from course;

select courseName, day(startDate) as day, month(startDate) as month, year(startDate) as year from course;

select year(current_date) -2000 as years;

select locate('abc', 'xxabcxx');

select courseName from course
where locate('Java', courseName)<>0; /*not equals zero*/

select courseName from course
where locate('Java', courseName)=0;