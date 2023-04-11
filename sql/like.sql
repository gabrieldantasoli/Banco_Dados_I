/*
% posição das letras
_ quantidade de caracteres
*/

select * from cliente
where s_nome_cliente like('%a');

select * from cliente 
where s_nome_cliente like('a%');

select * from cliente 
where s_nome_cliente like('a%a');



/*   palavre tipo "gabr"   */
select * from cliente
where s_nome_cliente like('g__r');


select * from cliente 
where s_nome_cliente like('_______a%');

select * from cliente 
where s_nome_cliente like('_______');


