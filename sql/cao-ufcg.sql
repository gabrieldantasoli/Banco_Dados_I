CREATE DATABASE ufcg;



CREATE TABLE cao (
	i_id_cao Int primary key auto_increment,
    s_periodo_cao varchar(7) not null,
    b_estagio_cao boolean not null,
    b_ativo_cao boolean not null,
    i_aluno_cao Int not null
);

CREATE TABLE alunos (
	i_matricula_alunos Int primary key auto_increment,
    s_nome_alunos varchar(40) not null,
    s_email_alunos varchar(40) not null
);

ALTER TABLE cao ADD CONSTRAINT relacaoalunocao FOREIGN KEY (i_aluno_cao) REFERENCES alunos (i_matricula_alunos);

INSERT INTO alunos VALUES ("121110669", "Gabriel Dantas de Oliveira","gabriel.dantas.oliveira@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110670", "Maria da Silva","maria.silva@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110671", "João Pedro","joao.pedro@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110672", "Camila Mendes","camila.mendes@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110673", "Felipe Souza","felipe.souza@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110674", "Amanda Santos","amanda.santos@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110675", "Rafael Marques","rafael.marques@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110676", "Juliana Costa","juliana.costa@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110677", "Lucas Cardoso","lucas.cardoso@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110678", "Thiago Oliveira","thiago.oliveira@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110679", "Roberta Souza","roberta.souza@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110680", "Fernando Lima","fernando.lima@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110681", "Ana Paula","ana.paula@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110682", "Luis Santos","luis.santos@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110683", "Marcela Soares","marcela.soares@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110684", "Maurício Pereira","mauricio.pereira@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110685", "Silvia Fernandes","silvia.fernandes@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110686", "Ricardo Barbosa","ricardo.barbosa@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110687", "Gustavo Silva","gustavo.silva@ccc.ufcg.edu.br");
INSERT INTO alunos VALUES ("121110688", "Letícia Oliveira","leticia.oliveira@ccc.ufcg.edu.br");

insert into cao values (183733, "2021.1", 0, 1, "121110669");
insert into cao values (183734, "2021.1", 0, 1, "121110670");

select * from cao;