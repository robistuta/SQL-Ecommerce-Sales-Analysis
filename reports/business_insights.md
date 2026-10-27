# E-Commerce Sales Analysis: Business Insights Report

## 1. Executive Summary

This report presents the findings of an SQL analysis conducted on the Brazilian E-Commerce Public Dataset by Olist.

The dataset contains approximately 100,000 orders placed between 2016 and 2018.

The purpose of this project was to analyze sales performance, customer purchasing behavior, product demand, delivery efficiency, and seasonal shopping patterns.

The analysis was performed using SQLite and DB Browser for SQLite.

SQL techniques included:

- INNER JOIN and LEFT JOIN
- GROUP BY and ORDER BY
- Aggregate functions
- Common Table Expressions (CTEs)
- Window functions
- Conditional aggregation
- Date filtering and manipulation

### Summary of Key Findings

| Business Metric | Result |
|---|---|
| Unique Customers | 96,096 |
| Repeat Customers | 2,997 |
| Repeat Purchase Rate | 3.12% |
| Average Order Value | R$ 160.99 |
| Highest Customer Spending | R$ 13,664.08 |
| Highest-Grossing Product Category | Health & Beauty |
| Health & Beauty Product Sales | R$ 1,258,681.34 |
| Highest Monthly Payments | November 2017 |
| November 2017 Payments | R$ 1,194,882.80 |
| November 2017 Orders | 7,544 |
| Late Delivery Rate | 8.11% |
| Black Friday Payments | R$ 179,200.03 |
| Black Friday Increase vs. Average Day | 411.66% |

These findings provide insights into customer behavior, revenue-related performance, product demand, and operational efficiency.

---

## 2. Business Objectives

The analysis was conducted to answer the following questions:

1. How does monthly sales performance change?
2. Which customers generate the highest payment values?
3. What percentage of customers make repeat purchases?
4. What is the average recorded payment value per order?
5. Which products generate the highest sales?
6. Which product categories contribute the most to sales?
7. How are orders distributed geographically?
8. What percentage of orders arrive late?
9. Which month generates the highest payment value?
10. How does Black Friday compare with normal shopping days?
11. Which product categories perform best during Black Friday?

---

# 3. Customer Behavior Analysis

## 3.1 Customer Repeat Purchase Rate

### Business Question

What percentage of customers placed more than one order?

### SQL Results

| Metric | Value |
|---|---|
| Total Unique Customers | 96,096 |
| Repeat Customers | 2,997 |
| One-Time Customers | 93,099 |
| Repeat Purchase Rate | 3.12% |
| One-Time Customer Rate | 96.88% |

### Business Insight

The analysis revealed that only 3.12% of customers placed more than one order during the dataset's observation period.

Approximately 96.88% of customers placed only one order.

This suggests that repeat purchasing was relatively uncommon during the period analyzed.

However, the dataset covers a limited historical period. Customers may have made additional purchases outside the available observation window.

Therefore, this result should not be interpreted as a complete measure of long-term customer retention.

### Business Recommendations

1. Investigate whether customers with positive shopping experiences are more likely to make repeat purchases.

2. Analyze customer reviews to understand potential satisfaction issues.

3. Examine whether delivery delays are associated with lower repeat purchasing.

4. Compare repeat purchase rates across product categories.

5. Consider targeted retention campaigns after evaluating customer purchasing behavior.

### Supporting Files

SQL Query:
`sql/04_customer_repeat_purchase.sql`

Results:
`results/customer_repeat_purchase_rate.csv`

---

## 3.2 Highest-Spending Customer

### Business Question

Which customers generated the highest recorded payment values?

### SQL Results

| Metric | Value |
|---|---|
| Highest Customer Spending | R$ 13,664.08 |
| Number of Orders | 1 |

### Business Insight

The highest-spending customer generated R$ 13,664.08 in recorded payments from a single order.

This demonstrates that customers can contribute substantial payment value without making repeat purchases.

However, a single high-value transaction does not establish long-term customer loyalty.

### Business Recommendations

1. Identify products frequently purchased in high-value orders.

2. Investigate the characteristics of high-spending customers.

3. Analyze whether high-value customers return for additional purchases.

4. Examine opportunities for personalized marketing campaigns.

5. Evaluate the relationship between order value and repeat purchasing.

### Supporting Files

SQL Query:
`sql/03_top_customers_analysis.sql`

Results:
`results/top_10_customers.csv`

---

# 4. Sales Performance Analysis

## 4.1 Average Order Value

### Business Question

What is the average recorded payment value per order?

### SQL Result

**Average Order Value: R$ 160.99**

### Business Insight

The average recorded payment value per order was R$ 160.99.

