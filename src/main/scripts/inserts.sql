


grant select on miagencia.client to miagencia@'localhost';
grant insert on miagencia.client to miagencia@'localhost';

// acordarse del flush privileges;






INSERT INTO miagencia.Clients (dni, firstName, lastName, email, telephone1, telephone2)
VALUES ( 27528358, 'Esteban','Cantu','estebancantu@gmail.com','2215608507','4519011');



insert into miagencia.Makes (id, vehicleType, name) values (1,1,'Alfa Romeo');
insert into miagencia.Makes (id, vehicleType, name) values (2,1,'Asia');
insert into miagencia.Makes (id, vehicleType, name) values (3,1,'Audi');
insert into miagencia.Makes (id, vehicleType, name) values (4,1,'BMW');
insert into miagencia.Makes (id, vehicleType, name) values (5,1,'Chery');
insert into miagencia.Makes (id, vehicleType, name) values (6,1,'Chevrolet');
insert into miagencia.Makes (id, vehicleType, name) values (7,1,'Chrysler');
insert into miagencia.Makes (id, vehicleType, name) values (8,1,'Citroen');
insert into miagencia.Makes (id, vehicleType, name) values (9,1,'Daewoo');
insert into miagencia.Makes (id, vehicleType, name) values (10,1,'Daihatsu');
insert into miagencia.Makes (id, vehicleType, name) values (11,1,'Dodge');
insert into miagencia.Makes (id, vehicleType, name) values (12,1,'Ferrari');
insert into miagencia.Makes (id, vehicleType, name) values (13,1,'Fiat');
insert into miagencia.Makes (id, vehicleType, name) values (14,1,'Ford');
insert into miagencia.Makes (id, vehicleType, name) values (15,1,'Honda');
insert into miagencia.Makes (id, vehicleType, name) values (16,1,'Hummer');
insert into miagencia.Makes (id, vehicleType, name) values (17,1,'Hyundai');
insert into miagencia.Makes (id, vehicleType, name) values (18,1,'Isuzu');
insert into miagencia.Makes (id, vehicleType, name) values (19,1,'Jaguar');
insert into miagencia.Makes (id, vehicleType, name) values (20,1,'Jeep');
insert into miagencia.Makes (id, vehicleType, name) values (21,1,'Kia');
insert into miagencia.Makes (id, vehicleType, name) values (22,1,'Lada');
insert into miagencia.Makes (id, vehicleType, name) values (23,1,'Land Rover');
insert into miagencia.Makes (id, vehicleType, name) values (24,1,'Mazda');
insert into miagencia.Makes (id, vehicleType, name) values (25,1,'Mercedes Benz');
insert into miagencia.Makes (id, vehicleType, name) values (26,1,'Mini');
insert into miagencia.Makes (id, vehicleType, name) values (27,1,'Mitsubishi');
insert into miagencia.Makes (id, vehicleType, name) values (28,1,'Nissan');
insert into miagencia.Makes (id, vehicleType, name) values (29,1,'Peugeot');
insert into miagencia.Makes (id, vehicleType, name) values (30,1,'Porsche');
insert into miagencia.Makes (id, vehicleType, name) values (31,1,'Ram');
insert into miagencia.Makes (id, vehicleType, name) values (32,1,'Renault');
insert into miagencia.Makes (id, vehicleType, name) values (33,1,'Rover');
insert into miagencia.Makes (id, vehicleType, name) values (34,1,'Seat');
insert into miagencia.Makes (id, vehicleType, name) values (35,1,'Smart');
insert into miagencia.Makes (id, vehicleType, name) values (36,1,'Ssangyong');
insert into miagencia.Makes (id, vehicleType, name) values (37,1,'Subaru');
insert into miagencia.Makes (id, vehicleType, name) values (38,1,'Suzuki');
insert into miagencia.Makes (id, vehicleType, name) values (39,1,'Tata');
insert into miagencia.Makes (id, vehicleType, name) values (40,1,'Toyota');
insert into miagencia.Makes (id, vehicleType, name) values (41,1,'Volkswagen');
insert into miagencia.Makes (id, vehicleType, name) values (42,1,'Volvo');
insert into miagencia.Makes (id, vehicleType, name) values (43,1,'Otras Marcas');
insert into miagencia.Makes (id, vehicleType, name) values (44,2,'Clásicas');
insert into miagencia.Makes (id, vehicleType, name) values (45,2,'Cuatriciclos');
insert into miagencia.Makes (id, vehicleType, name) values (46,2,'Custom / Chopper');
insert into miagencia.Makes (id, vehicleType, name) values (47,2,'De calle / Naked');
insert into miagencia.Makes (id, vehicleType, name) values (48,2,'Deportivas');
insert into miagencia.Makes (id, vehicleType, name) values (49,2,'Enduro, Cross y Trial');
insert into miagencia.Makes (id, vehicleType, name) values (50,2,'Scooters y Ciclomotores');
insert into miagencia.Makes (id, vehicleType, name) values (51,2,'Touring');
insert into miagencia.Makes (id, vehicleType, name) values (52,2,'Otros Tipos');






insert into miagencia.Models (id, make, name) values (1,1,'145');
insert into miagencia.Models (id, make, name) values (2,1,'146');
insert into miagencia.Models (id, make, name) values (3,1,'147');
insert into miagencia.Models (id, make, name) values (4,1,'155');
insert into miagencia.Models (id, make, name) values (5,1,'156');
insert into miagencia.Models (id, make, name) values (6,1,'159');
insert into miagencia.Models (id, make, name) values (7,1,'164');
insert into miagencia.Models (id, make, name) values (8,1,'33');
insert into miagencia.Models (id, make, name) values (9,1,'Giulietta');
insert into miagencia.Models (id, make, name) values (10,1,'Mito');
insert into miagencia.Models (id, make, name) values (11,1,'Spider');

