-- CREATE TABLE example_table(
--      id BIGSERIAL PRIMARY KEY, 
--     -- SERIAL (integer 1, 2, 3, ... height value 2.1BILLON) BIGSERIAL(64-BIT)  = SERIAL or BIGSERIAL its Auto INCREMENT
     
--      column1 BIGINT,
--       -- INTEGER  (integer 1, 2, 3, ... heigsht value 2.1BILLON) 
--       -- SMALLINT (32k) , BIGINT(Large integer )

--         column2 NUMERIC(10,2),
--         -- NUMERIC ,DECIMAL Financial data type (Exact numeric)  DECIMAL(precision, scale)  precision = total number of digits, scale = number of digits to the right of the decimal point
        
--         -- doshomik er pore koto ghor niye kaj korbo sheta 
--         column3 NUMERIC(10,4),
--         -- DOUBLE,REAL, FLOAT (Approximate numeric)  DOUBLE(precision, scale)  precision = total number of digits, scale = number of digits to the right of the decimal point
--         column4 TEXT,
--         -- CHAR(100) = variable length character string (100 characters)
--          -- VARCHAR(100) = variable length character string (100 characters)
--         -- TEXT = variable length character string (unlimited length)

--         column5 BOOLEAN,
--         -- True or False value (1 or 0)  BOOLEAN = True or False value (1 or 0) 

--         column6 TIMESTAMP,
       
--          -- DATE ONLY (YYYY-MM-DD)  DATE = YYYY-MM-DD  (Date only, no time)
--           -- TIME = TIME (HH:MM:SS)  TIME = HH:MM:SS (Time only, no date)
--           -- TIMESTAMP = YYYY-MM-DD HH:MM:SS (Date and time both)

--           column7 JSON,
--           -- JSON = JavaScript Object Notation (JSON)  JSON = JavaScript Object Notation (JSON) ->JSON text data (Textual data format for storing and transporting data)

--           -- JSONB = Binary JSON (JSONB)  JSONB = Binary JSON (JSONB) ->Binary format for storing JSON data (Faster than JSON text data) 

--           column8 TEXT[], 
--           -- Collection
--           -- ARRAY = Array data type (Array of values)  ARRAY = Array data type (Array of values)  ->Array of values (Can store multiple values in a single column)

--           column9 UUID
--           -- Automatically generate unique number
--           -- UUID = Universally Unique Identifier (UUID)  UUID = Universally Unique Identifier (UUID)  ->Universally Unique Identifier (UUID) (Unique identifier for a record)


-- );


-- --  Column Behaviour And Properties :

-- CREATE TABLE demo_table(
--   id SERIAL PRIMARY KEY, 
--   -- Must work like PRIMARY KEY + Auto Increment

--   full_name VARCHAR(50) NOT NULL,
--   -- VARCHAR(100) = variable length character string (100 characters) 
--   -- NOT NULL --> Required Field Validation = EMPTY value And null value not allowed (Must have a value)

--   email VARCHAR(50) UNIQUE NOT NULL,
--   -- Unique Field Validation
--   -- UNIQUE --> Unique Field Validation = Duplicate value not allowed (Must be unique)

--   phone_number VARCHAR(11),
--   -- VARCHAR(11) = variable length character string (11 characters)

--   age INT CHECK (age >= 18),
--   -- Validation condition = Custom validation (Must meet the condition)
--   -- CHECK --> Check Constraint = Custom validation (Must meet the condition)

--   is_active BOOLEAN DEFAULT TRUE,
--   -- DEFAULT value for the column (If no value is provided, the default value will be used)
--   -- Default Value = Default value for the column (If no value is provided, the default value will be used)

--   city VARCHAR(50) DEFAULT 'Dhaka',
--   -- DEFAULT value for the column (If no value is provided, the default value Dhaka will be used)
--   -- Default Value = Default value for the column (If no value is provided, the default value will be used)

--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   -- Current time and date automatically generated when a new record is created
--   -- DEFAULT value for the column (If no value is provided, the default value will be used)

--   profile1 JSONB DEFAULT '{}'::JSONB,
--   --JSONB DEFAULT VALUE = '{}'::JSONB  (Empty JSON object as default value for the column)

--   profile2 JSON DEFAULT '{}'::JSON,

--   --  profile JSON DEFAULT '{}'

--   -- EMPTY JSON object as default value for the column (If no value is provided, the default value will be used)
--   -- JSON = JavaScript Object Notation (JSON)  JSON = JavaScript Object Notation (JSON) ->JSON text data (Textual data format for storing and transporting data)

--  dress_color TEXT[] DEFAULT ARRAY[]::TEXT[],
--  -- DEFAULT []::TEXT[]  (Empty Array as default value for the column)
--   -- ARRAY = Array data type (Array of values)  ARRAY = Array data type (Array of values)  ->Array of values (Can store multiple values in a single column)
--   -- DEFAULT value for the column (If no value is provided, the default value will be used)

--   unique_number UUID DEFAULT gen_random_uuid() UNIQUE
--   -- Automatically generate unique number

-- );







