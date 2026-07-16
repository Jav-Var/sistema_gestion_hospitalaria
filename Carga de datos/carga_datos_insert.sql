USE clinica_universitaria;

-- 1. Cargar datos de la tabla telefono_empleado
INSERT INTO telefono_empleado (cedula, telefono) VALUES
('1001', '3001234567'),
('1001', '3007654321'),
('1002', '3012345678'),
('1003', '3023456789'),
('1004', '3034567890'),
('1005', '3045678901'),
('1006', '3056789012'),
('1006', '3101112222'),
('2001', '3112223333'),
('2002', '3123334444'),
('2003', '3134445555'),
('2004', '3145556666'),
('2005', '3156667777'),
('3001', '3167778888'),
('3001', '3201231234'),
('3001', '3213213210'),
('3002', '3178889999'),
('3003', '3189990000'),
('3004', '3190001111'),
('1002', '3009998877');

-- 2. Cargar datos de la tabla cita
INSERT INTO cita (numero_documento_paciente, consecutivo_cita, fecha, hora, motivo, diagnostico, codigo_sede, cedula_medico) VALUES
('5001', 1, '2023-10-01', '08:00:00', 'Control pediatría', 'Crecimiento normal', 1, '1001'),
('5002', 2, '2023-10-01', '09:00:00', 'Dolor pecho', 'Angina de pecho leve', 2, '1002'),
('5003', 3, '2023-10-02', '10:30:00', 'Fiebre y malestar', 'Infección viral', 3, '1003'),
('5004', 4, '2023-10-02', '11:00:00', 'Tos persistente', 'Bronquitis', 1, '1003'),
('5005', 5, '2023-10-03', '14:00:00', 'Alergia cutánea', 'Dermatitis por contacto', 2, '1003'),
('5006', 6, '2023-10-03', '15:30:00', 'Dolor de cabeza', 'Migraña', 3, '1003'),
('5007', 7, '2023-10-04', '08:30:00', 'Revisión presión', 'Hipertensión arterial', 1, '1005'),
('5008', 8, '2023-10-04', '09:45:00', 'Control vacunas', 'Esquema completo', 2, '1004'),
('5009', 9, '2023-10-05', '10:15:00', 'Acidez estomacal', 'Gastritis aguda', 3, '1003'),
('5010', 10, '2023-10-05', '11:30:00', 'Asma', 'Crisis asmática leve', 1, '1003'),
('5001', 11, '2023-10-15', '08:00:00', 'Revisión exámenes', 'Glucosa elevada', 2, '1001'),
('5002', 12, '2023-10-15', '09:00:00', 'Control cardiología', 'Evolución favorable', 3, '1002'),
('5003', 13, '2023-10-16', '10:00:00', 'Dolor articular', 'Artritis leve', 1, '1006'),
('5004', 14, '2023-10-16', '11:00:00', 'Control bronquitis', 'Mejoría notoria', 2, '1003'),
('5005', 15, '2023-10-17', '14:00:00', 'Dolor lumbar', 'Lumbalgia mecánica', 3, '1006'),
('5006', 16, '2023-10-17', '15:00:00', 'Dolor de rodilla', 'Esguince leve', 1, '1006'),
('5007', 17, '2023-10-18', '08:30:00', 'Control hipertensión', 'Presión estable', 2, '1005'),
('5008', 18, '2023-10-18', '09:30:00', 'Fiebre leve', 'Resfriado común', 3, '1004'),
('5009', 19, '2023-10-19', '10:00:00', 'Control gastritis', 'Evolución favorable', 1, '1003'),
('5010', 20, '2023-10-19', '11:00:00', 'Fatiga', 'Anemia leve', 2, '1003');

-- 3. Cargar datos de la tabla prescripcion
INSERT INTO prescripcion (num_doc_paciente, consecutivo_cita, codigo_medicamento, dosis, duracion) VALUES
('5001', 1, 'MED01', '1 tableta cada 8 horas', '3 días'),
('5001', 1, 'MED02', '1 cápsula cada 12 horas', '5 días'),
('5002', 2, 'MED05', '1 tableta al día', 'Mes continuo'),
('5003', 3, 'MED01', '1 tableta cada 8 horas', '3 días'),
('5004', 4, 'MED03', '5ml cada 8 horas', '7 días'),
('5004', 4, 'MED07', '2 puff cada 6 horas', '5 días'),
('5004', 4, 'MED01', '1 tableta cada 8 horas', '3 días'),
('5005', 5, 'MED04', '1 tableta al día', '10 días'),
('5006', 6, 'MED02', '1 cápsula si hay dolor', 'Según síntomas'),
('5007', 7, 'MED05', '1 tableta al día', 'Mes continuo'),
('5008', 8, 'MED01', 'Media tableta cada 6 horas', '3 días'),
('5008', 8, 'MED04', '5ml al día', '5 días'),
('5009', 9, 'MED06', '1 cápsula en ayunas', '14 días'),
('5010', 10, 'MED07', '2 puff cada 8 horas', 'Rescate'),
('5001', 11, 'MED08', '1 tableta con desayuno', 'Mes continuo');