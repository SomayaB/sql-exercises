-- **13:** Find the name and grade of all students who are liked by more than one other student.

SELECT name, grade
  FROM student_like
  JOIN student
  ON student.id = student_like.likee_id
  GROUP BY student.name, student.grade
  HAVING COUNT(student.id) > 1;
