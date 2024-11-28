--Crear BD Accidentes Geograficos
--Fecha: 21/04/2020
--Fecha de ultima modificación: 01/06/2020 
--Hora de modificacion : 10:28 am
--Autor: jésus Adrian López Luevanos #11

GO
create database Proyecto_Accidentes_Geograficos

GO
use  Proyecto_Accidentes_Geograficos

GO
create table Localidad(
NombreLocalidad varchar(20),
Nombre_Pais varchar(25),
No_Localidad Smallint,
primary key (No_Localidad))

GO
alter table Localidad
add constraint FK_NombrePais_Localidad
foreign key(Nombre_Pais)
references Pais(NombrePais)

GO
create index miindice on Localidad(NombreLocalidad)

GO
insert into Localidad 
values('Torreon' , 'México', 1586)

GO
insert into Localidad
values('Tokio' , 'Japón', 5787)

GO
insert into Localidad
values('Guerrero', 'México', 7842)

GO
insert into Localidad
values('Nayarit', 'México', 5445)

GO
insert into Localidad
values('Kioto', 'Japón', 7425)

GO
insert into Localidad
values('Wuhan', 'China', 45)

GO
insert into Localidad
values('Chernobyl', 'Ucrania', 7774)

GO
insert into Localidad
values('Buenos Aires', 'Argentina', 8920)

GO
insert into Localidad
values('Paris', 'Francia', 5850)

GO
insert into Localidad
values('Miami', 'EUA', 8405)

GO
create table Pais(
NombrePais varchar(25),
Poblacion int,
Extension int,
primary key(NombrePais))

GO
create index miindice2 on Pais(NombrePais)

GO
insert into Pais
values('México', 160009880, 613880)

GO
insert into Pais
values('China', 870858038, 658521)

GO
insert into Pais
values('Japón', 1057809988, 5582054)

GO
insert into Pais
values('Ucrania', 788883394, 757684)

GO
insert into Pais
values('EUA', 99999556, 852047)

GO
insert into Pais
values('Canada', 77821889, 8871027)

GO
insert into Pais
values('Brazil', 876327913, 75429)

GO
insert into Pais
values('Argentina', 897725005, 88099)

GO
insert into Pais
values('Francia', 958023697, 864508)

GO
insert into Pais
values('Russia', 484940042, 890700)

GO
create table Rio(
IDAccidente_Rio int,
Nombre_Accidente varchar(25),
Pos_H int,
pos_V int,
Ubicacion varchar(25),
Longitud_kms int,
primary key (IDAccidente_Rio))

GO
insert into Rio
values(00001, 'Ahogamiento', 8705045, 6987001, '87.05045, -698.7001', 2688909)

GO
insert into Rio
values(00002, 'Choque de Barcos', 895045, 1254708, '-895.045, -12.54708', 66856240)

GO
insert into Rio
values(00003, 'Contaminación', 1405045, 6580001, '-14.05045, +6580.001', 68545068)

GO
insert into Rio
values(00004, 'Desbrde', 96875045, 88787001, '+9.6875045, -887.87001', 9627415)

GO
insert into Rio
values(00005, 'Hundimiento de barco', 74528515, 6987055, '+745.28515, -69.87055', 5478909)

GO
insert into Rio
values(00006, 'Choque de Barcos', 2105045, 5855470, '-21.05045, -585.5470', 78520140)

GO
insert into Rio
values(00007, 'Incendio', 84285650, 75251150, '+842.85650, +75.251150', 24596015)

GO
insert into Rio
values(00008, 'Choque de Jates', 8524700, 1888108, '+852.4700, +18.88108', 19850324)

GO
insert into Rio
values(0009, 'Picadura de pez', 5142688, 14782036, '-514.2688, +147.82036', 5728758)

GO
insert into Rio
values(00010, 'Ahogado', 85742807, 6535871, '-857.42807, -65.35871', 751426)

GO
create table Lago(
IDAccidente_Lago int,
Nombre_Accidente varchar(25),
Pos_H int,
pos_V int,
Ubicacion varchar(25),
Extension_kms int,
primary key (IDAccidente_Lago))

GO
insert into Lago
values(66671, 'Choque de barcos', 526856301, 78521452, '-526.856301, 78.521452', 7563200)

GO
insert into Lago
values(66672, 'Hundimiento de barco', 741269850, 7532159, '+741.269850, +75.32159', 7536954)

