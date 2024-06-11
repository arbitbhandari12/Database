SQL> SELECT v.*
  2      FROM Vendor v
  3      JOIN Product p ON v.Vendor_ID = p.Vendor_ID
  4      GROUP BY v.Vendor_ID, v.Vendor_Name, v.Vendor_Email, v.Vendor_Address, v.Vendor_Contact
  5      HAVING COUNT(p.Product_ID) > 3;

VENDOR_ID VENDOR_NAME          VENDOR_EMAIL                   VENDOR_ADDRESS                 VENDOR_CONTACT                                                                                                                                                                                                 
--------- -------------------- ------------------------------ ------------------------------ ---------------                                                                                                                                                                                                
        2 Alance Supplies      alance@gmail.com               Chitwan                        987-654-3210                                                                                                                                                                                                   

SQL> spool off
