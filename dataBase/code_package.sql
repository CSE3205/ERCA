delimiter /
create or replace function calctax(income numeric(12,2))
RETURNS decimal(12,2)
begin
    declare inc, tax, minus, pay decimal(12,2);
    declare exit_loop boolean DEFAULT FALSE;
    declare rs cursor for select * from tax order by 	tax_income desc;
    declare continue handler for not found set exit_loop=true;
    open rs;
    tax_loop: loop
        fetch rs into inc,tax,minus;
        if exit_loop THEN
            leave tax_loop;
        end if;
        if income > inc then
           set pay = income * tax;
           set pay = pay - minus;
        end if;
    end loop tax_loop;
    close rs;
    return pay;
end
/
delimiter ;
			
delimiter /
create or replace function calctot(tin_num int(20))
	RETURNS DECIMAL(12,2) 
	begin 
		declare vt, incom decimal(12,2); 
		select income into incom from kurt where tin_no= tin_num; 
		select tot into vt from tot; 
		return income*vt; 
	end 
/
delimiter ;


delimiter /
create or replace function calcclean(income numeric(12))
returns decimal(12,2)

begin
	declare inc, clean, minus, plus, pay decimal(12,2);
	declare exit_loop boolean DEFAULT FALSE;
	declare rs cursor for select * from clean_up order by clean_up_income ;
    declare continue handler for not found set exit_loop=true;
	open rs;
	loop_clean: loop
		fetch rs into inc,clean,minus,plus;
		if exit_loop THEN
            leave loop_clean;
        end if;
		if income<inc then
			set pay=(income-minus)*clean+plus;
		end if;
	end loop;
	close rs;
	return pay;
end;
/
delimiter ;

delimiter /
create or replace procedure insertbook
(m_name varchar(20),m_fname varchar(20),m_lname varchar(20),
m_tin_no numeric(20),m_file_no varchar(20),
w_kebele numeric(2),w_date_tin date,w_date_rent date,
w_date_license date,w_type_of_work varchar(20),
b_cashregister varchar(10),
p_category varchar(10))
begin
	insert into merchant values
	(m_tin_no,m_name,m_fname,m_lname,m_file_no);
	insert into work values
	(m_tin_no,w_type_of_work,w_date_tin,w_date_rent,w_date_license,w_kebele,"new");
	insert into book values
	(m_tin_no,w_type_of_work,b_cashregister);
	insert into payement values
	(m_tin_no,w_type_of_work,p_category);
end;
/
delimiter ;

delimiter /
create or replace procedure insertvehicle
(m_name varchar(20),m_fname varchar(20),m_lname varchar(20),
m_tin_no numeric(20),m_file_no varchar(20),
w_kebele numeric(2),w_date_tin date,w_date_rent date,
w_date_license date,w_type_of_work varchar(20),
v_type_id numeric(3),v_date_production date,
p_category varchar(10))
begin
insert into merchant values
(m_tin_no,m_name,m_fname,m_lname,m_file_no);
insert into work values
(m_tin_no,w_type_of_work,w_date_tin,w_date_rent,w_date_license,w_kebele,"new");
insert into vehichle values
(m_tin_no,w_type_of_work,v_type_id,v_date_production);
insert into payement values
(m_tin_no,w_type_of_work,p_category);
end;
/
delimiter ;

delimiter /
create or replace procedure insertkurt 
(m_name varchar(20),m_fname varchar(20),m_lname varchar(20),
m_tin_no numeric(20),m_file_no varchar(20),
w_kebele numeric(2),w_date_tin date,w_date_rent date,
w_date_license date,w_type_of_work varchar(20),
k_kurt numeric(12,2),k_multiplier numeric(3),
p_category varchar(10))
begin
insert into merchant values
(m_tin_no,m_name,m_fname,m_lname,m_file_no);
insert into work values
(m_tin_no,w_type_of_work,w_date_tin,w_date_rent,w_date_license,w_kebele,"new");
insert into kurt values
(m_tin_no,w_type_of_work,k_kurt,k_multiplier);
insert into payement values
(m_tin_no,w_type_of_work,p_category);
end;
/
delimiter ;

delimiter /
create or replace function totcalc(income int,cat varchar(10))
returns decimal(12,2)
begin
	declare t, pay decimal(12,2);
	select tot into t from totVat where category=cat;
	if income > 500000 then
		set pay=income * t;
	elseif income > 475000 then
		set pay=475000 * t;
	elseif income > 450000 then
		set pay=450000 * t;
	elseif income > 425000 then
		set pay=425000 * t;
	elseif income > 400000 then
		set pay=400000 * t;
	elseif income > 375000 then
		set pay=375000 * t;
	elseif income > 350000 then
		set pay=350000 * t;
	elseif income > 325000 then
		set pay=325000 * t;
	elseif income > 300000 then
		set pay=300000 * t;
	elseif income > 275000 then
		set pay=275000 * t;
	elseif income > 250000 then
		set pay=250000 * t;
	elseif income > 225000 then
		set pay=225000 * t;
	elseif income > 200000 then
		set pay=200000 * t;
	elseif income > 175000 then
		set pay=175000 * t;
	elseif income > 150000 then
		set pay=150000 * t;
	elseif income > 125000 then
		set pay=125000 * t;
	elseif income > 100000 then
		set pay=100000 * t;
	elseif income > 75000 then
		set pay=75000 * t;
	elseif income > 50000 then
		set pay=50000 * t;
	elseif income > 25000 then
		set pay=25000 * t;
	end if;	
	return pay;
