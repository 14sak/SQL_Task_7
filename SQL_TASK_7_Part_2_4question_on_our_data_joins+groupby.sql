--Task 7 (Part-2):create 4 question on your data like above and solve	

select * from patient
select * from hospital

 
 
--1. Get data of patients medical condition of hypertension ,addmited and discharge date and 
	--their test result should be inconclusive
 
select p.medical_condition,p.date_of_admission ,p.discharge_date,p.test_results ,p.doctor from hospital as h
inner join patient as p
on p.patient_id=h.patient_id
where test_results = 'Inconclusive' and medical_condition='Hypertension'
group by p.medical_condition,p.date_of_admission ,p.discharge_date,p.test_results,p.doctor 
 

--2. Get data of all hospital ownership,number of patients and their medical condition,age should be 40 -50
 
select h.hospital_ownership,count(p.patient_id) as "Patients",p.medical_condition from patient as p
inner join hospital as h
on p.patient_id=h.patient_id
where age between 40 and 70 
group by h.hospital_ownership,p.medical_condition 



--3.Get data of hospital details,which includes hopital name,hospital type ,
	--and insurance provider is Blue Cross and rating 3-5
 
select p.hospital,h.hospital_type,h.hospital_rating,p.insurance_provider from hospital as h
inner join patient as p
on p.patient_id=h.patient_id
where hospital_rating between 3 and 5 and insurance_provider='Blue Cross'
group by p.hospital,h.hospital_type,h.hospital_rating,p.insurance_provider
 

 
--4.Get data in which count of patients basis on medical condition and admission type,
	--also hospital ownership should be 'Government - Hospital District or Authority'
	

select p.medical_condition,count(p.name) as "Patients",p.admission_type,h.hospital_ownership from patient as p
inner join hospital as h
on h.patient_id=p.patient_id
where hospital_ownership='Government - Hospital District or Authority'
group by p.medical_condition,p.admission_type,h.hospital_ownership
 