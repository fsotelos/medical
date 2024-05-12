-- Insert Insurance Companies
INSERT INTO InsuranceCompanies (Id, Name, City)
VALUES 
    ('1b2493f7-0896-4856-a1c7-dab4a6f9c54f', 'State Farm', 'New York'),
    ('7fe1e451-b5f3-4af7-84ff-c8d3aaae71d1', 'Allstate', 'Los Angeles'),
    ('18f45149-fd7f-4cc3-808e-0d71a268a367', 'GEICO', 'Chicago'),
    ('e55bc96e-0182-4c56-bc4c-43d6f529ff9e', 'Progressive', 'Houston'),
    ('30d17a94-c6d9-4b7f-a218-bde3a8fbb3b0', 'Nationwide', 'Phoenix'),
    ('daa5364c-72ee-4950-8e8a-3b08041c53a9', 'Farmers Insurance', 'Dallas'),
    ('0cd0e0b2-474c-4530-bfd5-3a4d14b9a88d', 'Liberty Mutual', 'San Francisco'),
    ('8db0744f-c0f8-4b38-9035-348a7d28c5bb', 'USAA', 'Miami'),
    ('c91f83a5-75b7-4fc5-97a7-3d9f7d8b46b2', 'Aflac', 'Seattle'),
    ('ae9143c1-3d24-45ef-9957-cf012f46551b', 'MetLife', 'Boston'),
    ('9f5db2b2-eb27-42c7-b9dc-94dcb9ab62c0', 'Nationwide', 'Chicago'),
    ('a6074d81-46db-4e8e-8d16-61e42b018ba9', 'State Farm', 'Los Angeles'),
    ('cd8d79e3-28a6-47ef-8920-60fd5ebc349e', 'Allstate', 'Houston'),
    ('2fc7ebe7-bd56-43d1-a3e1-b61ffde08a63', 'GEICO', 'Dallas'),
    ('f635837d-67c8-4e8a-9c8e-2d53e1e8c4f4', 'Farmers Insurance', 'Miami'),
    ('0f7928d3-e894-45ae-bd19-287556b30e05', 'Liberty Mutual', 'San Diego'),
    ('c8cf8bb9-7b6b-4e50-8ba1-d05e7a8332e4', 'USAA', 'Phoenix'),
    ('09a0c3cf-5d63-4f78-bac4-03be39068667', 'Aflac', 'Seattle'),
    ('9a2c16b5-d38d-498e-bcb8-dc4cb4594d51', 'MetLife', 'Boston'),
    ('aeef2589-0f54-4b2a-af85-30ad80e51871', 'Progressive', 'New York');

