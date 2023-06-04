select f.cnpj AS CNPJ, f.nome AS NOME, f.email AS EMAIL
from fornecedor f
where f.home_page IS NULL;