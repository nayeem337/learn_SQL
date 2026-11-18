-- ==========================================
-- SQL Array Functions
-- ==========================================


-- String এবং Integer Array
-- Array হলো এমন একটি ডেটা স্ট্রাকচার যেখানে একটি
-- Array-এর মধ্যে একই ধরনের একাধিক Value সংরক্ষণ করা যায়।


-- Integer Array
-- এখানে ১ থেকে ৬ পর্যন্ত একাধিক Integer Value
-- একটি Array-এর মধ্যে সংরক্ষণ করা হয়েছে।

SELECT ARRAY[1, 2, 3, 4, 5, 6];


-- String Array
-- এখানে HTML, CSS এবং JavaScript-এর মতো একাধিক String Value
-- একটি Array-এর মধ্যে সংরক্ষণ করা হয়েছে।

SELECT ARRAY['HTML', 'CSS', 'JavaScript'];

-- ********
-- Mixed Data Type Array
-- একটি Array-এর মধ্যে ভিন্ন Data Type-এর Value সরাসরি
-- একসাথে রাখা যায় না, যদি তাদের মধ্যে উপযুক্ত Common Data Type না থাকে।
-- তাই নিচের Query-তে PostgreSQL সাধারণত Error দেখাবে।

SELECT ARRAY['JS', 1, 2, 3, 4, 5, 6];  

-- ********














-- ==========================================
-- Access Array Element
-- ==========================================

-- Array-এর প্রতিটি Element-এর নির্দিষ্ট একটি Position বা Index থাকে।
-- PostgreSQL Array-এর Index সাধারণত 1 থেকে শুরু হয়। 1,2,3.......
-- নির্দিষ্ট Index Number ব্যবহার করে Array থেকে কোনো Element পাওয়া যায়।


-- Accessing the 3rd Element
-- এখানে [3] ব্যবহার করে Array-এর ৩ নম্বর Position-এর Value পাওয়া হয়েছে।
-- Result: JavaScript

SELECT (ARRAY['HTML', 'CSS', 'JavaScript'])[3];


-- Accessing a Non-Existing Element
-- এখানে Array-তে মোট ৩টি Element রয়েছে।
-- তাই [4] ব্যবহার করে ৪ নম্বর Element Access করার চেষ্টা করা হয়েছে।
-- নির্দিষ্ট Position-এ কোনো Element না থাকলে PostgreSQL NULL Return করে।

SELECT (ARRAY['HTML', 'CSS', 'JavaScript'])[4];


-- ==========================================
-- Array Length
-- ==========================================

-- ARRAY_LENGTH() Function ব্যবহার করে Array-এর নির্দিষ্ট
-- Dimension-এ মোট কতগুলো Element রয়েছে তা জানা যায়।


-- Syntax:
-- ARRAY_LENGTH(Array, Dimension)


-- Finding Array Length
-- প্রথম Parameter হিসেবে Array দেওয়া হয়েছে।
-- দ্বিতীয় Parameter 1 দিয়ে Array-এর প্রথম Dimension বোঝানো হয়েছে।
-- এটি একটি Single-Dimensional Array হওয়ায় Dimension হিসেবে 1 ব্যবহার করা হয়েছে।
-- Result: 3

SELECT ARRAY_LENGTH(ARRAY['HTML', 'CSS', 'JavaScript'], 1);





-- ==========================================
-- ARRAY_APPEND()
-- ==========================================

-- ARRAY_APPEND() Function ব্যবহার করে একটি Array-এর শেষে
-- নতুন একটি Element যোগ করা যায়।

-- Syntax:
-- ARRAY_APPEND(Array, New_Element)

-- এখানে 'Database' Element-টি Array-এর শেষে যোগ করা হয়েছে।
-- Result: {HTML,CSS,JavaScript,Database}

SELECT ARRAY_APPEND(ARRAY['HTML', 'CSS', 'JavaScript'], 'Database');


-- ==========================================
-- ARRAY_PREPEND()
-- ==========================================

-- ARRAY_PREPEND() Function ব্যবহার করে একটি Array-এর শুরুতে
-- নতুন একটি Element যোগ করা যায়।

-- Syntax:
-- ARRAY_PREPEND(New_Element, Array)

-- এখানে 'Database' Element-টি Array-এর শুরুতে যোগ করা হয়েছে।
-- Result: {Database,HTML,CSS,JavaScript}

SELECT ARRAY_PREPEND('Database', ARRAY['HTML', 'CSS', 'JavaScript']);


-- ==========================================
-- ARRAY_REMOVE()
-- ==========================================

-- ARRAY_REMOVE() Function ব্যবহার করে একটি Array থেকে
-- নির্দিষ্ট Value-এর সবগুলো Element সরিয়ে ফেলা যায়।

-- Syntax:
-- ARRAY_REMOVE(Array, Value)

-- এখানে Array থেকে 'CSS' Value-টি সরিয়ে ফেলা হয়েছে।
-- Result: {HTML,JavaScript}

SELECT ARRAY_REMOVE(ARRAY['HTML', 'CSS', 'JavaScript'], 'CSS');


-- ==========================================
-- ARRAY_POSITION()
-- ==========================================

-- ARRAY_POSITION() Function ব্যবহার করে একটি Array-এর মধ্যে
-- নির্দিষ্ট Value কোন Position-এ রয়েছে তা জানা যায়।
-- PostgreSQL Array-এর Position সাধারণত 1 থেকে শুরু হয়।
-- Value খুঁজে না পাওয়া গেলে NULL Return করে।

-- Syntax:
-- ARRAY_POSITION(Array, Search_Element)

-- এখানে 'HTML' Element-টি Array-এর প্রথম Position-এ রয়েছে।
-- Result: 1

SELECT ARRAY_POSITION(ARRAY['HTML', 'CSS', 'JavaScript'], 'HTML');


-- ==========================================
-- UNNEST()
-- ==========================================

-- UNNEST() Function ব্যবহার করে একটি Array-এর Element-গুলোকে
-- আলাদা আলাদা Row-তে রূপান্তর করা যায়।
-- অর্থাৎ, একটি Array-কে একাধিক Row-তে Convert করা হয়।


-- Converting Array Elements into Rows
-- এখানে একটি Array-এর তিনটি Element-কে আলাদা তিনটি Row-তে দেখানো হয়েছে।
-- Result:
-- HTML
-- CSS
-- JavaScript

SELECT UNNEST(ARRAY['HTML', 'CSS', 'JavaScript']);


-- Converting Multiple Array Elements into Rows
-- এখানে একটি Array-এর ছয়টি Element-কে আলাদা ছয়টি Row-তে দেখানো হয়েছে।
-- Result:
-- A
-- B
-- C
-- D
-- E
-- F

SELECT UNNEST(ARRAY['A', 'B', 'C', 'D', 'E', 'F']);



-- Function	         কাজ

-- ARRAY_APPEND()	Array-এর শেষে Element যোগ করে
-- ARRAY_PREPEND()	Array-এর শুরুতে Element যোগ করে
-- ARRAY_REMOVE()	Array থেকে নির্দিষ্ট Value সরিয়ে দেয়
-- ARRAY_POSITION()	নির্দিষ্ট Value-এর Position বের করে
-- UNNEST()	Array-এর Element-গুলোকে আলাদা Row-তে রূপান্তর করে


