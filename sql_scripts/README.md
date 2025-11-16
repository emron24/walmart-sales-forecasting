# 🧮 SQL Analysis: Walmart Sales

This folder contains the SQL scripts used to design the database schema and run core business analysis queries for the Walmart Sales Forecasting project.

---

## 📑 Files

- **`walmart_schema.sql`**  
  Defines the 15‑column table structure, including raw fields (Store, Date, Weekly_Sales, Temperature, Fuel_Price, CPI, Unemployment) and engineered features (Year, Month, Week, Weekly_Sales_Lag1, Temp_Fuel_Interaction, Is_Weekend, DayOfWeek).

- **`walmart_analysis.sql`**  
  Contains queries to extract KPIs, rank store performance, check monthly seasonality, compare holiday vs non‑holiday weeks, and generate trend/matrix outputs for Power BI dashboards.

---

## 🧱 Schema Overview

The table `[Walmart Data Analysis and Forecasting]` includes:

- **Store** → Store ID (1–45)  
- **Date** → Week ending date  
- **Weekly_Sales** → Sales amount per week  
- **Is_Holiday** → 1 = holiday week, 0 = non‑holiday  
- **Temperature, Fuel_Price, CPI, Unemployment** → External economic indicators  
- **Year, Month, Week** → Time features  
- **Weekly_Sales_Lag1** → Previous week’s sales (per store)  
- **Temp_Fuel_Interaction** → Temperature × Fuel Price interaction term  
- **Is_Weekend, DayOfWeek** → Flags for weekend and weekday

---

## 📊 Analysis Highlights

### 1. Top‑Level KPIs
- **Total Weekly Sales:** ≈ $2.72B  
- **Average Weekly Sales:** ≈ $1.06M  
- **Number of Stores:** 45  
- **Number of Weeks:** 57  

### 2. Store Performance
- Store 20, 4, and 14 lead in average weekly sales.  
- Confirms top vs bottom performers for benchmarking.

### 3. Monthly Seasonality
- **October peaks** in sales.  
- **December dips** (post‑holiday slowdown).  
- Guides inventory and promotion timing.

### 4. Holiday vs Non‑Holiday Comparison
- Non‑holiday weeks dominate total sales volume.  
- Holiday weeks show slightly higher per‑week averages.

### 5. Weekly Trend
- Sales decline from 2010 → stabilize around 2012–2013.  
- Matches Power BI line chart.

### 6. Monthly Sales Matrix
- Store × Month averages for heatmap visualization.  
- Store 13 consistently leads; October peak confirmed.

---

## 🎯 Business Value

- **Schema** → Ensures reproducible, well‑typed data for analysis and modeling.  
- **Analysis** → Translates raw data into actionable KPIs and trends.  
- **Integration** → Outputs feed directly into Power BI dashboards and Python models.

---

## 📬 Author

Built by **Emran Nabizadeh**  
 Based in Tehran | 💼 Data Analyst | 📈 Portfolio‑driven learner  
(https://github.com/emron24)
