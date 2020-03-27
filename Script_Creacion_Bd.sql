create database Panilla_BD;
use Panilla_BD;

create table Departamento_4829
(
  codigo_departamento varchar(5) PRIMARY KEY,
  nombre_departamento varchar(60),
  estatus_departamento varchar(1)
)Engine= InnoDB, default char set= latin1;

create table Puesto_4829
(
  codigo_puesto varchar(5) PRIMARY KEY,
  nombre_puesto varchar(60),
  estatus_puesto varchar(1)
)Engine= InnoDB, default char set= latin1;

create table Concepto_4829
(
  codigo_concepto varchar(5) PRIMARY KEY,
  nombre_concepto varchar(60),
  efecto_concepto varchar(1),
  estatus_concepto varchar(1)
)Engine= InnoDB, default char set= latin1;

create table Nominae_4829
(
  codigo_nominae varchar(5) PRIMARY KEY,
  fecha_inicial_nomina Date,
  fecha_Final_Nomina Date
)Engine= InnoDB, default char set= latin1;

create table Empleado_4829
(
  codigo_empleado varchar(5) PRIMARY KEY,
  nombre_empleado varchar(60),
  sueldo_empleado FLOAT,
  estatus_emplado varchar(1),
  
  codigo_puesto varchar(5),
  codigo_departamento varchar(5),
  
  foreign key (codigo_puesto) references Puesto_4829(codigo_puesto),
  foreign key (codigo_departamento) references Departamento_4829(codigo_departamento)
)Engine= InnoDB, default char set= latin1;

create table Nominad_4829
(
  codigo_nomina varchar(5),
  valor_nomina FLOAT,
  
  codigo_empleado varchar(5),
  codigo_concepto varchar(5),
  codigo_nominae varchar(5),
  
  foreign key(codigo_empleado) references Empleado_4829(codigo_empleado),
  foreign key(codigo_concepto) references Concepto_4829(codigo_concepto),
  foreign key(codigo_nominae) references Nominae_4829(codigo_nominae)
)Engine= InnoDB, default char set= latin1;



