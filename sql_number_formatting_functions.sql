-- SQL Fumber Formatting_function

-- Decimal Round

-- ============================================
-- SQL NUMBER FORMATTING FUNCTIONS
-- ============================================

-- ROUND():
-- কোনো numeric value-কে নির্দিষ্ট সংখ্যক decimal places পর্যন্ত
-- round করে ফলাফল return করে।
--
-- Syntax: ROUND(number, decimal_places)
-- number         = যে সংখ্যাটিকে round করতে হবে।
-- decimal_places = দশমিকের পরে কয়টি digit রাখতে হবে।


-- Example 1:
-- 1234.345678 সংখ্যাটিকে দশমিকের পর 2 ঘর পর্যন্ত round করবে।
-- Result: 1234.35

SELECT ROUND(1234.345678, 2);


-- Example 2:
-- employees table-এর salary column-এর প্রতিটি value-কে
-- দশমিকের পর 4 ঘর পর্যন্ত round করে দেখাবে।
-- এখানে মূল salary column-এর কোনো data পরিবর্তন হবে না।

SELECT ROUND(salary, 4) AS rounded_salary FROM employees;


-- Query	
-- ROUND(1234.345678, 2) -->	2 decimal places পর্যন্ত round
-- ROUND(salary, 4) -->	Salary-কে 4 decimal places পর্যন্ত round
--ROUND(salary, 0) -->	পূর্ণসংখ্যায় round