SQL> SELECT *
  2  FROM Product
  3  WHERE Product_Name LIKE '_a%'
  4    AND Product_Stock_Level > 50;

PRODUCT_ID PRODUCT_NAME         PRODUCT_DESCRIPTION            PRODUCT_CATEGORY     PRODUCT_PRICE PRODUCT_STOCK_LEVEL VENDOR_ID                                                                                                                                                                             
---------- -------------------- ------------------------------ -------------------- ------------- ------------------- ---------                                                                                                                                                                             
         4 Canon Printer        Color printer                  Electronics                 149.99                  55         4                                                                                                                                                                             
        10 Samsung SSD          Solid State Drive              Computer Accessories        129.99                  60         2                                                                                                                                                                             

SQL> spool off