-- Data insert into employee table with different data types

-- single data insert into employee table with different data types
/*
INSERT INTO employees (full_name,salary,date_of_joining)
VALUES ('Jannatul Nayeem',30000,'2026-01-15');
*/

-- Multiple data insert into employee table with different data types
 INSERT INTO employees (full_name,salary,date_of_joining)
 VALUES 
 ('Limon',30000,'2026-01-15'),
 ('Arham',40000,'2025-12-01'),
 ('Zunain',35000,'2026-02-20'),
 ('Curt Kobain',45000,'2025-11-10'),
 ('David Gilmore',32000,'2026-03-05');

-- Select all data from employee table with different data types
 SELECT * FROM employees;

--- Select specific data from employee table with different data types
SELECT full_name,salary FROM employees;

-- Select specific data from employee table with different data types with condition
-- 40000 er beshi salary thaka employee der name and salary show korbe!!!
 SELECT full_name,salary FROM employees WHERE salary > 40000;


--- Data Update single column in employee table with different data types
-- UPDATE employees 
 SET salary = 80000 WHERE id=3;

--- Data Update multiple column in employee table with different data types
-- UPDATE employees 
 SET salary = 90000,full_name = 'Limon' WHERE id=3;

-- Delete single data from employee table with different data types
 DELETE FROM employees WHERE id=10;

--- Delete all data from employee table with different data types
 DELETE FROM employees;

-- Turncate all data from employee table with different data types
-- turncate table = delete all data from table and reset identity column (auto increment) to 1
 TRUNCATE TABLE employees RESTART IDENTITY;



-------------------------------------------------------------------------------------------------------------



-- *** SQL String Manipulations & Formating  ***

-- SELECT * FROM employees;

-- ouery alias = column name change korar jonno use kora hoy

-- SQL String Manipulations & Formating  = SQL string functions use kore string data ke manipulate kora hoy 
-- LOWER() = string data ke lower case e convert kore
-- UPPER() = string data ke upper case e convert kore
-- CHAR_LENGTH() = string data er character length ber kore
-- LENGTH() = string data er byte length ber kore
-- REVERSE() = string data ke reverse kore
-- TRIM() = string data er leading and trailing spaces remove kore
-- LTRIM() = string data er leading spaces remove kore
-- RTRIM() = string data er trailing spaces remove kore 
-- (Both Side Trim - দুই পাশই ছাঁটা):
-- এটি লেখার বাম এবং ডান—দুই পাশেরই সব বাড়তি স্পেস একসাথে কেটে একদম পরিষ্কার করে দেবে।

-- CONCAT() = string data ke concatenate kore (string data ke join kore)

-- REPLACE() = string data er specific character ke replace kore
-- SUBSTRING() = string data er specific part ke ber kore




SELECT 

full_name,

REPLACE(full_name,'A','@') AS replaced_name,
SUBSTRING(full_name FROM 1 FOR 3) AS substring_name,


LOWER(full_name) AS lower_name,
UPPER(full_name) AS upper_name,
CHAR_LENGTH(full_name) AS char_l,
LENGTH(full_name) AS bytes_l,
REVERSE(full_name) AS reverse_name,

TRIM(full_name) AS trim_name,
LTRIM(full_name) AS ltrim_name,
RTRIM(full_name) AS rtrim_name,


CONCAT(full_name,'-Employee') AS concat_name,
CONCAT(full_name,'-', salary) AS salary_name,
CONCAT(full_name,'-', salary,'-', date_of_joining) AS salary_name_date


