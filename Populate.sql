INSERT INTO EmployeeType VALUES (1, 'Pharmacist');
INSERT INTO EmployeeType VALUES (2, 'Administrative');
INSERT INTO EmployeeType VALUES (3, 'Nurse');

INSERT INTO EMPLOYEE VALUES ('233-52-1577', 'Jim', '', 'Black', '2355 Meadow Lane', 'Tampa', 'FL', '33252', '(813) 963-3252', '1');
INSERT INTO EMPLOYEE VALUES ('291-45-3511', 'Jenny', 'P', 'Craig', '45 Beach Ave.', 'Dunedin', 'FL', '32516', '(727) 669-1544', '1');
INSERT INTO EMPLOYEE VALUES ('409-85-2344', 'Fred', '', 'Grosse', '17844 Palm Blvd.', 'Tampa', 'FL', '33214', '(813) 987-7122', '1');
INSERT INTO EMPLOYEE VALUES ('417-41-5641', 'Joe', 'W', 'Klobber', '75 West Rome St', 'Tampa', 'FL', '32564', '(813) 963-2156', '1');
INSERT INTO EMPLOYEE VALUES ('419-33-1032', 'Jamie', '', 'Foxx', '9321 Rolling Oaks St.', 'Tampa', 'FL', '33823', '(813) 923-3442', '1');
INSERT INTO EMPLOYEE VALUES ('433-22-3498', 'Jim', '', 'Ducati', '4511 East Village Way', 'Tampa', 'FL', '33141', '(813) 961-8779', '1');
INSERT INTO EMPLOYEE VALUES ('627-91-2231', 'Kate', '', 'Peterson', '1433 Ocean View Dr.', 'Tampa', 'FL', '33612', '(813) 922-3371', '1');
INSERT INTO EMPLOYEE VALUES ('654-85-2233', 'Joseph', '', 'Hickens', '8574 Bayshore Dr.', 'Dunedin', 'FL', '32514', '(727) 654-1574', '1');
INSERT INTO EMPLOYEE VALUES ('786-92-1561', 'Tony', 'R', 'Napster', '4541 East Savanah Breeze', 'Tampa', 'FL', '32564', '(813) 541-8181', '2');
INSERT INTO EMPLOYEE VALUES ('848-51-8561', 'Antonio', 'T', 'Duratie', '54654 Nogals Drive', 'Tampa', 'FL', '32564', '(813) 852-1145', '2');
INSERT INTO EMPLOYEE VALUES ('999-19-9999', 'Martin', 'S', 'Smith', '1212 Nebraska Ave', 'Tampa', 'FL', '33510', '(813) 641-5611', '2');
INSERT INTO EMPLOYEE VALUES ('565-61-2353', 'Brian', 'D', 'Mcbride', '735 Earls Ct', 'Clearwater', 'FL', '34695', '(727) 669-1622', '2');
INSERT INTO EMPLOYEE VALUES ('567-81-5585', 'James', '', 'Dubey', '4568 Long Smoke Drive', 'Tampa', 'FL', '33510', '(813) 885-1489', '2');
INSERT INTO EMPLOYEE VALUES ('098-70-9876', 'Richard', 'B', 'Hittfers', '23 Uthaj St', 'Tampa', 'FL', '09876', '(813) 789-7787', '3');
INSERT INTO EMPLOYEE VALUES ('154-15-2419', 'Brian', 'R', 'Jones', '5415 Snook Blvd', 'Tampa', 'FL', '33510', '(813) 856-1854', '3');
INSERT INTO EMPLOYEE VALUES ('290-95-1516', 'Vicki', '', 'Brooks', '2533 Hillsborough Ave.', 'Tampa', 'FL', '33618', '(813) 988-7244', '3');
INSERT INTO EMPLOYEE VALUES ('487-56-3224', 'Rob', '', 'Taylor', '1455 Rocky Lane', 'Tampa', 'FL', '33141', '(813) 987-5421', '3');
INSERT INTO EMPLOYEE VALUES ('569-32-2673', 'Betty', 'L', 'Ford', '1786 Lois Ave.', 'Tampa', 'FL', '33624', '(813) 963-3211', '3');
INSERT INTO EMPLOYEE VALUES ('633-82-4236', 'Shirley', '', 'Schmidt', '8442 Cartnel St.', 'Tampa', 'FL', '33544', '(813) 961-2232', '3');