This provides a benchmark for understanding typical transaction values.

The calculation includes recorded payments, which may contain freight charges.

Therefore, this metric should not be interpreted as net product revenue.

### Business Recommendations

1. Investigate products frequently purchased together.

2. Explore product bundling opportunities.

3. Evaluate cross-selling opportunities.

4. Compare average order values across product categories.

5. Monitor average order value over time.

### Supporting Files

SQL Query:
`sql/05_average_order_value.sql`

Results:
`results/average_order_value.csv`

---

## 4.2 Monthly Sales Performance

### Business Question

Which month generated the highest recorded payment value?

### SQL Results

| Metric | Value |
|---|---|
| Highest Payment Month | November 2017 |
| Total Orders | 7,544 |
| Total Recorded Payments | R$ 1,194,882.80 |
| Average Payment per Order | R$ 158.39 |

### Business Insight

November 2017 generated the highest monthly recorded payment value in the analysis.

The month recorded 7,544 orders and approximately R$ 1.19 million in payments.

This indicates particularly strong purchasing activity during November 2017.

Further investigation revealed that Black Friday contributed substantially to the month's payment value.

### Business Recommendations

1. Investigate seasonal purchasing patterns.

2. Compare November sales with surrounding months.

3. Identify products responsible for strong monthly performance.

4. Evaluate potential seasonal promotional opportunities.

5. Prepare inventory and logistics capacity for periods of high demand.

### Supporting Files

SQL Query:
`sql/02_monthly_sales_analysis.sql`

Results:
`results/monthly_sales.csv`

---

# 5. Product Performance Analysis

## 5.1 Top-Selling Product

### Business Question

Which product recorded the highest sales volume?

### SQL Results

| Metric | Value |
|---|---|
| Units Sold | 488 |
| Total Product Sales | R$ 43,025.56 |
| Average Selling Price | R$ 88.17 |

### Business Insight

The highest-selling product recorded 488 units sold, generating R$ 43,025.56 in product sales.

This demonstrates that high-volume products can contribute substantially to overall sales performance.

However, high sales volume does not necessarily indicate high profitability.

Product cost information would be required to calculate profit margins.

### Business Recommendations

1. Monitor inventory levels for high-demand products.

2. Investigate seasonal changes in product demand.

3. Examine opportunities for cross-selling related products.

4. Compare product sales volume with sales value.

5. Evaluate profitability before increasing inventory investment.

### Supporting Files

SQL Query:
`sql/06_top_selling_products.sql`

Results:
`results/top_10_products.csv`

---

## 5.2 Product Category Performance

### Business Question

Which product category generated the highest overall product sales value?

### SQL Results

| Metric | Value |
|---|---|
| Category | Health & Beauty |
| Units Sold | 9,670 |
| Total Product Sales | R$ 1,258,681.34 |
| Average Sales per Unit | R$ 130.16 |

### Business Insight

Health & Beauty generated the highest overall product sales value in the analysis.

The category recorded 9,670 units sold and approximately R$ 1.26 million in product sales.

This indicates substantial demand for products in this category.

However, product sales values exclude freight and do not account for product costs or profit margins.

### Business Recommendations

1. Monitor inventory availability within Health & Beauty.

2. Identify the strongest-performing products within the category.

3. Investigate seasonal demand patterns.

4. Analyze customer purchasing behavior within the category.

5. Evaluate profitability before expanding product offerings.

### Supporting Files

SQL Query:
`sql/07_product_category_analysis.sql`

Results:
`results/top_10_categories.csv`

---

# 6. Geographic Sales Analysis

## 6.1 Orders by Customer State

### Business Question

How are customer orders distributed across Brazilian states?

### Analysis Method

Customer records were joined with order records using `customer_id`.

Orders were grouped by customer state and ranked by order volume.

### Business Insight

Geographic analysis helps identify regions with higher order volumes.

This information can support decisions about inventory distribution, delivery capacity, and regional marketing.

However, order volume alone does not indicate profitability or market potential.

### Business Recommendations

1. Identify states with the highest order volumes.

2. Compare regional order volumes with delivery performance.

3. Investigate whether delivery delays differ by state.

4. Evaluate regional demand before expanding logistics operations.

5. Consider population differences when comparing geographic markets.

### Supporting Files

SQL Query:
`sql/01_data_exploration.sql`

Results:
`results/orders_by_state.csv`

---

# 7. Delivery Performance Analysis

## 7.1 Late Delivery Rate

### Business Question

What percentage of delivered orders arrived after their estimated delivery dates?

### SQL Results

| Metric | Value |
|---|---|
| Total Delivered Orders | 96,470 |
| Late Deliveries | 7,826 |
| On-Time Deliveries | 88,644 |
| Late Delivery Rate | 8.11% |
| On-Time Delivery Rate | 91.89% |

