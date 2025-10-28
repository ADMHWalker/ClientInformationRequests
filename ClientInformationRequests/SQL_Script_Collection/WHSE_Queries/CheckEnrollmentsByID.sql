SELECT dbo_ClientRestricted.NAME, dbo_ClientRestricted.DOB, dbo_ClientRestricted.SSN, dbo_Enrollment.*, dbo_EnrollmentLegalStatus.LEGAL_STATUS, dbo_EnrollmentLegalStatus.ADMIT_LEGAL_STATUS, dbo_EnrollmentLegalStatus.DISCH_LEGAL_STATUS
FROM (dbo_Enrollment INNER JOIN dbo_ClientRestricted ON dbo_Enrollment.CLIENT_ID = dbo_ClientRestricted.CLIENT_ID) LEFT JOIN dbo_EnrollmentLegalStatus ON dbo_Enrollment.ENROLLMENT_ID = dbo_EnrollmentLegalStatus.ENROLLMENT_ID
WHERE (((dbo_Enrollment.CLIENT_ID)="DMH0073140"));
