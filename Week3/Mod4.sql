use coursera;
insert into facility values ("f109","Swimming Pool");
insert into location values ("l200","f109","Door");
insert into location values ("l201","f109","Locker Room");
SET SQL_SAFE_UPDATES = 0;
update location set locname="Gate" where locname = "Door";
SET SQL_SAFE_UPDATES = 1;
delete from location where locno="l201";
