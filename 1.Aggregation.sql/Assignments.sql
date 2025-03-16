--Retrieve the current system date.
select current_DATE from dual;

-- Retrieve the current timestamp including fractional seconds.
select current_timestamp from dual;

-- Get the database time zone.
select dbtimezone from dual;

-- Get the session time zone.
select systimestamp from dual;

-- Find the next week’s date from SYSDATE.
select sysdate,sysdate+7 from dual;

-- Subtract 17 days from SYSDATE.
select sysdate,sysdate-17 from dual;

-- Retrieve the TIME_ID and calculate TIME_ID + 7 for all sales transactions.
select TIME_ID,TIME_ID + 7 from sh.sales;

-- Add 2 hours to the SYSTIMESTAMP.
select systimestamp,systimestamp+interval '2' hour from sh.sales;

-- Add 2 minutes to the SYSTIMESTAMP.
select systimestamp,systimestamp+interval '2' minute from sh.sales;

-- Add 2 seconds to the SYSTIMESTAMP.
select systimestamp,systimestamp+interval '2' second from sh.sales;

-- Add 2 years to the SYSTIMESTAMP.
select systimestamp,systimestamp+interval '2' year from sh.sales;

-- Add 2 months to the SYSTIMESTAMP.
select systimestamp,systimestamp+interval '2' month from sh.sales;

-- Add 2 days and 4 hours to SYSTIMESTAMP.
select systimestamp,systimestamp+interval '2' day+interval '4' hour from sh.sales;

-- Extract year, month, and day from the TIME_ID column.
select TIME_ID,extract (year from TIME_ID)as year,extract(month from TIME_ID)as month,extract(day from TIME_ID)as day from sh.sales group by TIME_ID;

-- Find the last day of the month for each TIME_ID
SELECT TIME_ID, LAST_DAY(TIME_ID) AS LAST_DAY_OF_MONTH FROM sh.sales

--Retrieve all records from the sales.sh table.
select * from sh.sales;

-- Get the total number of sales transactions recorded.
SELECT COUNT(*) FROM sh.sales;

-- Retrieve unique product IDs from the sales.sh table
select distinct prod_id from sh.sales;

-- Get all sales details where the quantity sold is more than 5.
select * from sh.sales where QUANTITY_SOLD>5;

-- Find the total revenue by multiplying price and quantity for all sales.
SELECT sum(QUANTITY_SOLD * AMOUNT_SOLD)as TOTAL_REVENUE FROM SH.SALES;

-- Find the average sale amount per transaction.
SELECT AVG(AMOUNT_SOLD) FROM SH.SALES;

-- Retrieve the top 5 highest sales transactions by amount.
SELECT AMOUNT_SOLD FROM SH.SALES ORDER BY AMOUNT_SOLD DESC;

-- Retrieve all sales made for a specific product ID (P1001).
SELECT PROD_ID FROM SH.SALES WHERE PROD_ID = '40'

-- Count the number of transactions per product.
SELECT PROD_ID, COUNT(*) FROM SH.SALES GROUP BY PROD_ID;

-- Find the total number of unique customers who made purchases.
SELECT COUNT(DISTINCT CUST_ID) FROM SH.SALES

--Retrieve all sales transactions that occurred in the last 30 days.
SELECT * FROM SH.SALES WHERE TIME_ID>=SYSDATE-INTERVAL '30' DAY;

-- Extract the year from the sales date column.
SELECT TIME_ID,extract(year from TIME_ID) from sh.sales group by TIME_Id;

-- Extract the month from the sales date column.
SELECT TIME_ID,extract(month from TIME_ID) from sh.sales group by TIME_Id;

-- Find the total sales for each month.
SELECT TIME_ID,extract(year from TIME_ID),extract(month from TIME_ID),extract(day from TIME_ID) from sh.sales group by TIME_Id;

-- Retrieve sales records for transactions that occurred on weekends.
SELECT * FROM sh.sales WHERE TO_CHAR(time_id, 'DY') IN ('SAT', 'SUN');

-- Find the first and last recorded sales transaction dates.
select max(TIME_ID)as first, min(TIME_ID)as last from sh.sales;

-- Retrieve sales transactions that happened on a specific date ('2024-03-01').
select * from sh.sales where time_id like '1/3/2024%';

-- Count the number of sales transactions that happened in the last 7 days.
SELECT * FROM sh.sales WHERE time_id >= SYSDATE - interval '30' day;

-- Retrieve sales that occurred during a specific time range (09:00 AM - 12:00 PM).
SELECT * 
FROM sh.sales 
WHERE TO_CHAR(time_id, 'HH24:MI:SS') BETWEEN '09:00:00' AND '12:00:00';

-- Get the difference in days between the first and the last transaction in the table.
select max(time_id)-min(TIME_ID) from sh.sales;



