--- Table erstellen
create table people(
      employee_id     number(9),
      first_name      varchar2(15),
      last_name       varchar2(20),
      email           varchar2(25),
      constraint pk_people primary key (employee_id)
    )
    /
--- Daten input
     insert into people
    values (1, 'Tom', 'Kyte', 'tkyte@us.oracle.com');

     insert into people
    values (2, 'Sean', 'Dillon', 'sdillon@us.oracle.com');

     insert into people
    values (3, 'Christopher', 'Beck', 'clbeck@us.oracle.com');
---
     commit;
---
     select *
      from people
    /
--- Spaltenhinzufügen
     alter table people
    add (
      phone_number    varchar2(10)
    )
    /

     select *
      from people;