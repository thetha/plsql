 create table department
 ( dep_id           number(1) not null,
   dep_name         varchar2(200),
   hire_date        date default sysdate,
   termination_date date,
   termination_disc varchar(4000),
   constraint   department_pk primary key (dep_id, dep_name)
 ) 
 /

 create table employee_history
 ( employee_id           number(1) not null,
   employee_name         varchar2(200),
   hire_date        date default sysdate,
   termination_date date,
   termination_disc varchar(4000),
   constraint   employee_history_pk primary key (employee_history)
 ) 
 /

drop table employee_history; 

alter table department
add  constraint   department_pk primary key (hire_date);

-- composite primary keys verbinden sich nicht mit einem Einzelinen fk, testen evnt. auch composite