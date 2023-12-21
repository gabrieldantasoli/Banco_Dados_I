/*
    CREATE SEQUENCE name
    [INCREMENT BY x]
    [START WITH y]
    [{MAXVALUE n | NOMAXVALUE}]
    [{MINVALUE n | NOMINVALUE}]
    [{CYCLE | NOCYCLE}]
    [{CACHE n | NOCACHE}]
*/

/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
CREATE SEQUENCE CLIENTE_SEQUENCE
INCREMENT BY 1
START WITH 1
NOMAXVALUE;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
SELECT CLIENTE_SEQUENCE.NEXTVAL
FROM DUAL;

SELECT CLIENTE_SEQUENCE.CURRVAL
FROM DUAL;


/* -------------------------------------------------------- */
/* IN MYSQL 1 */
/* IN ORACLE 1 */
INSERT INTO CATEGORIA (CODCAT, NOME)
VALUES (CATEGORIA_SEQ.NEXTVAL, 'Alimentos');