/*
SUM      = soma
AVG      = média
COUNT    = contagem
ROUND    = arredondar
*/


select round(sum(f_valor_venda),2) from vendas;

select round(sum(f_valor_venda),2) from vendas 
where (d_data_venda >= "2020-01-20" AND d_data_venda <= "2020-10-15");

select round(avg(f_valor_venda)) from vendas;

select count(i_cliente_cliente) from vendas;

select round(avg(f_valor_venda),2) from vendas
where 
	f_valor_venda > (select min(f_valor_venda) from vendas) and
    f_valor_venda < (select max(f_valor_venda) from vendas)
;