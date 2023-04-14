DELIMITER $$
CREATE PROCEDURE loopwhilesoma(IN maximus Int, OUT res Int)
begin
	
    DECLARE x int default 0;
    
    while (x < maximus) do
		set x = x + 1;
    end while;
    
    set res = x;
end $$
DELIMITER ;

call loopwhilesoma(100, @res1);
call loopwhilesoma(10, @res2);
call loopwhilesoma(5, @res3);

select @res1, @res2, @res3;