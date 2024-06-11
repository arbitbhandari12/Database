SQL> SELECT *
  2  FROM Orders
  3  WHERE Order_Total_Amount >= (SELECT AVG(Order_Total_Amount) FROM Orders);

  ORDER_ID ORDER_DAT ORDER_TOTAL_AMOUNT PAYMENT_ID CUSTOMER_ID                                                                                                                                                                                                                                              
---------- --------- ------------------ ---------- -----------                                                                                                                                                                                                                                              
         4 01-JUN-23                 60          4           4                                                                                                                                                                                                                                              
         5 05-JUN-23                 70          5           5                                                                                                                                                                                                                                              
         6 01-AUG-23                 80          2           6                                                                                                                                                                                                                                              
         7 05-AUG-23                 90          3           7                                                                                                                                                                                                                                              

SQL> spool off
