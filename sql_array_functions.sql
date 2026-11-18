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





