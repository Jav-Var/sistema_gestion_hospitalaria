USE clinica_universitaria;
SET GLOBAL local_infile = 1;

-- 1. Cargar datos de la tabla sede
LOAD DATA LOCAL INFILE 'sede.csv'
INTO TABLE sede
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 2. Cargar datos de la tabla empleado
LOAD DATA LOCAL INFILE 'empleado.csv'
INTO TABLE empleado
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 3. Cargar datos de la tabla medico (Depende de empleado)
LOAD DATA LOCAL INFILE 'medico.csv'
INTO TABLE medico
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 4. Cargar datos de la tabla enfermero (Depende de empleado)
LOAD DATA LOCAL INFILE 'enfermero.csv'
INTO TABLE enfermero
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 5. Cargar datos de la tabla administrativo (Depende de empleado)
LOAD DATA LOCAL INFILE 'administrativo.csv'
INTO TABLE administrativo
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 6. Cargar datos de la tabla paciente
LOAD DATA LOCAL INFILE 'paciente.csv'
INTO TABLE paciente
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 7. Cargar datos de la tabla medicamentos
LOAD DATA LOCAL INFILE 'medicamentos.csv'
INTO TABLE medicamentos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
