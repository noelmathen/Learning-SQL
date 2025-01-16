SELECT city
FROM student
WHERE grade='A'
GROUP BY city
HAVING max(marks)>93
ORDER BY city DESC