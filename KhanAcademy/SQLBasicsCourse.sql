/* 1. Challenge: Book list database

Step 1: What are your favorite books? You can make a database table to store them in! In this first step, create a table to store your list of books. It should have columns for id, name, and rating.
Step 2: Now, add three of your favorite books into the table.

My code: */
CREATE TABLE books (id INTEGER PRIMARY KEY , name TEXT, rating INTEGER);
INSERT INTO books VALUES (1, "Harry Potter", 8);
INSERT INTO books VALUES (2, "Matilda", 10);
INSERT INTO books VALUES(3, "Le Petit Prince", 9);
SELECT * FROM books;


/* 2. Challenge: Box office hits database

Step 1: This database contains an incomplete list of box office hits and their release year. In this challenge, you're going to get the results back out of the database in different ways! In this first step, just select all the movies.
Step 2: Now, add a second query after the first, that retrieves only the movies that were released in the year 2000 or later, not before. Sort the results so that the earlier movies are listed first. You should have 2 SELECT statements after this step.

Code provided:
CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);

 My code: */
SELECT * from movies;
SELECT * from movies WHERE release_year > 1999 ORDER BY release_year;


/* 3. Challenge: TODO list database stats

Step 1: Here's a table containing a TODO list with the number of minutes it will take to complete each item. Insert another item to your todo list with the estimated minutes it will take.
Step 2: Select the SUM of minutes it will take to do all of the items on your TODO list. You should only have one SELECT statement.

Code provided:
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);

My code: */
INSERT INTO todo_list VALUES (4, "Edit videos", 120);
SELECT SUM(minutes) FROM todo_list;

/* 4. Project: Design a store database

Instructions: Does your project meet these goals?
Contains at least one table
Each table has at least 2 columns and one of the columns is the ID.
Selects and orders some of the data.
Performs at least one additional SELECT statement using an aggregate function.

My code: */
CREATE TABLE store (id INTEGER PRIMARY KEY, product TEXT, quantity INTEGER, price INTEGER);
INSERT INTO store VALUES (1, "macbook", 3, 2000);
INSERT INTO store VALUES (2, "HDMI adapter", 25, 50);
SELECT * FROM store;
SELECT product, MAX(price) from store ORDER BY product;
SELECT * FROM store WHERE price > 1000;
