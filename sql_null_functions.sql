-- SQL NULL Functions 

-- 1. IS NULL
-- 2. IS NOT NULL
-- 3. NULL IF()


--------------------------------------------------------------------------------------------------

-- IS NULL:
-- employees table থেকে শুধুমাত্র সেই records দেখাবে,
-- যেসব employee-এর designation column-এ কোনো value নেই (NULL)।

SELECT * FROM employees WHERE designation IS NULL;


--------------------------------------------------------------------------------------------------

-- IS NOT NULL:
-- যেসব employee-এর designation column-এ কোনো value আছে,
-- শুধুমাত্র সেই records দেখাবে।

SELECT * FROM employees WHERE designation IS NOT NULL;


--------------------------------------------------------------------------------------------------

-- NULLIF():
-- salary column-এর value যদি 30000.00-এর সমান হয়,
-- তাহলে NULL return করবে।
-- আর salary-এর value 30000.00-এর সমান না হলে,
-- salary-এর original value return করবে।

SELECT full_name, NULLIF(salary,30000.00) FROM employees;


--------------------------------------------------------------------------------------------------
