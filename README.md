# Walmart Weekly Sales Forecasting & Analysis

### 🎯 Project Overview

This project delivers an end-to-end analysis of **Walmart's weekly sales data**, covering 45 store locations and leveraging external factors (temperature, fuel price, CPI) to uncover critical business insights and build a foundational sales forecast.

The project demonstrates proficiency across the modern data stack, using **Python** for cleaning and feature engineering, **T-SQL** for scalable data management and complex aggregation, and **Power BI/Excel** for visualization.

### 🔑 Key Deliverables & Technical Stack

| Category | Tools & Libraries Used | Deliverables |
| :--- | :--- | :--- |
| **Data Analysis** | T-SQL (SQL Server) | Five complex queries for KPIs, store ranking, and seasonality analysis. |
| **Modeling & Prep** | Python (Pandas, NumPy, Scikit-learn, Prophet) | Data Cleaning, Feature Engineering (e.g., `Weekly_Sales_Lag1`), and Model Training. |
| **Data Management** | SQL Server Management Studio (SSMS) | Database Schema Design, Efficient Bulk Data Loading, and Data Integrity Checks. |
| **Business Intelligence** | Power BI, Microsoft Excel | Dynamic KPI Dashboards, Store Performance Visualizations, and Seasonal Matrices. |

---

### 📊 Key Business & Data Insights

The T-SQL analysis and exploration yielded the following validated insights:

| Insight Type | Finding | Business Implication |
| :--- | :--- | :--- |
| **Top Store Performance** | Stores **20, 4, and 14** consistently lead in average weekly sales, contradicting earlier assumptions. | Focus on replicating the operational models and product mixes from these verified high-performing stores. |
| **Seasonality Trend** | A notable **sales peak occurs in October** (Month 10), with the lowest average sales recorded in **December** (Month 12). | Inventory and staffing plans should be adjusted to maximize October's surge and investigate factors causing the December dip. |
| **Sales Distribution** | **Non-holiday weeks ($\approx \$2.43 \text{bn}$ total sales)** provide the overwhelming majority of sales volume. | Optimization efforts should prioritize consistent, non-holiday weekly demand rather than being overly focused on short holiday spikes. |
| **Modeling Potential** | External features (Temperature, Fuel Price, Unemployment) are correlated with sales, setting the stage for robust multi-variate time-series forecasting. |

---

### 🛠️ T-SQL Analysis Script

The final T-SQL script used for the analysis is available in the `sql_scripts/` directory.

### 🚀 Next Steps & Future Enhancements

* **Forecasting Integration:** Implement and compare advanced time-series forecasting models (e.g., **ARIMA** or **Prophet**) in Python to accurately predict future weekly sales.
* **Pipeline Automation:** Develop an ETL script to automate the flow from data ingestion $\rightarrow$ cleaning $\rightarrow$ SQL database loading $\rightarrow$ Power BI data refresh.