-- Insert Patients
INSERT INTO Patients (Id, FirstName, LastName, Age, InsuranceCompanyId)
VALUES 
    ('2d8a35a6-d8f1-4fd9-aae5-c10f810ea64f', 'John', 'Doe', 30, '1b2493f7-0896-4856-a1c7-dab4a6f9c54f'), -- Asociado con State Farm
    ('4802f43b-32b1-47d4-9b27-ccf4f8db5372', 'Jane', 'Smith', 25, '7fe1e451-b5f3-4af7-84ff-c8d3aaae71d1'), -- Asociado con Allstate
    ('a11c01d3-8af4-4249-bc63-48ff79128e2e', 'Michael', 'Johnson', 40, '18f45149-fd7f-4cc3-808e-0d71a268a367'), -- Asociado con GEICO
    ('545f41d9-d6a1-4153-9873-2a85ec98ef19', 'Emily', 'Brown', 35, 'e55bc96e-0182-4c56-bc4c-43d6f529ff9e'), -- Asociado con Progressive
    ('dc7ff441-df78-4d5a-ba17-b7ccdeac6f4a', 'William', 'Taylor', 45, '30d17a94-c6d9-4b7f-a218-bde3a8fbb3b0'), -- Asociado con Nationwide
    ('81fb0cd5-d792-494f-b319-36fd1cf76a2b', 'Sarah', 'Williams', 35, 'daa5364c-72ee-4950-8e8a-3b08041c53a9'), -- Asociado con Farmers Insurance
    ('e177be95-7a1b-472a-8f3d-2eb5df600f19', 'David', 'Anderson', 42, '0cd0e0b2-474c-4530-bfd5-3a4d14b9a88d'), -- Asociado con Liberty Mutual
    ('5751024b-d3f1-4433-8f25-1f5cfb145417', 'Linda', 'Martinez', 29, '8db0744f-c0f8-4b38-9035-348a7d28c5bb'), -- Asociado con USAA
    ('d5aa45fc-4975-4481-8af1-5ae0415a8190', 'Richard', 'Clark', 37, 'c91f83a5-75b7-4fc5-97a7-3d9f7d8b46b2'), -- Asociado con Aflac
    ('3bb10d35-f5cd-4035-90cc-d7abfdde8b95', 'Mary', 'Hernandez', 39, 'ae9143c1-3d24-45ef-9957-cf012f46551b'), -- Asociado con MetLife
    ('b71a65e4-e9c3-4e13-934e-fb8e10d64c28', 'Daniel', 'Young', 27, '9f5db2b2-eb27-42c7-b9dc-94dcb9ab62c0'), -- Asociado con Nationwide
    ('f28f4863-4504-4d1d-8f2f-564289c79f91', 'Maria', 'Lee', 34, 'a6074d81-46db-4e8e-8d16-61e42b018ba9'), -- Asociado con State Farm
    ('091c9b17-1287-4f87-a573-924f0d4dd5f9', 'Matthew', 'Garcia', 32, 'cd8d79e3-28a6-47ef-8920-60fd5ebc349e'), -- Asociado con Allstate
    ('e2dd1273-cd4b-4469-809b-0f4d6938cda5', 'Karen', 'Lopez', 31, '2fc7ebe7-bd56-43d1-a3e1-b61ffde08a63'), -- Asociado con GEICO
    ('73dd54a7-9eb9-4b82-b12c-fcf39a760bb7', 'Christopher', 'Perez', 28, 'f635837d-67c8-4e8a-9c8e-2d53e1e8c4f4'), -- Asociado con Farmers Insurance
    ('84d3ef5d-1b69-4b65-bcf1-f14d8972b472', 'Amanda', 'Flores', 33, '0f7928d3-e894-45ae-bd19-287556b30e05'), -- Asociado con Liberty Mutual
    ('1523e6af-476f-4c31-90e4-f0c681d982bc', 'Brandon', 'Nguyen', 29, 'c8cf8bb9-7b6b-4e50-8ba1-d05e7a8332e4'), -- Asociado con USAA
    ('f1285678-3bb9-4fb6-bdd3-68c11f8c3eb0', 'Jennifer', 'King', 36, '09a0c3cf-5d63-4f78-bac4-03be39068667'), -- Asociado con Aflac
    ('5b19b18e-31ee-4d0a-a505-af2c7592aa15', 'Robert', 'Chen', 40, '9a2c16b5-d38d-498e-bcb8-dc4cb4594d51'), -- Asociado con MetLife
    ('fc4c688b-9b17-42f1-b7f2-01115f579027', 'Jessica', 'Liu', 26, 'aeef2589-0f54-4b2a-af85-30ad80e51871'); -- Asociado con Progressive

-- Insert Facilities
INSERT INTO MedicalFacilities (Id, Name, City)
VALUES 
    ('ef02a0d4-21d9-4e37-8d6b-2c33238c01d1', 'New York Medical Center', 'New York'),
    ('1fbda6f5-0768-40f2-bc07-1e03fc04c085', 'Los Angeles General Hospital', 'Los Angeles'),
    ('4b02ee1b-c01d-4058-b4b8-4468a1c72059', 'Chicago Community Clinic', 'Chicago'),
    ('cfd61be2-b883-4c5b-8695-4d2df8996921', 'Houston Regional Hospital', 'Houston'),
    ('bb4f7cc3-f34a-4516-8b0e-bb2726e7a2e5', 'Phoenix Health Center', 'Phoenix'),
    ('5d9799ae-5da7-4050-89d8-b1df032d09e9', 'Dallas Medical Center', 'Dallas'),
    ('69351d14-632b-4f88-a9d7-799db0ab84b0', 'San Francisco General Hospital', 'San Francisco'),
    ('9e498f96-0752-4718-bf0a-7cf4d2d14654', 'Miami Community Clinic', 'Miami'),
    ('04e3b46c-10c0-4965-89b6-3b29509d48b0', 'Seattle Regional Hospital', 'Seattle'),
    ('11f3d2b4-2b8e-418f-b4c7-4ab8959a6a38', 'Boston Health Center', 'Boston'),
    ('8a915edb-df63-4d3e-8a5a-b86b9d4e3db7', 'Chicago Medical Center', 'Chicago'),
    ('5b36c26f-2c1f-463e-b20f-d0ff9d39b79d', 'Los Angeles Community Clinic', 'Los Angeles'),
    ('23a6f682-7f36-44ff-8d84-c64543ebd066', 'Houston General Hospital', 'Houston'),
    ('97b6a9e7-8f2d-4d2d-8b1d-8c6220de9964', 'Phoenix Medical Center', 'Phoenix'),
    ('42f859eb-9d63-4f49-9e9a-47d1185017af', 'New York Community Clinic', 'New York'),
    ('b5d207dc-6d6b-4be4-920a-1700245a2f1e', 'Dallas General Hospital', 'Dallas'),
    ('07b1508b-8e5c-4053-9c8d-0ff6c9e4e6ab', 'Miami Medical Center', 'Miami'),
    ('e3b6f84a-6ba6-4954-bde9-5b416c2c3aa7', 'Seattle Medical Center', 'Seattle'),
    ('84710e54-bd3e-4b3d-a7ee-304ff9bbf874', 'Boston General Hospital', 'Boston');

