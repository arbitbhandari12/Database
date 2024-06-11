SQL> SELECT TO_CHAR(Order_Date, 'YYYY-MM') AS Month, SUM(Order_Total_Amount) AS TotalRevenue
  2  FROM Orders
  3  GROUP BY TO_CHAR(Order_Date, 'YYYY-MM')
  4  ORDER BY TO_DATE(TO_CHAR(Order_Date, 'YYYY-MM'), 'YYYY-MM');

MONTH   TOTALREVENUE                                                                                                                                                                                                                                                                                        
------- ------------                                                                                                                                                                                                                                                                                        
2023-05          120                                                                                                                                                                                                                                                                                        
2023-06          130                                                                                                                                                                                                                                                                                        
2023-08          170                                                                                                                                                                                                                                                                                        

SQL> spool off
