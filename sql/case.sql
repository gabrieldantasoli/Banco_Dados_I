select * from cliente;

select 
	i_cliente_cliente as cliente,
    s_nome_cliente as nome,
    s_cpf_cliente as cpf,
    case 
		when d_nascimento_cliente is null then '0000-00-00'
        else d_nascimento_cliente
	end 'Nasc',
    i_tipo_cliente as tipo,
    case 
		when (datediff(now(),d_nascimento_cliente)/365) > 18 then "Maior"
        else "Menor"
    end 'Idade'
from cliente;