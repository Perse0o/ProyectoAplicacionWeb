Create database Trabajo_Aplicativo 
Use Trabajo_Aplicativo 

create table Datos_Personales
(id_Personal int primary key identity,
Tipo_de_documento varchar(20),
Numero_Documento varchar(15),
Apellido_paterno varchar(30),
Apellido_materno varchar(30),
Nombres varchar(30),
Sexo char(1) check(Sexo in ('F','M')),
Estado_civil varchar(20) check(Estado_civil in ('Casado','Soltero','Viudo','Divorciado')),
Direcci�n varchar(50),
Ubigeo varchar(6),
Discapacidad char(2) check(Discapacidad in ('SI','NO')),
Descripci�n_Discapacidad varchar(20),
Tel�fono varchar(15),
Celular varchar(15),
Correo_electr�nico varchar(15),
Contrase�a varchar(10),
Foto varbinary(max),
Fecha_de_registro date,
Fecha_de_modificaci�n date,
id_DatosAcademicos int,
id_Experiencias int,
id_ubigeo int
);

alter table Datos_Personales add constraint fk_id_DatosAcademicos FOREIGN KEY (id_DatosAcademicos) REFERENCES Datos_acad�micos (id_DatosAcademicos)
alter table Datos_Personales add constraint fk_id_Experiencias FOREIGN KEY (id_Experiencias) REFERENCES Experiencias (id_Experiencias)
alter table Datos_Personales add constraint fk_id_ubigeo FOREIGN KEY (id_ubigeo) REFERENCES Ubigeo (id_ubigeo)


create table Datos_acad�micos (
id_DatosAcademicos int primary key identity,
Titulo_Grado varchar(20),
Centro_Estudios varchar(20),
Fecha_Grado date,
PDF_titulo varbinary(max)
);

create table Experiencias (
id_Experiencias int primary key identity,
Fecha_Inicio date,
Fecha_Fin date,
Cargo varchar(20),
Nombre_Empresa varchar(30),
Certificado varbinary(max)
);

create table Ubigeo (
id_ubigeo int primary key identity,
Departamento varchar(20),
Provincia varchar(20),
Distrito varchar(20)
);