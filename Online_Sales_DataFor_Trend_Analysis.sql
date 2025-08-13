CREATE TABLE Online_Sales(
	Invoice_ID VARCHAR(50) PRIMARY KEY,
	Branch CHAR(10),
	City VARCHAR(100),
	Product_line VARCHAR(200),
	Unit_price DECIMAL(10,2),
	Quantity INT,
	Tax_5 DECIMAL(10,2),
	Total_price	DECIMAL(10,2),
	Order_date DATE,
	Order_time TIME,
	Payment_method	VARCHAR(100),
	Costs DECIMAL(10,2),
	Gross_income DECIMAL(10,2),
	Rating NUMERIC(10,1)
);

COPY Online_Sales (Invoice_ID, Branch, City, Product_line, Unit_price, Quantity, Tax_5, Total_price, Order_date, Order_time, Payment_method, Costs, Gross_income, Rating)
FROM 'D:\Tasks By ElevateLabs\superSales.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM Online_Sales;

SELECT
	EXTRACT (Year FROM Order_date) AS Year,
	EXTRACT	(Month FROM Order_date) AS Month,
	COUNT (DISTINCT Invoice_Id) AS Total_Orders,
	SUM (Total_Price) AS Total_Revenue
FROM Online_Sales
GROUP BY year, Month
ORDER BY year, Month LIMIT 1;









