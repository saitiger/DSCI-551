select emp_no from employees where first_name like '%mary%' and substring(last_name,length(last_name)-1,1)='o' ;
/* OUTPUT
+--------+
| emp_no |
+--------+
|  16021 |
|  21756 |
|  52983 |
|  73998 |
|  78783 |
|  88698 |
| 101753 |
| 216534 |
| 263268 |
| 410311 |
| 423386 |
| 459548 |
| 491899 |
+--------+
13 rows in set (0.27 sec)
*/
