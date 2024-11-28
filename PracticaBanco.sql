--Crear la BD:Banco
--Fecha: 25 Marzo 2020
--Fecha de ultima modificacion: 09 abril 2020
--Autor: Jesus Adrian Lopez Luevanos N°Lista:11

--Crear la BD BancoPractica

Create database BancoPractica

--Poner en uso 
 Use BancoPractica
 
 --Crear la tabla Cliente 
create table Cliente
(Nombre_Cliente VarChar(20), 
Calle_Cliente VarChar(15), 
Ciudad_Cliente VarChar(15),
Primary Key(Nombre_Cliente))

Insert into Cliente
values('Abril', 'Preciados', 'Valsain')

Insert into Cliente
values('Amo', 'Embajadores', 'Arganzuela')

Insert into Cliente
values('Badorrey', 'Delicias', 'Valsain')

Insert into Cliente
values('Fernandez', 'Jazmin', 'Leon')

Insert into Cliente
values('Gomez', 'Carretas', 'Cercada')

Insert into Cliente
values('Gonzales', 'Arenal', 'La Granja')

Insert into Cliente 
values('Lopez', 'Mayor', 'Peguerinos')

Insert into Cliente
values('Perez', 'Carretas', 'Cercada')

Insert into Cliente 
values('Rodriguez', 'Yeserias', 'Cadiz')

Insert into Cliente
values('Ruperez', 'Ramblas', 'Leon')

Insert into Cliente
values('Santos', 'Mayor', 'Peguerinos')

Insert into Cliente
values('Valdivienso', 'Goya', 'Vigo')

--Crear la tabla Sucursal
Create table Sucursal
(Nombre_Sucursal VarChar(30), 
Ciudad_Sucursal VarChar(20),
Activos_Sucursal SmallInt,
Primary Key(Nombre_Sucursal))

Insert into Sucursal
values('Galapagar', 'Arganzuela', 7500)

Insert into Sucursal
values('Centro', 'Arganzuela', 9000000)

Insert into Sucursal
values('Bacerril', 'Aluche', 2000)

Insert into Sucursal
values('Segovia', 'Cercada', 3700000)

Insert into Sucursal
values('Navacerrada', 'Aluche', 1700000)
Insert into Sucursal
values('Navas de la Asuncion', 'Alcala de Henares', 1500)

Insert into Sucursal
values('Moratzarzal', 'La Granja', 2500)

Insert into Sucursal
values('Collado Mediano', 'Aluche', 800000)

--Creacion de la tabla Cuenta
Create table Cuenta
(No_Cuenta VarChar(5),
 Nombre_Sucursal VarChar(30),
 Saldo SmallMoney,
 Primary Key(No_Cuenta))

 Insert into Cuenta
values('C-101', 'Centro', 500)

Insert into Cuenta
values('C-102', 'Navacerrada', 400)

Insert into Cuenta
values('C-201', 'Galapagar', 900)

Insert into Cuenta
values('C-215', 'Bacerril', 700)

Insert into Cuenta
values('C-217', 'Galapagar', 750)

Insert into Cuenta
values('C-222', 'Moratizarzal', 700)

Insert into Cuenta 
values('C-305', 'Collado Mediano', 350)


 --Crear la tabla Prestamo
Create table Prestamo
(No_Prestamo VarChar(4), 
Nombre_Sucursal VarChar(30),
Importe Smallint, 
Primary Key(No_Prestamo))

Insert into Prestamo 
values('P-11', 'Collado Mediano', 900)

Insert into Prestamo 
values('P-14', 'Centro', 1500)

Insert into Prestamo 
values('P-15', 'Navacerrada', 1500)

Insert into Prestamo
values('P-16', 'Navacerrada', 1300)

Insert into Prestamo
values('P-17', 'Centro', 1000)

Insert into Prestamo
values('P-23', 'Moratzarzal', 2000)

Insert into Prestamo
values('P-93', 'Bacerril', 500)

--Crear la tabla de relacion Cliente/Cuenta
Create table Cli_Cta
(Nombre_Cli VarChar(20),
No_Cta VarChar(5), 
Primary Key(Nombre_Cli, No_Cta))

Insert into Cli_Cta
values('Abril', 'C-102')

