Create database DBShelby
go

use DBShelby
go

--Tablas

Create table Rol
(
 [Id] int not null primary key identity(1,1),
 [Nombre] varchar(100) not null
)
go

Create table Usuario
(
 [Id] int not null primary key identity(1,1), 
 [IdRol] int not null, 
 [Nombre] varchar(100) not null, 
 [Apellido] varchar(100) not null,
 [Login] varchar(100) not null,
 [Password] varchar(37) not null,
 [Estatus] tinyint not null,
 [FechaRegistro] datetime not null,
 foreign key (IdRol) references Rol(Id) on delete cascade
)
go


CREATE TABLE Carros (
    [Id] INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    [Marca] VARCHAR(50) NOT NULL,
	[Color] VARCHAR(50) NOT NULL,
    [Modelo] VARCHAR(50) NOT NULL,
    [Año] VARCHAR(10) NOT NULL,
    [Precio] VARCHAR(MAX) NOT NULL
	
)
GO


SELECT * FROM Carros

insert into Carros (Marca, Color, Modelo, Año, Precio) values('Mustang Shelby', 'Negro', 'GT500', '2022', '$2,574,500.00');

select *from Usuario;

INSERT INTO Rol(Nombre) VALUES ('Administrador');
INSERT INTO Rol(Nombre) VALUES ('Usuario');

--La contraseña encryptada es: fo
insert into Usuario values(1,'Frank','Agreda','frank1','eed807024939b808083f0031a56e9872',1,'2024/01/17');
insert into Usuario values(1,'Frank','Agreda','frank2','eed807024939b808083f0031a56e9872',1,'2024/01/17');


drop table Carros;

SELECT *FROM Carros;
SELECT *FROM Usuario;