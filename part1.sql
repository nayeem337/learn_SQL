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