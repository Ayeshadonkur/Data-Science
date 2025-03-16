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
