/*Aufgabe
Lege Heap Table an
  subjects_id 
  subjects_name 
  description 

*/

create table subjects (
  subject_id number not null, 
  subjects_name varchar2(30) not null,
  description varchar2(4000)
)
tablespace users
/



/*
Aufgabe Setzte nun Primare Key auf subjects_id
*/

alter table subjects 
add constraint pk_subjects
primary key (subject_id)
/



/*Aufgabe erstelle nun eine Child Tabelle Kurse
Mit folgenden Parametern


*/

create table courses (
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
    add constraint pk_courses
    primary key (course_id)
/

/*Aufgabe verbinde beide Tabellen */
alter table courses 
    add constraint fk_course_subj foreign key (subject_id) references subjects (subject_id)
/

/*Aufgabe für eine Check auf level aus 'BEGINNER', 'INTERMEDIATE','ADVANCED' */
alter table courses
add constraint ck_level check(
    skill_lvl in ('BEGINNER', 'INTERMEDIATE','ADVANCED'    )

)

create directory ext_data_files
as '/media/sf_PLSQL'


create table teachers_ext(
    first_name varchar2(15),
    last_name  varchar2(15),
    phone_number varchar2(12)
    
)
organization external (
    type oracle_loader
    default directory ext_data_files
    access parameters (
            fields terminated by ',')
            location ( 'teachers.csv')
    )
reject limit unlimited
/


select first_name ||' '|| last_name "Name", phone_number "Phone"
      from teachers_ext
     order by last_name
    /