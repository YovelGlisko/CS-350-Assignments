SET ECHO ON;
DROP TABLE EmployeeType CASCADE CONSTRAINTS;
DROP TABLE Employee CASCADE CONSTRAINTS;
DROP TABLE Pharmacist CASCADE CONSTRAINTS;
DROP TABLE Administrative CASCADE CONSTRAINTS;
DROP TABLE Nurse CASCADE CONSTRAINTS;
DROP TABLE CurrentDrugStock CASCADE CONSTRAINTS;
DROP TABLE DrugStock CASCADE CONSTRAINTS;
DROP TABLE Season CASCADE CONSTRAINTS;
DROP TABLE Medication CASCADE CONSTRAINTS;
DROP TABLE OrderLine CASCADE CONSTRAINTS;
DROP TABLE "Order" CASCADE CONSTRAINTS;
DROP TABLE Vendor CASCADE CONSTRAINTS;

CREATE TABLE EmployeeType (
    EmployeeTypeID INTEGER PRIMARY KEY, 
    EmployeeType VARCHAR2(20)
);

CREATE TABLE Employee (
    SSN VARCHAR2(11) PRIMARY KEY,
    FirstName VARCHAR2(20),
    MiddleInitial VARCHAR2(1),
    LastName VARCHAR2(20),
    StreetAddress VARCHAR2(30),
    City VARCHAR2(20),
    State VARCHAR2(2),
    Zip VARCHAR2(5),
    PhoneNo VARCHAR2(14),
    EmployeeTypeID INTEGER NOT NULL,
    FOREIGN KEY (EmployeeTypeID) REFERENCES EmployeeType(EmployeeTypeID),
    UNIQUE (SSN, EmployeeTypeID)
);

CREATE TABLE Pharmacist (
    SSN VARCHAR2(11) PRIMARY KEY REFERENCES Employee(SSN),
    LicNo VARCHAR2(9),
    LicExpDate DATE,
    EmployeeTypeID INTEGER DEFAULT 1 CHECK (EmployeeTypeID = 1),
    FOREIGN KEY (SSN, EmployeeTypeID) REFERENCES Employee(SSN, EmployeeTypeID)
);

CREATE TABLE Administrative (
    SSN VARCHAR2(11) PRIMARY KEY REFERENCES Employee(SSN),
    JobTitle VARCHAR2(20),
    EmployeeTypeID INTEGER DEFAULT 2 CHECK (EmployeeTypeID = 2),
    FOREIGN KEY (SSN, EmployeeTypeID) REFERENCES Employee(SSN, EmployeeTypeID)
);

CREATE TABLE Nurse (
    SSN VARCHAR2(11) PRIMARY KEY REFERENCES Employee(SSN),
    LicNo VARCHAR2(9),
    LicExpDate DATE,
    EmployeeTypeID INTEGER DEFAULT 3 CHECK (EmployeeTypeID = 3),
    FOREIGN KEY (SSN, EmployeeTypeID) REFERENCES Employee(SSN, EmployeeTypeID)
);

CREATE TABLE Medication (
    NDC VARCHAR2(13) PRIMARY KEY,
    Name VARCHAR2(50),
    Strength VARCHAR2(10),
    PackageQuantity INTEGER,
    Unit VARCHAR(3) CHECK (Unit IN ('Tab', 'Cap', 'GM')),
    AWP NUMBER (*, 2),
    LegalClass VARCHAR(3) CHECK (LegalClass IN ('Rx', 'CIV', 'OTC')),
    UseCategory VARCHAR2(50)
);

CREATE TABLE CurrentDrugStock (
    NDC VARCHAR2(13),
    "Date" DATE,
    NumPackages INTEGER,
    PRIMARY KEY (NDC, "Date"),
    FOREIGN KEY (NDC) REFERENCES Medication(NDC)
);

CREATE TABLE Season (
    SeasonCode INTEGER PRIMARY KEY,
    BeginDate DATE,
    EndDate DATE
);

CREATE TABLE DrugStock (
    NDC VARCHAR2(13),
    SeasonCode INTEGER,
    MinStockLevel INTEGER,
    PRIMARY KEY (NDC, SeasonCode),
    FOREIGN KEY (NDC) REFERENCES Medication(NDC),
    FOREIGN KEY (SeasonCode) REFERENCES Season(SeasonCode)
);

CREATE TABLE Vendor (
    VendorID INTEGER PRIMARY KEY,
    CompanyName VARCHAR2(30),
    StreetAddress VARCHAR2(30),
    City VARCHAR2(20),
    State VARCHAR2(2),
    Zip VARCHAR2(5),
    Phone VARCHAR2(14),
    Fax VARCHAR2(14)
);

CREATE TABLE "Order" (
    OrderID INTEGER PRIMARY KEY,
    VendorID INTEGER,
    DateOrdered DATE,
    DateReceived DATE,
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);

CREATE TABLE OrderLine (
    OrderID INTEGER,
    LineNbr INTEGER,
    NDC VARCHAR2(13),
    QuantityOrdered INTEGER,
    QuantityReceived INTEGER,
    ActualPrice NUMBER(*, 2),
    PRIMARY KEY(OrderID, LineNbr),
    FOREIGN KEY (OrderID) REFERENCES "Order"(OrderID),
    FOREIGN KEY (NDC) REFERENCES Medication(NDC)
);