-- Insert PatientVisitMedicalFacility
INSERT INTO PatientVisitMedicalFacilities (PatientId, MedicalFacilityId)
VALUES 
    ('2d8a35a6-d8f1-4fd9-aae5-c10f810ea64f', 'ef02a0d4-21d9-4e37-8d6b-2c33238c01d1'), -- John Doe en New York Medical Center
    ('4802f43b-32b1-47d4-9b27-ccf4f8db5372', '1fbda6f5-0768-40f2-bc07-1e03fc04c085'), -- Jane Smith en Los Angeles General Hospital
    ('a11c01d3-8af4-4249-bc63-48ff79128e2e', '4b02ee1b-c01d-4058-b4b8-4468a1c72059'), -- Michael Johnson en Chicago Community Clinic
    ('545f41d9-d6a1-4153-9873-2a85ec98ef19', 'cfd61be2-b883-4c5b-8695-4d2df8996921'), -- Emily Brown en Houston Regional Hospital
    ('dc7ff441-df78-4d5a-ba17-b7ccdeac6f4a', 'bb4f7cc3-f34a-4516-8b0e-bb2726e7a2e5'), -- William Taylor en Phoenix Health Center
    ('81fb0cd5-d792-494f-b319-36fd1cf76a2b', '5d9799ae-5da7-4050-89d8-b1df032d09e9'), -- Sarah Williams en Dallas Medical Center
    ('e177be95-7a1b-472a-8f3d-2eb5df600f19', '69351d14-632b-4f88-a9d7-799db0ab84b0'), -- David Anderson en San Francisco General Hospital
    ('5751024b-d3f1-4433-8f25-1f5cfb145417', '9e498f96-0752-4718-bf0a-7cf4d2d14654'), -- Linda Martinez en Miami Community Clinic
    ('d5aa45fc-4975-4481-8af1-5ae0415a8190', '04e3b46c-10c0-4965-89b6-3b29509d48b0'), -- Richard Clark en Seattle Regional Hospital
    ('3bb10d35-f5cd-4035-90cc-d7abfdde8b95', '11f3d2b4-2b8e-418f-b4c7-4ab8959a6a38'), -- Mary Hernandez en Boston Health Center
    ('b71a65e4-e9c3-4e13-934e-fb8e10d64c28', '8a915edb-df63-4d3e-8a5a-b86b9d4e3db7'), -- Daniel Young en Chicago Medical Center
    ('f28f4863-4504-4d1d-8f2f-564289c79f91', '5b36c26f-2c1f-463e-b20f-d0ff9d39b79d'), -- Maria Lee en Los Angeles Community Clinic
    ('091c9b17-1287-4f87-a573-924f0d4dd5f9', '23a6f682-7f36-44ff-8d84-c64543ebd066'), -- Matthew Garcia en Houston General Hospital
    ('e2dd1273-cd4b-4469-809b-0f4d6938cda5', '97b6a9e7-8f2d-4d2d-8b1d-8c6220de9964'), -- Karen Lopez en Phoenix Medical Center
    ('73dd54a7-9eb9-4b82-b12c-fcf39a760bb7', '42f859eb-9d63-4f49-9e9a-47d1185017af'), -- Christopher Perez en New York Community Clinic
    ('84d3ef5d-1b69-4b65-bcf1-f14d8972b472', 'b5d207dc-6d6b-4be4-920a-1700245a2f1e'), -- Amanda Flores en Dallas General Hospital
    ('1523e6af-476f-4c31-90e4-f0c681d982bc', '07b1508b-8e5c-4053-9c8d-0ff6c9e4e6ab'), -- Brandon Nguyen en Miami Medical Center
    ('f1285678-3bb9-4fb6-bdd3-68c11f8c3eb0', 'e3b6f84a-6ba6-4954-bde9-5b416c2c3aa7'), -- Jennifer King en Seattle Medical Center
    ('5b19b18e-31ee-4d0a-a505-af2c7592aa15', '84710e54-bd3e-4b3d-a7ee-304ff9bbf874'), -- Robert Chen en Boston General Hospital
    ('fc4c688b-9b17-42f1-b7f2-01115f579027', 'ef02a0d4-21d9-4e37-8d6b-2c33238c01d1'); -- Jessica Liu en New York Medical Center
    