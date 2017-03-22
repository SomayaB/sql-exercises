/*1. Challenge: Dynamic Documents

Step 1: We've created a database for a documents app, with rows for each document with it's title, content, and author. In this first step, use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'. Then re-select all the rows to make sure the table changed like you expected.
Step 2: Now you'll delete a row, being very careful not to delete all the rows. Only delete the row where the title is 'Things I'm Afraid Of'. Then re-select all the rows to make sure the table changed like you expected.


Code provided:

CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);

INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

SELECT * FROM documents;


My code: */

UPDATE documents SET author = "Jackie Draper" WHERE author = "Jackie Paper";

SELECT * FROM documents;

DELETE FROM documents WHERE title = "Things I'm Afraid Of";

SELECT * FROM documents;


/*2. Challenge: Clothing alterations

Step 1: We've created a database of clothes, and decided we need a price column. Use ALTER to add a 'price' column to the table. Then select all the columns in each row to see what your table looks like now.
Step 2: Now assign each item a price, using UPDATE - item 1 should be 10 dollars, item 2 should be 20 dollars, item 3 should be 30 dollars. When you're done, do another SELECT of all the rows to check that it worked as expected.
Step 3: Now insert a new item into the table that has all three attributes filled in, including 'price'. Do one final SELECT of all the rows to check it worked.

Code provided:

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);

INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

My code: */

ALTER TABLE clothes ADD price INTEGER;

SELECT * FROM clothes;

UPDATE clothes SET price = 10 WHERE id = 1;
UPDATE clothes SET price = 20 WHERE id = 2;
UPDATE clothes SET price = 30 WHERE id = 3;

SELECT * FROM clothes;

INSERT INTO clothes (type, design, price) VALUES ("shoes", "Chelsea Boots", 70);

SELECT * FROM clothes;


/*3. Project: App impersonator

Instructios: Does your project meet these goals?
Creates at least one table.
Inserts at least 3 rows of data.
Updates at least 1 row of data.
Deletes at least 1 row of data.

My code: */

CREATE TABLE users (id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT, username TEXT, email TEXT);

INSERT INTO users (name, username, email) VALUES ("Bea Smith", "@BeaSmith", "beasmith@gmail.com");

INSERT INTO users (name, username, email) VALUES ("Franky Doyle", "@FrankyDoyle", "frankydoyle@yahoo.com");

INSERT INTO users (name, username, email) VALUES ("Allie Novak", "@AllieNovak", "allienovak@hotmail.com");

SELECT * FROM users;

UPDATE users SET email = "allisonnovak@hotmail.com" WHERE id = 3;

SELECT * FROM users;

DELETE FROM users WHERE name = "Franky Doyle";

SELECT * FROM users;
