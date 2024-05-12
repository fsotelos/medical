-- Tabla para los pacientes
CREATE TABLE Patients (
    Id UUID PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Age INT,
    InsuranceCompanyId UUID
);

-- Tabla para las instalaciones médicas
CREATE TABLE MedicalFacilities (
    Id UUID PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL
);

-- Tabla para las compañías de seguros
CREATE TABLE InsuranceCompanies (
    Id UUID PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL
);


CREATE TABLE PatientVisitMedicalFacilities (
    PatientId UUID,
    MedicalFacilityId UUID,
    FOREIGN KEY (PatientId) REFERENCES Patients(Id),
    FOREIGN KEY (MedicalFacilityId) REFERENCES MedicalFacilities(Id),
    PRIMARY KEY (PatientId, MedicalFacilityId)
););