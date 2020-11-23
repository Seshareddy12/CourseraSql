use coursera;
select eventno,dateheld,eventrequest.custno,custname,facility.facno,facname from eventrequest
inner join facility on eventrequest.facno = facility.facno
inner join customer on customer.custno = eventrequest.custno
where year(dateheld)=2018 and city="Boulder";
select customer.custno,custname,eventno,dateheld,facility.facno,facname,estaudience from eventrequest 
inner join facility on eventrequest.facno = facility.facno
inner join customer on customer.custno = eventrequest.custno
where year(dateheld)=2018 and cast(estcost as float) / cast(estaudience as float) <0.2;
select customer.custno,custname,sum(estcost) as total_est_costs from eventrequest 
inner join facility on eventrequest.facno = facility.facno
inner join customer on customer.custno = eventrequest.custno
where status = "approved"
group by customer.custno,custname;
