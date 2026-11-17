-- SQL condition 
/*
CASE
    -- condition 01 (WHEN ------- THEN)
    -- condition 02
    -- condition 03

    ELSE
END  AS result 
*/

-- ============================================================================
-- *** SQL Conditional Logic: CASE Statement (if ... else if ... else) ***
-- ============================================================================

/*
   CASE Statement-এর গঠন (Syntax Formula):
   
   CASE                                     -- ১. শর্ত চেক করা শুরু
       WHEN condition_01 THEN result_01     -- ২. যদি ১ম শর্ত মেলে (if), তবে result_01 দেখাবে
       WHEN condition_02 THEN result_02     -- ৩. না মিললে ২য় শর্ত চেক করবে (else if)
       WHEN condition_03 THEN result_03     -- ৪. না মিললে ৩য় শর্ত চেক করবে (else if)
       ELSE default_result                  -- ৫. উপরের কোনো শর্তই না মিললে (else) এটি দেখাবে
   END AS new_column_name                   -- ৬. শর্ত শেষ (END) এবং নতুন কলামের নামকরণ (AS)

   [মনে রাখার নিয়ম]: 
   - CASE সবসময় উপর থেকে নিচে (Top-to-Bottom) শর্ত চেক করে।
   - তাই বড় সংখ্যা (90000) আগে এবং ছোট সংখ্যা (60000) পরে দিতে হয়।
*/

-- উদাহরণ: বেতনের ওপর ভিত্তি করে এমপ্লয়িদের গ্রেড (High, Medium, Low) বের করা
-- শর্ত ১ (WHEN): বেতন ৯০,০০০ বা তার বেশি হলে 'High' দেখাবে
-- শর্ত ২ (WHEN): বেতন ৬০,০০০ থেকে ৮৯,৯৯৯ এর মধ্যে হলে 'Medium' দেখাবে
-- ডিফল্ট (ELSE): উপরের কোনোটিই না হলে (৬০,০০০-এর নিচে হলে) 'Low' দেখাবে
-- আউটপুট (END AS): টেবিলে নতুন কলামের নাম হবে 'salary_grade'



SELECT full_name,salary,

 CASE 
     WHEN salary  >=  90000 THEN 'High'
     WHEN salary >=  60000 THEN 'Medium'
     ELSE 'Low'

 END AS salary_grade


 FROM employees;


