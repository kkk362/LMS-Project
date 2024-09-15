--EXCEPTION HANDLING IN SQL
begin try
select 1/0
end try
begin catch
select ERROR_MESSAGE() as Message
select ERROR_line() as line
select ERROR_procedure() as ProcedureError
end catch
--------------
exec sp_help emp;
alter table emp add address varchar(10);
--
begin try
insert into emp values(111,'Raj','A-189 sector 47 Delhi');
end try
begin catch
select ERROR_MESSAGE() as Message
select ERROR_line() as line
select ERROR_procedure() as ProcedureError
end catch
------------
create proc usp_AllError as
begin
select ERROR_MESSAGE() as Message
select ERROR_line() as line
select ERROR_procedure() as ProcedureError
end;


begin try
insert into emp values(111,'Raj','A-189 sector 47 Delhi');
end try
begin catch
exec usp_AllError
end catch
--Indexing----------------------we can search the record fastly using indexing
--type of index-------clustered index ,non clustered index
-----------------C# Dotnet Book----1000Pages--index number:---partail--100,102:-non clustered index

Employee:-- (1,11,2,3,19,12,100,200,,1000,10000..........)
unique clustered index
id(pk)		name		address			salary      doj		
1                                      
2
3
11
--299
--unique clustered--data are stored stored order--physically apply on table
create table Empinfo4(Id int primary key,Name varchar(256))
insert into Empinfo4 values(99,'abhay kumar');--update,delete 
select * from Empinfo4
--------
create clustered index x2 on empinfo4(name);

create table Empinfo5(Id int ,Name varchar(256))
create clustered index x2 on empinfo5(name);
drop index x2 on Empinfo5
--
create table Empinfo6(Id int ,Name varchar(256),salary int)

create nonclustered index idx3 on empinfo6(salary);
create nonclustered index idx4 on empinfo6(id,name);
exec sp_help empinfo6;
--
-- Create a nonclustered index on a table or view
CREATE INDEX i1 ON t1 (col1);






SELECT * FROM Empinfo4;--EVERY TRANSACTION BY DEFAULT IS COMMIT 

DELETE FROM Empinfo4 WHERE ID=1;

ROLLBACK

--
CREATE TABLE ACCOUNT1(ACC_ID INT,ACC_NAME VARCHAR(20),CRDR MONEY);
INSERT INTO ACCOUNT1 VALUES(1,'RAJ',90000);
INSERT INTO ACCOUNT1 VALUES(2,'RAJEE',70000);
INSERT INTO ACCOUNT VALUES(3,'RAJ KUMAR',80000);
SELECT * FROM ACCOUNT;
--
BEGIN TRANSACTION 
UPDATE ACCOUNT SET CRDR=CRDR-10000 WHERE ACC_ID=1;
UPDATE ACCOUNT SET CRDR=CRDR+10000 WHERE ACC_ID=2;
ROLLBACK

--
BEGIN TRANSACTION 
UPDATE ACCOUNT SET CRDR=CRDR-10000 WHERE ACC_ID=1;
UPDATE ACCOUNT SET CRDR=CRDR+10000 WHERE ACC_ID=3;

COMMIT
--------
SELECT * FROM ACCOUNT1;

BEGIN TRY
BEGIN TRANSACTION
UPDATE ACCOUNT1 SET ACC_NAME='ABHAY' WHERE ACC_ID=1
UPDATE ACCOUNT1 SET ACC_NAME='ABHAY KUMAR' WHERE ACC_ID=2
COMMIT TRANSACTION
PRINT 'TRANSACTION DONE '
END TRY
BEGIN CATCH
ROLLBACK TRANSACTION
PRINT 'TRANSACTION HAVE SOME ERROR '
END CATCH
SELECT * FROM ACCOUNT1;
BEGIN TRANSACTION
INSERT INTO ACCOUNT1 VALUES(3,'RAJ',90000);----SAVE POINT T1
DELETE FROM ACCOUNT1 WHERE ACC_ID=2;------------SAVEPOINT T2
ROLLBACK
---------SAVE POINT 
SELECT * FROM ACCOUNT1;
begin tran t1
save tran p8
delete from Account1 where Acc_id =2
begin tran t2
save tran p9
delete from Account1 where Acc_id =1

rollback tran p9
commit tran t2
commit tran t1
rollback tran t2
commit
--TRIGGER-------------------------JUST LIKE SP,TRIGGER AUTOMETIC EXECUTE
--WHENEVER EVENT OCCUR OF THE DATABASE SERVEER
--TYPE OF TRIGGER---AFTER TRIGGER  ,INSTEAD OF TRIGGER
-----WHERE YOU HAVE APPLY:----DDL ,DML COMMAND.

--------------------GMAIL-----INBOX------SHOW ALL MAILS--  TRACE
1--  --DELETE THIS MAIL 1--------------TRACE------
2
3
				TRANSTABLE----
				1     DELETE BY ABHAY00010/12/20122
				11:25---------------
				--dll trigger
				create trigger saf on database
				for
--ddl
create 

CREATE TRIGGER safety   
ON DATABASE   
FOR DROP_TABLE, ALTER_TABLE,create_Table   
AS   
   PRINT 'You must disable Trigger "safety" to drop or alter,create tables!'   
   ROLLBACK; 
   
   create table emp8(id int,name varchar(256));
   select * from emp8
   disable trigger safety on database; 

   enable trigger safety on database;
   drop trigger safety on database;
   drop table emp8
   ----------------dml trigger

     create table emp8(id int,name varchar(256),salary int);
   alter trigger saf on emp8
   after insert,update,delete
   AS   
   begin
  select * from emp8
  end

   disable trigger saf on emp8

   insert into emp8 values(2,'raj',30000);









       create table emp9(id int,name varchar(256),salary int);

	     create trigger mytri on emp9
   after insert,update,delete
   AS   
   begin
  select * from emp9
  end
  insert into emp9 values(1,'raj',39999);




