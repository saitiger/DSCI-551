create View Beers2Bars as select Beers.manf as Manufacturer,Beers.name as Beer, Bars.name as bar, Sells.price as price from Beers join Sells on Beers.name = Sells.beer join Bars on Sells.bar = Bars.name   order by 1;
/* OUTPUT
Query OK, 0 rows affected (0.01 sec)
*/
select* from Beers2Bars;
/* OUTPUT
+----------------+------------+------------+-------+
| Manufacturer   | Beer       | bar        | price |
+----------------+------------+------------+-------+
| Anheuser-Busch | Bud        | Bob's bar  |     3 |
| Anheuser-Busch | Bud        | Joe's bar  |     3 |
| Anheuser-Busch | Bud Lite   | Joe's bar  |     3 |
| Anheuser-Busch | Michelob   | Joe's bar  |     3 |
| Anheuser-Busch | Bud        | Mary's bar |  NULL |
| Anheuser-Busch | Bud Lite   | Mary's bar |     3 |
| Heineken       | Budweiser  | Mary's bar |     2 |
| Pete's         | Summerbrew | Bob's bar  |     3 |
| Pete's         | Summerbrew | Joe's bar  |     4 |
+----------------+------------+------------+-------+
9 rows in set (0.01 sec)
*/

