create database student;
use student;
create table student(snum int,sname varchar(30),major varchar(40),lvl varchar(40),age int,primary key(snum));
create table class(cname varchar(30),meets_at varchar(30),room varchar(40),fid int, primary key(cname));
create table enrolled(
snum int,cname varchar(30),primary key(snum,cname),
foreign key(snum) references student(snum),foreign key(cname) references class(cname));
create table faculty(fid int,fname varchar(30),deptid int,primary key(fid));

