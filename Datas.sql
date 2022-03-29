INSERT INTO Address VALUES (1, '131 Avenue de Lodeve', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (2, '10 Rue Foch', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (3, '3 Impasse de la Fondue', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (4, '12 Rue des Acacias', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (5, '5 Rue des Acconiers', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (6, '8 Rue des Aconits', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (7, '12 Rue des Musardises', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (8, '8 Rue du Muguet', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (9, '1 Impasse de Moulins', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (10, "4 Rue de l'Agenais", NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (11, "2 Rue de l'Aiglon", NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (12, '9 Rue Fournarie', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (13, '5 Rue Fontenille', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (14, '7 Rue des Fraisiers', NULL, '34080', 'Montpellier');
INSERT INTO Address VALUES (15, '17 Rue des Fraisiers', NULL, '34080', 'Montpellier');

INSERT INTO Address VALUES (16, '3 Allee des Chenes', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (17, '33 Avenue Alfred Sauvy', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (18, '22 Avenue Bruxelles', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (19, '17 Avenue du General de Gaulle', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (20, '5 Rue du Castillet', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (21, '11 Rue des Tuileries', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (22, '2 Rue du 14 Juillet', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (23, '5 Rue du Marechal Foch', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (24, '6 Rue du Theatre', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (25, '9 Boulevard Frederic Mistral', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (26, '39 Boulevard Felix Mercader', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (27, '14 Rue du Rivage', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (28, '6 Rue des Embruns', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (29, '22 Rue de la Barre', NULL, '66000', 'Perpignan');
INSERT INTO Address VALUES (30, '12 Rue de la Barre', NULL, '66000', 'Perpignan');

INSERT INTO Address VALUES (31, '3 Rue Saint-Denis', NULL, '75001', 'Paris');
INSERT INTO Address VALUES (32, '13 Rue Saint-Florentin', NULL, '75001', 'Paris');
INSERT INTO Address VALUES (33, '1 Rue Santerre', NULL, '75012', 'Paris');
INSERT INTO Address VALUES (34, '7 Rue Sauval', NULL, '75000', 'Paris');
INSERT INTO Address VALUES (35, '12 Rue Gutenberg', NULL, '75015', 'Paris');
INSERT INTO Address VALUES (36, '9 Rue Guynemer', NULL, '75006', 'Paris');
INSERT INTO Address VALUES (37, '15 Rue Halevy', NULL, '75009', 'Paris');
INSERT INTO Address VALUES (38, '2 Rue Gustave Flaubert', NULL, '75017', 'Paris');
INSERT INTO Address VALUES (39, '1 Rue Haxo', NULL, '75019', 'Paris');
INSERT INTO Address VALUES (40, '32 Rue Henner', NULL, '75009', 'Paris');
INSERT INTO Address VALUES (41, '6 Rue Hassard', NULL, '75019', 'Paris');
INSERT INTO Address VALUES (42, '2 Rue Jacquard', NULL, '75011', 'Paris');
INSERT INTO Address VALUES (43, '16 Rue Houdon', NULL, '75018', 'Paris');
INSERT INTO Address VALUES (44, '11 Rue Jacquemont', NULL, '75017', 'Paris');
INSERT INTO Address VALUES (45, '11 Rue Helene Brion', NULL, '75013', 'Paris');



INSERT INTO Shop VALUES (1, 'OC Pizza Montpellier', 1);
INSERT INTO Shop VALUES (2, 'OC Pizza Perpignan', 16);
INSERT INTO Shop VALUES (3, 'OC Pizza Paris', 31);



INSERT INTO Customer VALUES (1, 'Doe', 'John', STR_TO_DATE('17/12/1970', '%d/%m/%Y'), '0600000000', 'john.doe@mail.com', 'Testmdp', 2, 1);
INSERT INTO Customer VALUES (2, 'Doe', 'Jane', STR_TO_DATE('18/01/1971', '%d/%m/%Y'), '0600000001', 'jane.doe@mail.com', 'Testmdp', 3, 1);
INSERT INTO Customer VALUES (3, 'Martin', 'Celine', STR_TO_DATE('19/02/1972', '%d/%m/%Y'), '0600000002', 'celine.martin@mail.com', 'Testmdp', 4, 1);
INSERT INTO Customer VALUES (4, 'Bernard', 'Yannick', STR_TO_DATE('20/03/1973', '%d/%m/%Y'), '0600000003', 'yannick.bernard@mail.com', 'Testmdp', 5, 1);
INSERT INTO Customer VALUES (5, 'Thomas', 'Justin', STR_TO_DATE('21/04/1974', '%d/%m/%Y'), '0600000004', 'justin.thomas@mail.com', 'Testmdp', 6, 1);
INSERT INTO Customer VALUES (6, 'Petit', 'Marie', STR_TO_DATE('22/05/1975', '%d/%m/%Y'), '0600000005', 'marie.petit@mail.com', 'Testmdp', 7, 1);
INSERT INTO Customer VALUES (7, 'Robert', 'Clement', STR_TO_DATE('23/06/1976', '%d/%m/%Y'), '0600000006', 'clement.robert@mail.com', 'Testmdp', 8, 1);
INSERT INTO Customer VALUES (8, 'Richard', 'Paul', STR_TO_DATE('24/07/1977', '%d/%m/%Y'), '0600000007', 'paul.richard@mail.com', 'Testmdp', 9, 1);
INSERT INTO Customer VALUES (9, 'Durand', 'Ellie', STR_TO_DATE('25/08/1978', '%d/%m/%Y'), '0600000008', 'ellie.durand@mail.com', 'Testmdp', 10, 1);
INSERT INTO Customer VALUES (10, 'Dubois', 'Gabriel', STR_TO_DATE('26/09/1979', '%d/%m/%Y'), '0600000009', 'gabriel.dubois@mail.com', 'Testmdp', 11, 1);

INSERT INTO Customer VALUES (11, 'Morau', 'Martine', STR_TO_DATE('27/10/1980', '%d/%m/%Y'), '0600000010', 'martine.morau@mail.com', 'Testmdp', 17, 2);
INSERT INTO Customer VALUES (12, 'Laurent', 'Eva', STR_TO_DATE('28/11/1981', '%d/%m/%Y'), '0600000011', 'eva.laurent@mail.com', 'Testmdp', 18, 2);
INSERT INTO Customer VALUES (13, 'Simon', 'Tony', STR_TO_DATE('29/12/1982', '%d/%m/%Y'), '0600000012', 'tony.simon@mail.com', 'Testmdp', 19, 2);
INSERT INTO Customer VALUES (14, 'Michel', 'Brice', STR_TO_DATE('30/01/1983', '%d/%m/%Y'), '0600000013', 'brice.michel@mail.com', 'Testmdp', 20, 2);
INSERT INTO Customer VALUES (15, 'Lefevre', 'Laure', STR_TO_DATE('31/03/1984', '%d/%m/%Y'), '0600000014', 'laure.lefevre@mail.com', 'Testmdp', 21, 2);
INSERT INTO Customer VALUES (16, 'Liroy', 'Camille', STR_TO_DATE('01/02/1985', '%d/%m/%Y'), '0600000015', 'camille.liroy@mail.com', 'Testmdp', 22, 2);
INSERT INTO Customer VALUES (17, 'Roux', 'Lilian', STR_TO_DATE('02/04/1986', '%d/%m/%Y'), '0600000016', 'lilian.roux@mail.com', 'Testmdp', 23, 2);
INSERT INTO Customer VALUES (18, 'David', 'Laurence', STR_TO_DATE('03/05/1987', '%d/%m/%Y'), '0600000017', 'laurence.david@mail.com', 'Testmdp', 24, 2);
INSERT INTO Customer VALUES (19, 'Bertrand', 'Jerome', STR_TO_DATE('04/06/1988', '%d/%m/%Y'), '0600000018', 'jerome.bertrand@mail.com', 'Testmdp', 25, 2);
INSERT INTO Customer VALUES (20, 'Morel', 'Patrice', STR_TO_DATE('05/07/1989', '%d/%m/%Y'), '0600000019', 'patrice.morel@mail.com', 'Testmdp', 26, 2);

INSERT INTO Customer VALUES (21, 'Fournier', 'Leo', STR_TO_DATE('06/08/1990', '%d/%m/%Y'), '0600000020', 'leo.fournier@mail.com', 'Testmdp', 32, 3);
INSERT INTO Customer VALUES (22, 'Girard', 'Raphael', STR_TO_DATE('07/09/1991', '%d/%m/%Y'), '0600000021', 'raphael.girard@mail.com', 'Testmdp', 33, 3);
INSERT INTO Customer VALUES (23, 'Bonnet', 'Arthur', STR_TO_DATE('08/10/1992', '%d/%m/%Y'), '0600000022', 'arthur.bonnet@mail.com', 'Testmdp', 34, 3);
INSERT INTO Customer VALUES (24, 'Dupont', 'Jules', STR_TO_DATE('09/11/1993', '%d/%m/%Y'), '0600000023', 'jules.dupont@mail.com', 'Testmdp', 35, 3);
INSERT INTO Customer VALUES (25, 'Lambert', 'Lucas', STR_TO_DATE('10/12/1994', '%d/%m/%Y'), '0600000024', 'lucas.lambert@mail.com', 'Testmdp', 36, 3);
INSERT INTO Customer VALUES (26, 'Fontaine', 'Hugo', STR_TO_DATE('11/01/1995', '%d/%m/%Y'), '0600000025', 'hugo.fontaine@mail.com', 'Testmdp', 37, 3);
INSERT INTO Customer VALUES (27, 'Rousseaux', 'Louis', STR_TO_DATE('12/02/1996', '%d/%m/%Y'), '0600000026', 'louis.rousseaux@mail.com', 'Testmdp', 38, 3);
INSERT INTO Customer VALUES (28, 'Vincent', 'Samuel', STR_TO_DATE('13/03/1997', '%d/%m/%Y'), '0600000027', 'samuel.vincent@mail.com', 'Testmdp', 39, 3);
INSERT INTO Customer VALUES (29, 'Muller', 'Louise', STR_TO_DATE('14/04/1998', '%d/%m/%Y'), '0600000028', 'louise.muller@mail.com', 'Testmdp', 40, 3);
INSERT INTO Customer VALUES (30, 'Faure', 'Alice', STR_TO_DATE('15/05/1999', '%d/%m/%Y'), '0600000029', 'alice.faure@mail.com', 'Testmdp', 41, 3);



INSERT INTO Ingredient VALUES (1, 'Sauce tomate');
INSERT INTO Ingredient VALUES (2, 'Creme fraiche');
INSERT INTO Ingredient VALUES (3, 'Chevre');
INSERT INTO Ingredient VALUES (4, 'Mozzarella');
INSERT INTO Ingredient VALUES (5, 'Emmental');
INSERT INTO Ingredient VALUES (6, 'Roquefort');
INSERT INTO Ingredient VALUES (7, 'Oignon');
INSERT INTO Ingredient VALUES (8, 'Olive');
INSERT INTO Ingredient VALUES (9, 'Jambon');
INSERT INTO Ingredient VALUES (10, 'Champignon');
INSERT INTO Ingredient VALUES (11, 'Viande Hachee');
INSERT INTO Ingredient VALUES (12, 'Oeuf');
INSERT INTO Ingredient VALUES (13, 'Pepperonie');
INSERT INTO Ingredient VALUES (14, 'Lardon');
INSERT INTO Ingredient VALUES (15, 'Pomme de terre');
INSERT INTO Ingredient VALUES (16, 'Fromage Raclette');
INSERT INTO Ingredient VALUES (17, 'Miel');
INSERT INTO Ingredient VALUES (18, 'Ananas');



INSERT INTO Recipe VALUES (1, 'Recette pizza 4 fromages');
INSERT INTO Recipe VALUES (2, 'Recette pizza royale');
INSERT INTO Recipe VALUES (3, 'Recette pizza montagnarde');
INSERT INTO Recipe VALUES (4, 'Recette pizza calzone');
INSERT INTO Recipe VALUES (5, 'Recette pizza chevre miel');
INSERT INTO Recipe VALUES (6, 'Recette pizza hawaienne');
INSERT INTO Recipe VALUES (7, 'Recette pizza pepperoni');



INSERT INTO Pizza VALUES (1, 'Pizza 4 fromages', 10.0, 1);
INSERT INTO Pizza VALUES (2, 'Pizza royale', 10.0, 2);
INSERT INTO Pizza VALUES (3, 'Pizza montagnarde', 10.0, 3);
INSERT INTO Pizza VALUES (4, 'Pizza calzone', 10.0, 4);
INSERT INTO Pizza VALUES (5, 'Pizza chevre miel', 10.0, 5);
INSERT INTO Pizza VALUES (6, 'Pizza hawaienne', 10.0, 6);
INSERT INTO Pizza VALUES (7, 'Pizza pepperoni', 10.0, 7);



INSERT INTO Status VALUES (1, 'PANIER');
INSERT INTO Status VALUES (2, 'PRIS EN COMPTE');
INSERT INTO Status VALUES (3, 'EN PREPARATION');
INSERT INTO Status VALUES (4, 'EN CUISSON');
INSERT INTO Status VALUES (5, 'PRETE');
INSERT INTO Status VALUES (6, 'EN LIVRAISON');
INSERT INTO Status VALUES (7, 'TERMINEE');



INSERT INTO Invoice VALUES (1, 10.0, STR_TO_DATE('20/01/2022 12:05:20', '%d/%m/%Y %H:%i:%s'));
INSERT INTO Invoice VALUES (2, 10.0, STR_TO_DATE('05/01/2022 12:22:01', '%d/%m/%Y %H:%i:%s'));
INSERT INTO Invoice VALUES (3, 10.0, STR_TO_DATE('31/01/2022 19:51:55', '%d/%m/%Y %H:%i:%s'));


-- Cart
INSERT INTO Order_ VALUES (1, 1, 1, NULL);
INSERT INTO Order_ VALUES (2, 2, 1, NULL);
INSERT INTO Order_ VALUES (3, 3, 1, NULL);
INSERT INTO Order_ VALUES (4, 4, 1, NULL);
INSERT INTO Order_ VALUES (5, 5, 1, NULL);
INSERT INTO Order_ VALUES (6, 6, 1, NULL);
INSERT INTO Order_ VALUES (7, 7, 1, NULL);
INSERT INTO Order_ VALUES (8, 8, 1, NULL);
INSERT INTO Order_ VALUES (9, 9, 1, NULL);
INSERT INTO Order_ VALUES (10, 10, 1, NULL);

INSERT INTO Order_ VALUES (11, 11, 1, NULL);
INSERT INTO Order_ VALUES (12, 12, 1, NULL);
INSERT INTO Order_ VALUES (13, 13, 1, NULL);
INSERT INTO Order_ VALUES (14, 14, 1, NULL);
INSERT INTO Order_ VALUES (15, 15, 1, NULL);
INSERT INTO Order_ VALUES (16, 16, 1, NULL);
INSERT INTO Order_ VALUES (17, 17, 1, NULL);
INSERT INTO Order_ VALUES (18, 18, 1, NULL);
INSERT INTO Order_ VALUES (19, 19, 1, NULL);
INSERT INTO Order_ VALUES (20, 20, 1, NULL);

INSERT INTO Order_ VALUES (21, 21, 1, NULL);
INSERT INTO Order_ VALUES (22, 22, 1, NULL);
INSERT INTO Order_ VALUES (23, 23, 1, NULL);
INSERT INTO Order_ VALUES (24, 24, 1, NULL);
INSERT INTO Order_ VALUES (25, 25, 1, NULL);
INSERT INTO Order_ VALUES (26, 26, 1, NULL);
INSERT INTO Order_ VALUES (27, 27, 1, NULL);
INSERT INTO Order_ VALUES (28, 28, 1, NULL);
INSERT INTO Order_ VALUES (29, 29, 1, NULL);
INSERT INTO Order_ VALUES (30, 30, 1, NULL);

-- Order_ with invoice for completed status
INSERT INTO Order_ VALUES (31, 1, 7, 1);
INSERT INTO Order_ VALUES (32, 7, 7, 2);
INSERT INTO Order_ VALUES (33, 20, 7, 3);



INSERT INTO Role VALUES (1, 'Employe');
INSERT INTO Role VALUES (2, 'Directeur du restaurant');



INSERT INTO Employee VALUES (1, 'Fabre', 'Axel', STR_TO_DATE('17/12/1970', '%d/%m/%Y'), '0600000030', 'axel.fabre@mail.com', 'Testmdp', 2, 12, 1);
INSERT INTO Employee VALUES (2, 'Aubert', 'Jade', STR_TO_DATE('18/01/1981', '%d/%m/%Y'), '0600000031', 'jade.aubert@mail.com', 'Testmdp', 1, 13, 1);
INSERT INTO Employee VALUES (3, 'Lemoine', 'Samuel', STR_TO_DATE('19/02/1982', '%d/%m/%Y'), '0600000032', 'samuel.lemoine@mail.com', 'Testmdp', 1, 14, 1);
INSERT INTO Employee VALUES (4, 'Colin', 'Alice', STR_TO_DATE('20/03/1983', '%d/%m/%Y'), '0600000033', 'alice.colin@mail.com', 'Testmdp', 1, 15, 1);

INSERT INTO Employee VALUES (5, 'Olivier', 'Rose', STR_TO_DATE('21/04/1971', '%d/%m/%Y'), '0600000034', 'rose.olivier@mail.com', 'Testmdp', 2, 27, 2);
INSERT INTO Employee VALUES (6, 'Pierre', 'Augustin', STR_TO_DATE('22/05/1985', '%d/%m/%Y'), '0600000035', 'augustin.pierre@mail.com', 'Testmdp', 1, 28, 2);
INSERT INTO Employee VALUES (7, 'Rey', 'Lea', STR_TO_DATE('23/06/1988', '%d/%m/%Y'), '0600000036', 'lea.rey@mail.com', 'Testmdp', 1, 29, 2);
INSERT INTO Employee VALUES (8, 'Payet', 'Antoine', STR_TO_DATE('24/07/1987', '%d/%m/%Y'), '0600000037', 'antoine.payet@mail.com', 'Testmdp', 1, 30, 2);

INSERT INTO Employee VALUES (9, 'Lejeune', 'Valentin', STR_TO_DATE('25/08/1973', '%d/%m/%Y'), '0600000038', 'valentin.lejeune@mail.com', 'Testmdp', 2, 42, 3);
INSERT INTO Employee VALUES (10, 'Barthelemy', 'Ines', STR_TO_DATE('26/09/1985', '%d/%m/%Y'), '0600000039', 'ines.barthelemy@mail.com', 'Testmdp', 1, 43, 3);
INSERT INTO Employee VALUES (11, 'Cordier', 'Agathe', STR_TO_DATE('27/10/1986', '%d/%m/%Y'), '0600000040', 'agathe.cordier@mail.com', 'Testmdp', 1, 44, 3);
INSERT INTO Employee VALUES (12, 'Chevalier', 'Leonie', STR_TO_DATE('28/11/1989', '%d/%m/%Y'), '0600000041', 'leonie.chevalier@mail.com', 'Testmdp', 1, 45, 3);



INSERT INTO PizzaHasIngredient VALUES (1, 2, 100.0);
INSERT INTO PizzaHasIngredient VALUES (1, 3, 100.0);
INSERT INTO PizzaHasIngredient VALUES (1, 4, 100.0);
INSERT INTO PizzaHasIngredient VALUES (1, 5, 100.0);
INSERT INTO PizzaHasIngredient VALUES (1, 6, 100.0);

INSERT INTO PizzaHasIngredient VALUES (2, 1, 100.0);
INSERT INTO PizzaHasIngredient VALUES (2, 8, 100.0);
INSERT INTO PizzaHasIngredient VALUES (2, 9, 100.0);
INSERT INTO PizzaHasIngredient VALUES (2, 10, 100.0);

INSERT INTO PizzaHasIngredient VALUES (3, 2, 100.0);
INSERT INTO PizzaHasIngredient VALUES (3, 14, 100.0);
INSERT INTO PizzaHasIngredient VALUES (3, 15, 100.0);
INSERT INTO PizzaHasIngredient VALUES (3, 16, 100.0);

INSERT INTO PizzaHasIngredient VALUES (4, 1, 100.0);
INSERT INTO PizzaHasIngredient VALUES (4, 8, 100.0);
INSERT INTO PizzaHasIngredient VALUES (4, 9, 100.0);
INSERT INTO PizzaHasIngredient VALUES (4, 10, 100.0);
INSERT INTO PizzaHasIngredient VALUES (4, 12, 100.0);

INSERT INTO PizzaHasIngredient VALUES (5, 2, 100.0);
INSERT INTO PizzaHasIngredient VALUES (5, 3, 100.0);
INSERT INTO PizzaHasIngredient VALUES (5, 5, 100.0);
INSERT INTO PizzaHasIngredient VALUES (5, 17, 100.0);

INSERT INTO PizzaHasIngredient VALUES (6, 1, 100.0);
INSERT INTO PizzaHasIngredient VALUES (6, 5, 100.0);
INSERT INTO PizzaHasIngredient VALUES (6, 7, 100.0);
INSERT INTO PizzaHasIngredient VALUES (6, 9, 100.0);
INSERT INTO PizzaHasIngredient VALUES (6, 18, 100.0);

INSERT INTO PizzaHasIngredient VALUES (7, 1, 100.0);
INSERT INTO PizzaHasIngredient VALUES (7, 5, 100.0);
INSERT INTO PizzaHasIngredient VALUES (7, 7, 100.0);
INSERT INTO PizzaHasIngredient VALUES (7, 8, 100.0);
INSERT INTO PizzaHasIngredient VALUES (7, 13, 100.0);



INSERT INTO Stock VALUES (1, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 1, 1);
INSERT INTO Stock VALUES (2, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 2, 1);
INSERT INTO Stock VALUES (3, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 3, 1);
INSERT INTO Stock VALUES (4, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 4, 1);
INSERT INTO Stock VALUES (5, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 5, 1);
INSERT INTO Stock VALUES (6, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 6, 1);
INSERT INTO Stock VALUES (7, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 7, 1);
INSERT INTO Stock VALUES (8, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 8, 1);
INSERT INTO Stock VALUES (9, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 9, 1);
INSERT INTO Stock VALUES (10, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 10, 1);
INSERT INTO Stock VALUES (11, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 11, 1);
INSERT INTO Stock VALUES (12, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 12, 1);
INSERT INTO Stock VALUES (13, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 13, 1);
INSERT INTO Stock VALUES (14, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 14, 1);
INSERT INTO Stock VALUES (16, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 15, 1);
INSERT INTO Stock VALUES (17, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 16, 1);
INSERT INTO Stock VALUES (18, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 17, 1);
INSERT INTO Stock VALUES (19, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 18, 1);

INSERT INTO Stock VALUES (20, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 1, 2);
INSERT INTO Stock VALUES (21, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 2, 2);
INSERT INTO Stock VALUES (23, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 3, 2);
INSERT INTO Stock VALUES (24, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 4, 2);
INSERT INTO Stock VALUES (25, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 5, 2);
INSERT INTO Stock VALUES (26, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 6, 2);
INSERT INTO Stock VALUES (27, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 7, 2);
INSERT INTO Stock VALUES (28, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 8, 2);
INSERT INTO Stock VALUES (29, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 9, 2);
INSERT INTO Stock VALUES (30, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 10, 2);
INSERT INTO Stock VALUES (31, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 11, 2);
INSERT INTO Stock VALUES (32, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 12, 2);
INSERT INTO Stock VALUES (33, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 13, 2);
INSERT INTO Stock VALUES (34, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 14, 2);
INSERT INTO Stock VALUES (35, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 15, 2);
INSERT INTO Stock VALUES (36, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 16, 2);
INSERT INTO Stock VALUES (37, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 17, 2);
INSERT INTO Stock VALUES (38, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 18, 2);

INSERT INTO Stock VALUES (39, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 1, 3);
INSERT INTO Stock VALUES (40, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 2, 3);
INSERT INTO Stock VALUES (41, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 3, 3);
INSERT INTO Stock VALUES (42, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 4, 3);
INSERT INTO Stock VALUES (43, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 5, 3);
INSERT INTO Stock VALUES (44, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 6, 3);
INSERT INTO Stock VALUES (45, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 7, 3);
INSERT INTO Stock VALUES (46, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 8, 3);
INSERT INTO Stock VALUES (47, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 9, 3);
INSERT INTO Stock VALUES (48, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 10, 3);
INSERT INTO Stock VALUES (49, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 11, 3);
INSERT INTO Stock VALUES (50, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 12, 3);
INSERT INTO Stock VALUES (51, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 13, 3);
INSERT INTO Stock VALUES (52, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 14, 3);
INSERT INTO Stock VALUES (53, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 15, 3);
INSERT INTO Stock VALUES (54, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 16, 3);
INSERT INTO Stock VALUES (55, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 17, 3);
INSERT INTO Stock VALUES (56, 1000.0, 10.0, STR_TO_DATE('01/01/2022', '%d/%m/%Y'), STR_TO_DATE('30/01/2022', '%d/%m/%Y'), 1.0, 18, 3);

