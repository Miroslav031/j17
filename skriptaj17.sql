drop database if exists edunovaj17;
create database edunovaj17;

use edunovaj17;

create table smjer(
sifra int not null primary key auto_increment, 
naziv varchar(50) not null,
cijena decimal(18,2), 
upisnina decimal(18,2),
trajanje int not null
);

create table osoba(
oib char(11) not null primary key,
ime varchar(50) not null, 
prezime varchar(50) not null,
email varchar(100), 
spol boolean
);


create table grupa(
sifra int not null primary key auto_increment, 
naziv varchar(50) not null,
datumpocetka datetime, 
smjer int not null,
predavac int not null
);


create table predavac(
sifra int not null primary key auto_increment, 
osoba char(11) not null, 
placa decimal(18,2)
);


create table polaznik(
sifra int not null primary key auto_increment, 
osoba char(11) not null,
Brojugovora varchar(50)
);


create table clan(
grupa int not null, 
polaznik int not null
); 


alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra); 

alter table predavac add foreign key (osoba) references osoba(oib);

alter table polaznik add foreign key (osoba) references osoba(oib);

alter table clan add foreign key (grupa) references grupa(sifra); 

alter table clan add foreign key (polaznik) references polaznik(sifra); 





