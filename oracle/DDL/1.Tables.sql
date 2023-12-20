/* 
    TIPOS DE DADOS :
        + VARCHAR2  = Tamanho variável (máximo 4000 bytes)
            -> MAX_STRING_SIZE = EXTENDED (máximo 32767 bytes)
        + CHAR      = TAMANHO FIXO (máximo 2000 bytes)
        + DATE      = Data e Hora  
        + NUMBER(precisão, decimais) = (máximo 28 digitos)
        + LONG
        + CLOB
        + RAW       = Dados binários (máximo 2000 bytes)
            -> MAX_STRING_SIZE = EXTENDED (máximo 32767 bytes)
        + LONG RAW  = Dados binários (máximo 2GB - 1 byte)
*/

/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE TABLE projects (
    project_id      NUMBER(6)       NOT NULL,
    project_code    VARCHAR(10)     NOT NULL,
    project_name    VARCHAR(100)    NOT NULL,
    START_DATE      DATE,
    END_DATE        DATE,
    STATUS          VARCHAR(20)     NOT NULL,
    PRIORITY        VARCHAR(10)     NOT NULL,
    BUDGET          NUMBER(11,2)    NOT NULL,
    DESCRIPTION     VARCHAR(400)    NOT NULL
);


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT * FROM CLIENTE WHERE ROWID = 'ANy8+XAAAAAANfVAAB'


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE TABLE salario_empregados
AS
SELECT 
    c.codcli,
    c.pontos
FROM cliente c;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
TRUNCATE TABLE salario_empregados;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
DROP TABLE salario_empregados;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE salario_empregados
ADD (department_id NUMBER(5));


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE salario_empregados
DROP COLUMN department_id;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE salario_empregados
MODIFY (pontos NUMBER(15));


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE salario_empregados
RENAME COLUMN pontos TO SALARIO;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE salario_empregados READ ONLY;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
ALTER TABLE salario_empregados READ WRITE;