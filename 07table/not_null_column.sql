   alter table people
    add (
      ssn       number(9)
    )
    /

     update people
       set ssn = 123456789
     where employee_id = 1;

     update people
       set ssn = 234567890
     where employee_id = 2;

     update people
       set ssn = 345678901
     where employee_id = 3;

--- Bedingung 
     alter table people
    modify (
      ssn number(9) not null
    )
    /

     desc people

--- welches Effekt hat, dieses Vorgehen, wenn einer der Datensätze, z.B. Nr. kein ssn hat
   alter table people
    add (
      ssn       number(9)
    )
    /

     update people
       set ssn = 234567890
     where employee_id = 2;

     update people
       set ssn = 345678901
     where employee_id = 3;
--- 0 bedeutet, Mitarbeiter muss Nummer rausfinden funktioniert
update people
set ssn = '0' 
where ssn is null
/


---
select *
from   people
where  ssn is null;

--- IS NULL // IS NOT NULL

--- Bedingung 
     alter table people
    modify (
      ssn number(9) not null
    )
    /

--- gibt nicht mehr, überselect
     desc people