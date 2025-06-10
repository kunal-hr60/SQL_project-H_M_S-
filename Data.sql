USE HMS;



-- Insert statements for Patient table
INSERT INTO Patient(email,password,name,address,gender)
VALUES
('john.doe@gmail.com','password123','John Doe','California', 'male'),
('jane.doe@gmail.com','password123','Jane Doe','New York', 'female'),
('alice.smith@gmail.com','password123','Alice Smith','Texas', 'female'),
('bob.jones@gmail.com','password123','Bob Jones','Florida', 'male'),
('charlie.brown@gmail.com','password123','Charlie Brown','Ohio', 'male'),
('diana.prince@gmail.com','password123','Diana Prince','Washington', 'female'),
('bruce.wayne@gmail.com','password123','Bruce Wayne','Gotham', 'male'),
('clark.kent@gmail.com','password123','Clark Kent','Kansas', 'male'),
('lois.lane@gmail.com','password123','Lois Lane','Metropolis', 'female'),
('peter.parker@gmail.com','password123','Peter Parker','New York', 'male'),
('tony.stark@gmail.com','password123','Tony Stark','California', 'male'),
('natasha.romanoff@gmail.com','password123','Natasha Romanoff','Russia', 'female'),
('steve.rogers@gmail.com','password123','Steve Rogers','Brooklyn', 'male'),
('vision@gmail.com','password123','Vision','Unknown', 'male'),
('tchalla@gmail.com','password123','Challa','Wakanda', 'male'),
('shuri@gmail.com','password123','Shuri','Wakanda', 'female'),
('scott.lang@gmail.com','password123','Scott Lang','California', 'male'),
('hope.van.dyne@gmail.com','password123','Hope Van Dyne','California', 'female'),
('sam.wilson@gmail.com','password123','Sam Wilson','Louisiana', 'male');

-- Insert statements for MedicalHistory table
INSERT INTO MedicalHistory(id,date,conditions,surgeries,medication)
VALUES
(4,'2020-02-10','Headache','none','Paracetamol'),
(5,'2020-03-15','Back Pain','none','Ibuprofen'),
(6,'2020-04-20','Allergy','none','Antihistamine'),
(7,'2020-05-25','Cold','none','Decongestant'),
(8,'2020-06-30','Fever','none','Paracetamol'),
(9,'2020-07-05','Sprain','none','Pain Reliever'),
(10,'2020-08-10','Cough','none','Cough Syrup'),
(11,'2020-09-15','Migraine','none','Sumatriptan'),
(12,'2020-10-20','Asthma','none','Inhaler'),
(13,'2020-11-25','Diabetes','none','Insulin'),
(14,'2020-12-30','Hypertension','none','Amlodipine'),
(15,'2021-01-05','Arthritis','none','Ibuprofen'),
(16,'2021-02-10','Anxiety','none','Anti-anxiety medication'),
(17,'2021-03-15','Depression','none','Antidepressant'),
(18,'2021-04-20','Insomnia','none','Sleeping Pills'),
(19,'2021-05-25','Obesity','none','Dietary Supplements'),
(20,'2021-06-30','Heartburn','none','Antacid'),
(21,'2021-07-05','Ulcer','none','Proton Pump Inhibitor'),
(22,'2021-08-10','Gastritis','none','Antacid'),
(23,'2021-09-15','Anemia','none','Iron Supplements'),
(24,'2021-10-20','Vitamin Deficiency','none','Multivitamins');

-- Insert statements for Doctor table
INSERT INTO Doctor(email, gender, password, name)
VALUES
('dr.johnson@gmail.com', 'male', 'password123', 'Dr. Johnson'),
('dr.smith@gmail.com', 'female', 'password123', 'Dr. Smith'),
('dr.brown@gmail.com', 'male', 'password123', 'Dr. Brown'),
('dr.wilson@gmail.com', 'female', 'password123', 'Dr. Wilson'),
('dr.taylor@gmail.com', 'male', 'password123', 'Dr. Taylor'),
('dr.anderson@gmail.com', 'female', 'password123', 'Dr. Anderson'),
('dr.thomas@gmail.com', 'male', 'password123', 'Dr. Thomas'),
('dr.jackson@gmail.com', 'female', 'password123', 'Dr. Jackson'),
('dr.white@gmail.com', 'male', 'password123', 'Dr. White'),
('dr.harris@gmail.com', 'female', 'password123', 'Dr. Harris');

