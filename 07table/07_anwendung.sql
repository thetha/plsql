/*Aufgabe
Lege Heap Tabelle 'subjects' an
  subjects_id 
  subjects_name 
  description 

*/

create table subjects (
    subject_id      number not null,
    subject_name    varchar2(30) not null,
    description     varchar2(4000)
)
tablespace users
/

/*
Aufgabe Setzte nun Primare Key auf subject_id
*/

alter table subjects
    add constraint pk_subjects primary key (subject_id)
/

/*Aufgabe erstelle nun eine Child Tabelle 'courses'
Mit folgenden Parametern
  

*/

  create table courses(
    course_id number not null,
    course_name varchar2(60) not null,
    subject_id number not null,
    duration  number(2),
    skill_lvl varchar2 (12) not null
  )
tablespace users
/

/*Aufgabe setzte Primary Key auf course_id*/
alter table courses
add constraint pk_courses primary key (course_id)
/


/*Aufgabe verbinde beide Tabellen , möglichst logisch, Möglichkeit 1*/
alter table courses 
    add constraint fk_course_subj foreign key (subject_id) references subjects (subject_id)
/

alter table courses 
    add constraint fk_course_subj foreign key (subject_id) references subjects (course_id)
/

/*Aufgabe für eine Check auf level aus 'BEGINNER', 'INTERMEDIATE','ADVANCED' */


--Muster Check
-- CHECK BEDINGUNG
------------------------
alter table another_emp
add (
    gender varchar(10)
);

alter table courses
add constraint ck_level check (skill_lvl in ('BEGINNER', 'INTERMEDIATE', 'ADVNACED'));
