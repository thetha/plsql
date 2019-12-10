---Kopiert Table mit einträgen 
--- Achtung Kopiert nicht die Constraints
create table another_dept
as select * from scott.dept;

-- Kopiert Table ohne Einträge
create table emp_copy 
as select * from scott.dept where 1=0
/

insert into another_dept
values (40,'OPERATIONS','BOSTON');

select * from another_dept

drop table another_dept;


alter table another_dept
add constraint another_dept_pk primary key (deptno);

create table another_emp
as select * from scott.emp;

alter table another_emp
add constraint another_dept_fk foreign key (deptno) references another_dept (deptno);

alter table another_emp 
add (
    ass varcat2(200);
    );

alter table another_emp
add constraint another_emp_snn_uk unique (ssn);

-- Check Bedingung
alter table another_emp
add (
    gender varchar(10);


);

alter table another_emp
add constraint ck_gender check (gender in ('MALE', 'FEMALE'));


-- Table update

update another_emp
set gender = 'MALE' 
where mod(empno,2)=0
/