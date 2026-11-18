-- ============================================
-- SQL NUMBER FORMATTING FUNCTIONS
-- ============================================



-- ============================================
-- Decimal Round -- ROUND():
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

-- ROUND() vs TRUNC()
-- Function	Input	    Result
-- ROUND(1234.345678, 2)	1234.345678	1234.35
-- TRUNC(1234.345678, 2)	1234.345678	1234.34

--মনে রাখবে:
-- ROUND() → Decimal value round করে।
-- TRUNC() → অতিরিক্ত decimal digits কেটে বাদ দেয়, rounding করে না।



-- ============================================
-- ABSOLUTE VALUE
-- ============================================

-- ABS():
-- কোনো numeric value-এর absolute value (পরম মান) return করে।
-- অর্থাৎ, negative number-কে positive number-এ রূপান্তর করে
-- এবং positive number-এর value অপরিবর্তিত রাখে।
--
-- Syntax: ABS(number)
-- number = যে সংখ্যাটির absolute value বের করতে হবে।
--
-- Example:
-- -500-এর absolute value হলো 500।
-- Result: 500

SELECT ABS(-500);

-- Negative number: -500 থেকে 500 return করবে।
SELECT ABS(-500);

-- Positive number: 500 অপরিবর্তিত থাকবে।
SELECT ABS(500);

-- Zero: 0 অপরিবর্তিত থাকবে।
SELECT ABS(0);




-- ============================================
-- REMAINDER (ভাগশেষ) MOD() 
-- ============================================

-- MOD():
-- কোনো একটি সংখ্যাকে অন্য একটি সংখ্যা দিয়ে ভাগ করার পর
-- যে ভাগশেষ (Remainder) অবশিষ্ট থাকে, তা return করে।
--
-- Syntax: MOD(dividend, divisor)
-- dividend = যে সংখ্যাটিকে ভাগ করা হবে।
-- divisor  = যে সংখ্যা দিয়ে ভাগ করা হবে।
--
-- Example:
-- 10 কে 3 দিয়ে ভাগ করলে ভাগফল 3 এবং ভাগশেষ 1 হবে।
-- Result: 1

SELECT MOD(10, 3);


-- 10 কে 3 দিয়ে ভাগ করলে ভাগশেষ 1।
SELECT MOD(10, 3);

-- 15 কে 5 দিয়ে ভাগ করলে কোনো ভাগশেষ থাকবে না।
SELECT MOD(15, 5);

-- 17 কে 4 দিয়ে ভাগ করলে ভাগশেষ 1।
SELECT MOD(17, 4);



-- ============================================
-- COMMA FORMATTING - TO_CHAR() 
-- ============================================

-- TO_CHAR() - Comma Formatting:
-- কোনো numeric value-কে নির্দিষ্ট format অনুযায়ী
-- comma separator ব্যবহার করে formatted text (VARCHAR) হিসেবে return করে।
--
-- Syntax: TO_CHAR(number, format)
-- number = যে সংখ্যাটিকে format করতে হবে।
-- format = সংখ্যাটি কীভাবে display হবে তার format pattern।
--
-- Example:
-- 1234567.89 সংখ্যাটিকে comma separator দিয়ে
-- 2 decimal places সহ display করবে।
-- Result: 1,234,567.89

SELECT TO_CHAR(1234567.89, '9,999,999.99');


-- ============================================
-- TO_CHAR() - CURRENCY FORMATTING
-- ============================================

-- TO_CHAR() - Currency Formatting:
-- কোনো numeric value-কে নির্দিষ্ট currency symbol ব্যবহার করে
-- formatted text (VARCHAR) হিসেবে return করে।
--
-- Syntax: TO_CHAR(number, currency_format)
-- number          = যে সংখ্যাটিকে format করতে হবে।
-- currency_format = currency symbol এবং digit-এর format pattern।
--
-- Example:
-- 55000 সংখ্যাটিকে Dollar ($) symbol সহ display করবে।
-- Result: $55,000

SELECT TO_CHAR(55000, '$99,999');




