# E-Commerce Business Insights

## Executive Summary
[Write 2-3 sentences summarizing your main findings]

## Key Findings

### 1. Sales Performance
The SQL analysis examined monthly order
volumes and recorded payment values.

Key findings:

- Highest payment month: [2017-11]
- Payment value: [R$1194882.8]
- Total orders that month: [7544]

Business Insight:

The analysis identified the month with
the highest transaction payment value.
Further analysis can help determine
whether seasonality or promotional
activities contributed to this result.

### Average Order Value Analysis

#### Business Question
What is the average recorded payment
value per order?

#### SQL Analysis Result

Average Order Value: R$ 160.99

#### Business Insight

The analysis revealed that the average
recorded payment value per order was
R$ 160.99.

This metric provides a benchmark for
understanding customer transaction values.

The calculation includes recorded payments,
which may contain freight charges.

#### Business Recommendations

1. Investigate product combinations
   frequently purchased together.

2. Analyze whether larger orders
   are associated with particular
   product categories.

3. Explore opportunities for
   cross-selling and product bundling.

4. Monitor average order value
   alongside customer retention.
   
### 2. Geographic Insights
- Top state by orders: [state] ([number] orders)
- [Additional geographic insight]

### 3. Customer Behavior
### Customer Spending Analysis

SQL analysis was conducted to identify
the highest-spending customers on the
e-commerce platform.

#### Key Findings

- Highest customer spending: R$ 13,664.08
- Number of orders placed: 1
- Analysis method: SQL JOINs, GROUP BY,
  COUNT DISTINCT, and SUM.

#### Business Insight

The highest-spending customer generated
R$ 13,664.08 in recorded payments from
a single order.

This finding demonstrates that high-value
transactions can contribute substantially
to sales even without repeat purchases.

#### Business Recommendation

The company should investigate purchasing
patterns among high-value customers.

Potential opportunities include:

- Identifying products associated with
  high-value purchases.
- Examining repeat purchase behavior.
- Developing retention strategies for
  customers with high spending potential.

### Customer Repeat Purchase Analysis

#### Business Question
What percentage of customers placed
more than one order?

#### SQL Analysis Results

- Total unique customers: 96,096
- Repeat customers: 2,997
- Repeat purchase rate: 3.12%
- One-time customers: 93,099
- One-time customer rate: 96.88%

#### Key Business Insight

The analysis revealed that only 3.12%
of customers placed more than one order
during the dataset's observation period.

Approximately 96.88% of customers
made only one purchase.

This indicates that repeat purchasing
was relatively uncommon during the
period analyzed.

#### Business Recommendations

1. Investigate factors influencing
   repeat purchasing behavior.

2. Analyze customer satisfaction
   and delivery experience.

3. Examine whether repeat purchase
   behavior varies by product category.

4. Explore targeted customer retention
   campaigns.

5. Monitor repeat purchase rates
   over longer observation periods.

### 4. Product Performance
## Product Performance Analysis

### Business Question
Which product has the highest sales volume?

### SQL Analysis Results

- Highest product sales volume: 488 units
- Total product sales: R$ 43,025.56
- Average selling price: R$ 88.17

### Business Insight

The best-selling product recorded 488 units
sold, generating R$ 43,025.56 in sales.

This indicates strong demand for the product
during the period analyzed.

The average selling price was approximately
R$ 88.17 per unit.

### Business Recommendations

1. Monitor inventory levels for popular products.
2. Investigate seasonal demand patterns.
3. Examine profit margins for high-volume products.
4. Explore cross-selling opportunities.

### Product Category Performance Analysis

#### Business Question
Which product categories generate
the highest sales?

#### SQL Analysis Results

- Top Category: Health & Beauty
- Units Sold: 9,670
- Total Product Sales: R$ 1,258,681.34
- Average Sales per Unit: R$ 130.16

#### Key Business Insight

The Health & Beauty category generated
the highest product sales value,
reaching approximately R$ 1.26 million.

A total of 9,670 units were sold,
demonstrating strong customer demand
within this category.

#### Business Recommendations

1. Monitor inventory levels for
   popular Health & Beauty products.

2. Investigate seasonal purchasing
   patterns within the category.

3. Analyze customer purchasing
   behavior to identify opportunities
   for cross-selling.

4. Evaluate product profitability
   before increasing investment
   in the category.
### 5. Product Insights
- [Category/product finding once you analyze products]

###6 Delivery Performance

- Delivered orders analyzed: 96,470
- Late deliveries: 7,826
- Late delivery rate: 8.11%
- On-time deliveries: 88,644
- On-time delivery rate: 91.89%

The analysis found that 8.11% of delivered orders arrived after their estimated delivery date. This identifies an opportunity to investigate delivery performance by location, carrier, or product category.
## Recommendations

1. **Marketing**: [Your recommendation based on data]
2. **Operations**: [Your recommendation]
3. **Customer Retention**: [Your recommendation]

## SQL Queries Used
- See `sql/` folder for complete SQL analysis
- See `results/` folder for exported data




