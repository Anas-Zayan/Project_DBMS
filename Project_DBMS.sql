/*Anas Hussain Mohammed created a new database, verified, modified, and inserted data in table using select command.*/

--create database Project_DBMS;
--\l
--\c Project_DBMS;

/*Anas Hussain Mohammed created 3-Tables with all keys and attribute.*/

--create table Product(prod varchar(50) not null primary key, pname varchar(50), price varchar(50));
--create table Depot(dep varchar(50) not null primary key, addr varchar(50), volume varchar(50));
--create table Stock( prod varchar(50), dep varchar(50), quantity varchar(50), foreign key(dep) references Depot(dep) on delete cascade on update cascade, foreign key(prod) references Product(prod) on delete cascade on update cascade);

--select * from product;
--select * from depot;
--select * from stock;

/*Nagulmeera Shaik, entered data in product table.*/

--insert into Product values('p1','tape','2.5');
--insert into Product values('p2','tv','250');
--insert into Product values('p3','vcr','80');

--select * from product;

/*Nagulmeera Shaik, entered data in depot table.*/

--insert into Depot values('d1','New York','9000');
--insert into Depot values('d2','Syracuse','6000');
--insert into Depot values('d4','New York','2000');

--select * from depot;

/*Rajesh Orsu, entered data in stock table.*/

--insert into Stock values('p1','d1','1000');
--insert into Stock values('p1','d2','-100');
--insert into Stock values('p1','d4','1200');
--insert into Stock values('p3','d1','3000');
--insert into Stock values('p3','d4','2000');
--insert into Stock values('p2','d4','1500');
--insert into Stock values('p2','d1','-400');
--insert into Stock values('p2','d2','2000');

--select * from stock;

/*Nagulmeera Shaik, first transaction, The product p1 changes its name to pp1 in Product and Stock.*/
--begin;
--update product set prod = 'pp1' where prod = 'p1';
--commit;
--select * from product;
--select * from stock;

/*Nagulmeera Shaik, Second transaction, The depot d1 changes its name to dd1 in Depot and Stock.*/
--begin;
--update depot set dep = 'dd1' where dep = 'd1';
--commit;
--select * from depot;
select * from stock;
