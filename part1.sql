CREATE TABLE example_table(
     id BIGSERIAL PRIMARY KEY, 
    -- SERIAL (integer 1, 2, 3, ... height value 2.1BILLON) BIGSERIAL(64-BIT)  = SERIAL or BIGSERIAL its Auto INCREMENT
     
     column1 BIGINT,
      -- INTEGER  (integer 1, 2, 3, ... heigsht value 2.1BILLON) 
      -- SMALLINT (32k) , BIGINT(Large integer )

        column2 NUMERIC(10,2),
        -- NUMERIC ,DECIMAL Financial data type (Exact numeric)  DECIMAL(precision, scale)  precision = total number of digits, scale = number of digits to the right of the decimal point
        
        -- doshomik er pore koto ghor niye kaj korbo sheta 

        column3 DOUBLE(10.4),
        -- DOUBLE,REAL, FLOAT (Approximate numeric)  DOUBLE(precision, scale)  precision = total number of digits, scale = number of digits to the right of the decimal point
        

        column4 TEXT,
        -- CHAR(100) = variable length character string (100 characters)
         -- VARCHAR(100) = variable length character string (100 characters)
        -- TEXT = variable length character string (unlimited length)



 




)