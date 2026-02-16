# Customer Revenue & Segmentation Analysis (SQL + Tableau)

## 📌 Project Overview

This project analyzes raw customer and basket transaction data downloaded from Kaggle. The objective was to transform raw data into meaningful business insights using SQL for data aggregation and validation, and Tableau for interactive dashboard development.

The analysis focuses on customer revenue contribution, segmentation behavior, average basket size, and identification of top-performing customers.

---

## 🎯 Business Objectives

- Calculate total revenue per customer
- Segment customers based on spending behavior
- Analyze average basket size per segment
- Evaluate revenue distribution across segments
- Identify top 10 customers by revenue
- Build an interactive Tableau dashboard for business insights

---

## 🛠 Tools & Technologies

- SQL (Data Aggregation & Analysis)
- Tableau (Data Visualization & Dashboard Design)
- Kaggle Dataset (Customer & Basket Details)

---

## 📂 Dataset Source

Dataset downloaded from Kaggle:

Customer Details  
Basket Details  

(https://www.kaggle.com/datasets/berkayalan/ecommerce-sales-dataset)

---

# 🧮 SQL Analysis

SQL was used to transform raw transactional data into structured analytical outputs.

## Key SQL Outputs

The following result files are stored inside the `sql-results-folder`:

- customer_revenue.csv
- customer_segments.csv
- avg_basket_size_per_segment.csv
- revenue_by_segment.csv
- top_10_customers.csv

All SQL queries used in this project are available in:

```
SQL_Queries.sql
```

---

# 📊 Tableau Analysis

The exported SQL results were connected to Tableau to build interactive visualizations.

## Tableau Calculated Fields Used

### Revenue per Customer (LOD)

```
{ FIXED [Customer Id] : SUM([Revenue]) }
```

### Customer Segmentation Logic

```
IF [Revenue per Customer] < 1000 THEN "Low Value"
ELSEIF [Revenue per Customer] <= 3000 THEN "Medium Value"
ELSE "High Value"
END
```

### Month-over-Month Growth

Quick Table Calculation:
Percent Difference (Compute Using → Table Across)

---

# 📈 Dashboard Features

- Customer Revenue Distribution
- Revenue by Segment
- Average Basket Size per Segment
- Top 10 Customers
- Monthly Revenue Trend
- Dual-Axis MoM Growth Analysis

---

# 📸 Dashboard Preview

## Overall Dashboard
<img width="1499" height="1199" alt="Dashboard 1 (4)" src="https://github.com/user-attachments/assets/5b24f59d-adeb-4762-9f01-5ef63ac378ae" />
<img width="1499" height="1199" alt="Dashboard 1 (4)" src="https://github.com/user-attachments/assets/5b24f59d-adeb-4762-9f01-5ef63ac378ae" />


## Monthly Revenue Trend

<img width="1314" height="624" alt="Monthly revenue trend (1)" src="https://github.com/user-attachments/assets/387fbd02-2fa8-4a6a-9dac-9090a24eb958" />
<img width="1314" height="624" alt="Monthly revenue trend (1)" src="https://github.com/user-attachments/assets/387fbd02-2fa8-4a6a-9dac-9090a24eb958" />


## Customer Segmentation

<img width="1314" height="240" alt="Customer segmentation (1)" src="https://github.com/user-attachments/assets/a5c9add8-9f23-454c-9d28-1efd9cd20cc1" />
<img width="1314" height="240" alt="Customer segmentation (1)" src="https://github.com/user-attachments/assets/a5c9add8-9f23-454c-9d28-1efd9cd20cc1" />


---

# 🔗 Live Dashboard

View Interactive Tableau Dashboard:

https://public.tableau.com/views/ecommerce_17710895780480/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

---

# 📁 Repository Structure

```
customer-revenue-segmentation-analysis/
│
├── README.md
├── SQL_Queries.sql
├── SQL_Results/
├── Tableau_Dashboard.twbx
└── images/
```

---

# 💡 Key Insights

- Revenue concentration is skewed toward medium-value customers.
- High-value customer presence is limited.
- Basket size varies significantly by customer segment.
- Top 10 customers contribute a major share of total revenue.
- MoM trend highlights revenue fluctuations across months.

---

# 👩‍💻 Author

Priyanka Prasath  
Aspiring Data Analyst
Google Sheets | SQL | R | Tableau

