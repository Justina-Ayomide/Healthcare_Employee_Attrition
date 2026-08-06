CREATE DATABASE healthcare_attrition;
USE healthcare_attrition;

CREATE TABLE employee_attrition (
    Employee_ID INT,
    Age INT,
    Age_Band VARCHAR(10),
    Attrition VARCHAR(5),
    Attrition_Flag INT,
    Business_Travel VARCHAR(30),
    Daily_Rate INT,
    Department VARCHAR(20),
    Distance_From_Home INT,
    Education INT,
    Education_Level VARCHAR(20),
    Education_Field VARCHAR(30),
    Environment_Satisfaction INT,
    Gender VARCHAR(10),
    Hourly_Rate INT,
    Job_Involvement INT,
    Job_Level VARCHAR(10),
    Job_Role VARCHAR(20),
    Job_Satisfaction INT,
    Marital_Status VARCHAR(15),
    Monthly_Income INT,
    Monthly_Income_Band VARCHAR(15),
    Monthly_Rate INT,
    Num_Companies_Worked INT,
    Over_Time VARCHAR(5),
    Percent_Salary_Hike INT,
    Performance_Rating INT,
    Relationship_Satisfaction INT,
    Shift INT,
    Total_Working_Years INT,
    Training_Times_Last_Year INT,
    Work_Life_Balance INT,
    Work_Life_Balance_Label VARCHAR(10),
    Years_At_Company INT,
    Tenure_Band VARCHAR(30),
    Years_In_Current_Role INT,
    Years_Since_Last_Promotion INT,
    Promotion_Status VARCHAR(25),
    Years_With_Current_Manager INT
);

-- Total Employees
SELECT COUNT(*) AS Total_Employee
FROM employee_attrition;

--  Overall Attrition Rate
SELECT 
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition;

-- Gender Distribution
SELECT 
    Gender,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Gender
ORDER BY Attrition_Rate DESC;

-- Attrition by Department
SELECT 
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Department
ORDER BY Attrition_Rate DESC;

-- Attrition by Job Role
SELECT 
    Job_Role,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Job_Role
ORDER BY Attrition_Rate DESC;

-- Attrition by Job Level
SELECT 
    Job_Level,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Job_Level
ORDER BY Attrition_Rate DESC;

-- Attrition by Promotion Status
SELECT 
    Promotion_Status,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Promotion_Status
ORDER BY Attrition_Rate DESC;

-- Attrition by Tenure Band
SELECT 
    Tenure_Band,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Tenure_Band
ORDER BY Attrition_Rate DESC;


-- Work Life Balance
SELECT 
    Work_Life_Balance_Label,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Work_Life_Balance_Label
ORDER BY Attrition_Rate DESC;

-- Job Satisfaction
SELECT 
    CASE 
        WHEN Job_Satisfaction = 1 THEN 'Low'
        WHEN Job_Satisfaction = 2 THEN 'Medium'
        WHEN Job_Satisfaction = 3 THEN 'High'
        ELSE 'Very High'
    END AS Job_Satisfaction_Label,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Job_Satisfaction_Label
ORDER BY Attrition_Rate DESC;

-- Monthly Income
SELECT 
    Monthly_Income_Band,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Monthly_Income_Band
ORDER BY Attrition_Rate DESC; 


-- Overtime
SELECT 
    Over_Time,
    COUNT(*) AS Total_Employees,
    SUM(Attrition_Flag) AS Total_Attrition,
    ROUND(SUM(Attrition_Flag) * 100 / COUNT(*), 1) AS Attrition_Rate
FROM employee_attrition
GROUP BY Over_Time
ORDER BY Attrition_Rate DESC;

