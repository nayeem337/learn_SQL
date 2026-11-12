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

        column5 BOOLEAN,
        -- True or False value (1 or 0)  BOOLEAN = True or False value (1 or 0) 

        column6 TIMESTAMP,
       
         -- DATE ONLY (YYYY-MM-DD)  DATE = YYYY-MM-DD  (Date only, no time)
          -- TIME = TIME (HH:MM:SS)  TIME = HH:MM:SS (Time only, no date)
          -- TIMESTAMP = YYYY-MM-DD HH:MM:SS (Date and time both)

          column7 JSON,
          -- JSON = JavaScript Object Notation (JSON)  JSON = JavaScript Object Notation (JSON) ->JSON text data (Textual data format for storing and transporting data)

          -- JSONB = Binary JSON (JSONB)  JSONB = Binary JSON (JSONB) ->Binary format for storing JSON data (Faster than JSON text data) 

          column8 ARRAY, 
          -- Collection
          -- ARRAY = Array data type (Array of values)  ARRAY = Array data type (Array of values)  ->Array of values (Can store multiple values in a single column)

          column9 UUID,
          -- Automatically generate unique number
          -- UUID = Universally Unique Identifier (UUID)  UUID = Universally Unique Identifier (UUID)  ->Universally Unique Identifier (UUID) (Unique identifier for a record)



        

 




)