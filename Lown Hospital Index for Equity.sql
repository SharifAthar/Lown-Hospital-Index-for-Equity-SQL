-- How many hospitals are there based off each size? 
SELECT size, COUNT(size) AS total
FROM lown_hospital_index.equity
WHERE size IN ('xl', 'l', 'm', 's', 'xs')
GROUP BY size;

-- Count of hospitals by each state
SELECT State, COUNT(*) AS HospitalCount
FROM lown_hospital_index.equity
GROUP BY State;

-- Count of hospitals by city
SELECT City, COUNT(*) AS HospitalCount
FROM lown_hospital_index.equity
GROUP BY City
HAVING HospitalCount > 1
ORDER BY HospitalCount DESC;

-- Number of church-affiliated hospitals
SELECT SUM(Type_Church_Affiliated = 1) as total_church_affiliated_hospitals
FROM lown_hospital_index.equity

-- How many hospitals are in a rural location and how many are in urban? 
SELECT SUM(type_urban = 1) AS total_urban_hospitals,
SUM(type_rural = 1) AS total_rural_hospitals
FROM lown_hospital_index.equity;

-- Total number of urban and rural hospitals by state
SELECT
State,
SUM(Type_Urban = 1) AS TotalUrbanHospitals,
SUM(Type_Rural = 1) AS TotalRuralHospitals
FROM lown_hospital_index.equity
GROUP BY State;

-- Amount of hospitals that are non-profit vs amount that are for profit
SELECT SUM(type_for_profit = 1) AS total_profit_hospitals,
SUM(type_nonprofit = 1) AS total_nonprofit_hospitals
FROM lown_hospital_index.equity;

-- What were the top 10 ranked hospitals by Tier 1 lown composite?
SELECT name, 
Tier1_Lown_Composite_Overall_Rank
FROM lown_hospital_index.equity
ORDER BY Tier1_Lown_Composite_Overall_Rank
LIMIT 10

-- What were the bottom 10 ranked hospitals by Tier 1 lown composite?
SELECT name, 
Tier1_Lown_Composite_Overall_Rank
FROM lown_hospital_index.equity
ORDER BY Tier1_Lown_Composite_Overall_Rank DESC
LIMIT 10

-- Amount of hospitals based off each Tier 1 Lown Composite grade
SELECT Tier1_Lown_Composite_Overall_Grade,
COUNT(Tier1_Lown_Composite_Overall_Grade) as total 
FROM lown_hospital_index.equity
WHERE Tier1_Lown_Composite_Overall_Grade IN ('a', 'b', 'c', 'd', 'f')
GROUP BY Tier1_Lown_Composite_Overall_Grade

-- Top 10 hospitals based on Tier 2 equity rank
SELECT name, 
Tier2_Equity_Overall_Rank
FROM lown_hospital_index.equity
ORDER BY Tier2_Equity_Overall_Rank
LIMIT 10

-- Bottom 10 hospitals based on Tier 2 equity rank
SELECT name, 
Tier2_Equity_Overall_Rank
FROM lown_hospital_index.equity
ORDER BY Tier2_Equity_Overall_Rank DESC
LIMIT 10

-- Amount of hospitals based on each Tier 2 equity grade
SELECT Tier2_Equity_Overall_Grade,
COUNT(Tier2_Equity_Overall_Grade) as total 
FROM lown_hospital_index.equity
WHERE Tier2_Equity_Overall_Grade IN ('a', 'b', 'c', 'd', 'f')
GROUP BY Tier2_Equity_Overall_Grade

-- Top 10 hospitals based on Tier 3 pay equity rank
SELECT name, 
Tier3_Pay_Equity_Rank
FROM lown_hospital_index.equity
ORDER BY Tier3_Pay_Equity_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 3 pay equity rank
SELECT name, 
Tier3_Pay_Equity_Rank
FROM lown_hospital_index.equity
ORDER BY Tier3_Pay_Equity_Rank DESC
LIMIT 10

