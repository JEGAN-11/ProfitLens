-- KPI 1: Overall Business Health
SELECT 
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS profit_margin_pct
FROM sales_fact;

-- KPI 2: Profit Leakage Detection
SELECT 
    product_id,
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_fact
GROUP BY product_id, category
HAVING SUM(sales) > 1000 AND SUM(profit) <= 0
ORDER BY total_sales DESC;

-- KPI 3: Discount Impact
SELECT 
    discount,
    COUNT(*) AS order_count,
    ROUND(SUM(sales), 2) AS revenue,
    ROUND(SUM(profit), 2) AS profit
FROM sales_fact
GROUP BY discount
ORDER BY discount;

-- KPI 4: Regional Efficiency
SELECT 
    region,
    ROUND(SUM(sales), 2) AS revenue,
    ROUND(SUM(profit), 2) AS profit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS efficiency_score
FROM sales_fact
GROUP BY region
ORDER BY efficiency_score DESC;
