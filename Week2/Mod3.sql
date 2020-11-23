 
 use coursera;
 
 create table Employee(
 empno varchar(8) not null,
 empname varchar(20) not null,
 department varchar(15) not null,
 email varchar(25) not null,
 phone varchar(10) not null,
 constraint EMP_PK primary key (empno)
 );
 
 create table EventRequest(
 eventno varchar(8) not null,
 dateheld date not null,
 datereq date not null,
 facno varchar(8) not null,
 custno varchar(8) not null,
 dateauth date ,
 status varchar(15) not null check (status in ("Pending", "Denied","Approved")),
 estcost varchar(10) not null,
 estaudience int not null check(estaudience>0),
 budno varchar(8),
 constraint EVENT_PK primary key (eventno),
 constraint facno_fk foreign key (facno) references facility(facno),
 constraint cust_fk foreign key (custno) references customer(custno)
 );
 
 create table Resource (
 resno varchar(8) not null,
 resname varchar(15) not null,
 rate varchar(6) not null check (rate>0),
 constraint RES_PK primary key (resno)
 );
 
 create table EventPlan (
 planno varchar(8) not null,
 eventno varchar(8) not null,
 workdate date not null,
 notes varchar(20),
 activity varchar(15) not null,
 empno varchar(8),
 constraint PLAN_PK primary key (planno),
 constraint event_fk foreign key (eventno) references  EventRequest(eventno)
 );
 
 create table EventPlanLine (
 planno varchar(8) not null,
 lineno varchar(8) not null,
 timestart datetime not null,
 timeend datetime not null,
 numberfld int not null,
 locno varchar(8) not null,
 resno varchar(8) not null,
 constraint PlanLine_PK primary key (planno,lineno),
 constraint locno_fk foreign key (locno) references location(locno),
 constraint resno_fk foreign key (resno) references Resource(resno),
 check (timestart < timeend)
 );