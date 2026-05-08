mysql> use ecommerce;
Database changed
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| student_management |
| sys                |
| world              |
+--------------------+
8 rows in set (0.03 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| product             |
+---------------------+
3 rows in set (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+---------------------+----------+--------------+---------+---------+-------+---------+
| customer_id | Customer_name | city   | Email               | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+---------------------+----------+--------------+---------+---------+-------+---------+
| c101        | ayush         | mumbai | ayush123@gmail.com  | Sairoad  | 8355918356   |  421306 |       0 |       |         |
| C102        | Sunny         | Thane  | sunnymine@gmail.com | Paliroad | 3874893234   |  400099 |       0 |       |         |
+-------------+---------------+--------+---------------------+----------+--------------+---------+---------+-------+---------+
2 rows in set (0.01 sec)

mysql> update customer set phone_number = '3456789120' where  customer_id = 'c102';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+--------+---------------------+----------+--------------+---------+---------+-------+---------+
| customer_id | Customer_name | city   | Email               | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+--------+---------------------+----------+--------------+---------+---------+-------+---------+
| c101        | ayush         | mumbai | ayush123@gmail.com  | Sairoad  | 8355918356   |  421306 |       0 |       |         |
| C102        | Sunny         | Thane  | sunnymine@gmail.com | Paliroad | 3456789120   |  400099 |       0 |       |         |
+-------------+---------------+--------+---------------------+----------+--------------+---------+---------+-------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%al';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like '%ny';
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| customer_id | Customer_name | city  | Email               | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| C102        | Sunny         | Thane | sunnymine@gmail.com | Paliroad | 3456789120   |  400099 |       0 |       |         |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like '%yu';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like '%nn';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like '%nn%';
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| customer_id | Customer_name | city  | Email               | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| C102        | Sunny         | Thane | sunnymine@gmail.com | Paliroad | 3456789120   |  400099 |       0 |       |         |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'su%';
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| customer_id | Customer_name | city  | Email               | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| C102        | Sunny         | Thane | sunnymine@gmail.com | Paliroad | 3456789120   |  400099 |       0 |       |         |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where city like 'Th%';
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| customer_id | Customer_name | city  | Email               | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| C102        | Sunny         | Thane | sunnymine@gmail.com | Paliroad | 3456789120   |  400099 |       0 |       |         |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'S___';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like 'S____';
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| customer_id | Customer_name | city  | Email               | address  | phone_number | pincode | bill_no | state | country |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
| C102        | Sunny         | Thane | sunnymine@gmail.com | Paliroad | 3456789120   |  400099 |       0 |       |         |
+-------------+---------------+-------+---------------------+----------+--------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values('c104','Aman','Kandivali','aman@gmail.com','Buzraniroad','6752349867','344560','2','mumbai','india');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('c105','Gaytri','Chandivali','gaytri32@gmail.com','Asranivilla','4578120365','458796','2','Kerela','India');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('c106','Laxmi','Borivali','laxmi@gmail.com','Laxmichawl','4217895461','548796','5','Uttarpradesh','India'),('c107','Bhumi','Powai','bhumi58@gmail.com','Powaidarbar','2154789654','145278','7','Gujrat','India');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city       | Email               | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| c101        | ayush         | mumbai     | ayush123@gmail.com  | Sairoad     | 8355918356   |  421306 |       0 |              |         |
| C102        | Sunny         | Thane      | sunnymine@gmail.com | Paliroad    | 3456789120   |  400099 |       0 |              |         |
| c104        | Aman          | Kandivali  | aman@gmail.com      | Buzraniroad | 6752349867   |  344560 |       2 | mumbai       | india   |
| c105        | Gaytri        | Chandivali | gaytri32@gmail.com  | Asranivilla | 4578120365   |  458796 |       2 | Kerela       | India   |
| c106        | Laxmi         | Borivali   | laxmi@gmail.com     | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
| c107        | Bhumi         | Powai      | bhumi58@gmail.com   | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat       | India   |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
6 rows in set (0.00 sec)

mysql> select * from customer limit 3;
+-------------+---------------+-----------+---------------------+-------------+--------------+---------+---------+--------+---------+
| customer_id | Customer_name | city      | Email               | address     | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+-----------+---------------------+-------------+--------------+---------+---------+--------+---------+
| c101        | ayush         | mumbai    | ayush123@gmail.com  | Sairoad     | 8355918356   |  421306 |       0 |        |         |
| C102        | Sunny         | Thane     | sunnymine@gmail.com | Paliroad    | 3456789120   |  400099 |       0 |        |         |
| c104        | Aman          | Kandivali | aman@gmail.com      | Buzraniroad | 6752349867   |  344560 |       2 | mumbai | india   |
+-------------+---------------+-----------+---------------------+-------------+--------------+---------+---------+--------+---------+
3 rows in set (0.00 sec)

mysql> select distinct city from customer;
+------------+
| city       |
+------------+
| mumbai     |
| Thane      |
| Kandivali  |
| Chandivali |
| Borivali   |
| Powai      |
+------------+
6 rows in set (0.00 sec)

mysql> select * from product;
Empty set (0.01 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(5)  | NO   | PRI | NULL    |       |
| product_name   | varchar(20) | NO   |     | NULL    |       |
| category       | varchar(10) | NO   |     | NULL    |       |
| sub_category   | varchar(10) | NO   |     | NULL    |       |
| original_price | int         | NO   |     | NULL    |       |
| selling_price  | int         | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select * from customer;
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city       | Email               | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| c101        | ayush         | mumbai     | ayush123@gmail.com  | Sairoad     | 8355918356   |  421306 |       0 |              |         |
| C102        | Sunny         | Thane      | sunnymine@gmail.com | Paliroad    | 3456789120   |  400099 |       0 |              |         |
| c104        | Aman          | Kandivali  | aman@gmail.com      | Buzraniroad | 6752349867   |  344560 |       2 | mumbai       | india   |
| c105        | Gaytri        | Chandivali | gaytri32@gmail.com  | Asranivilla | 4578120365   |  458796 |       2 | Kerela       | India   |
| c106        | Laxmi         | Borivali   | laxmi@gmail.com     | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
| c107        | Bhumi         | Powai      | bhumi58@gmail.com   | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat       | India   |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
6 rows in set (0.00 sec)

mysql> select * from customer where bill_no>4;
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city     | Email             | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
| c106        | Laxmi         | Borivali | laxmi@gmail.com   | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
| c107        | Bhumi         | Powai    | bhumi58@gmail.com | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat       | India   |
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where bill_no<4;
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------+---------+
| customer_id | Customer_name | city       | Email               | address     | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------+---------+
| c101        | ayush         | mumbai     | ayush123@gmail.com  | Sairoad     | 8355918356   |  421306 |       0 |        |         |
| C102        | Sunny         | Thane      | sunnymine@gmail.com | Paliroad    | 3456789120   |  400099 |       0 |        |         |
| c104        | Aman          | Kandivali  | aman@gmail.com      | Buzraniroad | 6752349867   |  344560 |       2 | mumbai | india   |
| c105        | Gaytri        | Chandivali | gaytri32@gmail.com  | Asranivilla | 4578120365   |  458796 |       2 | Kerela | India   |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------+---------+
4 rows in set (0.00 sec)

mysql> select * from customer where bill_no>=4;
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city     | Email             | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
| c106        | Laxmi         | Borivali | laxmi@gmail.com   | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
| c107        | Bhumi         | Powai    | bhumi58@gmail.com | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat       | India   |
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where bill_no>=5;
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city     | Email             | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
| c106        | Laxmi         | Borivali | laxmi@gmail.com   | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
| c107        | Bhumi         | Powai    | bhumi58@gmail.com | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat       | India   |
+-------------+---------------+----------+-------------------+-------------+--------------+---------+---------+--------------+---------+
2 rows in set (0.00 sec)

mysql> select * from customer where customer_name = 'Laxmi' AND bill_no = 4;
Empty set (0.00 sec)

mysql> select * from customer where customer_name = 'Laxmi' OR bill_no = 4;
+-------------+---------------+----------+-----------------+------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city     | Email           | address    | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+----------+-----------------+------------+--------------+---------+---------+--------------+---------+
| c106        | Laxmi         | Borivali | laxmi@gmail.com | Laxmichawl | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
+-------------+---------------+----------+-----------------+------------+--------------+---------+---------+--------------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_id between 'c102' and 'c105';
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------+---------+
| customer_id | Customer_name | city       | Email               | address     | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------+---------+
| C102        | Sunny         | Thane      | sunnymine@gmail.com | Paliroad    | 3456789120   |  400099 |       0 |        |         |
| c104        | Aman          | Kandivali  | aman@gmail.com      | Buzraniroad | 6752349867   |  344560 |       2 | mumbai | india   |
| c105        | Gaytri        | Chandivali | gaytri32@gmail.com  | Asranivilla | 4578120365   |  458796 |       2 | Kerela | India   |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not between 'c102' and 'c105';
+-------------+---------------+----------+--------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city     | Email              | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+----------+--------------------+-------------+--------------+---------+---------+--------------+---------+
| c101        | ayush         | mumbai   | ayush123@gmail.com | Sairoad     | 8355918356   |  421306 |       0 |              |         |
| c106        | Laxmi         | Borivali | laxmi@gmail.com    | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
| c107        | Bhumi         | Powai    | bhumi58@gmail.com  | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat       | India   |
+-------------+---------------+----------+--------------------+-------------+--------------+---------+---------+--------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city       | Email               | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| c101        | ayush         | mumbai     | ayush123@gmail.com  | Sairoad     | 8355918356   |  421306 |       0 |              |         |
| C102        | Sunny         | Thane      | sunnymine@gmail.com | Paliroad    | 3456789120   |  400099 |       0 |              |         |
| c104        | Aman          | Kandivali  | aman@gmail.com      | Buzraniroad | 6752349867   |  344560 |       2 | mumbai       | india   |
| c105        | Gaytri        | Chandivali | gaytri32@gmail.com  | Asranivilla | 4578120365   |  458796 |       2 | Kerela       | India   |
| c106        | Laxmi         | Borivali   | laxmi@gmail.com     | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
| c107        | Bhumi         | Powai      | bhumi58@gmail.com   | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat       | India   |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
6 rows in set (0.00 sec)

mysql> select * from customer where customer_id in ('c101', 'c105','c107');
+-------------+---------------+------------+--------------------+-------------+--------------+---------+---------+--------+---------+
| customer_id | Customer_name | city       | Email              | address     | phone_number | pincode | bill_no | state  | country |
+-------------+---------------+------------+--------------------+-------------+--------------+---------+---------+--------+---------+
| c101        | ayush         | mumbai     | ayush123@gmail.com | Sairoad     | 8355918356   |  421306 |       0 |        |         |
| c105        | Gaytri        | Chandivali | gaytri32@gmail.com | Asranivilla | 4578120365   |  458796 |       2 | Kerela | India   |
| c107        | Bhumi         | Powai      | bhumi58@gmail.com  | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat | India   |
+-------------+---------------+------------+--------------------+-------------+--------------+---------+---------+--------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in ('c101', 'c105','c107');
+-------------+---------------+-----------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city      | Email               | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+-----------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| C102        | Sunny         | Thane     | sunnymine@gmail.com | Paliroad    | 3456789120   |  400099 |       0 |              |         |
| c104        | Aman          | Kandivali | aman@gmail.com      | Buzraniroad | 6752349867   |  344560 |       2 | mumbai       | india   |
| c106        | Laxmi         | Borivali  | laxmi@gmail.com     | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
+-------------+---------------+-----------+---------------------+-------------+--------------+---------+---------+--------------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where email is null;
Empty set (0.00 sec)

mysql> select * from customer where email is not null;
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| customer_id | Customer_name | city       | Email               | address     | phone_number | pincode | bill_no | state        | country |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
| c101        | ayush         | mumbai     | ayush123@gmail.com  | Sairoad     | 8355918356   |  421306 |       0 |              |         |
| C102        | Sunny         | Thane      | sunnymine@gmail.com | Paliroad    | 3456789120   |  400099 |       0 |              |         |
| c104        | Aman          | Kandivali  | aman@gmail.com      | Buzraniroad | 6752349867   |  344560 |       2 | mumbai       | india   |
| c105        | Gaytri        | Chandivali | gaytri32@gmail.com  | Asranivilla | 4578120365   |  458796 |       2 | Kerela       | India   |
| c106        | Laxmi         | Borivali   | laxmi@gmail.com     | Laxmichawl  | 4217895461   |  548796 |       5 | Uttarpradesh | India   |
| c107        | Bhumi         | Powai      | bhumi58@gmail.com   | Powaidarbar | 2154789654   |  145278 |       7 | Gujrat       | India   |
+-------------+---------------+------------+---------------------+-------------+--------------+---------+---------+--------------+---------+
6 rows in set (0.00 sec)