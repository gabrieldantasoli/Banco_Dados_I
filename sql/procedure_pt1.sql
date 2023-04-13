DELIMITER $$
CREATE PROCEDURE maisLindo(IN innome varchar(50)) 
BEGIN
	
    DECLARE nome varchar(20);
    SET nome = 'Gabriel Dantas';
    select nome,innome;
    
    
END $$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE inteiro(IN number1 Int, In number2 Int)
BEGIN
	
    DECLARE comparation boolean;
    SET comparation = number1 > number2;
    select number1, number2, comparation as comp;
    
END $$
DELIMITER ;



call maisLindo("Oliveira");
call inteiro(1, 2);
call inteiro(1,1);
call inteiro(2,1);

drop procedure maisLindo;
drop procedure inteiro;