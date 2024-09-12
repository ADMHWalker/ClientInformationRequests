SELECT dbo_CMEligibility.Client_ID, dbo_CMEligibility.Eligibility_Status, dbo_CMEligibility.Eligibility_Effective_Date, dbo_CMEligibility.Eligibility_Decision_Date, dbo_CMEligibility.Eligibility_Decided_By
FROM dbo_CMPersons INNER JOIN dbo_CMEligibility ON dbo_CMPersons.Client_ID = dbo_CMEligibility.Client_ID
WHERE (((dbo_CMEligibility.Client_ID)="DMH0090820"));
