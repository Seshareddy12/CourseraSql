use coursera;
select custno,custname,phone,city from customer;
select custno,custname,phone,city from customer where state="CO";
select * from EventRequest where estcost > 4000 order by dateheld;
select eventno , dateheld ,estaudience from eventrequest where (status='approved' and estaudience > 9000)
or
(status = 'pending' and estaudience > 7000); 
select eventno,dateheld,customer.custno,custname from eventrequest
inner join customer
on eventrequest.custno = customer.custno
where city = "Boulder" and dateheld between '2018-01-01' and '2018-01-31';
select planno, avg(numberfld) as averageResources from eventplanline where locno = "l100" group by planno;
select planno, avg(numberfld) as averageResources, count(lineno) as Totallines from eventplanline where locno = "l100" group by planno
having Totallines >= 2;