GO
insert into Lago
values(66673, 'Ahogado', 23654710, 752145236, '+236.54710, -752.145236', 7489632)

GO
insert into Lago
values(66674, 'Corriente Rapida', 12563480, 745632110, '-125.63480, -745.632110', 2563214)

GO
insert into Lago
values(66675, 'Contaminación lago', 741366658, 7852159, '-741.366658, +7852.159', 153576)

GO
insert into Lago
values(66676, 'Incencio en el Lago', 48605970, 21874530, '+486.05970, -218.74530', 6748906)

GO
insert into Lago
values(66677, 'Persona Perdida', 74136985, 20120548, '+741.36985, -201.20548', 17894165)

GO
insert into Lago
values(66678,'Hundimiento de barco', 745552369, 54652847, '+745.552369, +546.52847', 54326554)

GO
insert into Lago
values(66679, 'Ahogado', 709405560, 58987445, '-7094.05560, -58.987445', 7945210)

GO
insert into Lago
values(66680, 'Corriente Rapida', 73892541, 354127489, '+738.92541, -35.4127489', 7410369)

GO
create table Montaña(
IDAccidente_Montaña int,
Nombre_Accidente varchar(25),
Pos_H int,
pos_V int,
Ubicacion varchar(25),
Altura_Mts int,
primary key (IDAccidente_Montaña))

GO
insert into Montaña
values(080600, 'Derrumbe de montaña', 65841012, 87561230, '+65.841012, -875.61230', 890000)

GO
insert into Montaña
values(080601, 'Ataque de oso', 14523612, 75556814, '-145.23612, -755.56814', 658010)

GO
insert into Montaña
values(080602, 'Persona Perdida', 12566654, 7888541, '+12.566654, +788.8541', 565656)

GO
insert into Montaña
values(080603, 'Derrumbe de rocas', 14522228, 55552140, '-14522228, +55552140', 145589)

GO
insert into Montaña
values(080604, 'Pelea de osos', 222541798, 335266610, '-2225.41798, -335.266610', 666999)

GO
insert into Montaña
values(080605, 'Ataque de Zorros', 74563281, 66582112, '+745.63281, -66.582112', 456321)

GO
insert into Montaña
values(080606,'Riña entre personas', 47552100, 78552410, '+47552100, -78552410', 745225)

GO
insert into Montaña
values(080607, 'Incendio Forestal', 321789542, 15357759, '+321.789542, +153.57759', 540001)

GO
insert into Montaña
values(080608,'Tala de arboles', 69685745, 14253650, '-69.685745, +142.53650', 252654)

GO
insert into Montaña
values(080609, 'Cazador de animales', 18131253, 21080600, '-181.31253, -210.80600', 545900)

GO
create table Rio_Localidad(
Num_Localidad smallint,
ID_Rio int,
primary key(Num_Localidad,ID_Rio))

GO
insert into Rio_Localidad
Values(1586, 00001)

GO
insert into Rio_Localidad
Values(5787, 00002)

GO
insert into Rio_Localidad
Values(7842, 00003)

GO
insert into Rio_Localidad
Values(5445, 00004)

GO
insert into Rio_Localidad
Values(7425, 00005) 

GO
insert into Rio_Localidad
Values(45, 00006)

GO
insert into RIo_Localidad
Values(7774, 00007)

GO
insert into Rio_Localidad
Values(8920, 00008)

GO
insert into RIo_Localidad
Values(5850, 00009)

GO
insert into Rio_Localidad
Values(8405,00010)

GO
alter table Rio_Localidad
add constraint FK_NumLocal
foreign key(Num_Localidad)
references Localidad(No_Localidad)

GO
alter table Rio_Localidad
add constraint FK_IdAccidente_Rio
foreign key(ID_Rio)
references Rio(IDAccidente_Rio)

GO
create table AccidenteRio_Pais(
NombPais varchar(25),
ID_Rio_Accidente int,
primary key(NombPais, ID_Rio_Accidente))

GO
insert into AccidenteRio_Pais
values('México', 00001)

GO
insert into AccidenteRio_Pais
values('China', 00002)

GO
insert into AccidenteRio_Pais
values('Japón', 00003)

GO
insert into AccidenteRio_Pais
values('Ucrania', 00004)

GO
insert into AccidenteRio_Pais
values('EUA', 00005)

GO
insert into AccidenteRio_Pais
values('Canada', 00006)

GO
insert into AccidenteRio_Pais
values('Brazil', 00007)

