/* **07:** Find the names of all students who are friends with someone named Gabriel. */

SELECT a.name, b.name FROM friend
LEFT OUTER JOIN student a
ON  a.id = friend.id1
LEFT OUTER JOIN student b
ON b.id = friend.id2
WHERE a.name = 'Gabriel' OR b.name = 'Gabriel';
