

-- Re-create the table with the full 15-column schema
CREATE TABLE [Walmart Data Analysis and Forecasting] (
    Store SMALLINT,
    Date DATE,
    Weekly_Sales DECIMAL(15,2),
    Is_Holiday TINYINT,
    Temperature DECIMAL(6,2),
    Fuel_Price DECIMAL(6,3),
    CPI DECIMAL(8,2),
    Unemployment DECIMAL(5,2),
    Year SMALLINT,
    Month TINYINT,
    Week TINYINT,
    Weekly_Sales_Lag1 DECIMAL(15,2),
    Temp_Fuel_Interaction DECIMAL(10,2),
    Is_Weekend TINYINT,
    DayOfWeek TINYINT
);
GO

-- #############################################
-- # CORE WALMART SALES ANALYSIS QUERIES       #
-- #############################################

-- Use your specific database name here if necessary
-- USE Your_Database_Name; 
-- GO

-- 1. TOP-LEVEL KPIs (Total, Average, and Store Count)
---------------------------------------------
SELECT
    -- Total Sales (Should be ~2.72 billion)
    CAST(SUM(Weekly_Sales) AS DECIMAL(18, 2)) AS Total_Weekly_Sales_USD,
    -- Average Sales per record (Should be ~1.06 million)
    CAST(AVG(Weekly_Sales) AS DECIMAL(15, 2)) AS Avg_Weekly_Sales_Per_Row_USD,
    -- Number of unique stores (Should be 45)
    COUNT(DISTINCT Store) AS Number_of_Stores
FROM
    walmart_sales;
GO

-- 2. STORE PERFORMANCE (Ranking by Average Weekly Sales)
---------------------------------------------
-- Confirms the top and bottom performing stores.
SELECT
    Store,
    CAST(AVG(Weekly_Sales) AS DECIMAL(15, 2)) AS Avg_Weekly_Sales_USD
FROM
    walmart_sales
GROUP BY
    Store
ORDER BY
    Avg_Weekly_Sales_USD DESC; -- Ranks from highest to lowest
GO

-- 3. MONTHLY SALES TREND (Seasonality Check)
---------------------------------------------
-- Confirms the seasonality: October peaks, December dips.
---------------------------------------------
SELECT
    -- EXTRACTING MONTH from the existing 'date' column
    MONTH(date) AS Month_Number,
    CAST(AVG(Weekly_Sales) AS DECIMAL(15, 2)) AS Avg_Monthly_Sales_USD,
    COUNT(*) AS Total_Weeks_In_Month
FROM
    walmart_sales
GROUP BY
    MONTH(date) -- Grouping by the extracted month number
ORDER BY
    Month_Number;
GO

-- 4. HOLIDAY VS. NON-HOLIDAY COMPARISON
---------------------------------------------
-- Confirms the key insight: Non-holiday weeks dominate sales volume.
---------------------------------------------
SELECT
    -- Using the correct column: holiday_flag
    CASE holiday_flag
        WHEN 1 THEN 'Holiday Week'
        ELSE 'Non-Holiday Week'
    END AS Week_Type,
    SUM(weekly_sales) AS Total_Sales_USD, -- Corrected column: weekly_sales
    CAST(AVG(weekly_sales) AS DECIMAL(15, 2)) AS Avg_Sales_USD -- Corrected column: weekly_sales
FROM
    walmart_sales
GROUP BY
    holiday_flag; -- Corrected column: holiday_flag
GO