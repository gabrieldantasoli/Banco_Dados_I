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