//1. Challenge: Karaoke song selector

//Step 1: Ever sung karaoke? It's a place where you sing songs with your friends, and it's a lot of fun. We've created a table with songs, and in this challenge, you'll use queries to decide what songs to sing. For the first step, select all the song titles.
// Step 2: Maybe your friends only like singing either recent songs or truly epic songs. Add another SELECT that uses OR to show the titles of the songs that have an 'epic' mood or a release date after 1990.(Tip: If you're not sure how to select rows where a column equals a value, remember that you can check the documentation below.)
// Step 3: People get picky at the end of the night. Add another SELECT that uses AND to show the titles of songs that are 'epic', and released after 1990, and less than 4 minutes long. Note that the duration column is measured in seconds.

//Code provided:
// CREATE TABLE songs (
//     id INTEGER PRIMARY KEY,
//     title TEXT,
//     artist TEXT,
//     mood TEXT,
//     duration INTEGER,
//     released INTEGER);
//
// INSERT INTO songs (title, artist, mood, duration, released)
//     VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
// INSERT INTO songs (title, artist, mood, duration, released)
//     VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
// INSERT INTO songs (title, artist, mood, duration, released)
//     VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
// INSERT INTO songs (title, artist, mood, duration, released)
//     VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
// INSERT INTO songs (title, artist, mood, duration, released)
//     VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
// INSERT INTO songs (title, artist, mood, duration, released)
//     VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
// INSERT INTO songs (title, artist, mood, duration, released)
//     VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
// INSERT INTO songs (title, artist, mood, duration, released)
//     VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);

//My code:
SELECT title FROM songs;
SELECT title FROM songs WHERE released > 1990 OR mood = "epic";
SELECT title FROM songs WHERE mood = "epic" AND released > 1990 AND duration < 240;


//2. Challenge: Playlist maker

//Step 1: We've created a database of songs and artists, and you'll make playlists from them in this challenge. In this first step, select the title of all the songs by the artist named 'Queen'.
// Step 2: Now you'll make a 'Pop' playlist. In preparation, select the name of all of the artists from the 'Pop' genre.(Tip: Make sure you type it 'Pop', SQL considers that different from 'pop'.)
// Step 3: To finish creating the 'Pop' playlist, add another query that will select the title of all the songs from the 'Pop' artists. It should use IN on a nested subquery that's based on your previous query.

//Code provided:
// CREATE TABLE artists (
//     id INTEGER PRIMARY KEY AUTOINCREMENT,
//     name TEXT,
//     country TEXT,
//     genre TEXT);
//
// INSERT INTO artists (name, country, genre)
//     VALUES ("Taylor Swift", "US", "Pop");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Led Zeppelin", "US", "Hard rock");
// INSERT INTO artists (name, country, genre)
//     VALUES ("ABBA", "Sweden", "Disco");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Queen", "UK", "Rock");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Celine Dion", "Canada", "Pop");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Meatloaf", "US", "Hard rock");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Garth Brooks", "US", "Country");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Shania Twain", "Canada", "Country");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Rihanna", "US", "Pop");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Guns N' Roses", "US", "Hard rock");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Gloria Estefan", "US", "Pop");
// INSERT INTO artists (name, country, genre)
//     VALUES ("Bob Marley", "Jamaica", "Reggae");
//
// CREATE TABLE songs (
//     id INTEGER PRIMARY KEY AUTOINCREMENT,
//     artist TEXT,
//     title TEXT);
//
// INSERT INTO songs (artist, title)
//     VALUES ("Taylor Swift", "Shake it off");
// INSERT INTO songs (artist, title)
//     VALUES ("Rihanna", "Stay");
// INSERT INTO songs (artist, title)
//     VALUES ("Celine Dion", "My heart will go on");
// INSERT INTO songs (artist, title)
//     VALUES ("Celine Dion", "A new day has come");
// INSERT INTO songs (artist, title)
//     VALUES ("Shania Twain", "Party for two");
// INSERT INTO songs (artist, title)
//     VALUES ("Gloria Estefan", "Conga");
// INSERT INTO songs (artist, title)
//     VALUES ("Led Zeppelin", "Stairway to heaven");
// INSERT INTO songs (artist, title)
//     VALUES ("ABBA", "Mamma mia");
// INSERT INTO songs (artist, title)
//     VALUES ("Queen", "Bicycle Race");
// INSERT INTO songs (artist, title)
//     VALUES ("Queen", "Bohemian Rhapsody");
// INSERT INTO songs (artist, title)
//     VALUES ("Guns N' Roses", "Don't cry");

