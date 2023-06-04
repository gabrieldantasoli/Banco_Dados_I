SELECT f.nome, COUNT(*) AS TOTAL_FORNECIMENTOS
FROM fornecedor f
INNER JOIN fornecimento fn ON f.codforn = fn.codigo_fornecedor
GROUP BY f.nome
ORDER BY COUNT(*) DESC
FETCH FIRST 3 ROWS ONLY;