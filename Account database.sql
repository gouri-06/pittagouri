create database Gowri;
use Gowri;
Create table Accountdetails(Accountno int,AccountholderName varchar(500),Balance float)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
 select * from Accountdetails;
 Insert into Accountdetails values ( 56783923,"gowri",30000);
 Insert into Accountdetails values ( 34678912,"swapna",20000);
 Insert into Accountdetails values ( 12345678,"priya",25000);
 Insert into Accountdetails values ( 56789347,"chandu",17000);
 create table Transactions(Transactionid INT NOT NULL unique auto_increment,DateofTransaction datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,Amount int NOT NULL, TransferredAccount float NOT NULL, PRIMARY KEY(`Transactionid`))ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
insert into Transactions values(5600,'2020-07-31 14:29:36',1500,56783923);
 insert into Transactions values(5605,'2020-07-31 15:00:36',500,34678912);
 insert into Transactions values(2250,'2020-07-31 15:5:33',1000,12345678);
 insert into Transactions values(4567,'2020-07-31 15:12:15',1000,56789347);
 select * from Transactions;