create view projects_per_researchers as (select concat(r.first_name, ' ', r.last_name) as researcher_name,
concat(r2.first_name, ' ', r2.last_name) as supervisor_name, 
p1.project_title as project_title from researcher as r
inner join workson as w on w.researcher_id = r.researcher_id
inner join project as p1 on p1.project_title = w.project_title
inner join project as p2 on p2.project_title=w.project_title
inner join researcher as r2 on r2.researcher_id = p2.supervisor_id);


create view projects_per_organizations_and_per_programs as (select org.org_name as organization, 
prog.prog_name as program, p.project_title as project from organizations as org 
inner join project as p on p.org_name = org.org_name
inner join project as p1 on p1.project_title = p.project_title 
inner join program as prog on prog.prog_name = p1.prog_name) order by organization;

create view projectaki as (select distinct concat(r.first_name, " ", r.last_name) as researcher_name,
p.project_title, e.full_name as executive_name, p.start_date as date, (YEAR(p.end_date)-YEAR(p.start_date)) as duration, p.funds as funds
from project as p 
inner join workson as w on w.project_title = p.project_title
inner join researcher as r on r.researcher_id = w.researcher_id
inner join executive as e on e.exec_id = p.exec_id);

CREATE VIEW PAIR_OF_FIELDS AS
select a.project_title, a.field, b.field as field1 from project_field a, project_field b
where a.project_title = b.project_title and a.field < b.field;
