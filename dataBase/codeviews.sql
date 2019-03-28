create view outkurt as
select m.name Name,m.fname FathersName ,m.lname GrandFather ,m.tin_no Tin,w.type_of_work Works ,w.kebele Kebele ,w.date_tin TinDate ,w.date_rent RentDate ,w.date_license LicenseDate ,k.kurt Kurt , k.multiplier WorkDays , w.remark Remark
from merchant m natural join work w natural join kurt k;

create view outbook as
select m.name Name,m.fname FathersName ,m.lname GrandFather ,m.tin_no Tin,w.type_of_work Works ,w.kebele Kebele ,w.date_tin TinDate ,w.date_rent RentDate ,w.date_license LicenseDate ,b.income TotalIncome ,b.expenditure Expenditure ,b.cost Cost ,(b.income-b.expenditure-b.cost) NetIncome, bo.cash_register , w.remark Remark
from merchant m natural join work w natural join book_online_status b natural join book bo;

create view outvehichle as
select m.name Name,m.fname FathersName ,m.lname GrandFather ,m.tin_no Tin,w.type_of_work Works ,w.kebele Kebele ,w.date_tin TinDate ,w.date_rent RentDate ,w.date_license LicenseDate ,t.type SubDivision, t.level Status ,t.yr_income YearlyIncome, w.remark Remark
from merchant m natural join work w natural join type t;

