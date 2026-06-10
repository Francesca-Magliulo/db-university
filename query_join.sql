/*query 1*/
select students.*
from students
join degrees
on students.degree_id = degrees.id
where degrees.name = "Corso di Laurea in Economia";

/*query 2*/
select degrees.*
from degrees
join departments
on degrees.department_id = departments.id
where degrees.level = "magistrale"
and departments.name = "Dipartimento di Neuroscienze";

/*query 3*/
select courses.*
from courses
join course_teacher on courses.id = course_teacher.course_id
where course_teacher.teacher_id = 44;

/*query 4*/
select 
s.name,
s.surname,
d.name as degree,
dep.name as department
from students as s
join degrees as d on s.degree_id = d.id
join departments as dep on d.department_id = dep.id
order by s.surname, s.name; 

/*query 5*/
select 
degrees.name as degree,
courses.name as course,
teachers.name,
teachers.surname
from degrees
join courses on degrees.id = courses.degree_id
join course_teacher on courses.id = course_teacher.course_id
join teachers on course_teacher.teacher_id = teachers.id;

/*query 6*/
select distinct teachers.*
from teachers 
join course_teacher on teachers.id = course_teacher.teacher_id
join courses on course_teacher.course_id = courses.id
join degrees on courses.degree_id = degrees.id
where degrees.department_id = 5;

/*query 7*/
select
student_id,
exam_id,
count(*),
max(vote)
from exam_student
where vote >= 18
group by student_id, exam_id;