-- Amount of hospitals based on each Tier 3 pay equity grade
SELECT Tier3_Pay_Equity_Grade,
COUNT(Tier3_Pay_Equity_Grade) as total 
FROM lown_hospital_index.equity
WHERE Tier3_Pay_Equity_Grade IN ('a', 'b', 'c', 'd', 'f')
GROUP BY Tier3_Pay_Equity_Grade

-- Top 10 hospitals based on Tier 3 community benefit rank
SELECT name, 
Tier3_Community_Benefit_Rank
FROM lown_hospital_index.equity
ORDER BY Tier3_Community_Benefit_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 3 community benefit rank
SELECT name, 
Tier3_Community_Benefit_Rank
FROM lown_hospital_index.equity
ORDER BY Tier3_Community_Benefit_Rank DESC
LIMIT 10

-- Amount of hospitals based on each Tier 3 community benefit grade
SELECT Tier3_Community_Benefit_Grade,
COUNT(Tier3_Community_Benefit_Grade) as total 
FROM lown_hospital_index.equity
WHERE Tier3_Community_Benefit_Grade IN ('a', 'b', 'c', 'd', 'f')
GROUP BY Tier3_Community_Benefit_Grade

-- Top 10 hospitals based on Tier 3 Inclusivity rank
SELECT name, 
Tier3_Inclusivity_Rank
FROM lown_hospital_index.equity
ORDER BY Tier3_Inclusivity_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 3 Inclusivity rank
SELECT name, 
Tier3_Inclusivity_Rank
FROM lown_hospital_index.equity
ORDER BY Tier3_Inclusivity_Rank DESC
LIMIT 10

-- Amount of hospitals based on each Tier 3 Inclusivity grade
SELECT Tier3_Inclusivity_Grade,
COUNT(Tier3_Inclusivity_Grade) as total 
FROM lown_hospital_index.equity
WHERE Tier3_Inclusivity_Grade IN ('a', 'b', 'c', 'd', 'f')
GROUP BY Tier3_Inclusivity_Grade

-- Top 10 hospitals based on Tier 4 community benefit charity care spending rank
SELECT name, 
Tier4_Comm_Benefit_Charity_Care_Spending_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Comm_Benefit_Charity_Care_Spending_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 4 community benefit charity care spending rank
SELECT name, 
Tier4_Comm_Benefit_Charity_Care_Spending_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Comm_Benefit_Charity_Care_Spending_Rank DESC
LIMIT 10

-- Top 10 hospitals based on Tier 4 community benefit other benefit spending rank
SELECT name, 
Tier4_Comm_Benefit_Other_Benefit_Spending_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Comm_Benefit_Other_Benefit_Spending_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 4 community benefit other benefit spending rank
SELECT name, 
Tier4_Comm_Benefit_Other_Benefit_Spending_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Comm_Benefit_Other_Benefit_Spending_Rank DESC
LIMIT 10

-- Top 10 hospitals based on Tier 4 community benefit medicaid rev share of patient rev rank
SELECT name, 
Tier4_Comm_Benefit_Medicaid_Rev_Share_of_Patient_Rev_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Comm_Benefit_Medicaid_Rev_Share_of_Patient_Rev_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 4 community benefit medicaid rev share of patient rev rank
SELECT name, 
Tier4_Comm_Benefit_Medicaid_Rev_Share_of_Patient_Rev_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Comm_Benefit_Medicaid_Rev_Share_of_Patient_Rev_Rank DESC
LIMIT 10

-- Top 10 hospitals based on Tier 4 incluvisity income rank
SELECT name, 
Tier4_Inclusivity_Income_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Inclusivity_Income_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 4 incluvisity income rank
SELECT name, 
Tier4_Inclusivity_Income_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Inclusivity_Income_Rank DESC
LIMIT 10

