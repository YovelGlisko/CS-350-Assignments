ACCEPT UserMonth NUMBER FORMAT '99' PROMPT 'Enter month: '
SELECT DISTINCT Employee.FirstName, Employee.MiddleInitial, Employee.LastName, Nurse.LicNo, Nurse.LicExpDate
FROM Employee, Nurse
WHERE (Employee.SSN = Nurse.SSN ) AND (EXTRACT(MONTH from Nurse.LicExpDate) = &&UserMonth)
UNION ALL
SELECT DISTINCT Employee.FirstName, Employee.MiddleInitial, Employee.LastName, Pharmacist.LicNo, Pharmacist.LicExpDate
FROM Employee, Pharmacist
WHERE (Employee.SSN = Pharmacist.SSN) AND (EXTRACT(MONTH from Pharmacist.LicExpDate) = &&UserMonth);