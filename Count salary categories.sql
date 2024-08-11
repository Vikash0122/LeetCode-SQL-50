SELECT 
    "Low Salary" AS category,
    COUNT(income) AS accounts_count
FROM Accounts
WHERE income<20000
union
SELECT 
    "Average Salary" AS category,
    COUNT(income) AS accounts_count
FROM Accounts
WHERE income>=20000 AND income<=50000
union
SELECT 
    "High Salary" AS category,
    COUNT(income) AS accounts_count
FROM Accounts
WHERE income>50000;
