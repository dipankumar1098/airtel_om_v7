CREATE DATABASE 5pm
show databases
USE 5pm
show tables;


CREATE TABLE employee(
eid int,
ename VARCHAR(32),
esal float,
eloc VARCHAR(32),
eage int
);

DESC employee;

INSERT INTO employee VALUES(101,'Rahul',45000.00, 'Bangaore');
INSERT INTO employee VALUES(102,'Sonia',55000.00, 'Noida');

//how TO INSERT mutliple records

INSERT INTO employee(eid,ename,esal,eloc) 
		VALUES(103,'Priyanka',65000.00,'New Delhi'),
			  (104,'Modi',75000.00,'New Delhi'),
			  (105,'Amith',85000.00,'GJ');


SELECT * FROM employee;
SELECT eid,ename FROM employee;

SELECT eid AS id, ename AS name FROM employee;

SELECT * FROM employee;


======================================
class 2

CREATE - TABLE  
SELECT - READ data FROM table
INSERT - inserting data
UPDATE - updating data
DELETE - data FROM TABLE.
DROP   - Table

Constraints
-----------

>show databases;
>use 5pm;
>show tables;
> drop table employee;

CREATE - TABLE
CREATE TABLE employee(
eid int,
ename VARCHAR(32),
esal float,
eloc VARCHAR(32),
eage int
);

>DESC employee

DML - command/INSERT /update/delete
=============
INSERT INTO employee VALUES(101,'Rahul',45000.00,'Bangalore',24);


INSERT INTO employee VALUES 
(102,'Sonia',45000.00,'Bangalore',24),
(103,'Priyanka',55000.00,'Noida',44),
(104,'Modi',65000.00,'Wayanad',34),
(105,'Amith',75000.00,'New Delhi',56);


READ - Data FROM table;/DQL
========================
SELECT * FROM employee;
SELECT eid,ename FROM employee;

SELECT eid as id ,ename AS name  FROM employee;

SELECT WITH WHERE clause
===================
SELECT * FROM employee
WHERE eloc="Bangalore";


UPDATE -rows
=========
UPDATE employee
SET ename="Rahul Gandhi"
WHERE eid=101;

UPDATE ALL banglaore employees  - salary 50k.

UPDATE employee
SET esal=50000
WHERE eloc="Bangalore";


DELETE rows
===============
DELETE FROM table_Names;
DELETE FROM employee;
DELETE FROM employee WHERE eid=105;
DELETE FROM employee WHERE eloc="Bangalore";

SQL - constraints
=================


CREATE TABLE employee(
eid int,
ename VARCHAR(32),
esal float,
eloc VARCHAR(32),
eage int
);

INSERT INTO employee(ename) VALUES("Rahul"),("sonia"),("Priya");

MYSQL - constrains 
=============================
NOT NULL - NULL VALUES NOT allowed
UNIQUE
CHECK
DEFAULT 
PK
FK
Auto Increment 
INDEX

============

CREATE TABLE employee(
eid INT NOT null,
ename VARCHAR(32) Unique,
esal float,
eloc VARCHAR(32) NOT Null,
eage int
);


INSERT INTO employee VALUES 
(102,'Sonia',45000.00,'Bangalore',24),
(103,'Priyanka',55000.00,'Noida',44),
(104,'Modi',65000.00,'Wayanad',34),
(105,'Amith',75000.00,'New Delhi',56);

INSERT INTO employee(ename,esal) value('Gautham',85000.00);


UNIQUE - constraints
we cnt store duplicate entries
---------------------------
CREATE TABLE employee(
eid INT NOT null,
ename VARCHAR(32) Unique,
esal float,
eloc VARCHAR(32) NOT Null,
eage int
);

INSERT INTO employee VALUES
(101,'Rahul',45000.00,'Bangalore',50),
(102,'Rahul',55000.00,'Bangalore',50);

CHECK - constraints 
=======================
CREATE TABLE employee(
eid INT NOT null,
ename VARCHAR(32) Unique,
esal float,
eloc VARCHAR(32) NOT Null,
eage INT CHECK(eage>=20)
);

INSERT INTO employee VALUES
(101,'Rahul',45000.00,'Bangalore',50),
(102,'Sonia',55000.00,'Bangalore',19);

