1. Show all customer records

    `SELECT * FROM customers;`

2. Show total number of customers

    `SELECT count(*) FROM customers;`

3. Show transactions for Chennai market

    `SELECT * FROM transactions t 
    INNER JOIN markets m 
    ON t.market_code = m.markets_code
    WHERE m.markets_name = "Chennai";`

4. Show distinct product codes that were sold in chennai

    `SELECT DISTINCT t.product_code FROM transactions t 
	JOIN products p 
    ON t.product_code = p.product_code 
    INNER JOIN markets m 
    ON t.market_code = m.markets_code
    WHERE m.markets_name = "Chennai";`

5. Show transactions where currency is US dollars

    `SELECT * FROM transactions 
    WHERE currency="USD"`

6. Show transactions in 2020 join by date table

   ` SELECT t.*, d.* FROM transactions t
    INNER JOIN date d
    ON t.order_date=d.date 
    WHERE d.year=2020;`

7. Show total revenue in year 2020,

   ` SELECT SUM(t.sales_amount)
    FROM transactions t
    INNER JOIN date d
    ON t.order_date=d.date 
    where d.year=2020 and t.currency="INR\r" or t.currency="USD\r";`
	
8. Show total revenue in year 2020, January Month,

    `SELECT SUM(t.sales_amount) 
    FROM transactions t
    INNER JOIN date d
	ON t.order_date=d.date 
    WHERE d.year=2020 and d.month_name="January" and (t.currency="INR\r" or t.currency="USD\r");`

9. Show total revenue in year 2020 in Chennai

    `SELECT SUM(t.sales_amount) 
    FROM transactions t 
    INNER JOIN markets m
    ON t.market_code = m.markets_code
    INNER JOIN date d
    ON t.order_date=d.date 
    where d.year=2020 and m.markets_name="Chennai";`

