-- This is the main query file for the Hospital Management System project.
-- It contains various SQL queries to interact with the database.

USE HMS;


-- 1. Retrieve all patients' names and their email addresses.

SELECT name, email
FROM Patient;


-- 2. Retrieve all doctors' names and their email addresses.

SELECT name, email
FROM Doctor;


-- 3. Retrieve all appointments with their status.

SELECT id, date, starttime, endtime, status
FROM Appointment;


-- 4. Retrieve all patients who attended appointments and their concerns.

SELECT patient, concerns
FROM PatientsAttendAppointments;


-- 5. Retrieve all doctors who diagnosed patients and their diagnoses.

SELECT doctor, diagnosis
FROM Diagnose;


-- 6. Retrieve all schedules with their day and timings.

SELECT day, starttime, endtime
FROM Schedule;


-- 7. Retrieve all patients and their medical history IDs.

SELECT patient, history
FROM PatientsFillHistory;


-- 8. Retrieve all doctors and the schedules they have.

SELECT doctor, sched
FROM DocsHaveSchedules;


-- 9. Retrieve all doctors and the medical histories they viewed.

SELECT doctor, history
FROM DoctorViewsHistory;


-- 10. Retrieve all patients who have a gender of 'female'.

SELECT name, email
FROM Patient
WHERE gender = 'female';


-- 11. Retrieve all doctors who have a gender of 'male'.

SELECT name, email
FROM Doctor
WHERE gender = 'male';


-- 12. Retrieve all appointments that are marked as 'Done'.

SELECT id, date
FROM Appointment
WHERE status = 'Done';


-- 13. Retrieve all patients who attended appointments with symptoms of 'fever'.

SELECT patient
FROM PatientsAttendAppointments
WHERE symptoms = 'fever';


-- 14. Retrieve all doctors who prescribed 'Ibuprofen'.

SELECT doctor
FROM Diagnose
WHERE prescription = 'Ibuprofen';


-- 15. Retrieve all schedules that have a break time of '12:00'.

SELECT id, day
FROM Schedule
WHERE breaktime = '12:00';


-- 16. Retrieve all patients who filled medical history with ID greater than 10.

SELECT patient
FROM PatientsFillHistory
WHERE history > 10;


-- 17. Retrieve all doctors who have schedules on 'Monday'.

SELECT doctor
FROM DocsHaveSchedules
WHERE sched IN (SELECT id FROM Schedule WHERE day = 'Monday');


--  18. Retrieve all doctors who viewed medical history with ID less than 8.

SELECT doctor
FROM DoctorViewsHistory
WHERE history < 8;


-- 19. Retrieve all patients who live in 'California'.

SELECT name, email
FROM Patient
WHERE address = 'California';


-- 20. Retrieve all doctors who have the name starting with 'Dr. J'.

SELECT name, email
FROM Doctor
WHERE name LIKE 'Dr. J%';


-- 21. Retrieve all appointments scheduled on or after '2021-01-25'.

SELECT id, date
FROM Appointment
WHERE date >= '2021-01-25';


-- 22. Retrieve all patients who attended appointments with concerns of 'cold'.

SELECT patient
FROM PatientsAttendAppointments
WHERE concerns = 'cold';


-- 23. Retrieve all doctors who diagnosed 'Asthma Attack'.

SELECT doctor
FROM Diagnose
WHERE diagnosis = 'Asthma Attack';


-- 24. Retrieve all schedules that occur on 'Friday'.

SELECT id, starttime, endtime
FROM Schedule
WHERE day = 'Friday';


-- 25. Retrieve all patients who filled medical history with ID between 5 and 15.

SELECT patient
FROM PatientsFillHistory
WHERE history BETWEEN 5 AND 15;


-- 26. Retrieve all doctors who have schedules on 'Sunday'.

SELECT doctor
FROM DocsHaveSchedules
WHERE sched IN (SELECT id FROM Schedule WHERE day = 'Sunday');


-- 27. Retrieve all doctors who viewed medical history with ID greater than 10.

SELECT doctor
FROM DoctorViewsHistory
WHERE history > 10;


-- 28. Retrieve all patients who have the name 'John Doe'.

SELECT email
FROM Patient
WHERE name = 'John Doe';


-- 29. Retrieve all doctors who have the email 'dr.smith@gmail.com'.

SELECT name
FROM Doctor
WHERE email = 'dr.smith@gmail.com';