### Business Insight

The analysis revealed that 91.89% of delivered orders arrived on or before their estimated delivery dates.

However, 7,826 orders were delivered late, representing 8.11% of the delivered orders analyzed.

This identifies an opportunity to investigate delivery efficiency.

Whether this rate meets business expectations would depend on the company's delivery performance targets.

### Business Recommendations

1. Identify states experiencing higher late delivery rates.

2. Investigate delivery delays by geographic region.

3. Analyze whether certain product categories experience more delays.

4. Examine the relationship between delivery performance and customer reviews.

5. Establish delivery performance targets and monitor them regularly.

### Supporting Files

SQL Query:
`sql/08_delivery_performance.sql`

Results:
`results/delivery_performance.csv`

---

# 8. Black Friday Sales Analysis

## 8.1 Black Friday Performance

### Business Question

How much did Black Friday contribute to November 2017 purchasing activity?

### SQL Results

| Metric | Value |
|---|---|
| Black Friday Date | November 24, 2017 |
| Black Friday Orders | 1,176 |
| Black Friday Payments | R$ 179,200.03 |
| November 2017 Orders | 7,544 |
| November 2017 Payments | R$ 1,194,882.80 |

### Calculated Contributions

Black Friday accounted for approximately:

- 15.59% of November's orders.
- 15.00% of November's recorded payments.

### Business Insight

Black Friday represented a substantial portion of November 2017 purchasing activity.

A single day generated approximately 15% of the month's recorded payments.

This suggests that major shopping events may be associated with increased customer purchasing activity.

However, additional evidence would be required to determine whether promotional campaigns directly caused the increase.

### Business Recommendations

1. Investigate seasonal shopping trends.

2. Prepare inventory for potential demand increases.

3. Evaluate promotional strategies during major shopping events.

4. Monitor delivery capacity during high-demand periods.

5. Analyze customer purchasing behavior during promotional events.

### Supporting Files

SQL Query:
`sql/10_november_sales_analysis.sql`

Results:
`results/november_daily_sales.csv`

---

## 8.2 Black Friday Compared With Other November Days

### Business Question

How did Black Friday payment activity compare with an average non-Black-Friday day in November?

### SQL Results

| Metric | Value |
|---|---|
| Average Payments on Other November Days | R$ 35,023.54 |
| Black Friday Payments | R$ 179,200.03 |
| Percentage Increase | 411.66% |

### Business Insight

Black Friday generated approximately 5.12 times the average daily payment value of other November days.

Recorded payments were approximately 411.66% higher than the average non-Black-Friday day.

This indicates a substantial concentration of purchasing activity during the shopping event.

The comparison does not establish that promotions caused the increase.

### Business Recommendations

1. Investigate the impact of major shopping events on purchasing activity.

2. Examine product demand during Black Friday.

3. Evaluate inventory readiness for seasonal sales peaks.

4. Compare event-day performance across multiple years.

5. Investigate operational challenges during periods of high order volume.

### Supporting Files

SQL Query:
`sql/11_black_friday_comparison.sql`

Results:
`results/black_friday_comparison.csv`

---

## 8.3 Black Friday Product Category Performance

### Business Question

Which product category generated the highest product sales value during Black Friday 2017?

### SQL Results

| Metric | Value |
|---|---|
| Category | Bed, Bath & Table |
| Units Sold | 195 |
| Total Product Sales | R$ 17,875.03 |
| Average Sales per Unit | R$ 91.67 |

### Business Insight

Bed, Bath & Table generated the highest product sales value on Black Friday 2017.

The category recorded 195 units sold, generating R$ 17,875.03 in product sales.

Interestingly, Health & Beauty was the highest-grossing category overall, while Bed, Bath & Table ranked first during Black Friday.

This suggests that category performance may vary during major shopping events.

### Business Recommendations

1. Compare product category performance across normal and promotional periods.

2. Investigate demand for Bed, Bath & Table products during major shopping events.

3. Monitor inventory availability for seasonal high-demand categories.

4. Examine whether category rankings differ across multiple years.

5. Evaluate promotional opportunities based on verified purchasing patterns.

### Supporting Files

SQL Query:
`sql/12_black_friday_product_categories.sql`

Results:
`results/black_friday_product_categories.csv`

---

# 9. Monthly Payment Growth Analysis

## Business Question

How did recorded payment values change from month to month?

### Analysis Method

Monthly payment values were calculated using SQL aggregation.

The `LAG()` window function was used to retrieve the previous month's payment value.

Month-over-month growth was calculated as:

