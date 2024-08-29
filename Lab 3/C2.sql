select Manufacturer, avg(price) as Average from Beers2Bars group by 1;

/* OUTPUT
+----------------+---------+
| Manufacturer   | Average |
+----------------+---------+
| Anheuser-Busch |       3 |
| Pete's         |     3.5 |
| Heineken       |       2 |
+----------------+---------+
*/
