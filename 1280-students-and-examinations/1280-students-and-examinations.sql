
WITH CTE AS ( 
select s.student_id ,s.student_name ,sub.subject_name , COUNT(e.SUBJECT_NAME)  AS attended_exams 
FROM Students s 
cross join subjects sub
left join examinations e
ON s.student_id = e.student_id
AND sub.subject_name = e.subject_name
GROUP BY s.student_id,s.student_name,sub.subject_name

) 


SELECT  student_id, student_name,subject_name,attended_exams
FROM CTE
ORDER BY student_id, subject_name;


