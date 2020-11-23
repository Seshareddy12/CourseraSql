use coursera;
select distinct city ,state,zip from customer ;
select empname,department,email,phone from employee where phone like "3-%";
select * from resource where rate between 10 and 20 order by rate;
select eventno,dateauth,status from eventrequest where status in ("Denied","Approved") and dateauth between "2018-07-01" and "2018-07-31";
select locno,locname from location inner join facility
on location.facno = facility.facno where facname="Basketball Arena";
select planno,count(lineno) as TotalLines ,sum(numberfld) as TotalResources from eventplanline group by planno having TotalLines>=1;