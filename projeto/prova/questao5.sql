delete from compra 
where idproduto in (
    select idproduto
    from produto
    where categoria = 'Limpeza')
and quantidade < 10;