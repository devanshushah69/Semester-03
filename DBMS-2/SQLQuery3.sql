Create Database PersonInfo_02
USE PersonInfo_02

--1 Create INSERT, UPDATE & DELETE Stored Procedures for Person table.
Create Procedure PR_Person_Insert
@personId		int,
@personName		varchar(50),
@salary			decimal(8,2),
@JoiningDate	DateTime,
@city			varchar(100),
@age			int,
@BirthDate		DateTime
as
Begin
Insert into Person(personId,personName,salary,JoiningDate,city,age,BirthDate)
values(@personId,@personName,@salary,@JoiningDate,@city,@age,@BirthDate)
End
Insert Into Person values(1,'Devanshu',50000,getdate(),'rajkot',21,'04-29-03')
Select* from Person
--2 Create a trigger that fires on INSERT, UPDATE and DELETE operation on the Person table. For that, create a new table PersonLog to log (enter) all operations performed on the Employee table.