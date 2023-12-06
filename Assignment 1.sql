-- Assignment 1

Use mavenmovies;

-- Question 1 :  Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- Answer : Primary Key - The primary key is a unique or non-null key that uniquely identifies every record in a table or relation. Each database needs a unique identifier for every row of a table, and the primary key plays a vital role in identifying rows in the table uniquely. The primary key column can't store duplicate values. It is also called a minimal super key; therefore, we cannot specify more than one primary key in any relationship.
--          Foreign Key - The foreign key is a group of one or more columns in a database to uniquely identify another database record in some other table to maintain the referential integrity. It is also known as the referencing key that establishes a relationship between two different tables in a database. A foreign key always matches the primary key column in another table. It means a foreign key column in one table refers to the primary key column of another table. A foreign key is beneficial in relational database normalization, especially when we need to access records from other tables.
SHOW KEYS FROM actor WHERE Key_name = 'PRIMARY';

-- Question 2 : List all details of actors
Select * from actor;

-- Question 3 : List all customer information from DB.
Select * from customer;

-- Question 4 : List Different Coutries.
Select * from country;

-- Question 5 : Display all active customer.
Select * from customer where active = '1';

-- Question 6 : List of all rental IDs for customer with ID 1.
select rental_id from rental where customer_id='1';

-- Question 7 : Display all the films whose rental duration is greater than 5 .
select * from film where rental_duration>'5';

-- Question 8 : List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(*) from film where replacement_cost between 15 and 20;

-- Question 9 : Display the count of unique first names of actors.
select distinct first_name from actor;

-- Question 10 : Display the first 10 records from the customer table .
select * from customer limit 10;

-- Question 11 : Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like 'b%' limit 3;

-- Question 12 : Display the names of the first 5 movies which are rated as ‘G’.
select title from film where rating='G' limit 5;

-- Question 13 : Find all customers whose first name starts with "a".
select * from customer where first_name like 'a%';

-- Question 14 : Find all customers whose first name ends with "a".
select * from customer where first_name like '%a';

-- Question 15 : Display the list of first 4 cities which start and end with ‘a’
select * from city where city like 'a%a' limit 4;

-- Question 16 : Find all customers whose first name have "NI" in any position.
select * from customer where first_name like '%ni%';

-- Question 17 : Find all customers whose first name have "r" in the second position .
select * from customer where first_name like '_r%';

-- Question 18 : Find all customers whose first name starts with "a" and are at least 5 characters in length.
select * from customer where first_name like 'a%' and length(first_name)=5;

-- Question 19 : Find all customers whose first name starts with "a" and ends with "o".
select *from customer where first_name like 'a%o';

-- Question 20 : Get the films with pg and pg-13 rating using IN operator.
select * from film where rating IN ('pg','pg-13');

-- Question 21 : Get the films with length between 50 to 100 using between operator.
select * from film where length between 50 and 100;

-- Question 22 : Get the top 50 actors using limit operator.
select * from actor limit 50;

-- Question 23 : Get the distinct film ids from inventory table.
select distinct film_id from inventory;
