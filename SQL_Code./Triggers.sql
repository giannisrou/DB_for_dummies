use databasefordummies;
select * from project;

#1
DELIMITER $$
create trigger update_project
before update on project 
for each row 
BEGIN
if (new.supervisor_id not in (select w.researcher_id from workson inner join project 
as p on p.supervisor_id=w.researcher_id)) 
THEN 
update  project set supervisor_id = new.supervisor_id;
end IF; 
END $$

#2
DELIMITER $$
create trigger update_project_1
before update on project 
for each row 
BEGIN
if (new.supervisor_id not in (select r.researcher_id from researcher inner join project 
as p on p.org_name<>r.org_name)) 
THEN 
update  project set supervisor_id = new.supervisor_id;
end IF; 
END $$

#3a
DELIMITER $$
create trigger insert_in_workson
before insert on workson 
for each row 
BEGIN
if (new.researcher_id not in (select w.researcher_id from workson inner join project 
as p on p.supervisor_id=w.researcher_id)) 
THEN 
insert into workson set researcher_id = new.researcher_id;
end IF; 
END $$
select * FROM project;

#3b
DELIMITER $$
create trigger insert_in_workson_2
before insert on workson 
for each row 
BEGIN
if (new.researcher_id not in (select w.researcher_id from workson inner join project 
as p on p.project_title=w.project_title inner join researcher as r on r.researcher_id = w.researcher_id)) 
THEN 
insert into workson set researcher_id = new.researcher_id;
end IF; 
END $$


#4
DELIMITER $$
create trigger insert_in_university
before insert on is_university 
for each row 
BEGIN
if (new.org_name not in ((select org_name from is_company) AND (select org_name from is_researchcenter)))
THEN 
insert into is_university set org_name = new.org_name;
end IF; 
END $$

#5
DELIMITER $$
create trigger insert_in_company
before insert on is_company 
for each row 
BEGIN
if (new.org_name not in ((select org_name from is_university) AND (select org_name from is_researchcenter)))
THEN 
insert into is_university set org_name = new.org_name;
end IF; 
END $$

#6
DELIMITER $$
create trigger insert_in_researchcenter
before insert on is_researchcenter 
for each row 
BEGIN
if (new.org_name not in ((select org_name from is_university) AND (select org_name from is_company)))
THEN 
insert into is_university set org_name = new.org_name;
end IF; 
END $$

