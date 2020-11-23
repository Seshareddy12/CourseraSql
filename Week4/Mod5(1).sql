use coursera;
select eventrequest.eventno,dateheld,count(planno) as totaleventplans from eventrequest
inner join eventplan on eventrequest.eventno = eventplan.eventno 
where workdate between "2018-12-01" and "2018-12-31" group by eventrequest.eventno having count(planno)>1 ; 
select planno,eventplan.eventno,workdate,activity from eventplan,eventrequest,facility where workdate between '2018-12-01' and '2018-12-31' 
and eventrequest.eventno = eventplan.eventno
and facility.facno = eventrequest.facno
and facname = "Basketball Arena";
select eventrequest.eventno,dateheld,status,estcost from  eventrequest inner join eventplan
on eventrequest.eventno = eventplan.eventno 
Inner join facility 
on eventrequest.facno = facility.facno
inner join employee
on eventplan.empno = employee.empno
where empname = "Mary Manager" and workdate between '2018-10-1' and '2018-12-31'
and facname = "Basketball arena";
select eventplan.planno,lineno,timestart,timeend,numberfld from eventplanline
inner join eventplan on eventplan.planno = eventplanline.planno 
inner join eventrequest on eventrequest.eventno = eventplan.eventno
inner join facility on eventrequest.facno = facility.facno
where activity="operation" and workdate between '2018-10-01' and '2018-12-31'
and facname = "Basketball arena";