-- 30. Retrieve all appointments that start at '13:00'.

SELECT id, date
FROM Appointment
WHERE starttime = '13:00';


-- 31. Retrieve all patients who attended appointments with symptoms of 'dizziness'.

SELECT patient
FROM PatientsAttendAppointments
WHERE symptoms = 'dizziness';


-- 32. Retrieve all doctors who prescribed 'Metformin'.

SELECT doctor
FROM Diagnose
WHERE prescription = 'Metformin';


-- 33. Retrieve all schedules that have a start time of '08:00'.

SELECT id, day
FROM Schedule
WHERE starttime = '08:00';


-- 34. Retrieve all patients who filled medical history with ID equal to 7.

SELECT patient
FROM PatientsFillHistory
WHERE history = 7;


-- 35. Retrieve all doctors who have schedules on 'Thursday'.

SELECT doctor
FROM DocsHaveSchedules
WHERE sched IN (SELECT id FROM Schedule WHERE day = 'Thursday');


-- 36. Retrieve all doctors who viewed medical history with ID equal to 9.

SELECT doctor
FROM DoctorViewsHistory
WHERE history = 9;


-- 37. Retrieve all patients who live in 'New York'.

SELECT name, email
FROM Patient
WHERE address = 'New York';

-- 38. Retrieve all doctors who have the name ending with 'son'.

SELECT name, email
FROM Doctor
WHERE name LIKE '%son';


-- 39. Retrieve all appointments scheduled before '2021-01-26'.

SELECT id, date
FROM Appointment
WHERE date < '2021-01-26';


-- 40. Retrieve all patients who attended appointments with concerns of 'back pain'.

SELECT patient
FROM PatientsAttendAppointments
WHERE concerns = 'back pain';


-- 41. Retrieve all doctors who diagnosed 'Chronic Migraine'.

SELECT doctor
FROM Diagnose
WHERE diagnosis = 'Chronic Migraine';


-- 42. Retrieve all schedules that occur on 'Saturday'.

SELECT id, starttime, endtime
FROM Schedule
WHERE day = 'Saturday';


-- 43. Retrieve all patients who filled medical history with ID not equal to 10.

SELECT patient
FROM PatientsFillHistory
WHERE history <> 10;


-- 44. Retrieve all doctors who have schedules on 'Tuesday'.

SELECT doctor
FROM DocsHaveSchedules
WHERE sched IN (SELECT id FROM Schedule WHERE day = 'Tuesday');


-- 45. Retrieve all doctors who viewed medical history with ID less than or equal to 6.

SELECT doctor
FROM DoctorViewsHistory
WHERE history <= 6;


-- 46. Retrieve all patients who have the name 'Alice Smith'.

SELECT email
FROM Patient
WHERE name = 'Alice Smith';


-- 47. Retrieve all doctors who have the email 'dr.brown@gmail.com'.

SELECT name
FROM Doctor
WHERE email = 'dr.brown@gmail.com';


-- 48. Retrieve all appointments that end at '14:00'.

SELECT id, date
FROM Appointment
WHERE endtime = '14:00';


-- 49. Retrieve all patients who attended appointments with symptoms of 'sneezing'.

SELECT patient
FROM PatientsAttendAppointments
WHERE symptoms = 'sneezing';


-- 50. Retrieve all doctors who prescribed 'Paracetamol'.

SELECT doctor
FROM Diagnose
WHERE prescription = 'Paracetamol';


-- 51. Retrieve all schedules that have an end time of '16:00'.

SELECT id, day
FROM Schedule
WHERE endtime = '16:00';


-- 52. Retrieve all patients who filled medical history with ID greater than or equal to 12.

SELECT patient
FROM PatientsFillHistory
WHERE history >= 12;


-- 53. Retrieve all doctors who have schedules on 'Wednesday'.

SELECT doctor
FROM DocsHaveSchedules
WHERE sched IN (SELECT id FROM Schedule WHERE day = 'Wednesday');


-- 54. Retrieve all doctors who viewed medical history with ID equal to 8.

SELECT doctor
FROM DoctorViewsHistory
WHERE history = 8;


-- 55. Retrieve all patients who live in 'Texas'.

SELECT name, email
FROM Patient
WHERE address = 'Texas';


-- 56. Retrieve all doctors who have the name containing 'Taylor'.

