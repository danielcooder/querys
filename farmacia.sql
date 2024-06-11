DROP TABLE IF EXISTS "farmacia"; --apagar tabela "usuarios" se caso existir

CREATE TABLE farmacia (
    id SERIAL PRIMARY KEY,
    categoria VARCHAR(50),
    medicamentos VARCHAR(100),
    estoque INTEGER
);

INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (19,'Red', 'Dipirona', 25);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (50,'Blue', 'Paracetamol', 30);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (33,'Green', 'Ibuprofeno', 15);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (15,'Yellow', 'Amoxicilina', 50);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (14,'Purple', 'Omeprazol', 20);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (18,'Orange', 'Metformina', 40);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (8,'Pink', 'Atenolol', 35);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (55,'Brown', 'Sinvastatina', 45);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (25,'Black', 'Losartana', 55);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (22,'White', 'Levotiroxina', 60);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (17,'Gray', 'Azitromicina', 18);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (41,'Gold', 'Varfarina', 22);
INSERT INTO "farmacia" (id, categoria, medicamentos, estoque) VALUES (57,'Silver', 'Metoprolol', 28);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (80,'Beige', 'Clopidogrel', 33);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (1,'Cyan', 'Alopurinol', 37);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (77,'Magenta', 'Lisinopril', 42);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (12,'Lime', 'Furosemida', 47);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (14,'Teal', 'Ciprofloxacino', 52);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (10,'Navy', 'Doxiciclina', 57);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (45,'Coral', 'Prednisona', 62);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (60,'Maroon', 'Hidroclorotiazida', 17);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (5,'Lavender', 'Gliclazida', 24);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (3,'Turquoise', 'Tramadol', 29);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (21,'Mint', 'Atorvastatina', 34);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (19,'Peach', 'Escitalopram', 39);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (70,'Plum', 'Lansoprazol', 44);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (20,'Indigo', 'Hidralazina', 49);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (11,'Azure', 'Ranitidina', 54);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (88,'Fuchsia', 'Enalapril', 59);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (8,'Orchid', 'Amlodipino', 64);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (37,'Crimson', 'Rosuvastatina', 19);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (21,'Amber', 'Glimepirida', 23);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (23,'Ivory', 'Montelucaste', 27);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (14,'Charcoal', 'Carvedilol', 32);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES (41,'Chocolate', 'Tansulosina', 36);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Violet', 'Nebivolol', 41);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Tan', 'Sitagliptina', 46);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Scarlet', 'Pantoprazol', 51);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Sapphire', 'Fluoxetina', 56);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Blush', 'Ramipril', 61);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Ruby', 'Quetiapina', 16);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Emerald', 'Metotrexato', 21);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Topaz', 'Naproxeno', 26);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Periwinkle', 'Citalopram', 31);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Mauve', 'Valsartana', 38);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Cobalt', 'Clonazepam', 43);
INSERT INTO "farmacia" (categoria, medicamentos, estoque) VALUES ('Aqua', 'Zolpidem', 48);


--EXERCICIO:

--faça uma query que retorne a quantidade de produtos agrupados por categoria...
SELECT categoria, COUNT(*) AS total_produtos FROM farmacia GROUP BY categoria;

--e faça a soma do estoque de todos os produtos de cada categoria
SELECT categoria, SUM(estoque) AS total_estoque FROM farmacia GROUP BY categoria;


SELECT categoria, COUNT(*) AS quantidade_produtos, SUM(estoque) AS total_estoque
FROM farmacia GROUP BY categoria;