INSERT INTO employee VALUES
(101,'Rahul',45000.00,'Bangalore',50);


DEFAULT - constarints
=======================
CREATE TABLE employee(
eid INT NOT null,
ename VARCHAR(32) NOT null,
esal float,
eloc VARCHAR(32) DEFAULT 'Bangalore',
eage INT CHECK(eage>=20)
);

INSERT INTO employee(eid,ename,esal,eage) VALUES
(101,'Rahul',45000.00,21),
(104,'Sonia',55000.00,22),
(103,'Priya',65000.00,23),
(102,'Modi',75000.00,24);

=================================
PRIMARY KEY - 
FOREIGN KEY -
>system cls
>mysql -uroot -proot
>show databases

mysql> use 5pm;
Database changed
mysql> show tables;
+---------------+
| Tables_in_5pm |
+---------------+
| employee      |
+---------------+
1 row in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.03 sec)

mysql> show tables;
Empty set (0.00 sec)

mysql> show databases
=========================
PK - CONSTRAINT IS used TO uniquely identify the each record IN TABLE.
eid - NOT NULL - duplicate are allowed but NULL NOT allowed.
eid - UNIQUE - duplicates NOT allowed but NULL allowed.
eid - PK means (NOT NULL + unique).

CREATE TABLE employee(
eid int,
ename VARCHAR(32),
esal float,
PRIMARY KEY (eid)
);

CREATE TABLE employee(
eid INT PRIMARY key,
ename VARCHAR(32),
esal float
);

mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | NO   | PRI | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | float       | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


INSERT INTO employee VALUES
(101,'Rahul',45000.00),
(102,'Sonia',55000.00),
(103,'Priya',65000.00),
(null,'Priya',65000.00);

mysql> INSERT INTO employee VALUES
    -> (101,'Rahul',45000.00),
    -> (102,'Sonia',55000.00),
    -> (103,'Priya',65000.00),
    -> (null,'Priya',65000.00);
ERROR 1048 (23000): Column 'eid' cannot be NULL


mysql> INSERT INTO employee VALUES
    -> (101,'Rahul',45000.00),
    -> (102,'Sonia',55000.00),
    -> (103,'Priya',65000.00),
    -> (103,'Modi',75000.00),
    -> (null,'Priya',65000.00);
ERROR 1062 (23000): Duplicate entry '103' for key 'employee.PRIMARY'
mysql> select * from employee;
Empty set (0.00 sec)


mysql> select * from employee;
+-----+-------+-------+
| eid | ename | esal  |
+-----+-------+-------+
| 101 | Rahul | 45000 |
| 102 | Sonia | 55000 |
| 103 | Priya | 65000 |
+-----+-------+-------+
3 rows in set (0.00 sec)
===============================
NOT NULL - NULL VALUES NOT allowed
UNIQUE   - duplicate VALUES NOT allowed, NULL VALUES allowed
DEFAULT  - IF we are NOT providing value, DEFAULT value will store.

CHECK    - applying the condition ON data
PK       - NOT NULL + UNIQUE
FK


TABLE 1 - bunit

CREATE TABLE bunit(
buid INT PRIMARY key,
buname VARCHAR(32) NOT null,
buloc VARCHAR(32) unique
);

