select drinker Drinker from Likes where Drinker not in ( select drinker from Likes where beer = 'Summerbrew') and beer = 'Bud' group by 1;

/* OUTPUT
+----------+
| Drinker  |
+----------+
| Bill     |
| Jennifer |
+----------+
2 rows in set (0.00 sec)
*/