-- Insert statements for Appointment table
INSERT INTO Appointment(id,date,starttime,endtime,status)
VALUES
(4, '2021-01-20', '11:00', '12:00', 'Done'),
(5, '2021-01-21', '12:00', '13:00', 'Done'),
(6, '2021-01-22', '13:00', '14:00', 'Done'),
(7, '2021-01-23', '14:00', '15:00', 'Done'),
(8, '2021-01-24', '15:00', '16:00', 'Done'),
(9, '2021-01-25', '16:00', '17:00', 'Done'),
(10, '2021-01-26', '17:00', '18:00', 'Done'),
(11, '2021-01-27', '18:00', '19:00', 'Done'),
(12, '2021-01-28', '19:00', '20:00', 'Done'),
(13, '2021-01-29', '20:00', '21:00', 'Done');

-- Insert statements for PatientsAttendAppointments table
INSERT INTO PatientsAttendAppointments(patient,appt,concerns,symptoms)
VALUES
('john.doe@gmail.com',4, 'headache', 'dizziness'),
('jane.doe@gmail.com',5, 'back pain', 'stiffness'),
('alice.smith@gmail.com',6, 'allergy', 'sneezing'),
('bob.jones@gmail.com',7, 'cold', 'runny nose'),
('charlie.brown@gmail.com',8, 'fever', 'chills'),
('diana.prince@gmail.com',9, 'sprain', 'swelling'),
('bruce.wayne@gmail.com',10, 'cough', 'sore throat'),
('clark.kent@gmail.com',11, 'migraine', 'nausea'),
('lois.lane@gmail.com',12, 'asthma', 'shortness of breath'),
('peter.parker@gmail.com',13, 'diabetes', 'fatigue');

-- Insert statements for Schedule table
INSERT INTO Schedule(id,starttime,endtime,breaktime,day)
VALUES
(4,'08:00','16:00','12:00','Monday'),
(5,'08:00','16:00','12:00','Tuesday'),
(6,'08:00','16:00','12:00','Wednesday'),
(7,'08:00','16:00','12:00','Thursday'),
(8,'08:00','16:00','12:00','Friday'),
(9,'08:00','16:00','12:00','Saturday'),
(10,'08:00','16:00','12:00','Sunday');

-- Insert statements for PatientsFillHistory table
INSERT INTO PatientsFillHistory(patient,history)
VALUES
('john.doe@gmail.com', 4),
('jane.doe@gmail.com', 5),
('alice.smith@gmail.com', 6),
('bob.jones@gmail.com', 7),
('charlie.brown@gmail.com', 8),
('diana.prince@gmail.com', 9),
('bruce.wayne@gmail.com', 10),
('clark.kent@gmail.com', 11),
('lois.lane@gmail.com', 12),
('peter.parker@gmail.com', 13);

-- Insert statements for Diagnose table
INSERT INTO Diagnose(appt,doctor,diagnosis,prescription)
VALUES
(4,'dr.johnson@gmail.com', 'Tension Headache', 'Ibuprofen'),
(5,'dr.smith@gmail.com', 'Lower Back Pain', 'Physical Therapy'),
(6,'dr.brown@gmail.com', 'Seasonal Allergy', 'Antihistamine'),
(7,'dr.wilson@gmail.com', 'Common Cold', 'Rest and Fluids'),
(8,'dr.taylor@gmail.com', 'Viral Fever', 'Paracetamol'),
(9,'dr.anderson@gmail.com', 'Ankle Sprain', 'Ice and Elevation'),
(10,'dr.thomas@gmail.com', 'Bronchitis', 'Cough Syrup'),
(11,'dr.jackson@gmail.com', 'Chronic Migraine', 'Triptans'),
(12,'dr.white@gmail.com', 'Asthma Attack', 'Inhaler'),
(13,'dr.harris@gmail.com', 'Type 2 Diabetes', 'Metformin');

-- Insert statements for DocsHaveSchedules table
INSERT INTO DocsHaveSchedules(sched,doctor)
VALUES
(4,'dr.johnson@gmail.com'),
(5,'dr.smith@gmail.com'),
(6,'dr.brown@gmail.com'),
(7,'dr.wilson@gmail.com'),
(8,'dr.taylor@gmail.com'),
(9,'dr.anderson@gmail.com'),
(10,'dr.thomas@gmail.com');

-- Insert statements for DoctorViewsHistory table
INSERT INTO DoctorViewsHistory(history,doctor)
VALUES
(4,'dr.johnson@gmail.com'),
(5,'dr.smith@gmail.com'),
(6,'dr.brown@gmail.com'),
(7,'dr.wilson@gmail.com'),
(8,'dr.taylor@gmail.com'),
(9,'dr.anderson@gmail.com'),
(10,'dr.thomas@gmail.com'),
(11,'dr.jackson@gmail.com'),
(12,'dr.white@gmail.com'),
(13,'dr.harris@gmail.com');