mysql> CREATE TABLE bunit(
    -> buid INT PRIMARY key,
    -> buname VARCHAR(32) NOT null,
    -> buloc VARCHAR(32) unique
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> desc bunit;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| buid   | int         | NO   | PRI | NULL    |       |
| buname | varchar(32) | NO   |     | NULL    |       |
| buloc  | varchar(32) | YES  | UNI | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

INSERT INTO bunit VALUES
(1,'AT&T','Bangalore-Manyatha Tech Park'),
(2,'Vodaphone','Chennai'),
(3,'Airtel','Hyberabd'),
(4,'Colt','London'),
(5,'R&D','Bangalore');
mysql> select * from bunit;
+------+-----------+------------------------------+
| buid | buname    | buloc                        |
+------+-----------+------------------------------+
|    1 | AT&T      | Bangalore-Manyatha Tech Park |
|    2 | Vodaphone | Chennai                      |
|    3 | Airtel    | Hyberabd                     |
|    4 | Colt      | London                       |
|    5 | R&D       | Bangalore                    |
+------+-----------+------------------------------+
5 rows in set (0.00 sec)



TABLE 2 - employee

CREATE TABLE employee(
eid INT PRIMARY Key,
ename VARCHAR(32),
esal float,
buid int,
FOREIGN KEY(buid) REFERENCES BUNIT(buid)
)


mysql> select * from bunit;
+------+-----------+------------------------------+
| buid | buname    | buloc                        |
+------+-----------+------------------------------+
|    1 | AT&T      | Bangalore-Manyatha Tech Park |
|    2 | Vodaphone | Chennai                      |
|    3 | Airtel    | Hyberabd                     |
|    4 | Colt      | London                       |
|    5 | R&D       | Bangalore                    |
+------+-----------+------------------------------+
5 rows in set (0.00 sec)

mysql> CREATE TABLE employee(
    -> eid INT PRIMARY Key,
    -> ename VARCHAR(32),
    -> esal float,
    -> buid int,
    -> FOREIGN KEY(buid) REFERENCES BUNIT(buid)
    -> );
Query OK, 0 rows affected (0.11 sec)

mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | NO   | PRI | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | float       | YES  |     | NULL    |       |
| buid  | int         | YES  | MUL | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

INSERT INTO employee VALUES
(101,'Rahul',45000.00,1),
(102,'Sonia',55000.00,1),
(103,'Priya',65000.00,1),
(104,'Modi',75000.00,2),
(105,'Amith',85000.00,2),
(106,'Narasimha',95000.00,1),
(107,'Gautham',45000.00,5);

INSERT INTO employee VALUES(108,'Vijay',40000.00,8)


CREATE TABLE USER(
uid INT AUTO_INCREMENT,
uname VARCHAR(32),
uloc VARCHAR(32),
PRIMARY KEY(uid)
);

mysql> CREATE TABLE USER(
    -> uid INT AUTO_INCREMENT,
    -> uname VARCHAR(32),
    -> uloc VARCHAR(32),
    -> PRIMARY KEY(uid)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> DESC USER;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| uid   | int         | NO   | PRI | NULL    | auto_increment |
| uname | varchar(32) | YES  |     | NULL    |                |
| uloc  | varchar(32) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)


INSERT INTO USER(UNAME,ULOC) VALUES
('Rahul','Wayanad'),
('Sonia','New Delho'),
('Priya','Noida'),
('Modi','New Delhi');
==============================
Mysql constaints
=============================
NOT NULL 
UNIQUE 
CHECK
DEFAULT 
PK
FK
Auto_Increment
=============================
DQL command 
SELECT * FROM TABLE
[where],
[ORDER BY ],
[GROUP by]


mysql> select * from user;
+-----+-------+-----------+
| uid | uname | uloc      |
+-----+-------+-----------+
|   1 | Rahul | Wayanad   |
|   2 | Sonia | New Delho |
|   3 | Priya | Noida     |
|   4 | Modi  | New Delhi |
+-----+-------+-----------+
4 rows in set (0.00 sec)

mysql> insert into user(uname,eloc) values('rajni','chennai');
ERROR 1054 (42S22): Unknown column 'eloc' in 'field list'
mysql> insert into user(uname,uloc) values('rajni','chennai');
Query OK, 1 row affected (0.02 sec)

mysql> select * from user;
+-----+-------+-----------+
| uid | uname | uloc      |
+-----+-------+-----------+
|   1 | Rahul | Wayanad   |
|   2 | Sonia | New Delho |
|   3 | Priya | Noida     |
|   4 | Modi  | New Delhi |
|   5 | rajni | chennai   |
+-----+-------+-----------+
5 rows in set (0.00 sec)


===================
DDL
---
CREATE
ALTER
DROP
TRUNCATE

ALTER command used TO perform the CRUD operation ON TABLE definations.

ie ADD/modify/drop [new] COLUMN
   ADD/modify/drop [new] constraints
  
show databases;
use 5pm;
show tables;

DROP TABLE employee;

CREATE TABLE employee(
eid int,
ename VARCHAR(32)
)

How TO ADD new colomn TO table?

syntax
=============
ALTER TABLE table_name
ADD column_name datatype

ALTER TABLE employee
ADD esal float;

How TO DROP colum TO table?

ALTER TABLE table_name
DROP COLUMN column_name;

ALTER TABLE employee
DROP COLUMN esal;

how TO modify colum data type?
============================
ALTER TABLE table_name
modify COLUMN column_name datatype

ALTER TABLE employee
modify COLUMN esal int;

mysql - contraints?

NOT Null
UNIQUE
DEFAULT
CHECK
Auto_increment
PK
FK
INDEX
============================
mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  |     | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

ADD NOT Null CONSTRAINT TO eid column?

ALTER TABLE employee
modify eid INT NOT null;


mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | YES  |     | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE employee
    -> modify eid INT NOT null;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | NO   |     | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

==========================
ADD constaint - UNIQUE TO ename 

ALTER TABLE employee
modify ename VARCHAR(32) UNIQUE; 

ALTER TABLE employee
ADD CONSTRAINT UNIQUE(ename);



How TO DROP containts 
====================
ALTER TABLE employee
DROP CONSTRAINT  UNIQUE ename;

ALTER TABLE tbl_name DROP INDEX index_name
ALTER TABLE employee DROP INDEX ename;

How TO ADD/drop PRIMARY KEY CONSTRAINT?

ALTER TABLE employee
ADD CONSTRAINT PRIMARY KEY(eid);

ALTER TABLE employee
DROP PRIMARY KEY;


mysql> ALTER TABLE employee
    -> ADD CONSTRAINT PRIMARY KEY(eid);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | NO   | PRI | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

ERROR:
No query specified

mysql> ALTER TABLE employee
    -> DROP PRIMARY KEY;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | int         | NO   |     | NULL    |       |
| ename | varchar(32) | YES  |     | NULL    |       |
| esal  | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


==============================
WHERE clause?
IS used TO filte the results FROM select,insert,update, DELETE st.

system
select * FROM table_Name
WHERE condtions?

CREATE TABLE employee(
eid INT PRIMARY key,
ename VARCHAR(32) unique,
esal INT NOT null,
eloc VARCHAR(32) DEFAULT "Bangalore",
dept_name VARCHAR(32) DEFAULT "IT",
age INT CHECK(age>18)
);

mysql> desc employee;
+-----------+-------------+------+-----+-----------+-------+
| Field     | Type        | Null | Key | Default   | Extra |
+-----------+-------------+------+-----+-----------+-------+
| eid       | int         | NO   | PRI | NULL      |       |
| ename     | varchar(32) | YES  | UNI | NULL      |       |
| esal      | int         | NO   |     | NULL      |       |
| eloc      | varchar(32) | YES  |     | Bangalore |       |
| dept_name | varchar(32) | YES  |     | IT        |       |
| age       | int         | YES  |     | NULL      |       |
+-----------+-------------+------+-----+-----------+-------+
6 rows in set (0.00 sec)


INSERT INTO employee VALUES
(101,'Rahul',55000,'Noida','IT',52),
(102,'Sonia',55000,'Noida','HR',62),
(103,'Priyanka',55000,'Hyderabad','IT',28),
(104,'Modi',25000,'Hyderabad','Central',68),
(105,'Amith',35000,'Hyderabad','Central',58),
(106,'Rajni',15000,'Chennai','Sales',58),
(107,'Vijay',85000,'New Delhi','IT',38),
(108,'Vijay Setu',95000,'New Delhi','IT',38),
(109,'Chiru',15000,'Hyderabad','IT',28),
(110,'Kamal',25000,'Chennai','Sales',28),
(111,'Mahesh',35000,'Chennai','IT',28),
(112,'Dhoni',45000,'New Delhi','Sales',38),
(113,'Virat',55000,'New Delhi','Sales',38),
(114,'Anushka Sharma',65000,'New Delhi','Sales',28),
(115,'RGV',5000,'Hyderabad','IT',58);


mysql> select * from employee;
+-----+----------------+-------+-----------+-----------+------+
| eid | ename          | esal  | eloc      | dept_name | age  |
+-----+----------------+-------+-----------+-----------+------+
| 101 | Rahul          | 45000 | New Delhi | IT        |   28 |
| 102 | Sonia          | 55000 | Noida     | HR        |   62 |
| 103 | Priyanka       | 55000 | Hyderabad | IT        |   28 |
| 104 | Modi           | 25000 | Hyderabad | Central   |   68 |
| 105 | Amith          | 35000 | Hyderabad | Central   |   58 |
| 106 | Rajni          | 15000 | Chennai   | Sales     |   58 |
| 107 | Vijay          | 85000 | New Delhi | IT        |   38 |
| 108 | Vijay Setu     | 95000 | New Delhi | IT        |   38 |
| 109 | Chiru          | 15000 | Hyderabad | IT        |   28 |
| 110 | Kamal          | 25000 | Chennai   | Sales     |   28 |
| 111 | Mahesh         | 35000 | Chennai   | IT        |   28 |
| 112 | Dhoni          | 45000 | New Delhi | Sales     |   38 |
| 113 | Virat          | 55000 | New Delhi | Sales     |   38 |
| 114 | Anushka Sharma | 65000 | New Delhi | Sales     |   28 |
| 115 | RGV            |  5000 | Hyderabad | IT        |   58 |
+-----+----------------+-------+-----------+-----------+------+
15 rows in set (0.00 sec)

a)Display ALL employee where belongs chennai location?
b)Display ALL employee WHERE age below 40 years;
c)Display ALL employee WHERE sal below 50k?
d)Display ALL employee WHERE loc IS new delhi AND dept name sales?