FROM employees;



-- *** SQL Date Manipulations & Formating  ***

-- TO_CHAR() = date data ke string e convert kore


SELECT

id,
date_of_joining, --YYYY-MM-DD

TO_CHAR(date_of_joining,'DD-MM-YYYY') AS dd_mm_yy, --DD-MM-YYYY
TO_CHAR(date_of_joining,'DD/MM/YYYY') AS iso_date, --DD/MM/YYYY  
TO_CHAR(date_of_joining,'DD Mon YYYY') AS short_month_date,  --DD Mon YYYY
TO_CHAR(date_of_joining,'DD Month YYYY') AS full_month, --full month ashbe
TO_CHAR(date_of_joining,'Day, DD Mon YYYY') AS full_readable -- 

FROM employees;


-------------------------------------------------------------------------------------------------------------


-- *** SQL Aggregate Functions  ***

-- SELECT * FROM employees;

-- MIN() = minimum value ber kore
-- MAX() = maximum value ber kore
-- AVG() = average value ber kore
-- SUM() = total value ber kore
-- COUNT() = total number of rows ber kore
-- DISTINCT = unique values ber kore
-- COUNT(DISTINCT) = unique values er total number ber kore
-- COUNT(DISTINCT salary)-এর কাজ: এটি ইউনিক বেতনগুলোর তালিকা না দেখিয়ে, টেবিলে মোট কয় ধরনের ইউনিক বেতন আছে তার সংখ্যা গণনা করে।



SELECT 

MIN(salary) AS min_salary,
MAX(salary) AS max_salary,
AVG(salary) AS avg_salary,
SUM(salary) AS total_salary,
COUNT(*) AS total_rows

FROM employees;


SELECT DISTINCT salary FROM employees;



SELECT

COUNT(DISTINCT salary) AS unique_salary


FROM employees;


-------------------------------------------------------------------------------------------------------------



-- *** SQL Mathematical Functions  ***

 -- ROUND() = Doshomiker pore .50 ba tar beshi thakle porer purno songkhay jabe, ar .50 er kom thakle ager purno songkhay thakbe (Ex: 30000.60 -> 30001, 30000.40 -> 30000)

-- ROUND() = decimal value ke round kore nearest integer e convert kore
-- ROUND .5 > 1 ghor barabe, .5 < 0 er kom hole 1 ghor komabe
-- ROUND() korle jodi doshomik er porer ghor .5 er beshi hole 1 ghor barabe, .5 er kom hole 1 ghor komabe.

 -- CEIL() / CEILING() = Doshomiker pore samanno kichu thakleo (.01 holeo) জোর kore uporer purno songkhay niye jabe (Ex: 30000.10 -> 30001)

-- CEIL() = decimal value ke round kore nearest integer e convert kore (Always round up)
-- CEIL() korle jodi doshomik er porer ghor .5 er beshi hole 1 ghor barabe, .5 er kom holeo 1 ghor barabe. Always round up.

-- FLOOR() = Doshomiker pore ja-i thakuk (.99 holeo) ta kete fele nicher/ager purno songkhay rakhe (Ex: 30000.99 -> 30000)

-- FLOOR() = decimal value ke round kore nearest integer e convert kore (Always round down)
-- FLOOR() = korle doshmik er pore jay thak ta bad pore jabe!


 --  Arithmetic Operations (Jog, Biyog, Gun, Bhag)

  -- Multiplication (*) = Mul salary-ke 2 diye gun kore dekhabe (Double salary)
   -- Addition (+) = Mul salary-r sathe 200 taka jog kore dekhabe (Bonus add)
   -- Subtraction (-) = Mul salary theke 200 taka biyog kore dekhabe (Penalty/Tax deduction)
   -- Division (/) = Mul salary-ke 200 diye bhag kore bhagfol dekhabe



SELECT

ROUND(salary) AS round_salary,
CEIL(salary) AS ceil_salary,
FLOOR(salary) AS floor_salary,


salary*2 AS salary_mul, 
salary+200 AS salary_add,
salary-200 AS salary_sub,
salary/200 AS salary_division

FROM employees;



-- Percentage Increase 


