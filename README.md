# SQL_Project

Mini Project SQL

in this case I use Big Query in SQL Work show for work.


# Show Dataset
 
```
select *
FROM `ace-vial-351708.Customer_id.customer_address` LIMIT 1000

```
![alt text](https://github.com/kristianaryanto/SQL_Project/blob/main/show%20dataset.png?raw=true)

# find missing colums
```
select count (*) - count(name) as name_missing, count(*) as name_total
FROM `ace-vial-351708.Customer_id.customer_address` LIMIT 1000
```
![alt text](https://github.com/kristianaryanto/SQL_Project/blob/main/Mising_value.png?raw=true)

# find the colums not us