Insert into Cli_Cta
values('Gomez', 'C-101')

Insert into Cli_Cta
values('Gonzalez', 'C-201')

Insert into Cli_Cta
values('Gonzalez', 'C-217')

Insert into Cli_Cta
values('Lopez', 'C-222')

Insert into Cli_Cta
values('Ruperez', 'C-215')

Insert into Cli_Cta
values('Santos', 'C-305')


Alter table Cli_Cta
add constraint FK_Nombre_Cliente
foreign Key(Nombre_Cli)
references Cliente(Nombre_Cliente)


Alter table Cli_Cta
add constraint FK_No_Cuenta
foreign Key(No_Cta)
references Cuenta(No_Cuenta)

--Crear la tabla de la relacion Cliente/Prestamo
Create table Cli_Prest
(Nombre_Cli VarChar(20),
No_Prest VarChar(4),
Primary Key(Nombre_Cli, No_Prest))

Insert into Cli_Prest
values('Fernandez', 'P-16')

Insert into Cli_Prest
values('Gomez', 'P-93')

Insert into Cli_Prest
values('Gomez', 'P-15')

Insert into Cli_Prest
values('Lopez', 'P-14')

Insert into Cli_Prest
values('Perez', 'P-17')

Insert into Cli_Prest
values('Santos', 'P-11')

Insert into Cli_Prest
values('Santos', 'P-23')

Insert into Cli_Prest
values('Valdivieso', 'P-17')


Alter table Cli_Prest
add constraint FK_Nombre_Cliente
foreign Key(Nombre_Cli)
references Cliente(Nombre_Cliente)

Alter table Cli_Prest
add constraint FK_NoPrestamo
foreign Key(No_Prest)
references Prestamo(No_Prestamo)


--Consultas:
--1: Clientes que vivien en leon 
Select Nombre_Cliente 
from Cliente 
where Ciudad_Cliente like 'Leon'

--2: Nombre de las sucursales cullo activo es mayor a un millon 
Select  Nombre_Sucursal 
from Sucursal
where Activos_Sucursal > 1000000

--3: Numero de cuenta cuyo saldo es mayor a 800 y la sucursal es galapagar
Select No_Cuenta 
from Cuenta
where Saldo > 800 and Nombre_Sucursal like 'Galapagar'

--4: Nombre de los clientes que tienen algun prestamo 
Select Nombre_Cli 
from Cli_Prest

--5: Cuantos clientes hay en el banco
Select Nombre_Cliente 
from Cliente 

--6: Cuanto suman los activos de todas las sucursales
Select SUM (Activos_Sucursal) 
from Sucursal 

--7: Importe menor de todos los prestamos
Select Importe 
from Prestamo 
where Importe < 900

--8: Promedio de los saldos de todas las cuentas
Select AVG (Saldo) 
from Cuenta

--9: Total de los saldos de las cuentas de la sucursal Galapagar
Select SUM (Saldo) 
from Cuenta where 
Nombre_Sucursal like 'Galapagar'

--10: Cual es el saldo maximo de todas las cuentas
Select MAX(Saldo)
from Cuenta

--11: Nombre del cliente con el importe de prestamo mas alto
select Nombre_Cli
from Cli_prest
where NO_Prest in (Select No_Prest from Prestamo where Importe = (Select MAX(Importe) from Prestamo))

--12: Nombre del cliente con el saldo de cuenta menor
select Nombre_Cli
from Cli_Cta
where No_Cta in (Select No_Cuenta from Cuenta where Saldo= (Select MIN(Saldo) from Cuenta))

--13: Numeros de prestamo cuyo importe sea mayor al menor importe de todos los prestamos
Select No_Prestamo
from Prestamo
where importe > (Select MIN(Importe) from Prestamo)

--14: Numero(s) de cuenta cuyo saldo sea menor al mayor al saldo de todas
Select No_Cuenta
from Cuenta
where saldo < (select Max(Saldo) from Cuenta)

--15: Cuantos prestamos tiene santos
select COUNT(No_prest)
from Cli_Prest
where Nombre_Cli like 'Santos'

