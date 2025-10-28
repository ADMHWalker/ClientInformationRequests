--LIKE '%Munc%'


SELECT        ClientRestricted.NAME, ClientRestricted.DOB, ClientRestricted.SSN, EnrollmentLegalStatus.LEGAL_STATUS, EnrollmentLegalStatus.ADMIT_LEGAL_STATUS, EnrollmentLegalStatus.DISCH_LEGAL_STATUS, 
                         Enrollment.SOURCE_FLAG, Enrollment.ENROLLMENT_ID, Enrollment.TYPE_OF_VISIT, Enrollment.VISIT_STATUS, Enrollment.VENDOR_ID, Enrollment.CLIENT_ID, Enrollment.START_DATE, Enrollment.UNIT_NUMBER, 
                         Enrollment.ACCOUNT_NUMBER, Enrollment.EXPECTED_LENGTH_OF_STAY, Enrollment.ADMIT_PRIORITY_ID, Enrollment.ADMIT_LIVING_ARR, Enrollment.ADMIT_ROOM, Enrollment.Admit_Source, Enrollment.END_DATE, 
                         Enrollment.DISCHARGE_TYPE_ORYX, Enrollment.DISCHARGE_LIVING_ARR_ID, Enrollment.DISCHARGE_REFERRAL_ID, Enrollment.DISCHARGE_CLINICIAN, Enrollment.DISCHARGE_DISPOSITION, 
                         Enrollment.DISCHARGE_LEGAL_STATUS, Enrollment.DMH_AREA_ID, Enrollment.LOCATION_ID, Enrollment.Service_ID, Enrollment.SUB_ORG_CODE, Enrollment.SITE_ID, Enrollment.FACILITY_ID, Enrollment.ORYX_NUMBER, 
                         Enrollment.LAST_PSTP, Enrollment.NEXT_PSTP, Enrollment.CRIM_JUSTICE_INVOLVE_ID, Enrollment.HEALTH_CARE_PROXY, Enrollment.SOURCE_ID, Enrollment.SOURCE_PATIENT_ID, Enrollment.ROW_CREATE_DATE
FROM            Enrollment INNER JOIN
                         ClientRestricted ON Enrollment.CLIENT_ID = ClientRestricted.CLIENT_ID LEFT OUTER JOIN
                         EnrollmentLegalStatus ON Enrollment.ENROLLMENT_ID = EnrollmentLegalStatus.ENROLLMENT_ID
WHERE        (ClientRestricted.NAME LIKE '%sMITH%')