a)Display ALL employee where belongs chennai location?

SELECT * FROM employee
WHERE eloc="chennai";

mysql> SELECT * FROM employee
    -> WHERE eloc="chennai";
+-----+--------+-------+---------+-----------+------+
| eid | ename  | esal  | eloc    | dept_name | age  |
+-----+--------+-------+---------+-----------+------+
| 106 | Rajni  | 15000 | Chennai | Sales     |   58 |
| 110 | Kamal  | 25000 | Chennai | Sales     |   28 |
| 111 | Mahesh | 35000 | Chennai | IT        |   28 |
+-----+--------+-------+---------+-----------+------+
3 rows in set (0.00 sec)


b)Display ALL employee WHERE age below 40 years;
  SELECT * FROM employee
  WHERE age<40;

  mysql> SELECT * FROM employee
    ->   WHERE age<40;
+-----+----------------+-------+-----------+-----------+------+
| eid | ename          | esal  | eloc      | dept_name | age  |
+-----+----------------+-------+-----------+-----------+------+
| 101 | Rahul          | 45000 | New Delhi | IT        |   28 |
| 103 | Priyanka       | 55000 | Hyderabad | IT        |   28 |
| 107 | Vijay          | 85000 | New Delhi | IT        |   38 |
| 108 | Vijay Setu     | 95000 | New Delhi | IT        |   38 |
| 109 | Chiru          | 15000 | Hyderabad | IT        |   28 |
| 110 | Kamal          | 25000 | Chennai   | Sales     |   28 |
| 111 | Mahesh         | 35000 | Chennai   | IT        |   28 |
| 112 | Dhoni          | 45000 | New Delhi | Sales     |   38 |
| 113 | Virat          | 55000 | New Delhi | Sales     |   38 |
| 114 | Anushka Sharma | 65000 | New Delhi | Sales     |   28 |
+-----+----------------+-------+-----------+-----------+------+
10 rows in set (0.00 sec)


