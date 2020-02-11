create table Filialen(
    fil_nr          number(3),
    bezeichnung     varchar2(30),
    land            varchar2(50),
    adresse         varchar2(40),
)

create table Personal(
    per_nr          number(9),
    vorname         varchar2(20),
    nachname        varchar2(20),
    position        varchar2(20),
    gebdatum        number(8),
    )

create table Produkte(
    pro_nr          number(12),
    bezeichnung     varchar2(50),
    preis           number(10),
)

create table Kunden(
    kun_nr          number(8),
    kunname         varchar2(50),
    adresse         varchar2(50),
    land            varchar2(50),
    telefon         number(30),
)

create table Bestellung(
    bes_nr          number(15),
    menge           number(5),
)

alter table Filialen
add constraint pk_filialen
primary key (fil_nr)

alter table Personal
add constraint pk_personal
primary key (per_nr)

alter table Produkte
add constraint pk_produkte
primary key (pro_nr)

alter table Kunden
add constraint pk_kunden
primary key (kun_nr)

alter table Bestellung
add constraint pk_bestellung
primary key (bes_nr)