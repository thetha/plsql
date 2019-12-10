---Kopiert Table mit einträgen 
--- Achtung Kopiert nicht die Constraints
create table another_dept
as select * from scott.dept;

-- Kopiert Table ohne Einträge
create table emp_copy 
as select * from scott.dept where 1=0
/

-- Letze einen Eintrag ein
insert into dept
values (40,'OPERATIONS','BOSTON');

--mal schauen was drin ist
select * from another_dept;
select * from emp_copy;
select * from dept;

  
-- Löschen 
drop table another_dept;

create table another_dept
as select * from scott.dept;

-- Muster 
alter table another_dept
add constraint another_dept_pk primary key (deptno);

create table another_emp
as select * from scott.emp;

alter table another_emp
add constraint another_dept_fk foreign key (deptno) references another_dept (deptno);

--p114 dillon funktioniert nicht
insert into another_emp  ( empno, ename, deptno, job)
values (8000,'DILLON',50,'TECHGUY')
/

--p114 dillon funktioniert 
insert into another_emp  ( empno, ename, deptno, job)
values (8000,'DILLON',10,'TECHGUY')
/

--Aufgabe 1: Modifizieren die Schematas so, dass man Dillon reinsetzen kann. 38,39 darf nicht verändert werden 

insert into another_dept ( deptno, dname, loc)
values( 50, 'HR', 'HANNOVER');

-- UNIQUE CONTRAINT --ref. Dillon p 115
-------------------------------
alter table another_emp 
add (
    ssn varchar2(200)
    );

alter table another_emp
add constraint another_emp_snn_uk unique (ssn);
--------------------------------------


-- CHECK BEDINGUNG
------------------------
alter table another_emp
add (
    gender varchar(10)
);

alter table another_emp
add constraint ck_gender check (gender in ('MALE', 'FEMALE'));


-- Table update
--Jetzt wenn modulo 2 empno =0 ,gerade zahl , dann setzte 'MALE' bei der Person
update another_emp
set gender = 'MALE' 
where mod(empno,2)=0
/

update another_emp
set gender = 'FEMALE' 
where mod(empno,2) !=0
/