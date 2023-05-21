CREATE DATABASE firma;

CREATE TABLE firma.empregado (
	matricula INT NOT NULL,
    nome varchar(50) NOT NULL,
    endereco varchar(50),
    salario FLOAT NOT NULL,
    supervisor INT,
    depto INT not null,
    PRIMARY KEY (matricula),
    check (salario >= 0),
    FOREIGN KEY (supervisor) references firma.empregado(matricula),
    FOREIGN KEY (depto) references firma.departamento(coddep)
);

CREATE TABLE firma.departamento(
	coddep INT NOT NULL,
    nome varchar(25) not null,
    gerente INT,
    datainit DATE,
    PRIMARY KEY (coddep)
);

CREATE TABLE firma.projeto(
	codproj int not null,
    nome varchar(20) not null,
    local varchar(20) not null,
	depart int not null,
    primary key (codproj),
    FOREIGN KEY (depart) references firma.departamento(coddep)
);

CREATE TABLE firma.alocacao(
	matric int not null,
    codproj int not null,
    horas float not null,
    PRIMARY KEY (matric),
    FOREIGN KEY (codproj) references firma.projeto(codproj)
);

DROP TABLE firma.projeto;