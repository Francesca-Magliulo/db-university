
/*query 1*/
SELECT *
FROM students
WHERE YEAR(date_of_birth) = 1990;

/*query 2*/
SELECT *
FROM courses
WHERE cfu > 10;

/*query 3*/
SELECT *
FROM students
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) > 30;

/*query 4*/
SELECT *
FROM courses
LIMIT 10;

SELECT *
FROM courses
WHERE year = 1
AND period = 'I semestre';

/*query 5*/
SELECT *
FROM exams
LIMIT 10;

SELECT *
FROM exams
WHERE date = '2020-06-20'
AND hour >= '14:00:00';

/*query 6*/
SELECT *
FROM degrees
LIMIT 10;

SELECT *
FROM degrees
WHERE level = 'magistrale';

/*query 7*/
SELECT COUNT(*)
FROM departments;

/*query 8*/
SELECT COUNT(*)
FROM teachers
WHERE phone IS NULL;





/*query 1*/
SELECT YEAR(enrolment_date),
COUNT(*)
FROM students
GROUP BY YEAR(enrolment_date);

/*query 2*/
select *
from teachers
limit 10;

SELECT office_address,
COUNT(*)
FROM teachers
GROUP BY office_address;

/*query 3*/
SELECT *
FROM exam_student
LIMIT 10;

SELECT exam_id,
AVG(vote)
FROM exam_student
GROUP BY exam_id;

/*query 4*/
SELECT department_id,
COUNT(*)
FROM degrees
GROUP BY department_id;