CREATE OR REPLACE TRIGGER update_on_estoque
after update of estoque on produto
for each row
when (NEW.estoque < 5) 
begin
    insert into compra(produto,qtd) values(NEW.produto, NEW.quantidade)
end;