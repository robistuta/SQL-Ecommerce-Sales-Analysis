# E-Commerce Sales Analysis Using SQL

## Project Overview

This project analyzes the Brazilian E-Commerce Public Dataset by Olist to identify sales trends, customer purchasing behavior, product performance, and delivery efficiency.

The dataset contains approximately 100,000 orders placed between 2016 and 2018.

The objective is to demonstrate how SQL can be used to answer business questions, identify trends, and support data-driven decision-making.

## Business Problem

An e-commerce company wants to better understand its business performance.

The analysis focuses on answering the following questions:

1. How does monthly sales performance change?
2. Which customers generate the highest payment values?
3. What percentage of customers make repeat purchases?
4. What is the average order value?
5. Which products and categories generate the highest sales?
6. Which locations generate the most orders?
7. What percentage of deliveries arrive late?
8. How does Black Friday influence purchasing activity?

## Tools and Technologies

- SQLite
- DB Browser for SQLite
- SQL
- Microsoft Excel
- GitHub

## SQL Skills Demonstrated

- SELECT statements
- WHERE filtering
- INNER JOIN and LEFT JOIN
- GROUP BY
- ORDER BY 
- Aggregate functions (SUM, COUNT, AVG)
- CASE statements
- Common Table Expressions (CTEs)
- Window functions (LAG)
- Date functions
- Data exploration
- Business performance analysis

## Dataset

**Dataset Name:** Brazilian E-Commerce Public Dataset by Olist

**Source:** Kaggle

https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

The dataset contains information about:

- Customer locations
- Customer orders
- Payment transactions
- Product categories
- Product sales
- Delivery dates
- Order status

## Key Performance Indicators

The following metrics were calculated using SQL.

| KPI | Result |
|---|---|
| Total Unique Customers | 96,096 |
| Repeat Customers | 2,997 |
| Repeat Purchase Rate | 3.12% |
| Average Order Value | R$ 160.99 |
| Highest Customer Spending | R$ 13,664.08 |
| Late Delivery Rate | 8.11% |
| On-Time Delivery Rate | 91.89% |

## Key Business Findings

### 1. Customer Retention

SQL analysis identified 96,096 unique customers.

Of these customers, only 2,997 placed more than one order.

This represents a repeat purchase rate of 3.12%.

**Business Insight:**

Repeat purchasing was relatively uncommon during the dataset's observation period.

**Recommendation:**

Investigate factors influencing repeat purchases, including customer satisfaction, delivery experience, and purchasing frequency.

### 2. Average Order Value

The average recorded payment value per order was:

**R$ 160.99**

This metric provides a benchmark for understanding transaction values.

**Recommendation:**

Investigate opportunities for product bundling and cross-selling while monitoring changes in average order value.

### 3. Top-Selling Product

The highest-selling product recorded:

- Units Sold: 488
- Product Sales: R$ 43,025.56
- Average Selling Price: R$ 88.17

**Business Insight:**

High-volume products can contribute substantially to overall product sales.

**Recommendation:**

Monitor inventory availability and examine demand patterns for popular products.

### 4. Highest-Grossing Product Category

The Health & Beauty category generated the highest overall product sales value.

| Metric | Result |
|---|---|
| Category | Health & Beauty |
| Units Sold | 9,670 |
| Product Sales | R$ 1,258,681.34 |

**Business Insight:**

Health & Beauty was an important contributor to product sales.

**Recommendation:**

Investigate demand patterns and profitability before making additional inventory investments.

### 5. Delivery Performance

SQL analysis examined 96,470 delivered orders.

Results:

- Delivered Orders: 96,470
- Late Deliveries: 7,826
- Late Delivery Rate: 8.11%
- On-Time Delivery Rate: 91.89%

**Business Insight:**

Most orders arrived on or before their estimated delivery dates.

However, 7,826 deliveries arrived late.

**Recommendation:**

Investigate delivery delays by geographic location and identify opportunities to improve shipping performance.

### 6. Monthly Sales Performance

November 2017 generated the highest monthly recorded payment value.

| Metric | Result |
|---|---|
| Month | November 2017 |
| Total Orders | 7,544 |
| Total Payments | R$ 1,194,882.80 |

