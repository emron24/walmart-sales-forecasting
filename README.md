# 🛒 Walmart Sales Forecasting

**End-to-end data analysis and forecasting pipeline** using SQL, Python, and Power BI to uncover business insights from Walmart’s weekly sales data. This project demonstrates advanced data cleaning, feature engineering, time-series modeling, and dashboard storytelling — built for real-world impact and recruiter appeal.

---

## 📦 Project Structure

📦 walmart-sales-forecasting
├── data
│   ├── raw                 → Original CSV dataset
│   ├── processed           → Cleaned and feature-engineered snapshots
│   └── models              → Saved model artifacts (e.g. Random Forest)
├── notebooks
│   ├── 01_data_loading.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_feature_engineering.ipynb
│   └── 04_model_training.ipynb
├── sql
│   ├── walmart_schema.sql
│   └── walmart_analysis.sql
├── visuals
│   ├── dashboard_kpis.png
│   ├── store_ranking.png
│   ├── monthly_matrix.png
│   └── holiday_comparison.png
└── README.md

---

## 🔍 Dataset Overview

- **Source:** Walmart weekly sales data (2010–2012)
- **Records:** 6,435 rows × 15 columns
- **Stores:** 45 unique locations
- **Time Span:** 57 weeks
- **Features:** Sales, temperature, fuel price, CPI, unemployment, holiday flags, engineered time features

---

## 🧮 SQL Analysis Highlights

- **Total Weekly Sales:** `$2.72B`
- **Average Weekly Sales:** `$1.06M`
- **Top Stores by Avg Sales:**
  - Store 20 → `$2.17M`
  - Store 4 → `$2.08M`
  - Store 14 → `$2.07M`
- **Seasonality Insight:** October peaks, December dips
- **Holiday Impact:** Non-holiday weeks dominate total sales, but holiday weeks show slightly higher per-week averages

📄 See [`sql/walmart_analysis.sql`](sql/walmart_analysis.sql) for full query set.

---

## 🧠 Modeling Pipeline

### 🔹 Linear Regression (Baseline)
- MAE: ~\$X (from notebook)
- Feature importance printed for interpretability

### 🔹 Random Forest Regressor (Optimized)
- MAE: ~\$Y (lower than baseline)
- Feature importance ranked by Gini
- Hyperparameters tuned to reduce overfitting

### 🔹 Prophet (Time-Series)
- Captures weekly and yearly seasonality
- Incorporates holiday effects
- Forecasts next 10 weeks with confidence intervals

📄 See [`04_model_training.ipynb`](notebooks/04_model_training.ipynb) for full training and evaluation.

---

## 📊 Power BI Dashboard

Interactive visuals built from the cleaned and engineered dataset:

| KPI Card              | Value     |
|-----------------------|-----------|
| Total Weekly Sales    | `$2.72B`  |
| Average Weekly Sales  | `$1.06M`  |
| Number of Stores      | `45`      |
| Number of Weeks       | `57`      |

### Key Visuals:
- **Store Ranking:** Horizontal bar chart of top performers
- **Holiday Comparison:** Sales drop during holidays
- **Time Series:** Weekly sales trend from 2010–2013
- **Monthly Matrix:** Seasonal patterns across stores

📸 Screenshots in [`visuals/`](visuals/)

---

## 🧰 Tools & Technologies

- **SQL Server Management Studio (SSMS)** → schema design, KPI queries
- **Python (Pandas, Seaborn, Scikit-learn, Prophet)** → cleaning, modeling
- **Power BI** → dashboard creation
- **Jupyter Notebooks** → reproducible workflow
- **GitHub** → version control and portfolio presentation

---

## 💡 Business Impact

This project simulates a real-world retail analytics workflow:
- Identifies top-performing stores for strategic investment
- Reveals seasonal and holiday-driven sales patterns
- Builds predictive models for inventory and staffing decisions
- Communicates insights through a clean, executive-ready dashboard

---

## 📬 Contact

Built by **Emran Nabizadeh**  
📍 Based in Paris | 💼 Data Analyst | 📈 Portfolio-driven learner  
📧 [emron.n1376@gmail.com] | 🌐 [LinkedIn Profile] | 🗂️ [https://github.com/emron24]

---


