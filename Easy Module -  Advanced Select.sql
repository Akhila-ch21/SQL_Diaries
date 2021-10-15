------------------------------- link: https://nifannn.github.io/2017/10/21/SQL-Notes-Hackerrank-Occupations/

Actual solution:

select c.company_code, c.founder,
(select count(*) from lead_manager where company_code = c.company_code),
(select count(*) from senior_manager where company_code = c.company_code),
(select count(*) from manager where company_code = c.company_code),
(select count(*) from employee where company_code = c.company_code)
from company as c 
order by c.company_code





