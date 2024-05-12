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


CREATE TABLE PatientvisitMedicalFacilities1
(
    patientid uuid NOT NULL,
    medicalfacilityid uuid NOT NULL,
    "VisitDate" date,
    CONSTRAINT patientvisitmedicalfacilities_medicalfacilityid_fkey FOREIGN KEY (medicalfacilityid)
        REFERENCES public.medicalfacilities (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT patientvisitmedicalfacilities_patientid_fkey FOREIGN KEY (patientid)
        REFERENCES public.patients (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);