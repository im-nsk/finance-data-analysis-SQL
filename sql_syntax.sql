
SELECT * FROM finance_data;
SELECT gender from finance_data;

SELECT distinct gender FROM finance_data;

SELECT * FROM finance_data limit 5;

SELECT * FROM FINANCE_DATA WHERE invest_monitor = 'Daily';

SELECT * FROM FINANCE_DATA WHERE invest_monitor = 'Daily' 
ORDER BY age ASC;

SELECT * FROM FINANCE_DATA WHERE stock_market = 'Yes' AND objective = 'Income';

SELECT * FROM FINANCE_DATA WHERE stock_market = 'Yes' OR purpose = 'Wealth Creation';

SELECT * FROM FINANCE_DATA WHERE age in (25, 30, 35);

SELECT * FROM FINANCE_DATA WHERE age BETWEEN 20 AND 25;

SELECT * FROM FINANCE_DATA WHERE gender IS NOT NULL;

SELECT gender || ' ' || age as gender_age, * FROM FINANCE_DATA;

SELECT concat(gender,'_', age) as gender_age FROM FINANCE_DATA;\

SELECT mutual_funds as mf from finance_data;


UPDATE finance_data
SET gender = 'M'
WHERE gender = 'Male';

UPDATE finance_data
SET gender = 'F'
WHERE gender = 'Female';


-- AGGREGATE FUNCTIONS, 

SELECT sum(mutual_funds) as total_mf_active from finance_data;

SELECT count(mutual_funds) as num_mf FROM FINANCE_DATA WHERE stock_market = 'Yes'

SELECT gender, MAX(mutual_funds) as MIN_mf_active from finance_data
GROUP by gender

SELECT count(*) FROM FINANCE_DATA;
SELECT count(1) FROM FINANCE_DATA;

SELECT "Source", count(1)
FROM finance_data
GROUP BY "Source"

SOURCE

SELECT Reason_Bonds, count(1)
FROM finance_data
WHERE age = 20
GROUP BY Reason_Bonds
HAVING count(*) > 10

SELECT count(1)
FROM finance_data



ALTER TABlE finance_data
RENAME COLUMN "'Plan'" to Plan

ALTER TABLE finance_data 
RENAME COLUMN "What are your savings objectives?" TO new_column_name;





