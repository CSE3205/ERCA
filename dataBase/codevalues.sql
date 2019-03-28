insert into tot values("service",0.1);
insert into tot values("sales",0.02);

insert into vat values("vat",0.15);

insert into tax values(7201,0.1,720);
insert into tax values(19801,0.15,1710);
insert into tax values(38401,0.2,3630);
insert into tax values(63001,0.25,6780);
insert into tax values(93601,0.3,11460);
insert into tax values(130800,0.35,18000);

insert into special values(601,0.1,60);
insert into special values(1651,0.15,142.5);
insert into special values(3201,0.2,302.5);
insert into special values(5251,0.25,565);
insert into special values(7801,0.3,955);
insert into special values(10900,0.35,1500);

insert into type values(1,"Public Service","Below 5 chairs","new",94553);
insert into type values(2,"Public Service","Below 5 chairs","working",78794);
insert into type values(3,"Public Service","6-12 chairs","new",110312);
insert into type values(4,"Public Service","6-12 chairs","working",94553);
insert into type values(5,"Public Service","13-19 chairs","new",141829);
insert into type values(6,"Public Service","13-19 chairs","working",126070);
insert into type values(7,"Public Service","20-23 chairs","new",123347);
insert into type values(8,"Public Service","20-23 chairs","working",157588);
insert into type values(9,"Public Service","24-29 chairs","new",220623);
insert into type values(10,"Public Service","24-29 chairs","woriking",189105);
insert into type values(11,"Public Service","30-34 chairs","new",252141);
insert into type values(12,"Public Service","30-34 chairs","working",220623);
insert into type values(13,"Public Service","35-39 chairs","new",283658);
insert into type values(14,"Public Service","35-39 chairs","working",252141);
insert into type values(15,"Public Service","40-44 chairs","new",315176);
insert into type values(16,"Public Service","40-44 chairs","working",263658);
insert into type values(17,"Public Service","45-50 chairs","new",500641);
insert into type values(18,"Public Service","45-50 chairs","working",425544);
insert into type values(19,"Public Service","51-55 chairs","new",522196);
insert into type values(20,"Public Service","Above 51 chairs","working",443865);
insert into type values(21,"Public Service","56-62 chairs","new",581190);
insert into type values(22,"Public Service","Above 63 chairs","new",630714);

insert into type values(23,"Heavy Trucks","Below 10 kuntal","new",110312);
insert into type values(24,"Heavy Trucks","Below 10 kuntal","working",94553);
insert into type values(25,"Heavy Trucks","11-20 kuntal","new",141829);
insert into type values(26,"Heavy Trucks","11-20 kuntal","working",126070);
insert into type values(27,"Heavy Trucks","21-50 kuntal","new",173347);
insert into type values(28,"Heavy Trucks","21-50 kuntal","working",157566);
insert into type values(29,"Heavy Trucks","51-70 kuntal","new",252141);
insert into type values(30,"Heavy Trucks","51-70 kuntal","working",220623);
insert into type values(31,"Heavy Trucks","71-90 kuntal","new",315176);
insert into type values(32,"Heavy Trucks","71-90 kuntal","working",267899);
insert into type values(33,"Heavy Trucks","91-120 kuntal","new",370547);
insert into type values(34,"Heavy Trucks","91-120 kuntal","working",315075);
insert into type values(35,"Heavy Trucks","121-150 kuntal","new",458631);
insert into type values(36,"Heavy Trucks","121-150 kuntal","working",389836);
insert into type values(37,"Heavy Trucks","151-200 kuntal","new",537141);
insert into type values(38,"Heavy Trucks","151-200 kuntal","working",456570);
insert into type values(39,"Heavy Trucks","201-250 kuntal","new",729578);
insert into type values(40,"Heavy Trucks","201-250 kuntal","working",620143);
insert into type values(41,"Heavy Trucks","251-300 kuntal","new",841702);
insert into type values(42,"Heavy Trucks","251-300 kuntal","working",715446);
insert into type values(43,"Heavy Trucks","301-350 kuntal","new",994335);
insert into type values(44,"Heavy Trucks","301-350 kuntal","working",845185);
insert into type values(45,"Heavy Trucks","351-400 kuntal","new",1336692);
insert into type values(46,"Heavy Trucks","351-400 kuntal","working",1136190);
insert into type values(47,"Heavy Trucks","Above 400 kuntal","new",1702560);
insert into type values(48,"Heavy Trucks","Above 400 kuntal","working",1447016);

insert into type values(49,"Water Trucks","Below 11499 liter","new",189105);
insert into type values(50,"Water Trucks","Below 11499 liter","working",173347);
insert into type values(51,"Water Trucks","11500-18000 liter","new",299417);
insert into type values(52,"Water Trucks","11500-18000 liter","working",267899);
insert into type values(53,"Water Trucks","18001-25000 liter","new",482745);
insert into type values(54,"Water Trucks","18001-25000 liter","working",410334);
insert into type values(55,"Water Trucks","25001-35000 liter","new",718695);
insert into type values(56,"Water Trucks","25001-35000 liter","working",610893);
insert into type values(57,"Water Trucks","35001-45000 liter","new",924808);
insert into type values(58,"Water Trucks","35001-45000 liter","working",786086);
insert into type values(59,"Water Trucks","45001-55000 liter","new",1096941);
insert into type values(60,"Water Trucks","45001-55000 liter","working",932400);
insert into type values(61,"Water Trucks","Above 55000 liter","new",1301080);
insert into type values(62,"Water Trucks","Above 55000 liter","working",1105917);

insert into type values(63,"Grinders","Electric Grinder","new",65097);
insert into type values(64,"Grinders","Electric Grinder","working",65097);
insert into type values(65,"Grinders","Electric and Diesel Grinder","new",63035);
insert into type values(66,"Grinders","Electric and Diesel Grinder","working",63035);
insert into type values(67,"Grinders","Diesel only Grinder","new",63035);
insert into type values(68,"Grinders","Diesel only Grinder","working",63035);

insert into type values(69,"Others","Combiner Rental","new",315176);
insert into type values(70,"Others","Combiner Rental","working",267699);
insert into type values(71,"Others","Farm Tracter Rental","new",252141);
insert into type values(72,"Others","Farm Tracter Rental","working",220623);

insert into clean_up values(100000,0.0045,0,0);
insert into clean_up values(500000,0.0025,100000,450);
insert into clean_up values(1000000,0.0023,500000,1450);
insert into clean_up values(5000000,0.0008,1000000,2600);
insert into clean_up values(10000000,0.000535,5000000,5800);
insert into clean_up values(35000000,0.00035,10000000,8475);
insert into clean_up values(65000000,0.00027,35000000,17225);






