c)Display ALL employee WHERE sal below 50k?

  SELECT eid,ename,esal,eloc FROM employee
  WHERE esal<50000;

  mysql>   SELECT eid,ename,esal,eloc FROM employee
    ->   WHERE esal<50000;
+-----+--------+-------+-----------+
| eid | ename  | esal  | eloc      |
+-----+--------+-------+-----------+
| 101 | Rahul  | 45000 | New Delhi |
| 104 | Modi   | 25000 | Hyderabad |
| 105 | Amith  | 35000 | Hyderabad |
| 106 | Rajni  | 15000 | Chennai   |
| 109 | Chiru  | 15000 | Hyderabad |
| 110 | Kamal  | 25000 | Chennai   |
| 111 | Mahesh | 35000 | Chennai   |
| 112 | Dhoni  | 45000 | New Delhi |
| 115 | RGV    |  5000 | Hyderabad |
+-----+--------+-------+-----------+
9 rows in set (0.00 sec)

d)Display ALL employee WHERE loc IS new delhi AND dept name sales?
  SELECT eid,ename,dept_name,eloc FROM employee
  WHERE eloc="New Delhi" AND dept_Name="Sales";

AND 
OR 
NOT NULL
BETWEEN
> >=
< <=
IN
IS NULL NULL
IS NULL