insert into miagencia.Models (id, make, name) values (12,2,'Topic');

insert into miagencia.Models (id, make, name) values (13,3,'A1');
insert into miagencia.Models (id, make, name) values (14,3,'A2');
insert into miagencia.Models (id, make, name) values (15,3,'A3');
insert into miagencia.Models (id, make, name) values (16,3,'A4');
insert into miagencia.Models (id, make, name) values (17,3,'A5');
insert into miagencia.Models (id, make, name) values (18,3,'A6');
insert into miagencia.Models (id, make, name) values (19,3,'A7');
insert into miagencia.Models (id, make, name) values (20,3,'A8');
insert into miagencia.Models (id, make, name) values (21,3,'Allroad');
insert into miagencia.Models (id, make, name) values (22,3,'Q3');
insert into miagencia.Models (id, make, name) values (23,3,'Q5');
insert into miagencia.Models (id, make, name) values (24,3,'Q7');
insert into miagencia.Models (id, make, name) values (25,3,'R8');
insert into miagencia.Models (id, make, name) values (26,3,'RS4');
insert into miagencia.Models (id, make, name) values (27,3,'RS5');
insert into miagencia.Models (id, make, name) values (28,3,'S3');
insert into miagencia.Models (id, make, name) values (29,3,'S4');
insert into miagencia.Models (id, make, name) values (30,3,'S5');
insert into miagencia.Models (id, make, name) values (31,3,'TT');
insert into miagencia.Models (id, make, name) values (32,3,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (33,4,'Serie 1');
insert into miagencia.Models (id, make, name) values (34,4,'Serie 2');
insert into miagencia.Models (id, make, name) values (35,4,'Serie 3');
insert into miagencia.Models (id, make, name) values (36,4,'Serie 4');
insert into miagencia.Models (id, make, name) values (37,4,'Serie 5');
insert into miagencia.Models (id, make, name) values (38,4,'Serie 6');
insert into miagencia.Models (id, make, name) values (39,4,'Serie 7');
insert into miagencia.Models (id, make, name) values (40,4,'X1');
insert into miagencia.Models (id, make, name) values (41,4,'X2');
insert into miagencia.Models (id, make, name) values (42,4,'X3');
insert into miagencia.Models (id, make, name) values (43,4,'X4');
insert into miagencia.Models (id, make, name) values (44,4,'X5');
insert into miagencia.Models (id, make, name) values (45,4,'X6');
insert into miagencia.Models (id, make, name) values (46,4,'Z3');
insert into miagencia.Models (id, make, name) values (47,4,'Z4');
insert into miagencia.Models (id, make, name) values (48,4,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (49,5,'Face');
insert into miagencia.Models (id, make, name) values (50,5,'Fulwin');
insert into miagencia.Models (id, make, name) values (51,5,'QQ');
insert into miagencia.Models (id, make, name) values (52,5,'Skin');
insert into miagencia.Models (id, make, name) values (53,5,'Tiggo');
insert into miagencia.Models (id, make, name) values (54,5,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (55,6,'Agile');
insert into miagencia.Models (id, make, name) values (56,6,'Apache');
insert into miagencia.Models (id, make, name) values (57,6,'Astra');
insert into miagencia.Models (id, make, name) values (58,6,'Avalanche');
insert into miagencia.Models (id, make, name) values (59,6,'Aveo');
insert into miagencia.Models (id, make, name) values (60,6,'Beretta');
insert into miagencia.Models (id, make, name) values (61,6,'Blazer');
insert into miagencia.Models (id, make, name) values (62,6,'Brava');
insert into miagencia.Models (id, make, name) values (63,6,'C10');
insert into miagencia.Models (id, make, name) values (64,6,'C20');
insert into miagencia.Models (id, make, name) values (65,6,'Camaro');
insert into miagencia.Models (id, make, name) values (66,6,'Captiva');
insert into miagencia.Models (id, make, name) values (67,6,'Celta');
insert into miagencia.Models (id, make, name) values (68,6,'Chevette');
insert into miagencia.Models (id, make, name) values (69,6,'Cheyenne');
insert into miagencia.Models (id, make, name) values (70,6,'Classic');
insert into miagencia.Models (id, make, name) values (71,6,'Cobalt');
insert into miagencia.Models (id, make, name) values (72,6,'Combo');
insert into miagencia.Models (id, make, name) values (73,6,'Corsa Classic');
insert into miagencia.Models (id, make, name) values (74,6,'Corsa Classic SW');
insert into miagencia.Models (id, make, name) values (75,6,'Corsa II');
insert into miagencia.Models (id, make, name) values (76,6,'Corsa Pick-Up');
insert into miagencia.Models (id, make, name) values (77,6,'Corvette');
insert into miagencia.Models (id, make, name) values (78,6,'Cruze');
insert into miagencia.Models (id, make, name) values (79,6,'D-20');
insert into miagencia.Models (id, make, name) values (80,6,'Grand Blazer');
insert into miagencia.Models (id, make, name) values (81,6,'Grand Vitara');
insert into miagencia.Models (id, make, name) values (82,6,'Ipanema');
insert into miagencia.Models (id, make, name) values (83,6,'Kadet');
insert into miagencia.Models (id, make, name) values (84,6,'Luv');
insert into miagencia.Models (id, make, name) values (85,6,'Malibú');
insert into miagencia.Models (id, make, name) values (86,6,'Meriva');
insert into miagencia.Models (id, make, name) values (87,6,'Montana');
insert into miagencia.Models (id, make, name) values (88,6,'Monza');
insert into miagencia.Models (id, make, name) values (89,6,'Omega');
insert into miagencia.Models (id, make, name) values (90,6,'Onix');
insert into miagencia.Models (id, make, name) values (91,6,'Prisma');
insert into miagencia.Models (id, make, name) values (92,6,'S10');
insert into miagencia.Models (id, make, name) values (93,6,'Silverado');
insert into miagencia.Models (id, make, name) values (94,6,'Sonic');
insert into miagencia.Models (id, make, name) values (95,6,'Spark');
insert into miagencia.Models (id, make, name) values (96,6,'Spin');
insert into miagencia.Models (id, make, name) values (97,6,'Suburban');
insert into miagencia.Models (id, make, name) values (98,6,'Tracker');
insert into miagencia.Models (id, make, name) values (99,6,'Trailblazer');
insert into miagencia.Models (id, make, name) values (100,6,'Vectra');
insert into miagencia.Models (id, make, name) values (101,6,'Venture');
insert into miagencia.Models (id, make, name) values (102,6,'Veraneio');
insert into miagencia.Models (id, make, name) values (103,6,'Zafira');
insert into miagencia.Models (id, make, name) values (104,6,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (105,7,'300 C');
insert into miagencia.Models (id, make, name) values (106,7,'300 M');
insert into miagencia.Models (id, make, name) values (107,7,'Caravan');
insert into miagencia.Models (id, make, name) values (108,7,'Grand Caravan');
insert into miagencia.Models (id, make, name) values (109,7,'Neon');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (110,7,'PT Cruiser');
insert into miagencia.Models (id, make, name) values (111,7,'Spirit');
insert into miagencia.Models (id, make, name) values (112,7,'Stratus');
insert into miagencia.Models (id, make, name) values (113,7,'Town & Country');
insert into miagencia.Models (id, make, name) values (114,7,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (115,8,'2CV');
insert into miagencia.Models (id, make, name) values (116,8,'3CV');
insert into miagencia.Models (id, make, name) values (117,8,'AX');
insert into miagencia.Models (id, make, name) values (118,8,'Berlingo');
insert into miagencia.Models (id, make, name) values (119,8,'C15');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (120,8,'C3');
insert into miagencia.Models (id, make, name) values (121,8,'C3 Aircross');
insert into miagencia.Models (id, make, name) values (122,8,'C3 Picasso');
insert into miagencia.Models (id, make, name) values (123,8,'C4');
insert into miagencia.Models (id, make, name) values (124,8,'C4 Aircross');
insert into miagencia.Models (id, make, name) values (125,8,'C4 Grand Picasso');
insert into miagencia.Models (id, make, name) values (126,8,'C4 Lounge');
insert into miagencia.Models (id, make, name) values (127,8,'C4 Picasso');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (128,8,'C5');
insert into miagencia.Models (id, make, name) values (129,8,'DS3');
insert into miagencia.Models (id, make, name) values (130,8,'DS4');
insert into miagencia.Models (id, make, name) values (131,8,'Jumper');
insert into miagencia.Models (id, make, name) values (132,8,'Mehari');
insert into miagencia.Models (id, make, name) values (133,8,'Saxo');
insert into miagencia.Models (id, make, name) values (134,8,'Xantia');
insert into miagencia.Models (id, make, name) values (135,8,'Xsara');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (136,8,'Xsara Picasso');
insert into miagencia.Models (id, make, name) values (137,8,'ZX');
insert into miagencia.Models (id, make, name) values (138,8,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (139,9,'Cielo');
insert into miagencia.Models (id, make, name) values (140,9,'Damas');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (141,9,'Espero');
insert into miagencia.Models (id, make, name) values (142,9,'Lanos');
insert into miagencia.Models (id, make, name) values (143,9,'Nubira');
insert into miagencia.Models (id, make, name) values (144,9,'Racer');
insert into miagencia.Models (id, make, name) values (145,9,'Tico');

insert into miagencia.Models (id, make, name) values (146,10,'Applause');
insert into miagencia.Models (id, make, name) values (147,10,'Charade');
insert into miagencia.Models (id, make, name) values (148,10,'Cuore');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (149,10,'Feroza');
insert into miagencia.Models (id, make, name) values (150,10,'Hijet');
insert into miagencia.Models (id, make, name) values (151,10,'Move');
insert into miagencia.Models (id, make, name) values (152,10,'Terios');
insert into miagencia.Models (id, make, name) values (153,10,'Wide');

insert into miagencia.Models (id, make, name) values (154,11,'1500');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (155,11,'Caravan');
insert into miagencia.Models (id, make, name) values (156,11,'D100');
insert into miagencia.Models (id, make, name) values (157,11,'Dakota');
insert into miagencia.Models (id, make, name) values (158,11,'GTX');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (159,11,'Journey');
insert into miagencia.Models (id, make, name) values (160,11,'Ram 1500');
insert into miagencia.Models (id, make, name) values (161,11,'Ram 2500');
insert into miagencia.Models (id, make, name) values (162,11,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (163,12,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (164,13,'125');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (165,13,'128');
insert into miagencia.Models (id, make, name) values (166,13,'147');
insert into miagencia.Models (id, make, name) values (167,13,'1500');
insert into miagencia.Models (id, make, name) values (168,13,'500');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (169,13,'600');
insert into miagencia.Models (id, make, name) values (170,13,'Brava');
insert into miagencia.Models (id, make, name) values (171,13,'Bravo');
insert into miagencia.Models (id, make, name) values (172,13,'Brio');
insert into miagencia.Models (id, make, name) values (173,13,'Dobló');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (174,13,'Dobló Cargo');
insert into miagencia.Models (id, make, name) values (175,13,'Ducato');
insert into miagencia.Models (id, make, name) values (176,13,'Duna');
insert into miagencia.Models (id, make, name) values (177,13,'Fiorino');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (178,13,'Fiorino Quobo');
insert into miagencia.Models (id, make, name) values (179,13,'Grand Siena');
insert into miagencia.Models (id, make, name) values (180,13,'Idea');
insert into miagencia.Models (id, make, name) values (181,13,'Linea');
insert into miagencia.Models (id, make, name) values (182,13,'Marea');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (183,13,'Palio');
insert into miagencia.Models (id, make, name) values (184,13,'Palio Weekend');
insert into miagencia.Models (id, make, name) values (185,13,'Punto');
insert into miagencia.Models (id, make, name) values (186,13,'Quobo');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (187,13,'Regata');
insert into miagencia.Models (id, make, name) values (188,13,'Siena');
insert into miagencia.Models (id, make, name) values (189,13,'Spazio');
insert into miagencia.Models (id, make, name) values (190,13,'Stilo');
insert into miagencia.Models (id, make, name) values (191,13,'Strada');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (192,13,'Tempra');
insert into miagencia.Models (id, make, name) values (193,13,'Tipo');
insert into miagencia.Models (id, make, name) values (194,13,'Uno');
insert into miagencia.Models (id, make, name) values (195,13,'Vivace');
insert into miagencia.Models (id, make, name) values (196,13,'Otros Modelos');   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
insert into miagencia.Models (id, make, name) values (197,14,'Bronco');
insert into miagencia.Models (id, make, name) values (198,14,'Courier');
insert into miagencia.Models (id, make, name) values (199,14,'Econoline');
insert into miagencia.Models (id, make, name) values (200,14,'Ecosport');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (201,14,'Escape');
insert into miagencia.Models (id, make, name) values (202,14,'Escort');
insert into miagencia.Models (id, make, name) values (203,14,'Expedition');
insert into miagencia.Models (id, make, name) values (204,14,'Explorer');
insert into miagencia.Models (id, make, name) values (205,14,'F-100');
insert into miagencia.Models (id, make, name) values (206,14,'F-150');
insert into miagencia.Models (id, make, name) values (207,14,'F-250');
insert into miagencia.Models (id, make, name) values (208,14,'F-350');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (209,14,'F-400');
insert into miagencia.Models (id, make, name) values (210,14,'Fairlane');
insert into miagencia.Models (id, make, name) values (211,14,'Falcon');
insert into miagencia.Models (id, make, name) values (212,14,'Fiesta');
insert into miagencia.Models (id, make, name) values (213,14,'Fiesta Kinetic Design');
insert into miagencia.Models (id, make, name) values (214,14,'Fiesta Max');
insert into miagencia.Models (id, make, name) values (215,14,'Focus');
insert into miagencia.Models (id, make, name) values (216,14,'Focus II');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
insert into miagencia.Models (id, make, name) values (217,14,'Focus III');
insert into miagencia.Models (id, make, name) values (218,14,'Focus III Sedán');
insert into miagencia.Models (id, make, name) values (219,14,'Galaxy');
insert into miagencia.Models (id, make, name) values (220,14,'Ka');
insert into miagencia.Models (id, make, name) values (221,14,'Kuga');
insert into miagencia.Models (id, make, name) values (222,14,'Mondeo');
insert into miagencia.Models (id, make, name) values (223,14,'Mustang');
insert into miagencia.Models (id, make, name) values (224,14,'Orion');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (225,14,'Puma');
insert into miagencia.Models (id, make, name) values (226,14,'Ranchero');
insert into miagencia.Models (id, make, name) values (227,14,'Ranger');
insert into miagencia.Models (id, make, name) values (228,14,'Roadster');
insert into miagencia.Models (id, make, name) values (229,14,'S-Max');
insert into miagencia.Models (id, make, name) values (230,14,'Sierra');
insert into miagencia.Models (id, make, name) values (231,14,'Taunus');
insert into miagencia.Models (id, make, name) values (232,14,'Taurus');
insert into miagencia.Models (id, make, name) values (233,14,'Transit');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (234,14,'Otros Modelos');
insert into miagencia.Models (id, make, name) values (235,14,'Ranchero');
insert into miagencia.Models (id, make, name) values (236,14,'Ranger');
insert into miagencia.Models (id, make, name) values (237,14,'Roadster');

insert into miagencia.Models (id, make, name) values (238,15,'Accord');
insert into miagencia.Models (id, make, name) values (239,15,'City');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into miagencia.Models (id, make, name) values (240,15,'Civic');
insert into miagencia.Models (id, make, name) values (241,15,'CR-V');
insert into miagencia.Models (id, make, name) values (242,15,'CRX');
insert into miagencia.Models (id, make, name) values (243,15,'Fit');
insert into miagencia.Models (id, make, name) values (244,15,'HR-V');
insert into miagencia.Models (id, make, name) values (245,15,'Prelude');
insert into miagencia.Models (id, make, name) values (246,15,'Stream');
insert into miagencia.Models (id, make, name) values (247,15,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (248,16,'Otros Modelos');   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
insert into miagencia.Models (id, make, name) values (249,17,'Accent');
insert into miagencia.Models (id, make, name) values (250,17,'Atos');
insert into miagencia.Models (id, make, name) values (251,17,'Coupe');
insert into miagencia.Models (id, make, name) values (252,17,'Ellantra');
insert into miagencia.Models (id, make, name) values (253,17,'Galloper');
insert into miagencia.Models (id, make, name) values (254,17,'Genesis Coupe');
insert into miagencia.Models (id, make, name) values (255,17,'H1');
insert into miagencia.Models (id, make, name) values (256,17,'H100');
insert into miagencia.Models (id, make, name) values (257,17,'I10');
insert into miagencia.Models (id, make, name) values (258,17,'I30');
insert into miagencia.Models (id, make, name) values (259,17,'Santa Fe');
insert into miagencia.Models (id, make, name) values (260,17,'Santamo');
insert into miagencia.Models (id, make, name) values (261,17,'Terracan');
insert into miagencia.Models (id, make, name) values (262,17,'Tucson');
insert into miagencia.Models (id, make, name) values (263,17,'Veloster');
insert into miagencia.Models (id, make, name) values (264,17,'Veracruz');
insert into miagencia.Models (id, make, name) values (265,17,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (266,18,'Amigo');
insert into miagencia.Models (id, make, name) values (267,18,'Pick-Up');
insert into miagencia.Models (id, make, name) values (268,18,'Space Cab');
insert into miagencia.Models (id, make, name) values (269,18,'Trooper');
insert into miagencia.Models (id, make, name) values (270,18,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (271,19,'S-Type');
insert into miagencia.Models (id, make, name) values (272,19,'X-Type');
insert into miagencia.Models (id, make, name) values (273,19,'XF');

insert into miagencia.Models (id, make, name) values (274,20,'Cherokee');
insert into miagencia.Models (id, make, name) values (275,20,'Compass');
insert into miagencia.Models (id, make, name) values (276,20,'Grand Cherokee');
insert into miagencia.Models (id, make, name) values (277,20,'Patriot');
insert into miagencia.Models (id, make, name) values (278,20,'Wrangler');
insert into miagencia.Models (id, make, name) values (279,20,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (280,21,'Carens');
insert into miagencia.Models (id, make, name) values (281,21,'Carnival');
insert into miagencia.Models (id, make, name) values (282,21,'Cerato');
insert into miagencia.Models (id, make, name) values (283,21,'Grand Sportage');
insert into miagencia.Models (id, make, name) values (284,21,'K2700 Pick-Up');
insert into miagencia.Models (id, make, name) values (285,21,'Picanto');
insert into miagencia.Models (id, make, name) values (286,21,'Pregio');
insert into miagencia.Models (id, make, name) values (287,21,'Pride');
insert into miagencia.Models (id, make, name) values (288,21,'Rio');
insert into miagencia.Models (id, make, name) values (289,21,'Rondo');
insert into miagencia.Models (id, make, name) values (290,21,'Sorento');
insert into miagencia.Models (id, make, name) values (291,21,'Soul');
insert into miagencia.Models (id, make, name) values (292,21,'Sportage');
insert into miagencia.Models (id, make, name) values (293,21,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (294,22,'Laika');
insert into miagencia.Models (id, make, name) values (295,22,'Niva');
insert into miagencia.Models (id, make, name) values (296,22,'Samara');

insert into miagencia.Models (id, make, name) values (297,23,'Defender');
insert into miagencia.Models (id, make, name) values (298,23,'Discovery');
insert into miagencia.Models (id, make, name) values (299,23,'Freelander');
insert into miagencia.Models (id, make, name) values (300,23,'Freelander 2');
insert into miagencia.Models (id, make, name) values (301,23,'Range Rover');
insert into miagencia.Models (id, make, name) values (302,23,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (303,24,'121');
insert into miagencia.Models (id, make, name) values (304,24,'323');
insert into miagencia.Models (id, make, name) values (305,24,'626');
insert into miagencia.Models (id, make, name) values (306,24,'MX3');
insert into miagencia.Models (id, make, name) values (307,24,'Pick-Up');
insert into miagencia.Models (id, make, name) values (308,24,'RX7');
insert into miagencia.Models (id, make, name) values (309,24,'Serie B');

insert into miagencia.Models (id, make, name) values (310,25,'170');
insert into miagencia.Models (id, make, name) values (311,25,'220');
insert into miagencia.Models (id, make, name) values (312,25,'230');
insert into miagencia.Models (id, make, name) values (313,25,'280');
insert into miagencia.Models (id, make, name) values (314,25,'350');
insert into miagencia.Models (id, make, name) values (315,25,'Clase A');
insert into miagencia.Models (id, make, name) values (316,25,'Clase B');
insert into miagencia.Models (id, make, name) values (317,25,'Clase C');
insert into miagencia.Models (id, make, name) values (318,25,'Clase CLC');
insert into miagencia.Models (id, make, name) values (319,25,'Clase CLK');
insert into miagencia.Models (id, make, name) values (320,25,'Clase CLS');
insert into miagencia.Models (id, make, name) values (321,25,'Clase E');
insert into miagencia.Models (id, make, name) values (322,25,'Clase GLK');
insert into miagencia.Models (id, make, name) values (323,25,'Clase S');
insert into miagencia.Models (id, make, name) values (324,25,'Clase SL');
insert into miagencia.Models (id, make, name) values (325,25,'Clase SLK');
insert into miagencia.Models (id, make, name) values (326,25,'MB');
insert into miagencia.Models (id, make, name) values (327,25,'ML');
insert into miagencia.Models (id, make, name) values (328,25,'Sprinter');
insert into miagencia.Models (id, make, name) values (329,25,'Viano');
insert into miagencia.Models (id, make, name) values (330,25,'Vito');
insert into miagencia.Models (id, make, name) values (331,25,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (332,26,'Cooper');
insert into miagencia.Models (id, make, name) values (333,26,'Cooper S');
insert into miagencia.Models (id, make, name) values (334,26,'Countryman');
insert into miagencia.Models (id, make, name) values (335,26,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (336,27,'3000 GT');
insert into miagencia.Models (id, make, name) values (337,27,'Colt');
insert into miagencia.Models (id, make, name) values (338,27,'Eclipse');
insert into miagencia.Models (id, make, name) values (339,27,'Expo');
insert into miagencia.Models (id, make, name) values (340,27,'Galant');
insert into miagencia.Models (id, make, name) values (341,27,'L100');
insert into miagencia.Models (id, make, name) values (342,27,'L200');
insert into miagencia.Models (id, make, name) values (343,27,'L300');
insert into miagencia.Models (id, make, name) values (344,27,'Lancer');
insert into miagencia.Models (id, make, name) values (345,27,'Montero');
insert into miagencia.Models (id, make, name) values (346,27,'Nativa');
insert into miagencia.Models (id, make, name) values (347,27,'Outlander');
insert into miagencia.Models (id, make, name) values (348,27,'Space Wagon');
insert into miagencia.Models (id, make, name) values (349,27,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (350,28,'240');
insert into miagencia.Models (id, make, name) values (351,28,'350Z');
insert into miagencia.Models (id, make, name) values (352,28,'370Z');
insert into miagencia.Models (id, make, name) values (353,28,'Altima');
insert into miagencia.Models (id, make, name) values (354,28,'Bluebird');
insert into miagencia.Models (id, make, name) values (355,28,'D21');
insert into miagencia.Models (id, make, name) values (356,28,'D22');
insert into miagencia.Models (id, make, name) values (357,28,'Frontier');
insert into miagencia.Models (id, make, name) values (358,28,'March');
insert into miagencia.Models (id, make, name) values (359,28,'Maxima');
insert into miagencia.Models (id, make, name) values (360,28,'Murano');
insert into miagencia.Models (id, make, name) values (361,28,'Note');
insert into miagencia.Models (id, make, name) values (362,28,'NP300');
insert into miagencia.Models (id, make, name) values (363,28,'NX');
insert into miagencia.Models (id, make, name) values (364,28,'Pathfinder');
insert into miagencia.Models (id, make, name) values (365,28,'Patrol');
insert into miagencia.Models (id, make, name) values (366,28,'Pick-Up');
insert into miagencia.Models (id, make, name) values (367,28,'Sentra');
insert into miagencia.Models (id, make, name) values (368,28,'Terrano');
insert into miagencia.Models (id, make, name) values (369,28,'Tilda');
insert into miagencia.Models (id, make, name) values (370,28,'Versa');
insert into miagencia.Models (id, make, name) values (371,28,'X-Terra');
insert into miagencia.Models (id, make, name) values (372,28,'X-Trail');
insert into miagencia.Models (id, make, name) values (373,28,'Otros Modelos');


insert into miagencia.Models (id, make, name) values (374,29,'106');
insert into miagencia.Models (id, make, name) values (375,29,'205');
insert into miagencia.Models (id, make, name) values (376,29,'206');
insert into miagencia.Models (id, make, name) values (377,29,'207');
insert into miagencia.Models (id, make, name) values (378,29,'207 Compact');
insert into miagencia.Models (id, make, name) values (379,29,'208');
insert into miagencia.Models (id, make, name) values (380,29,'3008');
insert into miagencia.Models (id, make, name) values (381,29,'306');
insert into miagencia.Models (id, make, name) values (382,29,'307');
insert into miagencia.Models (id, make, name) values (383,29,'307 SW');
insert into miagencia.Models (id, make, name) values (384,29,'308');
insert into miagencia.Models (id, make, name) values (385,29,'4008');
insert into miagencia.Models (id, make, name) values (386,29,'405');
insert into miagencia.Models (id, make, name) values (387,29,'406');
insert into miagencia.Models (id, make, name) values (388,29,'407');
insert into miagencia.Models (id, make, name) values (389,29,'407 SW');
insert into miagencia.Models (id, make, name) values (390,29,'408');
insert into miagencia.Models (id, make, name) values (391,29,'5008');
insert into miagencia.Models (id, make, name) values (392,29,'504');
insert into miagencia.Models (id, make, name) values (393,29,'504 Pick-Up');
insert into miagencia.Models (id, make, name) values (394,29,'505');
insert into miagencia.Models (id, make, name) values (395,29,'508');
insert into miagencia.Models (id, make, name) values (396,29,'605');
insert into miagencia.Models (id, make, name) values (397,29,'607');
insert into miagencia.Models (id, make, name) values (398,29,'806');
insert into miagencia.Models (id, make, name) values (399,29,'807');
insert into miagencia.Models (id, make, name) values (400,29,'Boxer');


insert into miagencia.Models (id, make, name) values (401,30,'911');
insert into miagencia.Models (id, make, name) values (402,30,'Boxster');
insert into miagencia.Models (id, make, name) values (403,30,'Carrera');
insert into miagencia.Models (id, make, name) values (404,30,'Cayenne');
insert into miagencia.Models (id, make, name) values (405,30,'Cayman');
insert into miagencia.Models (id, make, name) values (406,30,'Panamera');

insert into miagencia.Models (id, make, name) values (407,31,'Ram 1500');
insert into miagencia.Models (id, make, name) values (408,31,'Ram 2500');

insert into miagencia.Models (id, make, name) values (409,32,'Clio');
insert into miagencia.Models (id, make, name) values (410,32,'Clio Mío');
insert into miagencia.Models (id, make, name) values (411,32,'Duster');
insert into miagencia.Models (id, make, name) values (412,32,'Express');
insert into miagencia.Models (id, make, name) values (413,32,'Fluence');
insert into miagencia.Models (id, make, name) values (414,32,'Fuego');
insert into miagencia.Models (id, make, name) values (415,32,'Kangoo 2');
insert into miagencia.Models (id, make, name) values (416,32,'Koleos');
insert into miagencia.Models (id, make, name) values (417,32,'Laguna');
insert into miagencia.Models (id, make, name) values (418,32,'Laguna Grand Tour');
insert into miagencia.Models (id, make, name) values (419,32,'Latitude');
insert into miagencia.Models (id, make, name) values (420,32,'Logan');
insert into miagencia.Models (id, make, name) values (421,32,'Master');
insert into miagencia.Models (id, make, name) values (422,32,'Mégane');
insert into miagencia.Models (id, make, name) values (423,32,'Mégane II');
insert into miagencia.Models (id, make, name) values (424,32,'Mégane II Grand Tour');
insert into miagencia.Models (id, make, name) values (425,32,'Mégane III');
insert into miagencia.Models (id, make, name) values (426,32,'Mégane III.R.S');
insert into miagencia.Models (id, make, name) values (427,32,'R11');
insert into miagencia.Models (id, make, name) values (428,32,'R12');
insert into miagencia.Models (id, make, name) values (429,32,'R18');
insert into miagencia.Models (id, make, name) values (430,32,'R19');
insert into miagencia.Models (id, make, name) values (431,32,'R21');
insert into miagencia.Models (id, make, name) values (432,32,'R4');
insert into miagencia.Models (id, make, name) values (433,32,'R5');
insert into miagencia.Models (id, make, name) values (434,32,'R6');
insert into miagencia.Models (id, make, name) values (435,32,'R9');
insert into miagencia.Models (id, make, name) values (436,32,'Rodeo');
insert into miagencia.Models (id, make, name) values (437,32,'Safrane');
insert into miagencia.Models (id, make, name) values (438,32,'Sandero');
insert into miagencia.Models (id, make, name) values (439,32,'Sandero GT Line');
insert into miagencia.Models (id, make, name) values (440,32,'Sandero Stepway');
insert into miagencia.Models (id, make, name) values (441,32,'Scénic');
insert into miagencia.Models (id, make, name) values (442,32,'Scénic II');
insert into miagencia.Models (id, make, name) values (443,32,'Symbol');
insert into miagencia.Models (id, make, name) values (444,32,'Torino');
insert into miagencia.Models (id, make, name) values (445,32,'Trafic');
insert into miagencia.Models (id, make, name) values (446,32,'Twingo');
insert into miagencia.Models (id, make, name) values (447,32,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (448,33,'Serie 200');
insert into miagencia.Models (id, make, name) values (449,33,'Serie 400');
insert into miagencia.Models (id, make, name) values (450,33,'Serie 600');
insert into miagencia.Models (id, make, name) values (451,33,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (452,34,'Córdoba');
insert into miagencia.Models (id, make, name) values (453,34,'Ibiza');
insert into miagencia.Models (id, make, name) values (454,34,'Inca');
insert into miagencia.Models (id, make, name) values (455,34,'Leon');
insert into miagencia.Models (id, make, name) values (456,34,'Toledo');

insert into miagencia.Models (id, make, name) values (457,35,'City');
insert into miagencia.Models (id, make, name) values (458,35,'Fortwo');
insert into miagencia.Models (id, make, name) values (459,35,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (460,36,'Actyon');
insert into miagencia.Models (id, make, name) values (461,36,'Istana');
insert into miagencia.Models (id, make, name) values (462,36,'Korando');
insert into miagencia.Models (id, make, name) values (463,36,'Musso');

insert into miagencia.Models (id, make, name) values (464,37,'Forester');
insert into miagencia.Models (id, make, name) values (465,37,'Impreza');
insert into miagencia.Models (id, make, name) values (466,37,'Legacy');
insert into miagencia.Models (id, make, name) values (467,37,'Legacy SW');
insert into miagencia.Models (id, make, name) values (468,37,'Outback');
insert into miagencia.Models (id, make, name) values (469,37,'Tribeca');
insert into miagencia.Models (id, make, name) values (470,37,'XV');
insert into miagencia.Models (id, make, name) values (471,37,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (472,38,'Baleno');
insert into miagencia.Models (id, make, name) values (473,38,'Fun');
insert into miagencia.Models (id, make, name) values (474,38,'Grand Vitara');
insert into miagencia.Models (id, make, name) values (475,38,'Jimny');
insert into miagencia.Models (id, make, name) values (476,38,'Maruti');
insert into miagencia.Models (id, make, name) values (477,38,'Samurai');
insert into miagencia.Models (id, make, name) values (478,38,'Sidekick');
insert into miagencia.Models (id, make, name) values (479,38,'Swift');
insert into miagencia.Models (id, make, name) values (480,38,'Vitara');
insert into miagencia.Models (id, make, name) values (481,38,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (482,39,'Sumo');

insert into miagencia.Models (id, make, name) values (483,40,'4Runner');
insert into miagencia.Models (id, make, name) values (484,40,'86');
insert into miagencia.Models (id, make, name) values (485,40,'Avensis');
insert into miagencia.Models (id, make, name) values (486,40,'Camry');
insert into miagencia.Models (id, make, name) values (487,40,'Celica');
insert into miagencia.Models (id, make, name) values (488,40,'Corolla');
insert into miagencia.Models (id, make, name) values (489,40,'Corolla Fielder');
insert into miagencia.Models (id, make, name) values (490,40,'Corona');
insert into miagencia.Models (id, make, name) values (491,40,'Etios');
insert into miagencia.Models (id, make, name) values (492,40,'Fielder');
insert into miagencia.Models (id, make, name) values (493,40,'Hiace');
insert into miagencia.Models (id, make, name) values (494,40,'Hilux');
insert into miagencia.Models (id, make, name) values (495,40,'Hilux SW4');
insert into miagencia.Models (id, make, name) values (496,40,'Land Cruiser');
insert into miagencia.Models (id, make, name) values (497,40,'Lexus');
insert into miagencia.Models (id, make, name) values (498,40,'Prado');
insert into miagencia.Models (id, make, name) values (499,40,'Prius');
insert into miagencia.Models (id, make, name) values (500,40,'RAV-4');
insert into miagencia.Models (id, make, name) values (501,40,'Supra');
insert into miagencia.Models (id, make, name) values (502,40,'Otros Modelos');


insert into miagencia.Models (id, make, name) values (503,41,'1500');
insert into miagencia.Models (id, make, name) values (504,41,'Amarok');
insert into miagencia.Models (id, make, name) values (505,41,'Bora');
insert into miagencia.Models (id, make, name) values (506,41,'Caddy');
insert into miagencia.Models (id, make, name) values (507,41,'Carat');
insert into miagencia.Models (id, make, name) values (508,41,'CC');
insert into miagencia.Models (id, make, name) values (509,41,'Crossfox');
insert into miagencia.Models (id, make, name) values (510,41,'Escarabajo');
insert into miagencia.Models (id, make, name) values (511,41,'Fox');
insert into miagencia.Models (id, make, name) values (512,41,'Furgon');
insert into miagencia.Models (id, make, name) values (513,41,'Gacel');
insert into miagencia.Models (id, make, name) values (514,41,'Gol');
insert into miagencia.Models (id, make, name) values (515,41,'Gol Country');
insert into miagencia.Models (id, make, name) values (516,41,'Gol Trend');
insert into miagencia.Models (id, make, name) values (517,41,'Golf');
insert into miagencia.Models (id, make, name) values (518,41,'Golf Variant');
insert into miagencia.Models (id, make, name) values (519,41,'Kombi');
insert into miagencia.Models (id, make, name) values (520,41,'New Beetle');
insert into miagencia.Models (id, make, name) values (521,41,'Passat');
insert into miagencia.Models (id, make, name) values (522,41,'Passat Variant');
insert into miagencia.Models (id, make, name) values (523,41,'Pointer');
insert into miagencia.Models (id, make, name) values (524,41,'Polo');
insert into miagencia.Models (id, make, name) values (525,41,'Quantum');
insert into miagencia.Models (id, make, name) values (526,41,'Santana');
insert into miagencia.Models (id, make, name) values (527,41,'Saveiro');
insert into miagencia.Models (id, make, name) values (528,41,'Scirocco');
insert into miagencia.Models (id, make, name) values (529,41,'Senda');
insert into miagencia.Models (id, make, name) values (530,41,'Sharan');
insert into miagencia.Models (id, make, name) values (531,41,'Suran');
insert into miagencia.Models (id, make, name) values (532,41,'Suran Cross');
insert into miagencia.Models (id, make, name) values (533,41,'The Beetle');
insert into miagencia.Models (id, make, name) values (534,41,'Tgiuan');
insert into miagencia.Models (id, make, name) values (535,41,'Touareg');
insert into miagencia.Models (id, make, name) values (536,41,'Transporter');
insert into miagencia.Models (id, make, name) values (537,41,'Up!');
insert into miagencia.Models (id, make, name) values (538,41,'Vento');
insert into miagencia.Models (id, make, name) values (539,41,'Vento Variant');
insert into miagencia.Models (id, make, name) values (540,41,'Voyage');
insert into miagencia.Models (id, make, name) values (541,41,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (542,42,'850');
insert into miagencia.Models (id, make, name) values (543,42,'940');
insert into miagencia.Models (id, make, name) values (544,42,'960');
insert into miagencia.Models (id, make, name) values (545,42,'C30');
insert into miagencia.Models (id, make, name) values (546,42,'C70');
insert into miagencia.Models (id, make, name) values (547,42,'S40');
insert into miagencia.Models (id, make, name) values (548,42,'S60');
insert into miagencia.Models (id, make, name) values (549,42,'S80');
insert into miagencia.Models (id, make, name) values (550,42,'V50');
insert into miagencia.Models (id, make, name) values (551,42,'V70');
insert into miagencia.Models (id, make, name) values (552,42,'XC60');
insert into miagencia.Models (id, make, name) values (553,42,'XC90');
insert into miagencia.Models (id, make, name) values (554,42,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (555,43,'Otros Modelos');

insert into miagencia.Models (id, make, name) values (556,6,'Aveo G3');

insert into miagencia.Models (id, make, name) values (557,29,'Expert');
insert into miagencia.Models (id, make, name) values (558,29,'Hoggar');
insert into miagencia.Models (id, make, name) values (559,29,'Partner');
insert into miagencia.Models (id, make, name) values (560,29,'RCZ');
insert into miagencia.Models (id, make, name) values (561,29,'Otros Modelos');










