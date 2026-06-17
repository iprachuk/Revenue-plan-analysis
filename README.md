# Revenue Plan Analysis

## 📋 Project Description

This repository contains a comprehensive revenue performance analysis that compares actual sales revenue with planned revenue targets.

Using SQL and cumulative calculations, the project combines historical sales data with forecasted revenue to monitor business performance and evaluate progress toward financial goals.

The analysis provides a clear view of revenue trends and KPI achievement over time.

---

## 🎯 Project Objectives

The main goals of this project are to:

* Calculate actual daily revenue;
* Compare actual revenue with planned revenue targets;
* Monitor cumulative revenue growth;
* Track progress toward business goals;
* Measure revenue plan achievement over time;
* Support strategic business decision-making.

---

## 🛠️ Technology Stack

* **SQL (Google BigQuery)** – data extraction and analysis;
* **Google BigQuery** – cloud data warehouse;
* **Common Table Expressions (CTEs)** – modular query structure;
* **UNION ALL** – combining actual and forecasted data;
* **Window Functions** – cumulative calculations;
* **KPI Analytics** – revenue performance measurement.

---

## 📂 Project Structure

```text
Revenue-Plan-Analysis/
├── README.md
└── revenue.sql
```

---

## 📊 Data Sources

The analysis combines information from four data sources:

| Table              | Description                 |
| ------------------ | --------------------------- |
| DA.order           | Customer order transactions |
| DA.product         | Product pricing information |
| DA.session         | Transaction dates           |
| DA.revenue_predict | Planned revenue targets     |

---

## 📈 Key Metrics

The project calculates several business KPIs.

### Revenue Metrics

* Daily actual revenue;
* Daily planned revenue;
* Cumulative actual revenue;
* Cumulative planned revenue.

### Performance Metrics

* Revenue target achievement;
* Running revenue growth;
* Running forecast growth;
* Percentage of goal completion.

---

## ❓ Business Questions

This project aims to answer the following questions:

* Is the company meeting its revenue targets?
* How does actual revenue compare to planned revenue?
* How does revenue performance change over time?
* What percentage of the revenue goal has been achieved?
* Are revenue trends moving above or below expectations?

---

## 📊 SQL Analysis Overview

The SQL query consists of four main stages.

### 1. Actual Revenue Calculation

Calculates total daily revenue from completed orders.

The query combines:

* Order data;
* Product prices;
* Transaction dates.

---

### 2. Combining Actual and Planned Revenue

Uses `UNION ALL` to merge:

* Actual revenue;
* Planned revenue targets.

This approach creates a unified structure for further analysis.

---

### 3. Daily Consolidation

Aggregates actual and planned revenue by date.

The result contains one record per day with both revenue metrics.

---

### 4. Cumulative KPI Calculation

Uses SQL window functions to calculate:

* Running actual revenue;
* Running planned revenue;
* Revenue goal achievement percentage.

The final KPI is calculated as:

**Goal Achievement (%) = Cumulative Actual Revenue / Cumulative Planned Revenue × 100**

---

## 📊 Output Metrics

The final query returns the following columns:

| Column          | Description                         |
| --------------- | ----------------------------------- |
| date            | Analysis date                       |
| running_revenue | Cumulative actual revenue           |
| running_predict | Cumulative planned revenue          |
| goal_percent    | Revenue goal achievement percentage |

---

## 💡 Key Insights

The analysis provides insights into:

* Revenue growth trends;
* Business performance against targets;
* Revenue plan execution;
* Financial KPI tracking;
* Long-term revenue progress.

---

## 🚀 Business Value

The results can help businesses:

* Monitor revenue performance;
* Track KPI achievement;
* Identify periods of underperformance;
* Evaluate financial progress;
* Support strategic planning;
* Improve forecasting accuracy.

---

## 🎓 Skills Demonstrated

This project showcases practical experience in:

* SQL querying;
* Google BigQuery;
* Data aggregation;
* Common Table Expressions (CTEs);
* UNION ALL;
* Window Functions;
* Running totals;
* KPI analysis;
* Financial analytics;
* Business reporting;
* Data storytelling.

---

## 📌 Conclusion

Revenue Plan Analysis demonstrates how SQL can be used to monitor business performance by combining actual sales data with planned revenue targets. Through cumulative calculations and KPI tracking, the project provides valuable insights into revenue growth and progress toward financial objectives, supporting data-driven business decision-making.
