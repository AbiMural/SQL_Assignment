-- PWSkills MySQL Assignment -1
use mavenmovies;

-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences
 
-- Primary keys are unique in that table whereas foreign keys are the primary keys of related table.

select * from film;
describe film;

-- In the film table film_id are primary keys which are unique to that table whereas language_id, original_language_id are foreign keys which are primary keys of language table.
 
 select * from film_actor;
 describe film_actor;
 
 -- In this table film_id is primary key which is unique whereas actor_id is foreign key. 
 
 select * from payment;
 describe payment;
 
 -- In this payment table payment_id is primary key which is unique. customer_id , staff_id, rental_id are foreign keys.
 
 select * from rental;
 describe rental;
 
 -- In this rental table rental_id is primary key and inventory_id, customer_id, staff_id are foreign keys. 
 
 select * from staff;
 describe staff;
 
 -- In staff table staff_id is primary key and store_id, address_id are foreign keys. 
 
 select * from actor_award;
 describe actor_award;
 
 -- In this table actor_award_id is primary key and actor_id is foreign key
 
 select * from address;
 describe address;
 
 -- In this table address_id is primary key and city_id is foreign key
 
 select * from city;
 describe city;
 
 -- In this table city_id is primary key and country_id is foreign key
 
 select * from customer;
 describe customer;
 
 -- In the customer table customer_id is primary key and store_id, address_id are foreign keys
 
 select * from inventory;
 describe inventory;
 
 -- In this table inventory_id is primary key and film_id, store_id are foreign keys
 
 select * from store;
 describe store;
 
 -- In this table store_id is primary key and address_id is foreign key
 
 -- --------------------------------------------------------------------------------------------------------------------------------------------------------------
 
 -- List all details of actors
 
 select * from actor;
 describe actor;
 -- -------------------------------------------------------------------------------
 -- List all customer information from DB. 
 
 select * from customer;
 
 -- -------------------------------------------------------------------------------------
 -- List different countries
 
 select * from country;
 
 -- ----------------------------------------------------------------------
 -- Display all active customers
 
 select active from customer;
 
 -- -------------------------------------------------------------------------
 -- List of all rental IDs for customer with ID 1
 
 select * from rental;
 select customer_id, rental_id from rental where customer_id = 1;
 
 -- ----------------------------------------------------------------------------------------
 -- Display all the films whose rental duration is greater than 5
 
 select * from film;
 select title, rental_duration from film where rental_duration > 5;
 
 -- ---------------------------------------------------------------------------------------
 -- List the total number of films whose replacement cost is greater than $15 and less than $20
 
 select title, replacement_cost from film where replacement_cost > 15 and replacement_cost < 20;
 
 -- ------------------------------------------------------------------------------------------------------------------------------------
 -- Find the number of films whose rental rate is less than $1
 
 select count(film_id) from film where rental_rate < 1;
 
 -- --------------------------------------------------------------------------------------------------------------------
 -- Display the count of unique first names of actors
 
 select count(distinct(first_name)) from actor;
 
 -- ----------------------------------------------------------------------------------------
 -- Display the first 10 records from the customer table 
 
 select * from customer limit 10;
 
 -- ----------------------------------------------------------------------------------------------------
 -- Display the first 3 records from the customer table whose first name starts with ‘b’
 
 select * from customer where first_name like "b%" limit 3;
 
 -- ---------------------------------------------------------------------------------------------------------
 -- Display the names of the first 5 movies which are rated as ‘G’.
 
 select title from film where rating = "G" limit 5;
 
 -- --------------------------------------------------------------------------------------------------
 -- Find all customers whose first name starts with "a".
 
 select * from customer where first_name like "a%";
 
 -- ------------------------------------------------------------------------------------------------------------------
 -- Find all customers whose first name ends with "a".
 
 select * from customer where first_name like "%a";
 
 -- -------------------------------------------------------------------------------------------
 -- Display the list of first 4 cities which start and end with ‘a’
 
 select * from city where city like "a%a" limit 4 ;
 
 -- ----------------------------------------------------------------------------------------------
 -- Find all customers whose first name have "NI" in any position
 
 select * from customer where first_name like "%ni%";
 
 -- --------------------------------------------------------------------------------------------
 -- Find all customers whose first name have "r" in the second position
 
 select * from customer where first_name like "_r%";
 
 -- ----------------------------------------------------------------------------------------------------
 -- Find all customers whose first name starts with "a" and are at least 5 characters in length.
 
select * from customer where first_name like "a%" and length(first_name) >= 5;

-- ------------------------------------------------------------------------------------------------
-- Find all customers whose first name starts with "a" and ends with "o".

select * from customer where first_name like "a%o";

-- ------------------------------------------------------------------------------------
-- Get the films with pg and pg-13 rating using IN operator

select title, rating from film where rating in ("PG" , "PG-13");

-- ----------------------------------------------------------------------------------------------------
-- Get the films with length between 50 to 100 using between operator.

select title, length from film where length between 50 and 100;

-- ----------------------------------------------------------------------------------------------------
-- Get the top 50 actors using limit operator

select * from actor limit 50;

-- --------------------------------------------------------------------------------------------
-- Get the distinct film ids from inventory table

select  distinct(film_id) from inventory;

-- ---------------------------------------------------------------------------------------------------------------------------------------