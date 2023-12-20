/*
    TIPOS DE CONSTRAINTS:
        + PK  = PRIMARY KEY
        + FK  = FOREIGN KEY
        + U   = UNIQUE
        + C   = CHECK
*/

/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE TABLE projects (
    project_id      NUMBER(6)       NOT NULL,
    project_code    VARCHAR(10)     NOT NULL,
    project_name    VARCHAR(100)    NOT NULL,
    department_id   NUMBER(4)       NOT NULL,
    START_DATE      DATE,
    END_DATE        DATE,
    STATUS          VARCHAR(20)     NOT NULL,
    PRIORITY        VARCHAR(10)     NOT NULL,
    BUDGET          NUMBER(11,2)    NOT NULL,
    DESCRIPTION     VARCHAR(400)    NOT NULL,
    CONSTRAINT projects_project_id_pk PRIMARY KEY(project_id),
    CONSTRAINT projects_project_code_uk UNIQUE(project_code),
    CONSTRAINT projects_department_id_fk FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT projects_budjet_ck CHECK (budget > 0)
);


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE TABLE departments (
    department_id      NUMBER(6)       NOT NULL,
    department_name    VARCHAR(100)    NOT NULL,
    CONSTRAINT departments_department_id_pk PRIMARY KEY(department_id)
)


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE TABLE EMPLOYEES(
    employee_id        NUMBER(6)   NOT NULL,
    employee_name      NUMBER(6)   NOT NULL,
    CONSTRAINT employees_employee_id_pk PRIMARY KEY(employee_id)
);


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE TABLE TEAMS(
    project_id        NUMBER(6)   NOT NULL,
    employee_id      NUMBER(6)   NOT NULL,
    CONSTRAINT teams_project_id_fk FOREIGN KEY (project_id) REFERENCES projects (project_id) ON DELETE CASCADE,
    CONSTRAINT teams_employees_id_fk FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);

CREATE TABLE TEAMS(
    project_id        NUMBER(6)   NOT NULL,
    employee_id      NUMBER(6)   NOT NULL,
    CONSTRAINT teams_project_id_fk FOREIGN KEY (project_id) REFERENCES projects (project_id) ON DELETE SET NULL,
    CONSTRAINT teams_employees_id_fk FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
);


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE projects
DROP CONSTRAINT projects_budjet_ck;

ALTER TABLE projects
DROP CONSTRAINT projects_budjet_ck CASCADE;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE projects
ADD CONSTRAINT projects_budget_check CHECK (budget > 100);


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE projects
DISABLE CONSTRAINT projects_budget_check;

ALTER TABLE projects
ENABLE CONSTRAINT projects_budget_check;