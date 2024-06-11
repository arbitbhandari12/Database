SQL> SELECT Customer_ID, Customer_Name, Recent_Order_Date
  2  FROM (
  3      SELECT c.Customer_ID, c.Customer_Name, MAX(o.Order_Date) AS Recent_Order_Date
  4      FROM Customer c
  5      JOIN Orders o ON c.Customer_ID = o.Customer_ID
  6      GROUP BY c.Customer_ID, c.Customer_Name
  7      ORDER BY Recent_Order_Date DESC
  8  )
  9  WHERE ROWNUM = 1;

CUSTOMER_ID CUSTOMER_NAME        RECENT_OR                                                                                                                                                                                                                                                                  
----------- -------------------- ---------                                                                                                                                                                                                                                                                  
          7 Manish Thapa         05-AUG-23                                                                                                                                                                                                                                                                  

SQL> spool off
