

select * from hired_employees
select * from jobs
select * from departments

/*Number of employees hired for each job and department in 2021 divided by quarter. The
table must be ordered alphabetically by department and job*/

select
E.name,
D.Department,
J.Jobs,
E.datetime
from hired_employees E
inner join jobs J on E.job_id = J.ID
inner join departments D on d.id = e.department_id
where datetime LIKE '2021%'
group by e.name, d.department, j.jobs, E.datetime
order by department asc, jobs asc



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