select dept_no,count(emp_no) employeeNum from dept_emp where from_date = '1988-10-20' group by 1 order by 2 desc;

/* OUTPUT
+---------+-------------+
| dept_no | employeeNum |
+---------+-------------+
| d005    |          20 |
| d004    |           9 |
| d007    |           9 |
| d001    |           4 |
| d006    |           4 |
| d008    |           3 |
| d002    |           2 |
| d003    |           2 |
| d009    |           1 |
+---------+-------------+
9 rows in set (1.33 sec)
*/