-- Top 10 hospitals based on Tier 4 incluvisity racial rank
SELECT name, 
Tier4_Inclusivity_Racial_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Inclusivity_Racial_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 4 incluvisity racial rank
SELECT name, 
Tier4_Inclusivity_Racial_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Inclusivity_Racial_Rank DESC
LIMIT 10

-- Top 10 hospitals based on Tier 4 incluvisity education rank
SELECT name, 
Tier4_Inclusivity_Education_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Inclusivity_Education_Rank ASC
LIMIT 10

-- Bottom 10 hospitals based on Tier 4 incluvisity education rank
SELECT name, 
Tier4_Inclusivity_Education_Rank
FROM lown_hospital_index.equity
ORDER BY Tier4_Inclusivity_Education_Rank DESC
LIMIT 10

-- Average equity rank for non-profit and for-profit hospitals 
SELECT 
CASE
	WHEN Type_For_Profit = 1 THEN 'For-Profit'
	WHEN Type_NonProfit = 1 THEN 'Non-Profit'
    END AS HospitalType,
    AVG(Tier2_Equity_Overall_Rank) AS AVG_Equity_Rank
FROM lown_hospital_index.equity
GROUP BY HospitalType;

-- Hospitals with the highest Tier 4 Inclusivity Education Rank in each state
SELECT
State,
Name,
Tier4_Inclusivity_Education_Rank
FROM lown_hospital_index.equity h1
WHERE Tier4_Inclusivity_Education_Rank = (
    SELECT MAX(Tier4_Inclusivity_Education_Rank)
    FROM lown_hospital_index.equity h2
    WHERE h1.State = h2.State)
ORDER BY Tier4_Inclusivity_Education_Rank;

-- Hospitals with the highest Tier 4 Inclusivity Income Rank in each state
SELECT
State,
Name,
Tier4_Inclusivity_Income_Rank
FROM lown_hospital_index.equity h1
WHERE Tier4_Inclusivity_Income_Rank = (
    SELECT MAX(Tier4_Inclusivity_Income_Rank)
    FROM lown_hospital_index.equity h2
    WHERE h1.State = h2.State)
ORDER BY Tier4_Inclusivity_Income_Rank;

-- Hospitals with the highest Tier 2 equity overall rank in each state
SELECT
State,
Name,
Tier2_Equity_Overall_Rank
FROM lown_hospital_index.equity h1
WHERE Tier2_Equity_Overall_Rank = (
    SELECT MAX(Tier2_Equity_Overall_Rank)
    FROM lown_hospital_index.equity h2
    WHERE h1.State = h2.State)
ORDER BY Tier2_Equity_Overall_Rank;

-- Hospitals with the highest Tier 3 pay equity rank in each state
SELECT
State,
Name,
Tier3_Pay_Equity_Rank
FROM lown_hospital_index.equity h1
WHERE Tier3_Pay_Equity_Rank = (
    SELECT MAX(Tier3_Pay_Equity_Rank)
    FROM lown_hospital_index.equity h2
    WHERE h1.State = h2.State)
ORDER BY Tier3_Pay_Equity_Rank;

-- Hospitals with the highest Tier 4 Inclusivity Racial Rank in each state
SELECT
State,
Name,
Tier4_Inclusivity_Racial_Rank
FROM lown_hospital_index.equity h1
WHERE Tier4_Inclusivity_Racial_Rank = (
    SELECT MAX(Tier4_Inclusivity_Racial_Rank)
    FROM lown_hospital_index.equity h2
    WHERE h1.State = h2.State)
ORDER BY Tier4_Inclusivity_Racial_Rank;

-- Hospitals located in cities where the average Tier 1 Lown Composite Overall Rank is above 75
SELECT name,
City,
Tier1_Lown_Composite_Overall_Rank
FROM lown_hospital_index.equity
WHERE City IN (
SELECT City
FROM lown_hospital_index.equity
GROUP BY City
HAVING AVG(Tier1_Lown_Composite_Overall_Rank) > 75);