--16: Nombre de los clientes cuyo importe de prestamo es mayor al importe promedio de todos los prestamos
select Nombre_cli
from cli_prest
where No_Prest in (Select No_Prest from Prestamo where Importe > (select avg(Importe) from prestamo))

--17: Nombre y calle de los cliente que viven en la misma calle que Perez
Select Nombre_Cliente, Calle_Cliente
from Cliente
where  Calle_Cliente like 'Carretas' and Nombre_Cliente <> 'Perez'

--18: Nombre, Ciudad y activos de la sucursal con el mayor activo
Select Nombre_Sucursal, Ciudad_Sucursal, activos_Sucursal
from sucursal
where activos_Sucursal =(select MAX(Activos_Sucursal) from Sucursal)

--19: Nombre, calle y ciudad de los clientes que tienen el mayor importe de prestamo
select Nombre_Cliente, Calle_Cliente, Ciudad_Cliente
from Cliente
where Nombre_Cliente in (Select Nombre_Cli From CLi_Prest where No_Prest in (select No_Prestamo from Prestamo where Importe = (Select MAX(Importe) from Prestamo)))

--20: Nombre, Calle y Ciudad de los clientes que tienen el menor saldo en su cuenta
Select Nombre_Cliente, Calle_Cliente, Ciudad_Cliente
from Cliente
where Nombre_Cliente in (Select Nombre_Cli from Cli_Cta where No_Cta in (Select No_Cuenta From Cuenta where Saldo = ( Select MIN (Saldo) from cuenta )))

--21: Cambiar ciudad a Torreon a las personas perez y abril
update Cliente set Ciudad_Cliente = 'Torreón'
where Nombre_Cliente like 'Abril'

update Cliente set Ciudad_Cliente = 'Torreón'
where Nombre_Cliente like 'Perez' 

Select * from Cliente

--22: Aumente el saldo al doble de las cuentas la sucursal Galapagar(Poner expresion aritmetica en el Set)
update Cuenta SET Saldo = Saldo *2
where Nombre_Sucursal like 'Galapagar'

Select*from Sucursal

--23: Descuente un 10% los importes de los prestamos de la sucursal Centro(Poner expresion aritmetica en el set=
update Prestamo  SET Importe = Importe - ((Importe*10)/100)
where Nombre_Sucursal like 'Centro'

Select*from Prestamo
--24: Cambia la ciudad de la sucursal Navacerrada a Gomez P.
update Sucursal Set Ciudad_sucursal = 'Gomez P.'
where Nombre_Sucursal like 'Navacerrada' 

Select*from Sucursal
--25:  Aunmente el activos de la sucursal galapagar un 50% (Poner expresion aritmetica en el set)
update Sucursal SET Activos_Sucursal = Activos_Sucursal +((Activos_Sucursal*50)/100)
where Nombre_Sucursal like 'Galapagar'

Select * from Sucursal

--26: Cuantos Clientes hay en Torreón 
Select COUNT(Nombre_Cliente) 
from Cliente
where Ciudad_Cliente Like 'Torreón'


--27: Insert un nuevo cliente de la cd Gomez Palacio
Insert into Cliente
values('Teresa', 'Preciados', 'Gomez P.')

select*From Cliente
--28: Insert una nueva sucursal de la ciudad de Gomez Palacio
Insert into Sucursal
values('TSM', 'Gomez P.', 2610)

select*From Sucursal
--29: Mostrar la informacion de las sucursales ordenadas en forma ascendente por activos(Usar order by)
Select Nombre_Sucursal, Ciudad_Sucursal, Activos_Sucursal
from Sucursal
ORDER BY Activos_Sucursal ASC

--30: Cuantos clientes no tienen prestamos
select COUNT(Nombre_Cliente)
from Cliente
as f 
where not exists(select Nombre_Cliente from Cli_Prest as d where f.Nombre_Cliente = d.Nombre_Cli)

--31: Cuantas sucursales no tienen cuentas
Select COUNT(Nombre_Sucursal) 
from Sucursal
as f
where not exists (Select Nombre_Sucursal from Cuenta as d where f.Nombre_Sucursal = d.Nombre_Sucursal)

--32: eliminar la sucursal que inserto en la 28 (no olvidar where)
delete from Sucursal
where Nombre_sucursal = 'TSM'