//My code:
SELECT title FROM songs WHERE artist = "Queen";
SELECT name FROM artists WHERE genre = "Pop";
SELECT title FROM songs WHERE artist IN (SELECT name FROM artists WHERE genre = "Pop");


//3. Challenge: The wordiest author

//Step 1: We've created a database of a few popular authors and their books, with word counts for each book. In this first step, select all the authors who have written more than 1 million words, using GROUP BY and HAVING. Your results table should include the 'author' and their total word count as a 'total_words' column.
// Step 2: Now select all the authors that write more than an average of 150,000 words per book. Your results table should include the 'author' and average words as an 'avg_words' column.

//Code provided:
// CREATE TABLE books (
//     id INTEGER PRIMARY KEY AUTOINCREMENT,
//     author TEXT,
//     title TEXT,
//     words INTEGER);
//
// INSERT INTO books (author, title, words)
//     VALUES ("J.K. Rowling", "Harry Potter and the Philosopher's Stone", 79944);
// INSERT INTO books (author, title, words)
//     VALUES ("J.K. Rowling", "Harry Potter and the Chamber of Secrets", 85141);
// INSERT INTO books (author, title, words)
//     VALUES ("J.K. Rowling", "Harry Potter and the Prisoner of Azkaban", 107253);
// INSERT INTO books (author, title, words)
//     VALUES ("J.K. Rowling", "Harry Potter and the Goblet of Fire", 190637);
// INSERT INTO books (author, title, words)
//     VALUES ("J.K. Rowling", "Harry Potter and the Order of the Phoenix", 257045);
// INSERT INTO books (author, title, words)
//     VALUES ("J.K. Rowling", "Harry Potter and the Half-Blood Prince", 168923);
// INSERT INTO books (author, title, words)
//     VALUES ("J.K. Rowling", "Harry Potter and the Deathly Hallows", 197651);
//
// INSERT INTO books (author, title, words)
//     VALUES ("Stephenie Meyer", "Twilight", 118501);
// INSERT INTO books (author, title, words)
//     VALUES ("Stephenie Meyer", "New Moon", 132807);
// INSERT INTO books (author, title, words)
//     VALUES ("Stephenie Meyer", "Eclipse", 147930);
// INSERT INTO books (author, title, words)
//     VALUES ("Stephenie Meyer", "Breaking Dawn", 192196);
//
// INSERT INTO books (author, title, words)
//     VALUES ("J.R.R. Tolkien", "The Hobbit", 95022);
// INSERT INTO books (author, title, words)
//     VALUES ("J.R.R. Tolkien", "Fellowship of the Ring", 177227);
// INSERT INTO books (author, title, words)
//     VALUES ("J.R.R. Tolkien", "Two Towers", 143436);
// INSERT INTO books (author, title, words)
//     VALUES ("J.R.R. Tolkien", "Return of the King", 134462);

//My code:
SELECT author, SUM(words) AS total_words FROM books
    GROUP BY author
    HAVING total_words > 1000000;

SELECT author, AVG(words) AS avg_words FROM books
    GROUP BY author
    HAVING avg_words > 150000;


//4. Challenge: Gradebook

//Step 1: We've created a database to track student grades, with their name, number grade, and what percent of activities they've completed. In this first step, select all of the rows, and display the name, number_grade, and percent_completed, which you can compute by multiplying and rounding the fraction_completed column.
// Step 2: Now, this step is a little tricky. The goal is a table that shows how many students have earned which letter_grade. You can output the letter_grade by using CASE with the number_grade column, outputting 'A' for grades > 90, 'B' for grades > 80, 'C' for grades > 70, and 'F' otherwise. Then you can use COUNT with GROUP BY to show the number of students with each of those grades.

//Code provided:

