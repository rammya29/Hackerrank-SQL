SELECT (salary * months)as earnings ,count(*) 
FROM EMPLOYEE 
GROUP BY 1 
ORDER BY earnings desc limit 1;
