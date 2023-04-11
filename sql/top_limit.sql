/*
	SQL SERVER
    select top 5 * from cliente
*/

/*
	ORACLE
    select * from clente where ROWNUM < 5
*/

select * from cliente limit 5;

select * from vendas order by f_valor_venda desc limit 5;