INSERT INTO PHARMACIST(SSN, LicNo, LicExpDate) VALUES ('233-52-1577', 'PS6744775', '30-Jan-19');
INSERT INTO PHARMACIST(SSN, LicNo, LicExpDate) VALUES ('291-45-3511', 'PS3695472', '28-Dec-18');
INSERT INTO PHARMACIST(SSN, LicNo, LicExpDate) VALUES ('409-85-2344', 'PS4255254', '30-Jan-20');
INSERT INTO PHARMACIST(SSN, LicNo, LicExpDate) VALUES ('417-41-5641', 'PS4156163', '30-Dec-19');
INSERT INTO PHARMACIST(SSN, LicNo, LicExpDate) VALUES ('419-33-1032', 'PS2553630', '30-Jan-20');
INSERT INTO PHARMACIST(SSN, LicNo, LicExpDate) VALUES ('433-22-3498', 'PS3522154', '20-Feb-20');
INSERT INTO PHARMACIST(SSN, LicNo, LicExpDate) VALUES ('627-91-2231', 'PS1599245', '20-Feb-20');
INSERT INTO PHARMACIST(SSN, LicNo, LicExpDate) VALUES ('654-85-2233', 'PS1325465', '24-Feb-21');

INSERT INTO ADMINISTRATIVE(SSN, JobTitle) VALUES ('786-92-1561', 'Manager');
INSERT INTO ADMINISTRATIVE(SSN, JobTitle) VALUES ('848-51-8561', 'Receptionist');
INSERT INTO ADMINISTRATIVE(SSN, JobTitle) VALUES ('999-19-9999', 'Receptionist');
INSERT INTO ADMINISTRATIVE(SSN, JobTitle) VALUES ('565-61-2353', 'Assistant Manager');
INSERT INTO ADMINISTRATIVE(SSN, JobTitle) VALUES ('567-81-5585', 'Clerk');

INSERT INTO NURSE(SSN, LicNo, LicExpDate) VALUES ('098-70-9876', 'RN0987654', '30-Dec-20');
INSERT INTO NURSE(SSN, LicNo, LicExpDate) VALUES ('154-15-2419', 'RN5494196', '30-Jan-19');
INSERT INTO NURSE(SSN, LicNo, LicExpDate) VALUES ('290-95-1516', 'RN3224444', '28-Jan-19');
INSERT INTO NURSE(SSN, LicNo, LicExpDate) VALUES ('487-56-3224', 'RN2442166', '30-Jan-20');
INSERT INTO NURSE(SSN, LicNo, LicExpDate) VALUES ('569-32-2673', 'RN5113353', '10-Feb-20');
INSERT INTO NURSE(SSN, LicNo, LicExpDate) VALUES ('633-82-4236', 'RN7323422', '25-Feb-20');

