create table teste(
    i int,
    valor1 float,
    valor2 float,
    valor3 int,
    check(
        (valor1 between .99 and 90) and
        (valor2 between 0.99 and 95.2) and 
        (valor3 between 0 and 1000)
    )
);

-- 0,99 - 90; 0,99 - 95,2; 0 - 1000;

insert into teste values (0,90,95,2,-100);

-- ---------------------------------------------------------

create table conta(
    numero char(15),
    nome varchar(30),
    nome_agencia varchar(30),
    saldo float,
    primary key(numero),
    constraint check_saldo_positivo check (saldo >= 0)
);

insert into conta values (0,'gabriel','051',0);
insert into conta values (-1,'gabriel','051',0);
insert into conta values (1,'gabriel','051',-1);
insert into conta values(1,'josé','053',1000);
select * from conta

alter table conta add constraint check_pk check (numero > 0);


ALTER TABLE Conta DROP CONSTRAINT check_saldo_positivo;

alter table conta add constraint check_pk check (numero >= 0)

------------------------------------------------

CREATE TRIGGER verificasaldo
AFTER UPDATE OF saldo ON conta2
FOR EACH ROW
WHEN (NEW.saldo > 2 * OLD.saldo)
BEGIN
    UPDATE conta2
    SET status = status + 1
    WHERE numero = :NEW.numero;
END;