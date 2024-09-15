create database LMS;

use LMS ;

create table Employees( Id int, Name varchar(255), City varchar(255) );

INSERT INTO Employees (Id, Name, City) VALUES (1, 'John Doe', 'New York');
INSERT INTO Employees (Id, Name, City) VALUES (2, 'Jane Smith', 'Los Angeles');
INSERT INTO Employees (Id, Name, City) VALUES (3, 'Alice Johnson', 'Chicago');
INSERT INTO Employees (Id, Name, City) VALUES (4, 'Bob Brown', 'Houston');
INSERT INTO Employees (Id, Name, City) VALUES (5, 'Charlie Davis', 'Phoenix');

INSERT INTO employees (Emp_Name, Emp_Email, Password, Emp_Phone, Emp_Doj, Emp_Dept, Emp_LeaveBal, Man_Id)
VALUES 
('John Doe', 'john.doe@example.com', 'password123', 1234567890, '2022-01-15 09:00:00.000000', 'Sales', 20, 1),
('Jane Smith', 'jane.smith@example.com', 'password456', 9876543210, '2021-05-23 10:30:00.000000', 'Marketing', 15, 2),
('David Brown', 'david.brown@example.com', 'password789', 5556667777, '2023-03-10 08:45:00.000000', 'IT', 25, 1),
('Emma Wilson', 'emma.wilson@example.com', 'password101', 4445556666, '2020-11-12 14:20:00.000000', 'HR', 30, 3),
('Michael Johnson', 'michael.johnson@example.com', 'password202', 3334445555, '2019-08-19 12:00:00.000000', 'Finance', 10, 2);

INSERT INTO managers (Man_Name, Man_Email, Password, Man_Phone)
VALUES 
('Alice Brown', 'alice.brown@example.com', 'managerpass123', 1122334455),
('Robert Green', 'robert.green@example.com', 'managerpass456', 2233445566),
('Sophia White', 'sophia.white@example.com', 'managerpass789', 3344556677),
('James Black', 'james.black@example.com', 'managerpass101', 4455667788),
('Olivia Harris', 'olivia.harris@example.com', 'managerpass202', 5566778899);

INSERT INTO leavedetails (Emp_Id, Man_Id, No_OfDays, Start_Date, End_Date, Applied_On, Leave_Type, Leave_Status, Leave_Reason, Manager_Comment)
VALUES 
(6, 1, 5, '2024-08-01 09:00:00.000000', '2024-08-05 18:00:00.000000', '2024-07-25 10:00:00.000000', 'Annual Leave', 'Approved', 'Family vacation', 'Approved, enjoy your time off'),
(7, 2, 3, '2024-09-10 09:00:00.000000', '2024-09-12 18:00:00.000000', '2024-09-01 15:30:00.000000', 'Sick Leave', 'Pending', 'Medical treatment', 'Pending review, get well soon'),
(8, 1, 2, '2024-07-15 09:00:00.000000', '2024-07-16 18:00:00.000000', '2024-07-10 08:45:00.000000', 'Casual Leave', 'Rejected', 'Personal reasons', 'Not approved, please reschedule'),
(9, 3, 10, '2024-10-01 09:00:00.000000', '2024-10-10 18:00:00.000000', '2024-09-20 12:00:00.000000', 'Annual Leave', 'Approved', 'International travel', 'Enjoy your trip, approved');

select * from employees;
select * from managers;
select * from leavedetails;