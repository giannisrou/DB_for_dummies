CREATE INDEX idx_researcher_id ON WorksOn(researcher_ID);
CREATE INDEX idx_project_supervisor_id ON Project(supervisor_ID);
CREATE INDEX idx_project_evaluator_id ON Project(evaluator_ID);
CREATE INDEX idx_project_executive_id ON Project(exec_ID);

CREATE INDEX idx_project_org_name ON Project(org_name);
CREATE INDEX idx_res_org_name ON Researcher(org_name);
CREATE INDEX idx_project_title ON WorksOn(project_title);
CREATE INDEX idx_Field_project_title ON Project_Field(project_title);
CREATE INDEX idx_Deliverable_project_title ON Deliverable(project_title);
CREATE INDEX idx_start_date ON Project(start_date);

