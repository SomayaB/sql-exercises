-- **12:** For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.

-- Not working. Only returning of of the two right results. Should return:
-- Austin, 11, Jordan, 12, Kyel, 12
-- Andrew, 10, Cassandra, 10, Gabriel, 9


-- SELECT
--   a.name, a.grade,
--   b.name, b.grade,
--   c.name, c.grade
--   FROM student_like
--   JOIN student a
--   ON a.id = student_like.liker_id
--   JOIN student b
--   ON b.id = student_like.likee_id
--   -- AND b.id NOT IN (
--   --   SELECT id2 FROM friend
--   --   WHERE id1 = a.id)
--   JOIN friend f1
--   ON a.id = f1.id1
--   JOIN friend f2
--   ON f2.id1 = c.id
--   AND f2.id2 = b.id
--   JOIN student c
--   ON c.id = f1.id2;
