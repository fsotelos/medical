SET search_path = medical, public;

ALTER TABLE IF EXISTS public.patientvisitmedicalfacilities DROP CONSTRAINT IF EXISTS patientvisitmedicalfacilities_medicalfacilityid_fkey;
ALTER TABLE IF EXISTS public.patientvisitmedicalfacilities DROP CONSTRAINT IF EXISTS patientvisitmedicalfacilities_patientid_fkey;


DROP TABLE IF EXISTS public.patientvisitmedicalfacilities;
DROP TABLE IF EXISTS public.insurancecompanies;
DROP TABLE IF EXISTS public.medicalfacilities;
DROP TABLE IF EXISTS public.patients;


CREATE TABLE public.patients (
    Id UUID PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Age INT,
    InsuranceCompanyId UUID
);

CREATE TABLE public.medicalfacilities (
    Id UUID PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL
);

CREATE TABLE public.insurancecompanies (
    Id UUID PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL
);


CREATE TABLE public.patientvisitmedicalfacilities (
    patientid UUID NOT NULL,
    medicalfacilityid UUID NOT NULL,
    "VisitDate" DATE,
    CONSTRAINT patientvisitmedicalfacilities_medicalfacilityid_fkey FOREIGN KEY (medicalfacilityid)
        REFERENCES public.medicalfacilities (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT patientvisitmedicalfacilities_patientid_fkey FOREIGN KEY (patientid)
        REFERENCES public.patients (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
