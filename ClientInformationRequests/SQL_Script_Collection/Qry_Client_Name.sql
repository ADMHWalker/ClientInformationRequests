/*
Simple Client Name Query
Need to chek for mid init.
 
*/
USE DMH_DATA_WAREHOUSE
Declare @NameString as varchar(50)
Declare @Lname as varchar(30)
Declare @Fname as varchar(30)
Declare @LnamePat as varchar(30)
Declare @NameParse as int
--SELECT @NameString = 'SMITH POWSNER,JONAH L'
--SELECT @NameString = 'Whitmer,Finn'
SELECT @NameString = 'Wenckus,Aidan'
--SELECT @NameString = 'Aidan,Wenckus'

SELECT @NameParse =Patindex('%,%',@NameString)
select @Lname = Left(@NameString,@NameParse-1)
select @Fname = Right(@NameString,Len(@NameString) - @NameParse)
select @LnamePat = RTRIM(@Lname) + '%'

select @Lname, @Fname, @LnamePat
--SELECT @Lname = RTRIM(@Lname) + '%'; 


SELECT CLIENT_ID, NAME, DOB, SSN, DECEASED, DATE_OF_DEATH, ADDRESS_STREET, ADDRESS_LINE_2, ADDRESS_CITY, ADDRESS_STATE, ADDRESS_ZIP, PHONE, GENDER, RACE_ID, RELIGION, ETHNIC_GROUP, US_CITIZEN, GUARDIANSHIP, VETERAN_STATUS, 
             EMPLOY_STATUS, MARITAL_STATUS, DEPENDANT_MINORS, PREF_LANGUAGE, NEED_INTERPRETER, LIVING_ARR, EDUC_STATUS, STILL_IN_SCHOOL, CUSTODY_STATUS, DMH_Area, DMH_Site, SOURCE_HCIS, SOURCE_PATIENT_ID, ROW_CREATE_DATE, Reg_Voter, Area, 
             MHIS_Area_ID, MHIS_Site_ID
FROM   ClientRestricted
WHERE (NAME LIKE @Lname)

SELECT CLIENT_ID, NAME, DOB, SSN, DECEASED, DATE_OF_DEATH, ADDRESS_STREET, ADDRESS_LINE_2, ADDRESS_CITY, ADDRESS_STATE, ADDRESS_ZIP, PHONE, GENDER, RACE_ID, RELIGION, ETHNIC_GROUP, US_CITIZEN, GUARDIANSHIP, VETERAN_STATUS, 
             EMPLOY_STATUS, MARITAL_STATUS, DEPENDANT_MINORS, PREF_LANGUAGE, NEED_INTERPRETER, LIVING_ARR, EDUC_STATUS, STILL_IN_SCHOOL, CUSTODY_STATUS, DMH_Area, DMH_Site, SOURCE_HCIS, SOURCE_PATIENT_ID, ROW_CREATE_DATE, Reg_Voter, Area, 
             MHIS_Area_ID, MHIS_Site_ID
FROM   ClientRestricted
WHERE (NAME LIKE @LnamePat)
ORDER by NAME

--WHERE (NAME LIKE 'Whitmer%')

