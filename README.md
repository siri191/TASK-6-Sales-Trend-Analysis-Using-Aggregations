# TASK-6-Sales-Trend-Analysis-Using-Aggregations
Sales Trend Analysis Using Aggregations Used PostgreSQL script for Creating Sales Trend Analysis using Aggregation

Created a Database as Online_Sales
Created Table with Invoice_ID, Branch, City, Product_line, Unit_price, Quantity, Tax_5, Total_price, Order_date, Order_time, Payment_method, costs, gross_income, Rating
Assigned Datatypes for each Column Data of Table
Imported Data Using COPY Command.
Used EXTRACT To Extract the Order_Date Column's Year & Month
Used COUNT & DISTINCT to have the Uniques Values in Invoice ID To Count as Total_Orders
Used SUM Aggregation to calculate Total_Revenue of the Orders.
Used GROUP BY for Year & Month to Group the Monthly & Yearly Sales & ORDER BY for to ensuring Results in Orderly Manner
Lastly Used LIMIT to Show the Top Sales Revenue.