INSERT INTO MEDICATION VALUES ('00002-0363-03', 'Darvocet-N', '100mg', '500', 'Tab', '288.54', 'Rx', 'Analgesic');
INSERT INTO MEDICATION VALUES ('00002-3061-02', 'Ceclor', '250mg', '100', 'Cap', '224.2', 'Rx', 'Antibiotic');
INSERT INTO MEDICATION VALUES ('00006-0041-68', 'Decadron', '0.5mg', '100', 'Tab', '55.95', 'Rx', 'Anti-inflamatory');
INSERT INTO MEDICATION VALUES ('00006-0712-68', 'Vasotec', '5mg', '100', 'Tab', '101.88', 'Rx', 'Antihypertensive');
INSERT INTO MEDICATION VALUES ('00007-3366-20', 'Compazine', '5mg', '100', 'Tab', '61.43', 'Rx', 'Antiemetic');
INSERT INTO MEDICATION VALUES ('00009-0050-02', 'Provera', '10mg', '100', 'Tab', '77.45', 'Rx', 'Hormone Replacement');
INSERT INTO MEDICATION VALUES ('00009-0056-02', 'Medrol', '4mg', '100', 'Tab', '70.71', 'Rx', 'Anti-inflammatory');
INSERT INTO MEDICATION VALUES ('00029-6006-30', 'Amoxil', '250mg', '50', 'Tab', '30', 'Rx', 'Antibiotic');
INSERT INTO MEDICATION VALUES ('00029-6074-47', 'Aspirin', '100mg', '1000', 'Tab', '10', 'OTC', 'Pain relief');
INSERT INTO MEDICATION VALUES ('00045-0242-60', 'Haldol', '2mg', '100', 'Tab', '95.38', 'Rx', 'Antipsychotic');
INSERT INTO MEDICATION VALUES ('00008-0064-03', 'Ativan ', '1mg', '500', 'Tab', '431.34', 'CIV', 'Antianxiety');
INSERT INTO MEDICATION VALUES ('00781-7017-24', 'Hydrocortisone 0.5% Cream', '30g', '1', 'GM', '1.95', 'OTC', 'Topical Anti-inflammatory');

INSERT INTO CurrentDrugStock VALUES ('00002-0363-03', '02-Dec-20', '15');
INSERT INTO CurrentDrugStock VALUES ('00002-3061-02', '02-Dec-20', '25');
INSERT INTO CurrentDrugStock VALUES ('00006-0041-68', '02-Dec-20', '17.5');
INSERT INTO CurrentDrugStock VALUES ('00006-0712-68', '02-Dec-20', '50.75');
INSERT INTO CurrentDrugStock VALUES ('00007-3366-20', '02-Dec-20', '30.5');
INSERT INTO CurrentDrugStock VALUES ('00009-0050-02', '02-Dec-20', '10');
INSERT INTO CurrentDrugStock VALUES ('00009-0056-02', '02-Dec-20', '20');
INSERT INTO CurrentDrugStock VALUES ('00029-6006-30', '02-Dec-20', '150.25');
INSERT INTO CurrentDrugStock VALUES ('00029-6074-47', '02-Dec-20', '75');
INSERT INTO CurrentDrugStock VALUES ('00045-0242-60', '02-Dec-20', '20');
INSERT INTO CurrentDrugStock VALUES ('00008-0064-03', '02-Dec-20', '2');
INSERT INTO CurrentDrugStock VALUES ('00781-7017-24', '02-Dec-20', '18');

INSERT INTO Season VALUES('1', '19-Mar-20', '19-Jun-20');
INSERT INTO Season VALUES('2', '20-Jun-20', '21-Sep-20');
INSERT INTO Season VALUES('3', '22-Sep-20', '20-Dec-20');
INSERT INTO Season VALUES('4', '21-Dec-20', '19-Mar-21');

