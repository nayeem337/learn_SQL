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



-- ============================================
-- SQL NUMBER FORMATTING FUNCTIONS
-- NEAREST INTEGER
-- ============================================

-- CEIL() / CEILING():
-- কোনো decimal number-কে তার সমান বা তার চেয়ে বড়
-- সবচেয়ে কাছের পূর্ণসংখ্যায় (Integer) round করে।
--
-- Example:
-- 10.2 এর সমান বা তার চেয়ে বড় নিকটতম পূর্ণসংখ্যা হলো 11।
-- Result: 11

SELECT CEIL(10.2);


-- FLOOR():
-- কোনো decimal number-কে তার সমান বা তার চেয়ে ছোট
-- সবচেয়ে কাছের পূর্ণসংখ্যায় নামিয়ে আনে।
--
-- Example:
-- 10.7 এর সমান বা তার চেয়ে ছোট নিকটতম পূর্ণসংখ্যা হলো 10।
-- Result: 10

SELECT FLOOR(10.7);

--Function	কাজ  Example	  Result
--CEIL()	উপরের পূর্ণসংখ্যায় নেয়	10.2	11
--FLOOR()	নিচের পূর্ণসংখ্যায় নেয়	10.7	10



-- ============================================
-- SQL NUMBER FORMATTING FUNCTIONS
-- DECIMAL TRUNCATION
-- ============================================

-- TRUNC():
-- কোনো decimal number-এর দশমিকের পর নির্দিষ্ট সংখ্যক digit রেখে
-- বাকি digit-গুলো বাদ দিয়ে দেয়।
-- এখানে কোনো rounding করা হয় না।
--
-- Syntax: TRUNC(number, decimal_places)
-- number         = যে সংখ্যাটির decimal part truncate করতে হবে।
-- decimal_places = দশমিকের পরে কয়টি digit রাখতে হবে।
--
-- Example:
-- 1234.345678 থেকে দশমিকের পর 2টি digit (34) রাখা হবে।
-- বাকি digit (5678) বাদ দেওয়া হবে।
-- Result: 1234.34

SELECT TRUNC(1234.345678, 2);

--ROUND() vs TRUNC()
--Function	Input	    Result
ROUND(1234.345678, 2)	1234.345678	1234.35
TRUNC(1234.345678, 2)	1234.345678	1234.34

--মনে রাখবে:
-- ROUND() → Decimal value round করে।
-- TRUNC() → অতিরিক্ত decimal digits কেটে বাদ দেয়, rounding করে না।