SELECT name, email
FROM Doctor
WHERE name LIKE '%Taylor%';


-- 57. Retrieve all appointments scheduled on '2021-01-22'.

SELECT id, date
FROM Appointment
WHERE date = '2021-01-22';


-- 58. Retrieve all patients who attended appointments with concerns of 'sprain'.

SELECT patient
FROM PatientsAttendAppointments
WHERE concerns = 'sprain';


-- 59. Retrieve all doctors who diagnosed 'Type 2 Diabetes'.

SELECT doctor
FROM Diagnose
WHERE diagnosis = 'Type 2 Diabetes';


-- 60. Retrieve all schedules that occur on 'Sunday'.

SELECT id, starttime, endtime
FROM Schedule
WHERE day = 'Sunday';


-- 61. Retrieve all patients who filled medical history with ID less than or equal to 9.

SELECT patient
FROM PatientsFillHistory
WHERE history <= 9;


-- 62. Retrieve all doctors who have schedules on 'Friday'.

SELECT doctor
FROM DocsHaveSchedules
WHERE sched IN (SELECT id FROM Schedule WHERE day = 'Friday');


-- 63. Retrieve all doctors who viewed medical history with ID greater than or equal to 11.

SELECT doctor
FROM DoctorViewsHistory
WHERE history >= 11;


-- 64. Retrieve all patients who have the name 'Bruce Wayne'.

SELECT email
FROM Patient
WHERE name = 'Bruce Wayne';


-- 65. Retrieve all doctors who have the email 'dr.taylor@gmail.com'.

SELECT name
FROM Doctor
WHERE email = 'dr.taylor@gmail.com';


-- 66. Retrieve all appointments that start at '11:00'.

SELECT id, date
FROM Appointment
WHERE starttime = '11:00';


-- 67. Retrieve all patients who attended appointments with symptoms of 'chills'.

SELECT patient
FROM PatientsAttendAppointments
WHERE symptoms = 'chills';


-- 68. Retrieve all doctors who prescribed 'Cough Syrup'.

SELECT doctor
FROM Diagnose
WHERE prescription = 'Cough Syrup';


-- 69. Retrieve all schedules that have a break time of '12:00' and occur on 'Monday'.

SELECT id, day
FROM Schedule
WHERE breaktime = '12:00' AND day = 'Monday';


-- 70. Retrieve all patients who filled medical history with ID between 8 and 14.

SELECT patient
FROM PatientsFillHistory
WHERE history BETWEEN 8 AND 14;


-- 71. Retrieve all doctors who have schedules on 'Saturday'.

SELECT doctor
FROM DocsHaveSchedules
WHERE sched IN (SELECT id FROM Schedule WHERE day = 'Saturday');


-- 72. Retrieve all doctors who viewed medical history with ID not equal to 10.

SELECT doctor
FROM DoctorViewsHistory
WHERE history <> 10;


-- 73. Retrieve all patients who live in 'Florida'.

SELECT name, email
FROM Patient
WHERE address = 'Florida';


-- 74. Retrieve all doctors who have the name starting with 'Dr. A'.

SELECT name, email
FROM Doctor
WHERE name LIKE 'Dr. A%';


-- 75. Retrieve all appointments scheduled on or before '2021-01-24'.

SELECT id, date
FROM Appointment
WHERE date <= '2021-01-24';


-- 76. Retrieve all patients who attended appointments with concerns of 'migraine'.

SELECT patient
FROM PatientsAttendAppointments
WHERE concerns = 'migraine';


-- 77. Retrieve all doctors who diagnosed 'Bronchitis'.

SELECT doctor
FROM Diagnose
WHERE diagnosis = 'Bronchitis';


-- 78. Retrieve all schedules that occur on 'Thursday' and have a start time of '08:00'.

SELECT id, day
FROM Schedule
WHERE day = 'Thursday' AND starttime = '08:00';


-- 79. Retrieve all patients who filled medical history with ID not between 5 and 15.

SELECT patient
FROM PatientsFillHistory
WHERE history NOT BETWEEN 5 AND 15;


-- 80. Retrieve all doctors who have schedules on 'Monday' and viewed medical history with ID equal to 4.

SELECT doctor
FROM DocsHaveSchedules
WHERE sched IN (SELECT id FROM Schedule WHERE day = 'Monday') 
AND doctor IN (SELECT doctor FROM DoctorViewsHistory WHERE history = 4);




