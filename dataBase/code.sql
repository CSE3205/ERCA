create database revenue;
use revenue;

create table merchant(
tin_no numeric(20) primary key,
name varchar(20),
fname varchar(20),
lname varchar(20),
file_no varchar(20));

create table employee (
name varchar(20),
fname varchar(20),
lname varchar(20),
type varchar(20),
status varchar(20));

create table work(tin_no numeric(20),
type_of_work varchar(20),
date_tin date,
date_rent date,
 date_license date,
kebele numeric(2),
remark varchar(10),
primary key(tin_no,type_of_work), 
foreign key(tin_no) references merchant(tin_no));

create table work_record(tin_no numeric(20),
type_of_work varchar(20),
date_paid date,
total_payment numeric(12,2),
primary key(tin_no,type_of_work), 
foreign key(tin_no,type_of_work)references work(tin_no,type_of_work));


create table kurt(
tin_no numeric(20),
type_of_work varchar(20),
kurt numeric(12,2),
multiplier numeric(3),
primary key(tin_no,type_of_work), 
foreign key(tin_no,type_of_work) references work(tin_no,type_of_work));

create table book(
tin_no numeric(20),
type_of_work varchar(20),
cash_register varchar(10),
primary key(tin_no,type_of_work), 
foreign key(tin_no,type_of_work) references work(tin_no,type_of_work));

create table book_online_status(
tin_no numeric(20),
type_of_work varchar(20),
income numeric(12,2),
expenditure numeric(12,2),
cost numeric(12,2),
date_check date,
primary key(tin_no,type_of_work),
foreign key(tin_no,type_of_work) references book(tin_no,type_of_work));

create table type(
type_id numeric(3),
type_of_work varchar(20),
type varchar(20),
level varchar(20),
yr_income numeric(12,2),
primary key(type_id,type_of_work));

create table vehichle(
tin_no numeric(20),
type_of_work varchar(20),
type_id numeric(3),
date_production date,
primary key(tin_no,type_of_work,type_id),
foreign key(tin_no,type_of_work) references work(tin_no,type_of_work), 
foreign key(type_id,type_of_work) references type(type_id,type_of_work));

create table salary(
tin_no numeric(20),
type_of_work varchar(20),
type_id numeric(3),
salary_driver numeric(12,2),
salary_help numeric(12,2),
primary key(tin_no,type_of_work,type_id),
foreign key(tin_no,type_of_work,type_id) references vehichle(tin_no,type_of_work,type_id), 
foreign key(type_id,type_of_work) references type(type_id,type_of_work));

create table tot(
category varchar(10),
tot numeric(2,2),
primary key(category));

create table vat(
category varchar(10),
vat numeric(2,2),
primary key(category));

create table payement(
tin_no numeric(20),
type_of_work varchar(20),
category varchar(10),
primary key(tin_no,type_of_work), 
foreign key(tin_no,type_of_work) references work(tin_no,type_of_work), 
foreign key(category) references tot(category), 
foreign key(category) references vat(category));

create table payement_online_status(
tin_no numeric(20),
type_of_work varchar(20),
yr_income numeric(12,2),
date_of_pay date,
primary key(tin_no,type_of_work,date_of_pay),
foreign key(tin_no,type_of_work) references payement(tin_no,type_of_work));

create table remain(
tin_no numeric(20),
type_of_work varchar(20),
year_of_remain date,
amount numeric(10),
primary key(year_of_remain,tin_no,type_of_work),
foreign key(tin_no,type_of_work,year_of_remain) references payement_online_status(tin_no,type_of_work,date_of_pay));

create table tax(
tax_income numeric(12),
tax numeric(2,2),
minus numeric(12),
primary key(tax_income));

create table clean_up(
clean_up_income numeric(12) primary key,
clean_up numeric(6,6),
minus numeric(12),
adder numeric(6));

create table special(
salary numeric(6,2) primary key,
rate numeric(2,2),
minus numeric(4,2));

