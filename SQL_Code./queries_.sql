use databasefordummies;
#query 3.1:
select prog_name from program;
create view projectaki as (select distinct concat(r.first_name, " ", r.last_name) as researcher_name,
p.project_title, e.full_name as executive_name, p.start_date as date, (YEAR(p.end_date)-YEAR(p.start_date)) as duration, p.funds as funds
from project as p 
inner join workson as w on w.project_title = p.project_title
inner join researcher as r on r.researcher_id = w.researcher_id
inner join executive as e on e.exec_id = p.exec_id);


select project_title, executive_name, date, funds, researcher_name from projectaki where 
date = "2001-01-01" and
duration = "4" and
executive_name = "Daren Fawdrie";

#querie 3.2:
create view projects_per_researchers as (select concat(r.first_name, ' ', r.last_name) as researcher_name,
concat(r2.first_name, ' ', r2.last_name) as supervisor_name, 
p1.project_title as project_title from researcher as r
inner join workson as w on w.researcher_id = r.researcher_id
inner join project as p1 on p1.project_title = w.project_title
inner join project as p2 on p2.project_title=w.project_title
inner join researcher as r2 on r2.researcher_id = p2.supervisor_id);
drop view projects_per_researchers; 
select * from projects_per_researchers;


create view projects_per_organizations_and_per_programs as (select org.org_name as organization, 
prog.prog_name as program, p.project_title as project from organizations as org 
inner join project as p on p.org_name = org.org_name
inner join project as p1 on p1.project_title = p.project_title 
inner join program as prog on prog.prog_name = p1.prog_name) order by organization;
drop view projects_per_organizations_and_per_programs;
select * from projects_per_organizations_and_per_programs;


#query 3.3: input!!!
select distinct concat(r.first_name," ", r.last_name) as full_name, workson.project_title from workson  
inner join researcher as r on r.researcher_id = workson.researcher_id
inner join project_field on project_field.project_title = workson.project_title
inner join project on project.end_date and project.start_date
where (project_field.field = "humanities" and project.end_date > "2022-01-01" and project.start_date < "2022-05-20");

#query 3.4:

SELECT DISTINCT r3a.org_name FROM((SELECT * FROM(SELECT
	r1a.org_name, r1a.year1, COUNT(r1a.project_title) AS cc
	FROM(SELECT org1.org_name, p1.project_title, YEAR(p1.start_date) AS year1
	FROM Organizations org1
	INNER JOIN Project p1 ON org1.org_name = p1.org_name) r1a
	GROUP BY r1a.org_name, r1a.year1) r2a
	WHERE r2a.cc > 9) r3a
    INNER JOIN(SELECT * FROM(SELECT r1b.org_name, r1b.year2, COUNT(r1b.project_title) AS cc
	FROM(SELECT org1.org_name, p1.project_title, YEAR(p1.start_date) AS year2
	FROM Organizations org1 INNER JOIN Project p1 ON org1.org_name = p1.org_name) r1b
	GROUP BY r1b.org_name, r1b.year2) r2b
	WHERE r2b.cc > 9) r3b
    ON r3a.org_name = r3b.org_name) 
WHERE ABS(r3a.year1 - r3b.year2) = 1 AND r3a.cc = r3b.cc;


#query 3.5:
CREATE VIEW PAIR_OF_FIELDS AS
select a.project_title, a.field, b.field as field1 from project_field a, project_field b
where a.project_title = b.project_title and a.field < b.field;

select field, field1, count(*)  as c from pair_of_fields group by field, field1 order by count(*) desc limit 3;

#query 3.6:
select  concat(researcher.last_name, ' ', researcher.first_name) as full_name, count(workson.project_title) from researcher 
inner join workson on workson.researcher_id = researcher.researcher_id
inner join project on project.project_title = workson.project_title
where researcher.dob > "1982-06-29" and project.end_date > "2022-06-12"
group by full_name
order by count(workson.project_title) desc;

#query 3.7 
select distinct executive.full_name as full_name, company.org_name as org_name, company.equity as equity from executive
inner join project on project.exec_id = executive.exec_id
inner join is_company as company on company.org_name = project.org_name
order by equity desc
limit 5;



#query 3.8
select concat(researcher.last_name, ' ', researcher.first_name) as full_name, count(workson.project_title) as NumOfProjects from researcher 
inner join workson on workson.researcher_id = researcher.researcher_id 
where workson.project_title not in (select project_title from deliverable) group by full_name
having NumOfProjects>5 order by NumOfProjects desc;



delete from researcher where researcher_id = "103";