INSERT INTO DrugStock VALUES ('00002-0363-03', '1', '10');
INSERT INTO DrugStock VALUES ('00002-3061-02', '1', '40');
INSERT INTO DrugStock VALUES ('00006-0041-68', '1', '20');
INSERT INTO DrugStock VALUES ('00006-0712-68', '1', '40');
INSERT INTO DrugStock VALUES ('00007-3366-20', '1', '22');
INSERT INTO DrugStock VALUES ('00009-0050-02', '1', '40');
INSERT INTO DrugStock VALUES ('00009-0056-02', '1', '20');
INSERT INTO DrugStock VALUES ('00029-6006-30', '1', '20');
INSERT INTO DrugStock VALUES ('00029-6074-47', '1', '20');
INSERT INTO DrugStock VALUES ('00045-0242-60', '1', '20');
INSERT INTO DrugStock VALUES ('00008-0064-03', '1', '1');
INSERT INTO DrugStock VALUES ('00781-7017-24', '1', '25');
INSERT INTO DrugStock VALUES ('00002-0363-03', '2', '0');
INSERT INTO DrugStock VALUES ('00002-3061-02', '2', '40');
INSERT INTO DrugStock VALUES ('00006-0041-68', '2', '22');
INSERT INTO DrugStock VALUES ('00006-0712-68', '2', '65');
INSERT INTO DrugStock VALUES ('00007-3366-20', '2', '0');
INSERT INTO DrugStock VALUES ('00009-0050-02', '2', '40');
INSERT INTO DrugStock VALUES ('00009-0056-02', '2', '22');
INSERT INTO DrugStock VALUES ('00029-6006-30', '2', '0');
INSERT INTO DrugStock VALUES ('00029-6074-47', '2', '45');
INSERT INTO DrugStock VALUES ('00045-0242-60', '2', '25');
INSERT INTO DrugStock VALUES ('00008-0064-03', '2', '1');
INSERT INTO DrugStock VALUES ('00781-7017-24', '2', '10');
INSERT INTO DrugStock VALUES ('00002-0363-03', '3', '30');
INSERT INTO DrugStock VALUES ('00002-3061-02', '3', '40');
INSERT INTO DrugStock VALUES ('00006-0041-68', '3', '20');
INSERT INTO DrugStock VALUES ('00006-0712-68', '3', '40');
INSERT INTO DrugStock VALUES ('00007-3366-20', '3', '0');
INSERT INTO DrugStock VALUES ('00009-0050-02', '3', '40');
INSERT INTO DrugStock VALUES ('00009-0056-02', '3', '20');
INSERT INTO DrugStock VALUES ('00029-6006-30', '3', '40');
INSERT INTO DrugStock VALUES ('00029-6074-47', '3', '22');
INSERT INTO DrugStock VALUES ('00045-0242-60', '3', '65');
INSERT INTO DrugStock VALUES ('00008-0064-03', '3', '2');
INSERT INTO DrugStock VALUES ('00781-7017-24', '3', '25');
INSERT INTO DrugStock VALUES ('00002-0363-03', '4', '20');
INSERT INTO DrugStock VALUES ('00002-3061-02', '4', '40');
INSERT INTO DrugStock VALUES ('00006-0041-68', '4', '22');
INSERT INTO DrugStock VALUES ('00006-0712-68', '4', '65');
INSERT INTO DrugStock VALUES ('00007-3366-20', '4', '20');
INSERT INTO DrugStock VALUES ('00009-0050-02', '4', '40');
INSERT INTO DrugStock VALUES ('00009-0056-02', '4', '22');
INSERT INTO DrugStock VALUES ('00029-6006-30', '4', '65');
INSERT INTO DrugStock VALUES ('00029-6074-47', '4', '50');
INSERT INTO DrugStock VALUES ('00045-0242-60', '4', '30');
INSERT INTO DrugStock VALUES ('00008-0064-03', '4', '2');
INSERT INTO DrugStock VALUES ('00781-7017-24', '4', '25');

INSERT INTO Vendor VALUES ('1', 'Drugs R Us', '2330 Red Fox Way', 'Tampa', 'FL', '33621', '(813)434-5655', '(813)434-5644');
INSERT INTO Vendor VALUES ('2', 'Chemical Labs', '21452 Bainwood Ct.', 'Tampa', 'FL', '33621', '(813)886-9774', '(813)886-9770');
INSERT INTO Vendor VALUES ('3', 'All Day Drugs', '123 Brentwood Dr', 'Tampa', 'FL', '33621', '(813)546-6422', '(813)546-6420');
INSERT INTO Vendor VALUES ('4', 'All Purpose Drugs', '5020 Gunn Hwy', 'Tampa', 'FL', '33621', '(813)677-8974', '(813)677-8978');
INSERT INTO Vendor VALUES ('5', 'Express Drugs', '3125 East Bay Dr', 'Tampa', 'FL', '33621', '(813)595-6303', '(813)595-6300');