**Business Insight:**

November 2017 experienced particularly strong purchasing activity.

Further analysis identified Black Friday as an important contributor.

### 7. Black Friday Sales Performance

Black Friday occurred on November 24, 2017.

SQL analysis revealed:

| Metric | Result |
|---|---|
| Black Friday Orders | 1,176 |
| Black Friday Payments | R$ 179,200.03 |
| Average Payments on Other November Days | R$ 35,023.54 |
| Increase Compared With Average Day | 411.66% |

Black Friday generated approximately 5.12 times the average daily payment value of other November days.

It also accounted for approximately 15% of November's recorded payments.

**Business Insight:**

Black Friday was associated with substantially higher purchasing activity.

**Recommendation:**

Investigate seasonal promotional opportunities and prepare inventory and logistics capacity for high-demand shopping periods.

### 8. Black Friday Product Category Performance

The highest-grossing product category during Black Friday was Bed, Bath & Table.

| Metric | Result |
|---|---|
| Category | Bed, Bath & Table |
| Units Sold | 195 |
| Product Sales | R$ 17,875.03 |

Interestingly, Health & Beauty was the highest-grossing category overall, while Bed, Bath & Table led during Black Friday.

**Business Insight:**

Product category performance may vary during major shopping events.

**Recommendation:**

Analyze seasonal category demand to support inventory and promotional planning.

## Project Structure

```text
SQL-Ecommerce-Sales-Analysis/
│
├── README.md
│
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_monthly_sales_analysis.sql
│   ├── 03_top_customers_analysis.sql
│   ├── 04_customer_repeat_purchase.sql
│   ├── 05_average_order_value.sql
│   ├── 06_top_selling_products.sql
│   ├── 07_product_category_analysis.sql
│   ├── 08_delivery_performance.sql
│   ├── 09_monthly_revenue_growth.sql
│   ├── 10_november_sales_analysis.sql
│   ├── 11_black_friday_comparison.sql
│   └── 12_black_friday_product_categories.sql
│
├── results/
│   ├── orders_by_state.csv
│   ├── monthly_sales.csv
│   ├── top_10_customers.csv
│   ├── customer_repeat_purchase_rate.csv
│   ├── average_order_value.csv
│   ├── top_10_products.csv
│   ├── top_10_categories.csv
│   ├── delivery_performance.csv
│   ├── monthly_revenue_growth.csv
│   ├── november_daily_sales.csv
│   ├── black_friday_comparison.csv
│   └── black_friday_product_categories.csv
│
└── reports/
    └── business_insights.md
```

## Methodology

The project followed these steps:

1. Downloaded the Olist e-commerce dataset.
2. Imported CSV files into SQLite.
3. Explored the database structure.
4. Checked for missing values and duplicate records.
5. Developed SQL queries to answer business questions.
6. Exported SQL results into CSV files.
7. Interpreted findings and developed business recommendations.
8. Documented the analysis on GitHub.

## Project Limitations

- The dataset covers a historical period between 2016 and 2018.
- Some months contain incomplete observations.
- Recorded payment values are not equivalent to net revenue.
- Product sales calculations exclude freight and do not establish profitability.
- Repeat purchase rates reflect only the available observation period.
- Black Friday comparisons show associations, not proof that promotions caused increased purchases.
- Delivery performance was evaluated against estimated delivery dates rather than an external service-level target.

## Conclusion

This project demonstrates the use of SQL to analyze e-commerce business performance.

The analysis identified customer purchasing patterns, product sales trends, delivery performance, and significant seasonal shopping activity.

Key findings include:

- A 3.12% observed customer repeat purchase rate.
- An average order payment value of R$ 160.99.
- Health & Beauty as the highest-grossing overall product category.
- An 8.11% late delivery rate.
- Black Friday payments 411.66% higher than the average of other November days.

These findings provide a foundation for further investigation into customer retention, inventory planning, delivery operations, and seasonal demand.

## Author

Data Analytics Portfolio Project

**Tools:** SQL | SQLite | Excel | GitHub

**Dataset Credit:** Olist Brazilian E-Commerce Public Dataset
