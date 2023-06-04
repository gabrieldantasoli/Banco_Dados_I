select p.nome as NOME_PRODUTO
from produto p
where extract(year from p.data_fabricacao) >= 2019 and 
      p.preco_venda >= 2000 and
      extract(year from p.data_validade) >= 2022 ;