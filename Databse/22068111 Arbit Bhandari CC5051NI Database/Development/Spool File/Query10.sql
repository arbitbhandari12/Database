SQL> SELECT *
  2  FROM (
  3      SELECT
  4          c.Customer_ID,
  5          c.Customer_Name,
  6          c.Customer_Address,
  7          c.Customer_Category,
  8          c.Customer_Discount,
  9          TO_CHAR(o.Order_Date, 'YYYY-MM') AS Month,
 10          SUM(o.Order_Total_Amount) AS TotalSpending
 11      FROM
 12          Customer c
 13      JOIN
 14          Orders o ON c.Customer_ID = o.Customer_ID
 15      WHERE
 16          TO_CHAR(o.Order_Date, 'YYYY-MM') = '2023-08'
 17      GROUP BY
 18          c.Customer_ID,
 19          c.Customer_Name,
 20          c.Customer_Address,
 21          c.Customer_Category,
 22          c.Customer_Discount,
 23          TO_CHAR(o.Order_Date, 'YYYY-MM')
 24      ORDER BY
 25          TotalSpending DESC
 26  )
 27  WHERE ROWNUM <= 1;

CUSTOMER_ID CUSTOMER_NAME        CUSTOMER_ADDRESS               CUSTOMER_CATEGO CUSTOMER_DISCOUNT MONTH   TOTALSPENDING                                                                                                                                                                                     
----------- -------------------- ------------------------------ --------------- ----------------- ------- -------------                                                                                                                                                                                     
          7 Manish Thapa         Biratnagar                     Staff                           5 2023-08            90                                                                                                                                                                                     

SQL> spool off