e)DELETE  ALL employee FROM New Delhi location?
DELETE FROM employee
WHERE eloc="New Delhi";


mysql> select *from employee
    -> where eloc="New Delhi";
+-----+----------------+-------+-----------+-----------+------+
| eid | ename          | esal  | eloc      | dept_name | age  |
+-----+----------------+-------+-----------+-----------+------+
| 107 | Vijay          | 85000 | New Delhi | IT        |   38 |
| 108 | Vijay Setu     | 95000 | New Delhi | IT        |   38 |
| 112 | Dhoni          | 45000 | New Delhi | Sales     |   38 |
| 113 | Virat          | 55000 | New Delhi | Sales     |   38 |
| 114 | Anushka Sharma | 65000 | New Delhi | Sales     |   28 |
+-----+----------------+-------+-----------+-----------+------+
5 rows in set (0.00 sec)

mysql> DELETE FROM employee
    -> WHERE eloc="New Delhi";
Query OK, 5 rows affected (0.02 sec)

=====================================================

a)Display ALL employee where belongs chennai location?
b)Display ALL employee WHERE age below 40 years;
c)Display ALL employee WHERE sal below 50k?
d)Display ALL employee WHERE loc IS new delhi AND dept name sales?
 
 Mysql - Operators
OR 
AND
LIKE
IN
BETWEEN 
NOT IN
IS NULL
IS NOT NULL
<
<=
>
>=



CREATE TABLE employee(
eid INT PRIMARY key,
ename VARCHAR(32) unique,
esal FLOAT,
email VARCHAR(32),
eloc VARCHAR(32) DEFAULT "Bangalore",
dept_Name VARCHAR(32) DEFAULT "IT",
age INT CHECK(age>20)
);

INSERT INTO employee VALUES
(102,'Rahul Gandhi',45000.00,'rahul@gmail.com','Wayanad','IT',52),
(103,'Sonia',55000.00,'rahul@gmail.com','New Delhi','HR',80),
(104,'Priyanka',65000.00,'rahul@gmail.com','Wayanad','Admin',45),
(105,'Modi',75000.00,'modi@gmail.com','New Delhi','IT',80),
(106,'Amith',45000.00,'amith@gmail.com','New Delhi','Sales',60),
(107,'Rajni',55000.00,'rajni@gmail.com','Chennai','Admin',65),
(108,'vijay',65000.00,'actorvijay@gmail.com','Chennai','Admin',40),
(109,'Vijay Setupath',75000.00,'vs@gmail.com','Chennai','Sales',45),
(110,'Surya',45000.00,'surya@gmail.com','Chennai','IT',35),
(111,'Alia',55000.00,'ranveer@gmail.com','Mumbai','HR',25),
(112,'katrina',65000.00,'kf@gmail.com','Mumbai','Sales',35),
(113,'Dhoni',75000.00,'mrdhoni@gmail.com','Mumbai','IT',40),
(114,'Kohli',45000.00,'kohli@gmail.com','Wayanad','Admin',35),
(115,'DK',55000.00,'dk@gmail.com','Wayanad','Admin',35),
(116,'RGV',65000.00,'rgv@gmail.com','Mumbai','IT',50);


display employee data age BETWEEN 40 - 60 years
SELECT *FROM employee
WHERE age BETWEEN 40 AND 60;


mysql> SELECT *FROM employee
    -> WHERE age BETWEEN 40 AND 60;
