select c.company_code, c.founder, 
    count(distinct l.lead_manager_code), count(distinct s.senior_manager_code), 
    count(distinct m.manager_code),count(distinct e.employee_code) 
from Company c, Lead_Manager l, Senior_Manager s, Manager m, Employee e 
where c.company_code = l.company_code AND
    l.lead_manager_code=s.lead_manager_code AND 
    s.senior_manager_code=m.senior_manager_code AND
    m.manager_code=e.manager_code 
GROUP BY c.company_code 
ORDER BY c.company_code ASC;
