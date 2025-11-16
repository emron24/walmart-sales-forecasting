-- #############################################
-- # WALMART SALES ANALYSIS QUERIES            #
-- #############################################

-- 1. TOP-LEVEL KPIs (Total, Average, Store Count, Weeks)
---------------------------------------------------------
SELECT
    CAST(SUM(Weekly_Sales) AS DECIMAL(18, 2)) AS Total_Weekly_Sales_USD,
    CAST(AVG(Weekly_Sales) AS DECIMAL(15, 2)) AS Avg_Weekly_Sales_Per_Row_USD,
    COUNT(DISTINCT Store) AS Number_of_Stores,
    COUNT(DISTINCT Date) AS Number_of_Weeks
FROM walmart_sales;
GO

-- 2. STORE PERFORMANCE (Ranking by Average Weekly Sales)
---------------------------------------------------------
SELECT
    Store,
    CAST(AVG(Weekly_Sales) AS DECIMAL(15, 2)) AS Avg_Weekly_Sales_USD,
    CAST(SUM(Weekly_Sales) AS DECIMAL(18, 2)) AS Total_Sales_USD
FROM walmart_sales
GROUP BY Store
ORDER BY Avg_Weekly_Sales_USD DESC;
GO

-- 3. MONTHLY SALES TREND (Seasonality Check)
---------------------------------------------
SELECT
    MONTH(Date) AS Month_Number,
    CAST(AVG(Weekly_Sales) AS DECIMAL(15, 2)) AS Avg_Monthly_Sales_USD,
    COUNT(*) AS Total_Weeks_In_Month
FROM walmart_sales
GROUP BY MONTH(Date)
ORDER BY Month_Number;
GO

-- 4. HOLIDAY VS NON-HOLIDAY COMPARISON
---------------------------------------------
SELECT
    CASE holiday_flag
        WHEN 1 THEN 'Holiday Week'
        ELSE 'Non-Holiday Week'
    END AS Week_Type,
    CAST(SUM(Weekly_Sales) AS DECIMAL(18, 2)) AS Total_Sales_USD,
    CAST(AVG(Weekly_Sales) AS DECIMAL(15, 2)) AS Avg_Sales_USD
FROM walmart_sales
GROUP BY holiday_flag ;
GO

-- 5. WEEKLY SALES TREND OVER TIME
---------------------------------------------
SELECT
    Date,
    CAST(SUM(Weekly_Sales) AS DECIMAL(18, 2)) AS Total_Sales_USD
FROM walmart_sales
GROUP BY Date
ORDER BY Date;
GO

-- 6. MONTHLY SALES MATRIX (Store × Month)
---------------------------------------------
SELECT
    Store,
    MONTH(Date) AS Month_Number,
    CAST(AVG(Weekly_Sales) AS DECIMAL(15, 2)) AS Avg_Weekly_Sales_USD
FROM walmart_sales
GROUP BY Store, MONTH(Date)
ORDER BY Store, Month_Number;
GO
 