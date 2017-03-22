/* 1. Challenge: Bobby's Hobbies

Step 1: We've created a database of people and hobbies, and each row in hobbies is related to a row in persons via the person_id column. In this first step, insert one more row in persons and then one more row in hobbies that is related to the newly inserted person.
Step 2: Now, select the 2 tables with a join so that you can see each person's name next to their hobby.
Step 3: Now, add an additional query that shows only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.

Code provided:

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);

INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);

INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

My code: */

INSERT INTO persons (name, age) VALUES ("Nicole Da Silva", 30);
INSERT INTO hobbies (person_id, name) VALUES (6, "acting");

SELECT persons.name, hobbies.name FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id;

SELECT persons.name, hobbies.name FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id WHERE persons.id = 1;


/* 2. Challenge: Customer's orders

Step 1: We've created a database for customers and their orders. Not all of the customers have made orders, however. Come up with a query that lists the name and email of every customer followed by the item and price of orders they've made. Use a LEFT OUTER JOIN so that a customer is listed even if they've made no orders, and don't add any ORDER BY.
Step 2: Now, create another query that will result in one row per each customer, with their name, email, and total amount of money they've spent on orders. Sort the rows according to the total money spent, from the most spent to the least spent. (Tip: You should always GROUP BY on the column that is most likely to be unique in a row.)

Code provided:

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT);

INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (customer_id, item, price)
    VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
    VALUES (1, "TARDIS", 1000000.00);


My code: */

SELECT customers.name, customers.email, orders.item, orders.price
    FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id;

SELECT customers.name, customers.email, SUM(orders.price)
    FROM customers
    LEFT OUTER JOIN orders
    ON customers.id = orders.customer_id     GROUP BY customers.name
    ORDER BY price DESC;


/* 3. Challenge: Sequels in SQL

Step 1: We've created a table with all the 'Harry Potter' movies, with a sequel_id column that matches the id of the sequel for each movie. Issue a SELECT that will show the title of each movie next to its sequel's title (or NULL if it doesn't have a sequel).


Code provided:

CREATE TABLE movies (id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    released INTEGER,
    sequel_id INTEGER);

INSERT INTO movies
    VALUES (1, "Harry Potter and the Philosopher's Stone", 2001, 2);
INSERT INTO movies
    VALUES (2, "Harry Potter and the Chamber of Secrets", 2002, 3);
INSERT INTO movies
    VALUES (3, "Harry Potter and the Prisoner of Azkaban", 2004, 4);
INSERT INTO movies
    VALUES (4, "Harry Potter and the Goblet of Fire", 2005, 5);
INSERT INTO movies
    VALUES (5, "Harry Potter and the Order of the Phoenix ", 2007, 6);
INSERT INTO movies
    VALUES (6, "Harry Potter and the Half-Blood Prince", 2009, 7);
INSERT INTO movies
    VALUES (7, "Harry Potter and the Deathly Hallows – Part 1", 2010, 8);
INSERT INTO movies
    VALUES (8, "Harry Potter and the Deathly Hallows – Part 2", 2011, NULL);

My code: */

SELECT movies.title, sequel.title as sequel
    FROM movies
    LEFT OUTER JOIN movies sequel
    ON movies.sequel_id = sequel.id;


/* 4. Challenge: FriendBook

Step 1: We've created a database for a friend networking site, with a table storing data on each person, a table on each person's hobbies, and a table of friend connections between the people. In this first step, use a JOIN to display a table showing people's names with their hobbies.
Step 2: Now, use another SELECT with a JOIN to show the names of each pair of friends, based on the data in the friends table.


Code provided:

CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);

INSERT INTO persons (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO persons (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO persons (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO persons (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO persons (fullname, age) VALUES ("Fluffy Sparkles", "8");

CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);

INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

CREATE table friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person1_id INTEGER,
    person2_id INTEGER);

INSERT INTO friends (person1_id, person2_id)
    VALUES (1, 4);
INSERT INTO friends (person1_id, person2_id)
    VALUES (2, 3);

My code: */

SELECT persons.fullname, hobbies.name as hobby
    FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id;

SELECT a.fullname, b.fullname
    FROM friends
    JOIN persons a
    ON friends.person1_id = a.id
    JOIN persons b
    ON friends.person2_id = b.id;


/* 5. Project: Famous people

Instructions: Does your project meet these goals?
Contains at least two tables with at least 15 rows total.
One of the tables contains a column that relates to the primary key of another table.
Has at least one query that does a JOIN.
Has no logic or syntax errors.

My code: */


CREATE TABLE persons (id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT, age INTEGER);

INSERT INTO persons (name, age) VALUES ("Bea", 40);
INSERT INTO persons (name, age) VALUES ("Franky", 30);
INSERT INTO persons (name, age) VALUES ("Doreen", 30);
INSERT INTO persons (name, age) VALUES ("Allie", 25);
INSERT INTO persons (name, age) VALUES ("Boomer", 30);
INSERT INTO persons (name, age) VALUES ("Maxine", 38);
INSERT INTO persons (name, age) VALUES ("Ferguson", 55);
INSERT INTO persons (name, age) VALUES ("Will", 40);
INSERT INTO persons (name, age) VALUES ("Vera", 45);
INSERT INTO persons (name, age) VALUES ("Liz", 50);
INSERT INTO persons (name, age) VALUES ("Erica", 45);
INSERT INTO persons (name, age) VALUES ("Bridget", 40);
INSERT INTO persons (name, age) VALUES ("Sky", 22);
INSERT INTO persons (name, age) VALUES ("Shaun", 16);
INSERT INTO persons (name, age) VALUES ("Kaz", 45);

CREATE TABLE sports (id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER, type TEXT);

INSERT INTO sports (person_id, type) VALUES (1, "soccer");
INSERT INTO sports (person_id, type) VALUES (2, "football");
INSERT INTO sports (person_id, type) VALUES (3, "baseball");
INSERT INTO sports (person_id, type) VALUES (4, "voleyball");
INSERT INTO sports (person_id, type) VALUES (5, "racketball");
INSERT INTO sports (person_id, type) VALUES (6, "tennis");
INSERT INTO sports (person_id, type) VALUES (7, "swimming");
INSERT INTO sports (person_id, type) VALUES (8, "diving");
INSERT INTO sports (person_id, type) VALUES (9, "running");
INSERT INTO sports (person_id, type) VALUES (10, "diving");
INSERT INTO sports (person_id, type) VALUES (11, "la crosse");
INSERT INTO sports (person_id, type) VALUES (12, "cricket");
INSERT INTO sports (person_id, type) VALUES (13, "skiing");
INSERT INTO sports (person_id, type) VALUES (14, "surfing");
INSERT INTO sports (person_id, type) VALUES (15, "snowboarding");

SELECT persons.name, sports.type as favorite_sport
    FROM persons
    JOIN sports
    ON persons.id = sports.person_id;