// CREATE TABLE student_grades (
//     id INTEGER PRIMARY KEY AUTOINCREMENT,
//     name TEXT,
//     number_grade INTEGER,
//     fraction_completed REAL);
//
// INSERT INTO student_grades (name, number_grade, fraction_completed)
//     VALUES ("Winston", 90, 0.805);
// INSERT INTO student_grades (name, number_grade, fraction_completed)
//     VALUES ("Winnefer", 95, 0.901);
// INSERT INTO student_grades (name, number_grade, fraction_completed)
//     VALUES ("Winsteen", 85, 0.906);
// INSERT INTO student_grades (name, number_grade, fraction_completed)
//     VALUES ("Wincifer", 66, 0.7054);
// INSERT INTO student_grades (name, number_grade, fraction_completed)
//     VALUES ("Winster", 76, 0.5013);
// INSERT INTO student_grades (name, number_grade, fraction_completed)
//     VALUES ("Winstonia", 82, 0.9045);

//My code:
SELECT name, number_grade, ROUND(fraction_completed * 100) AS percent_completed FROM student_grades;
SELECT COUNT(*),
    CASE
        WHEN number_grade > 90
            THEN "A"
        WHEN number_grade > 80
            THEN "B"
        WHEN number_grade > 70
            THEN "C"
        ELSE "F"
    END as letter_grade
FROM student_grades
GROUP BY letter_grade;


//5. Project: Data dig

//Introductions: Does your project meet these goals?
// Queries a data set with at least 20 rows.
// Has at least one query that uses AND or OR.
// Has at least one query that uses GROUP BY with either CASE or HAVING.
// Has at least one query that uses a math operator like MAX, MIN, AVG, SUM, or ROUND.
// Contains no syntax or logic errors.

//My code:
CREATE TABLE tv_shows (id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    country TEXT,
    rating INTEGER);

INSERT INTO tv_shows (name, country, rating) VALUES ("Wentworth", "Australia", 10);
INSERT INTO tv_shows (name, country, rating) VALUES ("Gilmore Girls", "United States", 8);
INSERT INTO tv_shows (name, country, rating) VALUES ("Unité 9", "Québec", 8);
INSERT INTO tv_shows (name, country, rating) VALUES ("Tout le Monde en Parle", "Québec", 9);
INSERT INTO tv_shows (name, country, rating) VALUES ("Orange Is The New Black", "United States", 7);
INSERT INTO tv_shows (name, country, rating) VALUES ("Suits", "United States", 7);
INSERT INTO tv_shows (name, country, rating) VALUES ("Humans", "United Kingdom", 8);
INSERT INTO tv_shows (name, country, rating) VALUES ("Bad Girls", "United Kingdom", 9);
INSERT INTO tv_shows (name, country, rating) VALUES ("Degrassi", "Canada", 5);
INSERT INTO tv_shows (name, country, rating) VALUES ("South Of Nowhere", "United States", 7);
INSERT INTO tv_shows (name, country, rating) VALUES ("House of Cards", "United States", 7);
INSERT INTO tv_shows (name, country, rating) VALUES ("Unreal", "United States", 8);
INSERT INTO tv_shows (name, country, rating) VALUES ("TLW", "United States", 8);
INSERT INTO tv_shows (name, country, rating) VALUES ("Sense 8", "United States", 6);
INSERT INTO tv_shows (name, country, rating) VALUES ("One Day At A Time", "United States", 7);
INSERT INTO tv_shows (name, country, rating) VALUES ("The Fosters", "United States", 7);
INSERT INTO tv_shows (name, country, rating) VALUES ("Chicago Fire", "United States", 7);
INSERT INTO tv_shows (name, country, rating) VALUES ("Chicago PD", "United States", 6);
INSERT INTO tv_shows (name, country, rating) VALUES ("Infoman", "Québec", 10);
INSERT INTO tv_shows (name, country, rating) VALUES ("Big Little Lies", "United States", 7);

SELECT name FROM tv_shows WHERE rating > 6 AND country = "Québec" OR country != "United States";

SELECT AVG(rating) from tv_shows;

SELECT COUNT(*),
    CASE
        WHEN rating > 9
            THEN "*****"
        WHEN rating > 7
            THEN "****"
        WHEN rating > 6
            THEN "***"
        WHEN rating > 5
            THEN "**"
        ELSE "*"
    END as star_rating
FROM tv_shows
GROUP BY star_rating;
