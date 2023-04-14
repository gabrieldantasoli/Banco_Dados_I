DELIMITER $$
CREATE PROCEDURE maiordeidade(IN id_cliente Int, Out idade Int, OUT estado varchar(6))
BEGIN
	DECLARE dt date;
    SET dt = (select d_nascimento_cliente from cliente where i_cliente_cliente = id_cliente);
    SET idade = year(now()) - year(dt);
    if (idade >= 18) then
		SET estado = "Maior";
    else 
        SET estado = "Menor";
    end if;
END $$
DELIMITER ;

drop procedure maiordeidade;

call maiordeidade(11,@cliente1,@resultado1);
call maiordeidade(22,@cliente2,@resultado2);
select @cliente1,@resultado1;
select @cliente2,@resultado2;