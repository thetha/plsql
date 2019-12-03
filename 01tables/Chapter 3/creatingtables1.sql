 create table department
 ( dep_id           number(1) not null,
   dep_name         
   hire_date        date default sysdate,
   termination_date date,
   termination_disc varchar(4000),
   constraint   emp_hist_pk primary key (emp_id, hire_date)
 ) 
 /
 