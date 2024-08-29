select manf  Manufacturer from Beers group by manf having count(name) >= 3;

/* OUTPUT
+----------------+
| Manufacturer   |
+----------------+
| Anheuser-Busch |
+----------------+
1 row in set (0.01 sec)
*/
