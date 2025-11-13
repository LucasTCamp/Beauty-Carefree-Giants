# Beauty-Carefree-Giants

## Which commands caused errors, and why?

UPDATE WORD_REL
SET SYN_COL = 'blithe'
WHERE WORD = 'insouciant'; 

AFTER CREATING THE VIEW USING "WITH READ ONLY," this command does not work and displays an error as you cannot perform a DML Operation on a read-only view. 

## Why are DML operations restricted in some views?

DML OPERATIONS are restricted in views because of joins, aggregated data, and other complex operations. It becomes too difficult for direct modification. Also, any views that are set to read-only, violate constraints, are non-key-preserved, use group functions, use a GROUP BY clause, or the DISTINCT KEYWORD have DML OPERATIONS RESTRICTED.  

## HOW IS A MATERIALIZED VIEW DIFFERENT FROM A REGULAR VIEW?

Materialized views physically store view query results, while a regular view doesn't store any data itself. A regular view is just a virtual table, while a materialized view is a physical table. 
