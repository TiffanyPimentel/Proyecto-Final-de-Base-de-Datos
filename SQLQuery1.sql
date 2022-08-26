Create database Soluciones_Digitales;

Use Soluciones_Digitales;

Create table rol(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(55),
);

Create table usuario(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombres varchar(255),
	Apellidos varchar(255),
	Telefono varchar(255),
	Direccion varchar(255),
	Correo varchar(255),
	Posición varchar(255),
	Rol_id int foreign key references rol(id)
);

Create table solucion_tipo(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	Descripcion varchar(255)
);

Create table solucion(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	Usuario_Asignado int foreign key references usuario(id),
	Usuario_Cliente  int foreign key references usuario(id),
	tipo_solucion_id int foreign key references solucion_tipo(id),
	Presupuesto int,
	Fecha_entrega date
);

Create table tareas(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	Descripcion varchar(255),
	solucion_id int foreign key references solucion(id),
	Estatus varchar(255),
	Fecha date
);

Create table factura(
	id int IDENTITY(1,1) PRIMARY KEY,
	Nombre varchar(255),
	Detalles varchar(255),
	Costo int,
	Fecha date,
	solucion_id int foreign key references solucion(id),
);