GO
insert into AccidenteRio_Pais
values('Argentina', 00008)

GO
insert into AccidenteRio_Pais
values('Francia', 00009)

GO
insert into AccidenteRio_Pais
values('Russia', 00010)

GO
alter table AccidenteRio_Pais
add constraint FK_NomPais
foreign key(NombPais)
references Pais(NombrePais)

GO
alter table AccidenteRio_Pais
add constraint FK_IDrioAcci
foreign key(ID_Rio_Accidente)
references Rio(IDAccidente_Rio)

GO
create table AccidenteLago_Pais(
NombPais varchar(25),
ID_Lago_Accidente int,
primary key(NombPais, ID_Lago_Accidente))

GO
insert into AccidenteLago_Pais
values('México', 66671)

GO
insert into AccidenteLago_Pais
values('China', 66672)

GO
insert into AccidenteLago_Pais
values('Japón', 66673)

GO
insert into AccidenteLago_Pais
values('Ucrania', 66674)

GO
insert into AccidenteLago_Pais
values('EUA', 66675)

GO
insert into AccidenteLago_Pais
values('Canada', 66676)

GO
insert into AccidenteLago_Pais
values('Brazil', 66677)

GO
insert into AccidenteLago_Pais
values('Argentina', 66678)

GO
insert into AccidenteLago_Pais
values('Francia', 66679)

GO
insert into AccidenteLago_Pais
values('Russia', 66680)

 GO
alter table AccidenteLago_Pais
add constraint FK_NomPais_Accidente
foreign key(NombPais)
references Pais(NombrePais)

GO
alter table AccidenteLago_Pais
add constraint FK_IDAcciLago
foreign key(ID_Lago_Accidente)
references Lago(IDAccidente_Lago)

GO
create table AccidenteMontaña_Pais(
NombPais varchar(25),
ID_Montaña_accidente int,
primary key(NombPais, ID_Montaña_accidente))

GO
insert into AccidenteMontaña_Pais
values('México', 080600)

GO
insert into AccidenteMontaña_Pais
values('China', 080601)

GO
insert into AccidenteMontaña_Pais
values('Japón', 080602)

GO
insert into AccidenteMontaña_Pais
values('Ucrania', 080603)

GO
insert into AccidenteMontaña_Pais
values('EUA', 080604)

GO
insert into AccidenteMontaña_Pais
values('Canada', 080605)

GO
insert into AccidenteMontaña_Pais
values('Brazil', 080606)

GO
insert into AccidenteMontaña_Pais
values('Argentina', 080607)

GO
insert into AccidenteMontaña_Pais
values('Francia', 080608)

GO
insert into AccidenteMontaña_Pais
values('Russia', 080609)

GO
alter table AccidenteMontaña_Pais
add constraint FK_NombrePais_Accidente
foreign key(NombPais)
references Pais(NombrePais)

GO
alter table AccidenteMontaña_Pais
add constraint FK_IDAcciMontaña
foreign key(ID_Montaña_accidente)
references Montaña(IDAccidente_Montaña )

GO
--1: Mostrar ID´S de rio 
Select IDAccidente_Rio
from Rio

GO
--2: Mostrar ID'S de Montaña
select IDAccidente_Montaña
from Montaña

GO
--3: Mostrar ID´s de Lago
select IDAccidente_Lago
from Lago

GO
--4: Suma De todas las Alturas donde ha habido accidentes
select SUM(Altura_Mts)
from Montaña

GO
--5: Extensión Menor de las extenciones donde ha habido accidentes
select MIN(Extension_Kms)
from Lago

GO
--6: Longitud Mayor de todas las longitudes donde ah habido accidentes
select MAX(Longitud_Kms)
from Rio

GO
--7: Promedio de posiciones H de Lagos
select AVG(Pos_V)
from Lago

GO
--8: ubicacion de choques de barco en el  rio
select ubicacion
from rio 
where Nombre_accidente like 'Choque de Barcos'

GO
--9: Ubicacion de incendio forestal en la montaña
select ubicacion
from Montaña
where Nombre_accidente like 'incendio forestal'

GO
--10: Inserta nuevo accidente a lagos
insert into Lago
values(66681, 'Corriente Rapida', 42563480, 895632110, '-425.63480, -895.632110', 78523614)

GO
--11: ubicaciones de corrientes rapidas en el lago
select ubicacion
from Lago
where Nombre_Accidente like 'Corriente Rapida'

