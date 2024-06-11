SELECT count(*) FROM usuarios; --verificação de quantidade de linhas no database


DROP TABLE IF EXISTS "usuarios"; --apagar tabela "usuarios" se caso existir

CREATE TABLE "usuarios" (  --criara uma nova tabela com as informações listadas abaixo
  id SERIAL PRIMARY KEY,
  nome varchar(255) default NULL,
  email varchar(255) default NULL,
  telefone varchar(100) default NULL,
  idade integer NULL,
  cadastro varchar(255)
  );

INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (1, 'Ramona', 'ramona@example.com', '1234567890', 30, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (2, 'Joaquin', 'joaquin@example.com', '0987654321', 25, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (3, 'Maria', 'maria@example.com', '1122334455', 28, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (4, 'Adriana', 'adriana@example.com', '2109876543', 22, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (5, 'Beatriz', 'beatriz@example.com', '3210987654', 34, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (6, 'Carlos', 'carlos@example.com', '4321098765', 29, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (7, 'Daniela', 'daniela@example.com', '5432109876', 31, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (8, 'Eduardo', 'eduardo@example.com', '6543210987', 27, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (9, 'Fernanda', 'fernanda@example.com', '7654321098', 33, '2024-06-05');
INSERT INTO "usuarios" (id, nome, email, telefone, idade, cadastro) VALUES (10, 'Gustavo', 'gustavo@example.com', NULL, 26, '2024-06-05');


SELECT concat(nome, ' - ', email) AS "nome e email" FROM usuarios; --para concatenar/unificar NOME + EMAIL e mostrar os dois valores

SELECT round(avg(idade)) FROM usuarios; --para saber a media de IDADEdos usuarios listados,
-- tambem é possivel adicionar CASAS DECIMAIS em **round(avg(idade), 3)** 

SELECT idade FROM usuarios ORDER BY idade DESC LIMIT 1; --mostra a maior idade na tabela, pois ela começa do maior p o menor
SELECT idade FROM usuarios ORDER BY idade ASC LIMIT 1; --mostra a MENOR idade da tebala, pois ela começa do menor p o maior

SELECT sum(id) FROM usuarios; -- funçao de somar. Neste caso esta somando todos IDs da tabela, geralmente se usa para contar estoque.Basta subsituir o ID por qlqr outro da tabela.

SELECT id || ' - ' || nome || ' - ' || COALESCE(telefone, 'Não possui')
FROM usuarios ORDER BY id; -- junção/concatenacao de id + nome + telefone, caso o tel não exista aparece a msg "não possui" pois está NULL, sem informações agenda.

SELECT idade, count(*) FROM usuarios WHERE idade = 28 GROUP BY idade; -- selecionara a coluna idade da tabela de usuarios onde houver idade=28 apenas

SELECT * FROM usuarios WHERE idade = 30; -- selecionara todos da tabela usuarios onde idade=30

SELECT CAST(cadastro AS date), count(*)
FROM usuarios GROUP BY CAST(cadastro AS date); -- agrupa os registros pela data de cadastro (ignorando a hora) e conta quantos usuários foram cadastrados em cada dia.


