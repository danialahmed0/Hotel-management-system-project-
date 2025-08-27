create database danials;
use danials;

CREATE TABLE Customers (
    customerID INT PRIMARY KEY, 
    Name NVARCHAR(50),           
    Phone NVARCHAR(15)           
);

CREATE TABLE Roomss (
    RoomID INT PRIMARY KEY,      
    RoomNumber NVARCHAR(10),    
    Price DECIMAL(10,2),        
    customerid int,
	foreign key (customerid) references customers (customerid)
);

INSERT INTO Customers (CustomerID, Name, Phone)
VALUES (1, 'John', '9876543210'),
       (2, 'Emma', '9876501234');


INSERT INTO Roomss (RoomID, RoomNumber, Price,customerid)
VALUES (1, '101', 50.00,1   m,),
       (2, '102', 80.00);

	    
UPDATE Customers
SET Phone = '9999999999'
WHERE CustomerID = 2;

select *from Roomss
select *from Customers