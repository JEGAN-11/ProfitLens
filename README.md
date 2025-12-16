# ProfitLens

## 📌 Overview
ProfitLens is an AI-driven decision support system designed to identify **profit leakage** and analyze **demand patterns** in omnichannel retail data.

Retail businesses often experience increasing sales but declining profits due to excessive discounting, inefficient regions, and unprofitable products.  
ProfitLens addresses this problem by combining **SQL-based KPI analysis**, **Python-driven exploration**, **machine learning**, and **Power BI dashboards** to enable data-driven decisions.

---

## 🎯 Objectives
- Identify products and regions causing profit loss despite high sales
- Analyze the impact of discounts on profit margins
- Understand customer and category-level profitability
- Forecast demand to support inventory planning
- Build an executive-ready analytics dashboard

---

## 🧠 Business Problem
How can a retail business detect hidden profit losses and optimize pricing and inventory decisions using data?

---

## 🛠 Tech Stack
- SQL (Data modeling & KPI analysis)
- Python (EDA & Machine Learning)
- Power BI (Interactive dashboards)
- Pandas, NumPy, Scikit-learn

## 📂 Dataset
- Source: Sample Superstore Dataset (Kaggle)
- Format: CSV
- Records: Retail transaction-level data
- Features: Sales, Profit, Discount, Quantity, Region, Category

## 📊 Key Metrics & Analysis
- Revenue and profit trend analysis
- Profit margin evaluation across regions
- Identification of loss-making products despite high sales
- Discount impact assessment on profitability
- Regional efficiency comparison using profit-to-sales ratio

The analysis is primarily performed using SQL to ensure accuracy, scalability, and business-aligned data modeling.

### Profit Leakage Analysis
- Performed category and sub-category level analysis due to absence of product-level identifiers
- Identified loss-making sub-categories with high revenue contribution


## 📁 Project Structure
- `data/raw/` → Original dataset (read-only)
- `data/cleaned/` → SQL query outputs and processed data
- `sql/` → Table definitions and KPI queries
- `notebooks/` → Python EDA and ML
- `dashboard/` → Power BI reports