+-----+----------------+-------+----------------------+-----------+-----------+------+
| eid | ename          | esal  | email                | eloc      | dept_Name | age  |
+-----+----------------+-------+----------------------+-----------+-----------+------+
| 102 | Rahul Gandhi   | 45000 | rahul@gmail.com      | Wayanad   | IT        |   52 |
| 104 | Priyanka       | 65000 | rahul@gmail.com      | Wayanad   | Admin     |   45 |
| 106 | Amith          | 45000 | amith@gmail.com      | New Delhi | Sales     |   60 |
| 108 | vijay          | 65000 | actorvijay@gmail.com | Chennai   | Admin     |   40 |
| 109 | Vijay Setupath | 75000 | vs@gmail.com         | Chennai   | Sales     |   45 |
| 113 | Dhoni          | 75000 | mrdhoni@gmail.com    | Mumbai    | IT        |   40 |
| 116 | RGV            | 65000 | rgv@gmail.com        | Mumbai    | IT        |   50 |
+-----+----------------+-------+----------------------+-----------+-----------+------+
7 rows in set (0.01 sec)

display employee data belongs Wayanad Chennai Mumbai

SELECT *FROM employee
WHERE eloc="Wayanad" OR eloc="Mumbai" OR eloc="Chennai";

SELECT *FROM employee
WHERE eloc IN ("Wayanad","Mumbai","Chennai");

=================================
LIKE operators IS used IN WHERE clause TO search FOR specific pattern IN COLUMN.

Wildcards - character IS used TO substitute one OR more character IN string.

%  - Represent zero OR more characters 
_  - Represent single character


display employees who ename starts WITH "v";

SELECT * FROM employee
WHERE ename LIKE  'v%';

display employee whose enames ends chararcter 'a';

SELECT * FROM employee 
WHERE ename LIKE '%a';

display employees whose ename second CHAR containes 'i';
SELECT * FROM employee
WHERE ename LIKE '_i%'

% - zero OR more CHAR
_  - single CHAR

display employees names ends WITH last second char 't';
SELECT * FROM employee
WHERE ename LIKE '%t_';

mysql> SELECT * FROM employee
    -> WHERE ename LIKE '%t_';
+-----+----------------+-------+-----------------+-----------+-----------+------+
| eid | ename          | esal  | email           | eloc      | dept_Name | age  |
+-----+----------------+-------+-----------------+-----------+-----------+------+
| 106 | Amith          | 45000 | amith@gmail.com | New Delhi | Sales     |   60 |
| 109 | Vijay Setupath | 75000 | vs@gmail.com    | Chennai   | Sales     |   45 |
+-----+----------------+-------+-----------------+-----------+-----------+------+
2 rows in set (0.00 sec)


PRINT/display employee COUNT based ON loc.

SELECT eloc FROM employee
GROUP BY eloc;

IN Mysql, GROUP BY clause IS used TO GROUP rows BY one more columns;
COUNT()
MIN()
MAX()
AVG()
SUM()

SELECT eloc, COUNT(eid) FROM employee
GROUP BY eloc;

SELECT eloc AS Location, COUNT(eid) AS NoofEmployee FROM employee
GROUP BY eloc;


mysql> SELECT eloc AS Location, COUNT(eid) AS NoofEmployee FROM employee
    -> GROUP BY eloc;
+-----------+--------------+
| Location  | NoofEmployee |
+-----------+--------------+
| Wayanad   |            4 |
| New Delhi |            3 |
| Chennai   |            4 |
| Mumbai    |            4 |
+-----------+--------------+
4 rows in set (0.00 sec)



SELECT eloc AS Location, COUNT(eid) AS ' No of Employee' FROM employee
GROUP BY eloc;

mysql>
mysql> SELECT eloc AS Location, COUNT(eid) AS ' No of Employee' FROM employee
    -> GROUP BY eloc;
+-----------+----------------+
| Location  | No of Employee |
+-----------+----------------+
| Wayanad   |              4 |
| New Delhi |              3 |
| Chennai   |              4 |
| Mumbai    |              4 |
+-----------+----------------+
4 rows in set, 1 warning (0.00 sec)


SELECT eloc AS location, SUM(esal) AS 'Total Salary',COUNT(eid) AS 'No of Employee' FROM employee
GROUP BY eloc;


SELECT * FROM employee
ORDER BY ename;


SELECT * FROM employee
ORDER BY ename desc;

SELECT *FROM employee
ORDER BY esal;


SELECT *FROM employee
ORDER BY esal  DESC limit 1;

display TOP 2 employee - based ON salary.

SELECT * FROM employee
ORDER BY esal DESC 

SELECT * FROM employee
ORDER BY esal DESC limit 2; 


Joins
=======
how TO FETCH data FROM mutliple tables?