end;
/
delimiter ;

delimiter /
create or replace function login(userNam varchar(20), pasword varchar(20))
	returns int
	begin
		declare typ varchar(20);
		select type into typ from users where userName=userNam and password=pasword;
		case typ
			when NULL then return 0;
			when "manager" then return 1;
			when "employee" then return 2;
			when "official" then return 3;
			else return 0;
		end case;
	end;
	/
	delimiter ;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
delimiter /
create or replace trigger catagorize 
before insert or update
on payement
for each row 
begin
if(new.yr_income>500000) then
set new.category ="vat";
end if;
end;
/
delimiter ;


delimiter /
create or replace function vehicleNetIncome(id numeric(3))
returns int
begin
if id=1 then return 18911; end if;
if id=2 then return 15759; end if;
if id=3 then return 20959; end if;
if id=4 then return 17965; end if;
if id=5 then return 25529; end if;
if id=6 then return 22693; end if;
if id=7 then return 29469; end if;
if id=8 then return 26790; end if;
if id=9 then return 35300; end if;
if id=10 then return 30257; end if;
if id=11 then return 37821; end if;
if id=12 then return 33093; end if;
if id=13 then return 39712; end if;
if id=14 then return 35300; end if;
if id=15 then return 40973; end if; 
if id=16 then return 36876; end if;
if id=17 then return 55071; end if;
if id=18 then return 51065; end if;
if id=19 then return 57442; end if;
if id=20 then return 48825; end if;
if id=21 then return 61025; end if;
if id=22 then return 63071; end if;

if id=23 then return 22062; end if;
if id=24 then return 18911; end if;
if id=25 then return 26948; end if;
if id=26 then return 23953; end if;
if id=27 then return 31202; end if;
if id=28 then return 28366; end if;
if id=29 then return 42864; end if;
if id=30 then return 37506; end if;
if id=31 then return 50426; end if;
if id=32 then return 42864; end if;
if id=33 then return 55597; end if;
if id=34 then return 47261; end if;
if id=35 then return 64208; end if;
if id=36 then return 54577; end if;
if id=37 then return 64457; end if;
if id=38 then return 59354; end if;
if id=39 then return 72958; end if;
if id=40 then return 62014; end if;
if id=41 then return 75753; end if;
if id=42 then return 64390; end if;
if id=43 then return 79547; end if;
if id=44 then return 67615; end if;
if id=45 then return 93568; end if;
if id=46 then return 79533; end if;
if id=47 then return 102154; end if;
if id=48 then return 86821; end if;

if id=49 then return 37821; end if;
if id=50 then return 34669; end if;
if id=51 then return 56889; end if;
if id=52 then return 50901; end if;
if id=53 then return 86894; end if;
if id=54 then return 73860; end if;
if id=55 then return 89837; end if;
if id=56 then return 76362; end if;
if id=57 then return 97105; end if;
if id=58 then return 82539; end if;
if id=59 then return 98725; end if;
if id=60 then return 83916; end if;
if id=61 then return 104086; end if;
if id=62 then return 88473; end if;

if id=63 then return 17019; end if;
if id=64 then return 17019; end if;
if id=65 then return 12607; end if;
if id=66 then return 12607; end if;
if id=67 then return 12607; end if;
if id=68 then return 12607; end if;

if id=69 then return 39996; end if;
if id=70 then return 33997; end if;
if id=71 then return 32778; end if;
if id=72 then return 26631;
else return 0;
end if;
end;
/ 
delimiter ;




























































































































































































































































create or replace procedure fill(tin_no numeric(20),name varchar(20),fname varchar(20),lname varchar(20),file_no varchar(20),type_of_work varchar(20),date_tin date,date_rent date,date_license date,kebele numeric(2),kurt numeric(12,2)=0,multiplier numeric(3)=0,typ varchar(20)='none',levl varchar(20)='none',date_production date = '00-00-0000',current_date date ='00-00-0000',category varchar(10))
declare
x integer;
y date;
begin
insert into merchant values(tin_no,name,fname,lname,file_no);
insert into work values(tin_no,type_of_work,date_tin,date_rent,date_license,kebele);
if(kurt != 0) then
begin
insert into kurt values(tin_no,type_of_work,kurt,multiplier);
x=kurt * multiplier;
insert into payement values(tin_no,type_of_work,x);
end if;
else if(typ != 'none') then
y=current_date - date_production
if(y<=15) then
labl='new';
else if (y<=30) then
labl='working';
else
labl='old';

select type_id into x from type where type=typ and level=levl and label=labl;