GO
--12: Mostrar información de todas las localidades que pertenecen a mexico
select NombreLocalidad, Nombre_Pais, NO_Localidad
from Localidad 
where Nombre_Pais like 'México'

GO
--13: Mostrar la informacion de los paises en forma descendete en base a su población
select NombrePais, extension, poblacion
from Pais
order by Poblacion desc

GO
--14: Mostrar la informacion de accidentes rios de forma ascendete en base su Longitud
select IDAccidente_Rio, Nombre_Accidente, pos_H, Pos_V, Ubicacion, Longitud_Kms
from Rio
order by Longitud_Kms asc

GO
--15: Actualizar la localidad y pais de la localidad NO.7842
update Localidad set NombreLocalidad = 'Los Angeles'
where No_Localidad like 7842

update Localidad set Nombre_Pais = 'EUA'
where No_Localidad like 7842

Select*from Localidad

GO
--16: Actualizar la altura de todas las montañas donde ah ocurrido un accidente
update Montaña set Altura_Mts = 4578120
where IDAccidente_Montaña like 080600

update Montaña set Altura_Mts = 20154750
where IDAccidente_Montaña like 080601

update Montaña set Altura_Mts = 9657120
where IDAccidente_Montaña like 080602

update Montaña set Altura_Mts = 32015788
where IDAccidente_Montaña like 080603

update Montaña set Altura_Mts = 78523641
where IDAccidente_Montaña like 080604

update Montaña set Altura_Mts = 10554520
where IDAccidente_Montaña like 080605

update Montaña set Altura_Mts = 641025875
where IDAccidente_Montaña like 080606

update Montaña set Altura_Mts = 412578962
where IDAccidente_Montaña like 080607

update Montaña set Altura_Mts = 25410569
where IDAccidente_Montaña like 080608

update Montaña set Altura_Mts = 341257400
where IDAccidente_Montaña like 080609

Select*from Montaña

GO
--17: Promedio Altura de las montañas donde hubo accidentes
select AvG(Altura_Mts)
from Montaña

GO
--18: Mostrar el IDAccidente, Nombre del accidente y su ubicacion con la mayor longitud
Select IDAccidente_Rio, Nombre_Accidente, ubicacion
from Rio
where Longitud_Kms =(select MAX(Longitud_Kms) from Rio)

GO
--19: Accidentes de montaña cuya altura sea menor a la altura mayor de las montañas
Select Nombre_Accidente
from Montaña
where Altura_Mts < (select Max(Altura_Mts) from Montaña)

GO
--20: Cual es el pais con el Rio que mas longitud tiene
select NombPais
from AccidenteRio_Pais
where ID_Rio_Accidente in (Select IDAccidente_Rio from Rio where Longitud_Kms = ( select MAx (Longitud_Kms) from Rio))

GO
--21: Cual es el pais con la menor altura de una montaña
select NombPais
from AccidenteMontaña_Pais
where ID_Montaña_Accidente in (Select IDAccidente_Montaña from Montaña where Altura_Mts = ( select MIN (Altura_mts) from Montaña))

GO
--22: Mostrar el pais y el idAccidente de lag, que sea mayor al promedio de las extensiones
select NombPais, ID_Lago_Accidente
from AccidenteLago_pais
where ID_Lago_Accidente in (Select IDAccidente_Lago from Lago where Extension_Kms > (select avg(Extension_Kms) from Lago))

GO
--23:informacion de localidad del pais EUA que no sea Miami
Select  Nombre_Pais, NombreLocalidad, No_Localidad
from Localidad
where nombre_Pais like 'EUA' and NombreLocalidad <> 'Miami'

GO
--24: Cuantos localidades accidentadas tiene México
select Count(No_localidad)
from Localidad
where Nombre_Pais like'México'

GO
--25:eliminar el accidente de lago anteriormente creado
delete from lago
where IDAccidente_Lago = 66681


--Tema adicional Agregado "Vistas"
GO
create view Accidentes_Rio as
select Nombre_Accidente, Ubicacion from Rio

GO
create view Accidentes_Lago as
select Nombre_Accidente, Ubicacion from Lago

GO
create view Accidentes_Montaña as
select Nombre_Accidente, Ubicacion from Montaña

--Tema Adicional Agregado "Cifrado de vistas"

GO
create view Localidad_rio with encryption as
select * from Rio_Localidad
GO
select*From Localidad_rio
GO
sp_helptext Localidad_rio


