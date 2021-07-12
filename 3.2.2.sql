use homework;
SELECT p.name , sum(d.salary)  AS total_cost
FROM projects p
INNER JOIN developers_projects pd ON p.id_project = pd.id_project
INNER JOIN developers d ON d.id_developer=pd.id_developer
GROUP BY p.name
ORDER BY total_cost DESC
