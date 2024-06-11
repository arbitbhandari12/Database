SQL> SELECT p.*, po.Order_Quantity
  2  FROM (
  3      SELECT po.Product_ID, SUM(po.Order_Quantity) AS Total_Quantity
  4      FROM Product_order po
  5      GROUP BY po.Product_ID
  6      ORDER BY Total_Quantity DESC
  7  ) subquery
  8  JOIN Product p ON subquery.Product_ID = p.Product_ID
  9  JOIN Product_order po ON subquery.Product_ID = po.Product_ID
 10  WHERE ROWNUM <= 3;

PRODUCT_ID PRODUCT_NAME         PRODUCT_DESCRIPTION            PRODUCT_CATEGORY     PRODUCT_PRICE PRODUCT_STOCK_LEVEL VENDOR_ID ORDER_QUANTITY                                                                                                                                                              
---------- -------------------- ------------------------------ -------------------- ------------- ------------------- --------- --------------                                                                                                                                                              
         2 Acer Monitor         LCD Monitor                    Electronics                 249.99                  25         2              7                                                                                                                                                              
         1 LG Refrigerator      Double-door refrigerator       Appliances                 1099.99                  40         1              5                                                                                                                                                              
         3 HP Scanner           Flatbed scanner                Electronics                  79.99                  30         3              3                                                                                                                                                              

SQL> spool off
