CREATE TABLE users(
    id BIGSERIAL PRIMARY KEY, 
    firstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    password VARCHAR(500) NOT NULL,
    otp VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);




-- =========================================================
-- FOREIGN KEY CONSTRAINT:
-- ON UPDATE CASCADE & ON DELETE RESTRICT
-- =========================================================

-- PARENT TABLE: users
-- CHILD TABLE: categories
--
-- এখানে categories টেবিলের user_id হলো FOREIGN KEY,
-- যা users টেবিলের id (PRIMARY KEY)-কে Reference করে।
--
-- অর্থাৎ, প্রতিটি Category কোন User-এর অধীনে তৈরি হয়েছে,
-- তা user_id-এর মাধ্যমে নির্ধারণ করা হয়।
--
-- Parent Table = যে Table-এর Primary Key অন্য Table Reference করে।
-- Child Table  = যে Table-এর Foreign Key দিয়ে অন্য Table-কে Reference করে।
--
-- FOREIGN KEY-এর মাধ্যমে Parent ও Child Table-এর মধ্যে
-- সম্পর্ক বজায় থাকে এবং Referential Integrity নিশ্চিত হয়।


-- =========================================================
-- 1. ON UPDATE CASCADE
-- =========================================================

-- Parent Table-এর Referenced PRIMARY KEY (users.id)-এর মান
-- পরিবর্তন করা হলে Child Table-এর সংশ্লিষ্ট FOREIGN KEY
-- (categories.user_id)-এর মানও PostgreSQL স্বয়ংক্রিয়ভাবে
-- পরিবর্তন করে দেবে।
--
-- উদাহরণ:
-- users টেবিলে id = 1 এবং categories টেবিলে user_id = 1 আছে।
--
-- এখন যদি users টেবিলের id = 1 পরিবর্তন করে id = 10 করা হয়,
-- তাহলে categories টেবিলের সংশ্লিষ্ট user_id-ও
-- স্বয়ংক্রিয়ভাবে 1 থেকে 10 হয়ে যাবে।
--
-- এর ফলে Parent ও Child Table-এর মধ্যে সম্পর্ক অক্ষুণ্ণ থাকে
-- এবং Referential Integrity বজায় থাকে।
--
-- মনে রাখবে:
-- ON UPDATE CASCADE = Parent-এর Referenced Key Update হলে
-- Child-এর সংশ্লিষ্ট Foreign Key-ও Automatic Update হবে।


-- =========================================================
-- 2. ON DELETE RESTRICT
-- =========================================================

-- Parent Table-এর এমন কোনো Row Delete করতে বাধা দেয়,
-- যেটি Child Table-এর এক বা একাধিক Row দ্বারা Reference করা হয়েছে।
--
-- উদাহরণ:
-- users টেবিলে id = 1 আছে এবং categories টেবিলের
-- একাধিক Row-তে user_id = 1 রয়েছে।
--
-- এখন যদি users টেবিল থেকে id = 1 Delete করতে চাও,
-- PostgreSQL Delete করতে দেবে না।
--
-- কারণ, ঐ User-এর সঙ্গে categories টেবিলের একাধিক Category
-- সম্পর্কিত রয়েছে। Parent Row Delete করলে Child Table-এর
-- Foreign Key-এর সম্পর্ক ভেঙে যেতে পারে।
--
-- প্রথমে সংশ্লিষ্ট Child Table-এর Reference সরাতে হবে
-- অথবা Child Row-গুলো Delete করতে হবে।
--
-- মনে রাখবে:
-- ON DELETE RESTRICT = Child Row Reference করলে
-- Parent Row Delete করা যাবে না।
--
-- IMPORTANT:
-- ON DELETE RESTRICT নিজে থেকে Child Table-এর কোনো Row
-- Delete করে না; বরং Parent Row Delete হওয়া আটকায়।


-- =========================================================
-- 3. ON DELETE CASCADE (ALTERNATIVE OPTION)
-- =========================================================

-- Parent Table-এর কোনো Row Delete করা হলে,
-- সেই Row-কে Reference করা Child Table-এর সংশ্লিষ্ট
-- সব Row-ও PostgreSQL স্বয়ংক্রিয়ভাবে Delete করে দেবে।
--
-- উদাহরণ:
-- users টেবিলে id = 1 আছে এবং categories টেবিলের
-- একাধিক Row-তে user_id = 1 রয়েছে।
--
-- এখন যদি users টেবিল থেকে id = 1 Delete করা হয়,
-- তাহলে categories টেবিলের সংশ্লিষ্ট সব Category Row-ও
-- স্বয়ংক্রিয়ভাবে Delete হয়ে যাবে।
--
-- এর ফলে Parent ও Child Table-এর মধ্যে Referential Integrity
-- বজায় থাকে এবং Orphan Record তৈরি হয় না।
--
-- IMPORTANT:
-- ১. Parent Row Delete হলে সংশ্লিষ্ট Child Row-গুলোও Delete হবে।
-- ২. শুধু Foreign Key-এর মান পরিবর্তন হবে না,
--    সম্পূর্ণ Child Row Delete হয়ে যাবে।
-- ৩. ভুল করে Parent Row Delete করলে অনেক Child Record
--    একসঙ্গে Delete হয়ে যেতে পারে।
--
-- মনে রাখবে:
-- ON DELETE CASCADE = Parent Row Delete হলে
-- Child-এর সংশ্লিষ্ট Row-গুলোও Automatic Delete হবে।
--
-- NOTE:
-- ON DELETE RESTRICT এবং ON DELETE CASCADE হলো
-- ON DELETE-এর দুটি আলাদা আচরণ।
-- একই FOREIGN KEY Constraint-এ দুটো একসঙ্গে ব্যবহার করা যাবে না।
-- প্রয়োজন অনুযায়ী যেকোনো একটি নির্বাচন করতে হবে।


-- =========================================================
-- 4. TIMESTAMP COLUMNS
-- =========================================================

-- created_at:
-- কোনো নতুন Category তৈরি হলে তার Creation Date ও Time
-- স্বয়ংক্রিয়ভাবে সংরক্ষণ করবে।
--
-- updated_at:
-- Category তৈরি হওয়ার সময় প্রথমে Current Date ও Time সংরক্ষণ করবে।
-- তবে পরবর্তীতে Row Update হলে এটি নিজে থেকে পরিবর্তিত হবে না।
-- Update-এর সময় নতুন Date ও Time সংরক্ষণ করতে
-- আলাদা Application Logic অথবা Database Trigger প্রয়োজন।

CREATE TABLE categories(
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    user_id BIGSERIAL NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE RESTRICT, --CASCADE
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);




CREATE TABLE customers(
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    user_id BIGSERIAL NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE products(
    id BIGSERIAL PRIMARY KEY,





    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP


);


CREATE TABLE invoices(
    id BIGSERIAL PRIMARY KEY,




    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP


);


CREATE TABLE invoice_products(
    id BIGSERIAL PRIMARY KEY,



    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP


);