CREATE DATABASE IF NOT EXISTS clinica_universitaria;
USE clinica_universitaria;

CREATE TABLE sede(
	codigo int NOT NULL,
    primary key(codigo),
    nombre varchar(50) NOT NULL,
    direccion varchar(100) NOT NULL,
	ciudad varchar(30) NOT NULL
);

CREATE TABLE empleado(
	cedula varchar(20) NOT NULL,
    primary key(cedula),
    nombre_completo varchar(50) NOT NULL,
    fecha_nacimiento date NOT NULL,
    correo_electronico varchar(100) NOT NULL,
    
    CONSTRAINT chk_correo_valido CHECK (correo_electronico LIKE '%_@__%.__%')
);

CREATE TABLE telefono_empleado(
	cedula varchar(20) NOT NULL,
    telefono varchar(10) NOT NULL,
    primary key(cedula, telefono),
	
    constraint fk_cedula_telefono
		foreign key (cedula) references empleado(cedula)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE medico(
	cedula varchar(20) NOT NULL,
    primary key(cedula),
    especialidad varchar(20) NOT NULL,
    registro_medico varchar(200) NOT NULL,
    UNIQUE(registro_medico),
    
    constraint fk_cedula_medico
		foreign key (cedula) references empleado(cedula)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE enfermero(
	cedula varchar(20) NOT NULL,
    primary key(cedula),
    turno enum("Mañana", "Tarde", "Noche") NOT NULL,
    
    constraint fk_cedula_enfermero
		foreign key (cedula) references empleado(cedula)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE administrativo(
	cedula varchar(20) NOT NULL,
    primary key(cedula),
    cargo varchar(40) NOT NULL,
    
    constraint fk_cedula_administrativo
		foreign key (cedula) references empleado(cedula)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE paciente(
	numero_documento varchar(20) NOT NULL,
    primary key(numero_documento),
    nombre varchar(100) NOT NULL,
    fecha_nacimiento date NOT NULL,
    direccion varchar(100) NOT NULL,
    grupo_sanguineo enum("A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-")
);

CREATE TABLE cita(
	numero_documento_paciente varchar(20) NOT NULL,
    consecutivo_cita int auto_increment,
    primary key(numero_documento_paciente, consecutivo_cita),
    key(consecutivo_cita),
    fecha date NOT NULL,
    hora time NOT NULL,
    motivo varchar(100) NOT NULL,
    diagnostico varchar(500) NOT NULL,
    codigo_sede int NOT NULL,
    cedula_medico varchar(20) NOT NULL,
    
    constraint fk_documento_paciente
		foreign key (numero_documento_paciente) references paciente(numero_documento)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
	
    constraint fk_codigo_sede
		foreign key (codigo_sede) references sede(codigo)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
	constraint fk_cedula_medico
		foreign key (cedula_medico) references medico(cedula)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

CREATE TABLE medicamentos(
	codigo varchar(30) NOT NULL,
    primary key(codigo),
    nombre_comercial varchar(50) NOT NULL,
    principio_activo varchar(50) NOT NULL,
    presentacion varchar(30) NOT NULL
);

CREATE TABLE prescripcion(
	num_doc_paciente varchar(20) NOT NULL,
    consecutivo_cita int NOT NULL,
    codigo_medicamento varchar(30) NOT NULL,
    primary key(num_doc_paciente, consecutivo_cita, codigo_medicamento),
    dosis varchar(30) NOT NULL,
    duracion varchar(50) NOT NULL,
    
    constraint fk_cita_prescripcion
		foreign key (num_doc_paciente, consecutivo_cita) references cita(numero_documento_paciente, consecutivo_cita)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
        
	constraint fk_codigo_medicamento
		foreign key (codigo_medicamento) references medicamentos(codigo)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);