INSERT INTO "Order" VALUES ('1201285', '1', '23-Nov-19', '');
INSERT INTO "Order" VALUES ('1202777', '1', '10-Aug-19', '13-Aug-19');
INSERT INTO "Order" VALUES ('1203170', '2', '04-Sep-19', '07-Sep-19');
INSERT INTO "Order" VALUES ('1201740', '2', '17-Apr-19', '19-Apr-19');
INSERT INTO "Order" VALUES ('1202594', '3', '02-Feb-19', '06-Apr-19');
INSERT INTO "Order" VALUES ('2584458', '3', '22-Aug-19', '23-Aug-19');
INSERT INTO "Order" VALUES ('1202046', '3', '20-Apr-19', '23-Apr-19');
INSERT INTO "Order" VALUES ('1203566', '3', '03-Nov-19', '');
INSERT INTO "Order" VALUES ('1203841', '4', '04-Dec-19', '06-Dec-19');
INSERT INTO "Order" VALUES ('2913176', '4', '26-Nov-19', '');
INSERT INTO "Order" VALUES ('1202074', '4', '20-Apr-19', '23-Apr-19');
INSERT INTO "Order" VALUES ('446693', '5', '20-Nov-19', '');
INSERT INTO "Order" VALUES ('1202380', '5', '04-Aug-19', '10-Aug-19');
INSERT INTO "Order" VALUES ('1204266', '5', '25-Nov-19', '');

INSERT INTO OrderLine VALUES ('1201285', '1', '00029-6006-30', '5', '', '');
INSERT INTO OrderLine VALUES ('1201285', '2', '00009-0056-02', '8', '', '');
INSERT INTO OrderLine VALUES ('1201285', '3', '00006-0041-68', '2', '', '');
INSERT INTO OrderLine VALUES ('1202777', '1', '00029-6074-47', '5', '5', '40');
INSERT INTO OrderLine VALUES ('1203170', '1', '00006-0712-68', '7', '7', '100');
INSERT INTO OrderLine VALUES ('1203170', '2', '00029-6006-30', '10', '8', '10');
INSERT INTO OrderLine VALUES ('1203170', '3', '00002-3061-02', '4', '3', '12');
INSERT INTO OrderLine VALUES ('1201740', '1', '00006-0041-68', '3', '4', '25');
INSERT INTO OrderLine VALUES ('1202594', '1', '00029-6074-47', '3', '5', '200');
INSERT INTO OrderLine VALUES ('2584458', '1', '00029-6074-47', '5', '5', '20');
INSERT INTO OrderLine VALUES ('2584458', '2', '00009-0050-02', '2', '7', '13');
INSERT INTO OrderLine VALUES ('1202046', '1', '00009-0050-02', '7', '7', '80');
INSERT INTO OrderLine VALUES ('1203566', '1', '00007-3366-20', '3', '', '');
INSERT INTO OrderLine VALUES ('1203841', '1', '00009-0050-02', '7', '7', '50');
INSERT INTO OrderLine VALUES ('2913176', '1', '00007-3366-20', '1', '1', '25');
INSERT INTO OrderLine VALUES ('1202074', '1', '00002-0363-03', '2', '2', '75');
INSERT INTO OrderLine VALUES ('446693', '1', '00002-3061-02', '11', '', '');
INSERT INTO OrderLine VALUES ('446693', '2', '00009-0050-02', '13', '', '');
INSERT INTO OrderLine VALUES ('1202380', '1', '00002-0363-03', '9', '9', '60');
INSERT INTO OrderLine VALUES ('1204266', '1', '00006-0712-68', '8', '', '150');
INSERT INTO OrderLine VALUES ('1204266', '2', '00002-3061-02', '5', '', '10');

COMMIT