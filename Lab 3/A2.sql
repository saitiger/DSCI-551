select first_name,last_name from salaries s join employees e on s.emp_no = e.emp_no where salary>=150000 group by 1,2;

/* OUTPUT
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Tokuyasu   | Pesch     |
| Ibibia     | Junet     |
| Xiahua     | Whitcomb  |
| Lansing    | Kambil    |
| Willard    | Baca      |
| Tsutomu    | Alameldin |
| Charmane   | Griswold  |
| Weicheng   | Hatcliff  |
| Mitsuyuki  | Stanfel   |
| Sanjai     | Luders    |
| Honesty    | Mukaidono |
| Weijing    | Chenoweth |
| Shin       | Birdsall  |
| Mohammed   | Moehrke   |
| Lidong     | Meriste   |
+------------+-----------+
15 rows in set (1.32 sec)
*/
