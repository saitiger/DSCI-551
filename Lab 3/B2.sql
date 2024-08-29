select name Drinker from Drinkers where name not in (select drinker from Frequents) ;
/* OUTPUT
Empty set (0.00 sec)
*/
