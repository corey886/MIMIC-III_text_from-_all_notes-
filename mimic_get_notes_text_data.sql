SELECT GROUP_CONCAT(p.ICD9_CODE),    k.DIAGNOSIS,    z.TEXT 

FROM mimiciiiv14.diagnoses_icd AS p, mimiciiiv14.admissions as k, mimiciiiv14.noteevents as z 

where p.HADM_ID=k.HADM_ID and p.SUBJECT_ID = k.SUBJECT_ID and p.HADM_ID =z.HADM_ID 
and p.SUBJECT_ID = z.SUBJECT_ID and k.HADM_ID =z.HADM_ID and k.SUBJECT_ID = z.SUBJECT_ID 
and z.CATEGORY ='Discharge summary' group by p.HADM_ID; 