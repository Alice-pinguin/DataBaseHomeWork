use homework;
alter table projects add column cost double;
UPDATE projects SET cost = 15000 WHERE (id_project = 1);
UPDATE projects SET cost = 10000 WHERE (id_project = 2);
UPDATE projects SET cost = 10000 WHERE (id_project = 3);
UPDATE projects SET cost = 45000 WHERE (id_project = 4);
UPDATE projects SET cost = 110000 WHERE (id_project = 5);
