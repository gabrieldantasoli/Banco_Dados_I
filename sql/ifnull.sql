#MySQL = IFNULL ou COALESCE
#sqlServer = ISNULL
#ORACLE = NVL

select 
	*,round((f_precoun_produtovenda * IFNULL(i_qtde_produtovenda,0))) as 'TOTAL' 
from produtovenda;

update produtovenda set i_qtde_produtovenda=null where i_produtovenda_produtovenda=1;

