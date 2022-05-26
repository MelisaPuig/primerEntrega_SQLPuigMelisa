drop  DATABASE BBDD_BANCO;
create DATABASE BBDD_BANCO;
USE BBDD_BANCO;

create table SUCURSAL (
sucursal_id INT(5) PRIMARY KEY,
legal_adress VARCHAR(100) NOT NULL,
town VARCHAR(50) NOT NULL
);

create table CLIENTE (
client_id INT(10) PRIMARY KEY,
name_cliente VARCHAR(50) NOT NULL,
file_number INT NOT NULL,
legal_adress VARCHAR(100),
mail_adress VARCHAR(100),
cp VARCHAR(15),
sucursal_id  INT(5) NOT NULL,
FOREIGN KEY(sucursal_id) references SUCURSAL(sucursal_id)
);

create table PRODUCTO (
item_id INT(4) PRIMARY KEY,
description_item TEXT NOT NULL,
rate DECIMAL NOT NULL,
observations TEXT
);

create table EMPLEADOS (
employee_id INT(10) PRIMARY KEY,
name_employee VARCHAR(70) NOT NULL,
birth_date  DATE NOT NULL,
legal_adress VARCHAR(100),
mail_adress VARCHAR(100),
sucursal_id INT(5) NOT NULL,
FOREIGN KEY(sucursal_id) references SUCURSAL(sucursal_id)
);

create table CALIFICACION (
evaluation_id INT PRIMARY KEY,
client_id INT(10)  NOT NULL,
employee_id INT(10)  NOT NULL,
evaluation_date DATE NOT NULL,
sales_lastyear BOOLEAN NOT NULL,
res_ejercicio BOOLEAN NOT NULL,
bcra_ok BOOLEAN NOT NULL,
balance_date DATE NOT NULL,
FOREIGN KEY(client_id) references CLIENTE(client_id),
FOREIGN KEY(employee_id) references EMPLEADOS(employee_id)
);

create table Productos_de_Cliente (
item_id INT(4) PRIMARY KEY,
client_id INT(10),
FOREIGN KEY(client_id) references CLIENTE(client_id),
FOREIGN KEY(item_id) references PRODUCTO (item_id)
);


select * from CLIENTE;
select * from SUCURSAL;
select * from PRODUCTO;
select * from EMPLEADOS;
select * from CALIFICACION;
select * from Productos_de_Cliente;

