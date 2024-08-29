select name Bar,count(s.Beer) as Total from Sells s join Bars b on b.name = s.Bar where price >=2 group by s.Bar order by 2 desc ;

/* OUTPUT
+------------+-------+
| Bar        | Total |
+------------+-------+
| Joe's bar  |     4 |
| Bob's bar  |     2 |
| Mary's bar |     2 |
+------------+-------+
3 rows in set (0.01 sec)
*/