Growth Rate (%) =
((Current Month Payments - Previous Month Payments)
 / Previous Month Payments) * 100

### Business Insight

Month-over-month analysis helps identify periods of increasing or decreasing payment activity.

This can support seasonal planning and performance monitoring.

However, incomplete months at the beginning and end of the dataset may produce misleading growth percentages.

### Business Recommendations

1. Compare growth rates across complete months.

2. Investigate months with unusually high or low growth.

3. Examine whether order volume explains changes in payment values.

4. Analyze seasonal purchasing patterns.

5. Monitor monthly performance using consistent reporting periods.

### Supporting Files

SQL Query:
`sql/09_monthly_revenue_growth.sql`

Results:
`results/monthly_revenue_growth.csv`

---

# 10. Overall Business Recommendations

Based on the SQL analysis, the following areas deserve further investigation.

## Recommendation 1: Investigate Customer Retention

The observed repeat purchase rate was 3.12%.

The company should investigate customer satisfaction, repeat purchasing behavior, and possible retention opportunities.

## Recommendation 2: Prepare for Seasonal Demand

Black Friday generated substantially higher payment values than other November days.

The company should investigate seasonal demand patterns and evaluate inventory and logistics readiness for high-volume shopping periods.

## Recommendation 3: Monitor High-Demand Product Categories

Health & Beauty generated the highest overall product sales value.

Bed, Bath & Table led product sales during Black Friday.

The company should investigate category-specific demand patterns before making inventory decisions.

## Recommendation 4: Improve Delivery Performance

Approximately 8.11% of delivered orders arrived after their estimated delivery dates.

The company should identify potential causes of delivery delays and evaluate opportunities to improve operational performance.

## Recommendation 5: Monitor Transaction Values

The average recorded payment value per order was R$ 160.99.

The company should monitor this metric alongside order volume, customer retention, and product category performance.

---

# 11. Project Limitations

Several limitations should be considered when interpreting the findings.

### Historical Data

The dataset contains historical transactions from 2016 to 2018.

Findings may not represent current e-commerce purchasing behavior.

### Limited Customer Observation Period

Customers may have made additional purchases outside the available observation period.

Therefore, the observed repeat purchase rate does not represent complete customer lifetime retention.

### Payment Values vs. Revenue

Recorded payment values may include freight charges.

They should not automatically be interpreted as net revenue or company profit.

### Product Profitability

Product sales calculations do not account for product costs, operating expenses, or profit margins.

### Black Friday Analysis

The association between Black Friday and increased purchasing activity does not establish causation.

Further analysis would be needed to measure the impact of promotional campaigns.

### Delivery Performance

Delivery performance was evaluated using estimated delivery dates.

The analysis does not establish whether performance met company targets.

### Incomplete Monthly Data

Some months contain incomplete observations.

These periods should be treated carefully when interpreting monthly growth.

---

# 12. Conclusion

This SQL project analyzed customer behavior, sales performance, product demand, delivery efficiency, and Black Friday purchasing patterns using the Brazilian E-Commerce Public Dataset by Olist.

The analysis produced several important findings:

1. Only 3.12% of customers placed repeat orders during the observation period.

2. The average recorded payment value per order was R$ 160.99.

3. Health & Beauty generated the highest overall product sales value at approximately R$ 1.26 million.

4. Approximately 8.11% of delivered orders arrived after their estimated delivery dates.

5. November 2017 recorded the highest monthly payment value, generating approximately R$ 1.19 million.

6. Black Friday generated R$ 179,200.03 in payments, approximately 411.66% above the average of other November days.

7. Bed, Bath & Table generated the highest product sales value during Black Friday.

These findings demonstrate how SQL can be used to answer business questions and support data-driven decision-making.

The project also highlights opportunities for further investigation into customer retention, seasonal demand, product performance, and delivery operations.

---

# 13. Tools and Technologies

- SQLite
- DB Browser for SQLite
- SQL
- Microsoft Excel
- GitHub

## SQL Techniques Demonstrated

- SELECT
- WHERE
- INNER JOIN
- LEFT JOIN
- GROUP BY
- ORDER BY
- COUNT
- SUM
- AVG
- CASE
- Common Table Expressions (CTEs)
- Window Functions
- Date Functions
- Conditional Aggregation

---

# 14. Dataset Source

**Dataset:** Brazilian E-Commerce Public Dataset by Olist

**Source:** Kaggle

https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

# 15. Project Files

All SQL queries are available in the `sql/` folder.

Exported analysis results are available in the `results/` folder.

The main project overview is available in `README.md`.

---

**Project:** E-Commerce Sales Performance and Customer Behavior Analysis

**Database:** SQLite

**Project Type:** Data Analytics Portfolio Project