-- ============================================================================
-- *** 1. Percentage Increase & Decrease (শতকরা বাড়ানো এবং কমানোর হিসাব) ***
-- ============================================================================
/* 
   মনে রাখার শর্টকাট সূত্র (Math Formula):
   - মূল বেতন সবসময় 100% (বা 1.00) ধরা হয়।
   - 10% মানে হলো: 10 / 100 = 0.10
   - 15% মানে হলো: 15 / 100 = 0.15
   - 5%  মানে হলো: 5  / 100 = 0.05
*/

-- মূল বেতন (যেমন: 30000)

    -- [A] 10% Salary Increase (বেতন ১০% বাড়ানো):
    -- নিয়ম ১ (সরাসরি): 100% + 10% = 110% (অর্থাৎ 110 / 100 = 1.10 দিয়ে গুণ)
    -- নিয়ম ২ (ভেঙে লিখলে): salary + (salary * 0.10)
    -- উদাহরণ: 30000 * 1.10 = 33000 (3000 টাকা বেড়েছে)

    -- [B] 15% Salary Decrease (বেতন ১৫% কমানো):
    -- নিয়ম ১ (ভেঙে লিখলে): মূল বেতন - (মূল বেতনের ১৫%) = salary - (salary * 0.15)
    -- নিয়ম ২ (শর্টকাট): 100% - 15% = 85% থাকে, তাই সরাসরি (salary * 0.85) লিখলেও একই রেজাল্ট আসবে!
    -- উদাহরণ: 30000 - (30000 * 0.15) = 30000 - 4500 = 25500


SELECT

salary*1.10 AS salary_increase, -- 10% Increase mane holo 1.10 diye * dea
salary-(salary*0.15) AS salary_decrease -- 15% Decrease hobe

FROM employees;



-- ============================================================================
-- *** 2. POWER() Function (সংখ্যার বর্গ বা Power বের করা) ***
-- ============================================================================
-- ফর্মুলা: POWER(base_number, exponent) -> সংখ্যাটিকে ততবার নিজের সাথে গুণ করবে।
-- এখানে POWER(salary, 2) মানে হলো: salary * salary (অর্থাৎ Salary Square বা বর্গ)।
-- যদি POWER(salary, 3) দিতে, তবে: salary * salary * salary (Cube বা ঘন) হতো।
-- ছোট উদাহরণ: POWER(10, 2) = 10 * 10 = 100 | আর 30000 এর বর্গ = 900000000

SELECT

POWER(salary,2) AS power2_salary

FROM employees;



-- ============================================================================
-- *** 3. SQRT() Function (Square Root বা বর্গমূল বের করা) ***
-- ============================================================================
-- SQRT() হলো POWER(..., 2)-এর ঠিক উল্টো কাজ (রুট ওভার √)।
-- অর্থাৎ কোন সংখ্যাকে সেই সংখ্যা দিয়ে গুণ করলে মূল সংখ্যাটি পাওয়া যায় তা বের করে।
-- ছোট উদাহরণ: SQRT(100) = 10, SQRT(25) = 5 | আর SQRT(30000) = 173.205...


SELECT

SQRT(salary) AS sqrt_salary

FROM employees;



-- ============================================================================
-- *** 4. Tax Calculation (বেতন থেকে ৫% ট্যাক্স কাটার রিয়েল-লাইফ হিসাব) ***
-- ============================================================================
-- ধাপ ১ (salary_tax): 5% মানে 5 / 100 = 0.05। তাই মূল বেতনকে 0.05 দিয়ে গুণ করলে শুধু ট্যাক্সের টাকাটা বের হবে।
-- ধাপ ২ (salary_after_tax): মূল বেতন থেকে ওই ৫% ট্যাক্সের টাকা বিয়োগ করলে হাতে কত টাকা (Net Salary) পাবে তা বের হবে।
-- শর্টকাট টিপস: salary - (salary * 0.05) এর বদলে সরাসরি (salary * 0.95) লিখলেও ৫% কাটার পরের বেতন বের হয়ে যাবে!


SELECT

salary, -- মূল বেতন (Ex: 30000)
salary*0.05 AS salary_tax, -- ৫% ট্যাক্স কত টাকা? (Ex: 30000 * 0.05 = 1500 টাকা)
salary - (salary*0.05) AS salary_after_tax -- ট্যাক্স কাটার পর বেতন কত থাকবে? (Ex: 30000 - 1500 = 28500 টাকা)


FROM employees;





