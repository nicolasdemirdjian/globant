

select * from hired_employees
select * from jobs
select * from departments

/*Number of employees hired for each job and department in 2021 divided by quarter. The
table must be ordered alphabetically by department and job*/


SELECT D.Department, 
       J.Jobs, 
       DATEPART(quarter, e.datetime) AS quarter, 
       COUNT(1) AS numero_personas
FROM hired_employees E
     INNER JOIN jobs J ON E.job_id = J.ID
     INNER JOIN departments D ON d.id = e.department_id
WHERE YEAR(e.datetime) = 2021
GROUP BY d.department, 
         j.jobs, 
         DATEPART(quarter, e.datetime)
ORDER BY department ASC, 
         jobs ASC;