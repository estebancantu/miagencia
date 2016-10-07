

// TODO - como se cambio la estructura de todas las tablas, no corren.
// mirar con Agustin y armarlos bien denuevo.


// grant select on miagencia.client to miagencia@'localhost';
// grant insert on miagencia.client to miagencia@'localhost';

// acordarse del flush privileges;


INSERT INTO `miagencia`.`account` (`ID`, `USERNAME`, `PASSWORD`, `ACTIVE`, `DEALERSHIP_ID`) VALUES ('1', 'agustin', '123456', '1', '1');
INSERT INTO `miagencia`.`dealership` (`ID`, `NAME`, `LOCATION_ID`, `ACCOUNT_ID`) VALUES ('1', 'Agencia 1', '1', '1');
INSERT INTO `miagencia`.`location` (`ID`, `ADDRESS_LINE`, `ZIP_CODE`, `COUNTRY_ID`, `STATE_ID`, `CITY_ID`, `NEIGHBORHOOD_ID`, `LATITUDE`, `LONGITUDE`, `OPEN_HOURS`) VALUES ('1', '13 n659', '1900', '1', '1', '1', '1', '-21.2332323', '-23.323232', '10 a 20');
INSERT INTO `miagencia`.`country` (`ID`, `NAME`, `MERCADO_LIBRE_ID`) VALUES ('1', 'Argentina', 'AR','www.olx.com.ar');
INSERT INTO `miagencia`.`state` (`ID`, `COUNTRY_ID`, `NAME`, `MERCADO_LIBRE_ID`) VALUES ('1', '1', 'Bs.As. G.B.A. Sur', 'TUxBUEdSQXJlMDNm', 'buenosaires.olx.com.ar');
INSERT INTO `miagencia`.`city` (`ID`, `STATE_ID`, `NAME`, `MERCADO_LIBRE_ID`) VALUES ('1', '1', 'La Plata', 'TUxBQ0xBUGxhdGE','laplata.olx.com.ar');
INSERT INTO `miagencia`.`neighborhood` (`ID`, `NAME`, `MERCADO_LIBRE_ID`, `CITY_ID`) VALUES ( '1', 'La Plata', 'TUxBQkxBUDgzNjRa', '1');



 INSERT INTO Clients (dni, FIRST_NAME, LAST_NAME, E_MAIL, MOBILE, PHONE)
 VALUES ( 27528358, 'Esteban','Cantu','estebancantu@gmail.com','2215608507','4519011');


insert into Makes (id, vehicleType, name, olx_id) values (1,'CAR_TRUCK','Alfa Romeo','2');
insert into Makes (id, vehicleType, name, olx_id) values (2,'CAR_TRUCK','Asia','93');
insert into Makes (id, vehicleType, name, olx_id) values (3,'CAR_TRUCK','Audi','5');
insert into Makes (id, vehicleType, name, olx_id) values (4,'CAR_TRUCK','BMW','9');
insert into Makes (id, vehicleType, name, olx_id) values (5,'CAR_TRUCK','Chery','11');
insert into Makes (id, vehicleType, name, olx_id) values (6,'CAR_TRUCK','Chevrolet','12');
insert into Makes (id, vehicleType, name, olx_id) values (7,'CAR_TRUCK','Chrysler','13');
insert into Makes (id, vehicleType, name, olx_id) values (8,'CAR_TRUCK','Citroen','14');
insert into Makes (id, vehicleType, name, olx_id) values (9,'CAR_TRUCK','Daewoo','16');
insert into Makes (id, vehicleType, name, olx_id) values (10,'CAR_TRUCK','Daihatsu','222');
insert into Makes (id, vehicleType, name, olx_id) values (11,'CAR_TRUCK','Dodge','20');
insert into Makes (id, vehicleType, name, olx_id) values (12,'CAR_TRUCK','Ferrari','93');
insert into Makes (id, vehicleType, name, olx_id) values (13,'CAR_TRUCK','Fiat','24');
insert into Makes (id, vehicleType, name, olx_id) values (14,'CAR_TRUCK','Ford','25');
insert into Makes (id, vehicleType, name, olx_id) values (15,'CAR_TRUCK','Honda','28');
insert into Makes (id, vehicleType, name, olx_id) values (16,'CAR_TRUCK','Hummer','93');
insert into Makes (id, vehicleType, name, olx_id) values (17,'CAR_TRUCK','Hyundai','30');
insert into Makes (id, vehicleType, name, olx_id) values (18,'CAR_TRUCK','Isuzu','79');
insert into Makes (id, vehicleType, name, olx_id) values (19,'CAR_TRUCK','Jaguar','33');
insert into Makes (id, vehicleType, name, olx_id) values (20,'CAR_TRUCK','Jeep','34');
insert into Makes (id, vehicleType, name, olx_id) values (21,'CAR_TRUCK','Kia','35');
insert into Makes (id, vehicleType, name, olx_id) values (22,'CAR_TRUCK','Lada','80');
insert into Makes (id, vehicleType, name, olx_id) values (23,'CAR_TRUCK','Land Rover','38');
insert into Makes (id, vehicleType, name, olx_id) values (24,'CAR_TRUCK','Mazda','43');
insert into Makes (id, vehicleType, name, olx_id) values (25,'CAR_TRUCK','Mercedes Benz','44');
insert into Makes (id, vehicleType, name, olx_id) values (26,'CAR_TRUCK','Mini','47');
insert into Makes (id, vehicleType, name, olx_id) values (27,'CAR_TRUCK','Mitsubishi','48');
insert into Makes (id, vehicleType, name, olx_id) values (28,'CAR_TRUCK','Nissan','50');
insert into Makes (id, vehicleType, name, olx_id) values (29,'CAR_TRUCK','Peugeot','54');
insert into Makes (id, vehicleType, name, olx_id) values (30,'CAR_TRUCK','Porsche','57');
insert into Makes (id, vehicleType, name, olx_id) values (31,'CAR_TRUCK','Ram','223');
insert into Makes (id, vehicleType, name, olx_id) values (32,'CAR_TRUCK','Renault','58');
insert into Makes (id, vehicleType, name, olx_id) values (33,'CAR_TRUCK','Rover','85');
insert into Makes (id, vehicleType, name, olx_id) values (34,'CAR_TRUCK','Seat','86');
insert into Makes (id, vehicleType, name, olx_id) values (35,'CAR_TRUCK','Smart','88');
insert into Makes (id, vehicleType, name, olx_id) values (36,'CAR_TRUCK','Ssangyong','89');
insert into Makes (id, vehicleType, name, olx_id) values (37,'CAR_TRUCK','Subaru','65');
insert into Makes (id, vehicleType, name, olx_id) values (38,'CAR_TRUCK','Suzuki','66');
insert into Makes (id, vehicleType, name, olx_id) values (39,'CAR_TRUCK','Tata','377');
insert into Makes (id, vehicleType, name, olx_id) values (40,'CAR_TRUCK','Toyota','67');
insert into Makes (id, vehicleType, name, olx_id) values (41,'CAR_TRUCK','Volkswagen','69');
insert into Makes (id, vehicleType, name, olx_id) values (42,'CAR_TRUCK','Volvo','70');
insert into Makes (id, vehicleType, name, olx_id) values (43,'CAR_TRUCK','Otras Marcas','93');
insert into Makes (id, vehicleType, name, olx_id) values (44,'MOTORBIKE','Clásicas','');
insert into Makes (id, vehicleType, name, olx_id) values (45,'MOTORBIKE','Cuatriciclos','');
insert into Makes (id, vehicleType, name, olx_id) values (46,'MOTORBIKE','Custom / Chopper','');
insert into Makes (id, vehicleType, name, olx_id) values (47,'MOTORBIKE','De calle / Naked','');
insert into Makes (id, vehicleType, name, olx_id) values (48,'MOTORBIKE','Deportivas','');
insert into Makes (id, vehicleType, name, olx_id) values (49,'MOTORBIKE','Enduro, Cross y Trial','');
insert into Makes (id, vehicleType, name, olx_id) values (50,'MOTORBIKE','Scooters y Ciclomotores','');
insert into Makes (id, vehicleType, name, olx_id) values (51,'MOTORBIKE','Touring','');
insert into Makes (id, vehicleType, name, olx_id) values (52,'MOTORBIKE','Otros Tipos','');






insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (1,1,'145','MLA29570','3886');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (2,1,'146','MLA29543','3887');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (3,1,'147','MLA30842','3894');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (4,1,'155','MLA29577','3890');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (5,1,'156','MLA29639','3891');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (6,1,'159','MLA29569','3895');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (7,1,'164','MLA29522','3893');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (8,1,'33','MLA29640','3892');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (9,1,'Giulietta','MLA91017','3889');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (10,1,'Mito','MLA51487','3888');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (11,1,'Spider','MLA32343','3898');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (12,2,'Topic','MLA65472','3899'); 
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (13,3,'A1','MLA91018','3901');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (14,3,'A2','','3919');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (15,3,'A3','MLA27485','4416');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (16,3,'A4','MLA27452','3900');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (17,3,'A5','MLA50403','3902');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (18,3,'A6','MLA27289','3906');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (19,3,'A7','MLA117211','3908');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (20,3,'A8','MLA50401','3909');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (21,3,'Allroad','MLA29624','3910');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (22,3,'Q3','MLA117212','3912');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (23,3,'Q5','MLA75127','3903');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (24,3,'Q7','MLA99979','3905');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (25,3,'R8','MLA51467','3913');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (26,3,'RS4','MLA36210','3919');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (27,3,'RS5','MLA361676','3914');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (28,3,'S3','MLA27486','3907');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (29,3,'S4','MLA27494','3916');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (30,3,'S5','MLA83420','3917');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (31,3,'TT','MLA27495','3904');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (32,3,'Otros Modelos','MLA27480','3919');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (33,4,'Serie 1','MLA24202','3921');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (34,4,'Serie 2','MLA372451','5327');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (35,4,'Serie 3','MLA24317','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (36,4,'Serie 4','MLA377253','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (37,4,'Serie 5','MLA24329','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (38,4,'Serie 6','MLA29517','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (39,4,'Serie 7','MLA27290','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (40,4,'X1','MLA75129','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (41,4,'X2','MLA24279','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (42,4,'X3','MLA24208','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (43,4,'X4','MLA381992','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (44,4,'X5','MLA24279','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (45,4,'X6','MLA96405','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (46,4,'Z3','MLA27318','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (47,4,'Z4','MLA24209','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (48,4,'Otros Modelos','MLA24279','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (49,5,'Face','MLA86835','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (50,5,'Fulwin','MLA127678','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (51,5,'QQ','MLA53277','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (52,5,'Skin','MLA118467','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (53,5,'Tiggo','MLA65200','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (54,5,'Otros Modelos','MLA42430','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (55,6,'Agile','MLA76252','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (56,6,'Apache','MLA32515','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (57,6,'Astra','MLA3186','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (58,6,'Avalanche','MLA65217','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (59,6,'Aveo','MLA32563','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (60,6,'Beretta','MLA51566','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (61,6,'Blazer','MLA3189','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (62,6,'Brava','MLA99980','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (63,6,'C10','MLA65216','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id, olx_id) values (64,6,'C20','MLA32471','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (65,6,'Camaro','MLA32550','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (66,6,'Captiva','MLA32553','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (67,6,'Celta','MLA35951','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (68,6,'Chevette','MLA3187','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (69,6,'Cheyenne','MLA34042','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (70,6,'Classic','MLA82088','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (71,6,'Cobalt','MLA117188','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (72,6,'Combo','MLA32564','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (73,6,'Corsa Classic','MLA29524','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (74,6,'Corsa Classic SW','MLA56650','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (75,6,'Corsa II','MLA3188','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (76,6,'Corsa Pick-Up','MLA62788','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (77,6,'Corvette','MLA29537','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (78,6,'Cruze','MLA95296','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (79,6,'D-20','MLA36097','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (80,6,'Grand Blazer','MLA65378','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (81,6,'Grand Vitara','MLA65208','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (82,6,'Ipanema','MLA29549','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (83,6,'Kadett','MLA3190','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (84,6,'Luv','MLA65223','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (85,6,'Malibú','MLA34016','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (86,6,'Meriva','MLA29634','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (87,6,'Montana','MLA117199','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (88,6,'Monza','MLA3191','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (89,6,'Omega','MLA3192','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (90,6,'Onix','MLA117201','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (91,6,'Prisma','MLA117198','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (92,6,'S10','MLA62790','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (93,6,'Silverado','MLA62791','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (94,6,'Sonic','MLA108785','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (95,6,'Spark','MLA32473','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (96,6,'Spin','MLA117187','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (97,6,'Suburban','MLA38436','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (98,6,'Tracker','MLA117202','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (99,6,'Trailblazer','MLA117200','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (100,6,'Vectra','MLA29587','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (101,6,'Venture','MLA32338','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (102,6,'Veraneio','MLA65221','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (103,6,'Zafira','MLA29656','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (104,6,'Otros Modelos','MLA29647','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (105,7,'300 C','MLA51554','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (106,7,'300 M','MLA32570','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (107,7,'Caravan','MLA99982','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (108,7,'Grand Caravan','MLA99987','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (109,7,'Neon','MLA27476','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (110,7,'PT Cruiser','MLA29521','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (111,7,'Spirit','MLA29499','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (112,7,'Stratus','MLA27507','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (113,7,'Town & Country','MLA55073','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (114,7,'Otros Modelos','MLA27337','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (115,8,'2CV','MLA41128','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (116,8,'3CV','MLA87152','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (117,8,'AX','MLA119051','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (118,8,'Berlingo','MLA62805','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (119,8,'C15','MLA99989','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (120,8,'C3','MLA24349','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (121,8,'C3 Aircross','MLA91000','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (122,8,'C3 Picasso','MLA117210','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (123,8,'C4','MLA29589','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (124,8,'C4 Aircross','MLA377324','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (125,8,'C4 Grand Picasso','MLA47450','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (126,8,'C4 Lounge','MLA321208','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (127,8,'C4 Picasso','MLA373390','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (128,8,'C5','MLA24285','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (129,8,'DS3','MLA99251','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (130,8,'DS4','MLA109267','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (131,8,'Jumper','MLA24286','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (132,8,'Mehari','MLA99990','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (133,8,'Saxo','MLA24225','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (134,8,'Xantia','MLA24226','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (135,8,'Xsara','MLA24259','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (136,8,'Xsara Picasso','MLA29500','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (137,8,'ZX','MLA24325','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (138,8,'Otros Modelos','MLA24318','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (139,9,'Cielo','MLA29539','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (140,9,'Damas','MLA65351','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (141,9,'Espero','MLA29617','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (142,9,'Lanos','MLA29586','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (143,9,'Nubira','MLA29620','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (144,9,'Racer','MLA29621','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (145,9,'Tico','MLA29591','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (146,10,'Applause','MLA24313','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (147,10,'Charade','MLA24335','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (148,10,'Cuore','MLA24314','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (149,10,'Feroza','MLA62798','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (150,10,'Hijet','MLA99985','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (151,10,'Move','MLA51686','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (152,10,'Terios','MLA24350','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (153,10,'Wide','MLA99986','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (154,11,'1500','MLA87160','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (155,11,'Caravan','MLA32374','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (156,11,'D100','MLA99991','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (157,11,'Dakota','MLA65354','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (158,11,'GTX','MLA87146','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (159,11,'Journey','MLA71502','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (160,11,'Ram 1500','MLA352815','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (161,11,'Ram 2500','MLA352816','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (162,11,'Otros Modelos','MLA29594','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (163,12,'Otros Modelos','MLA97715','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (164,13,'125','MLA81729','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (165,13,'128','MLA121500','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (166,13,'147','MLA24234','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (167,13,'1500','MLA99994','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (168,13,'500','MLA52896','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (169,13,'600','MLA24235','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (170,13,'Brava','MLA29596','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (171,13,'Bravo','MLA24315','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (172,13,'Brio','MLA29642','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (173,13,'Dobló','MLA117193','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (174,13,'Dobló Cargo','MLA117194','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (175,13,'Ducato','MLA62709','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (176,13,'Duna','MLA24228','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (177,13,'Fiorino','MLA62710','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (178,13,'Fiorino Quobo','MLA117191','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (179,13,'Grand Siena','MLA117192','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (180,13,'Idea','MLA29597','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (181,13,'Linea','MLA53016','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (182,13,'Marea','MLA24230','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (183,13,'Palio','MLA24231','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (184,13,'Palio Weekend','MLA43531','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (185,13,'Punto','MLA30846','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (186,13,'Quobo','MLA352817','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (187,13,'Regata','MLA24326','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (188,13,'Siena','MLA24320','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (189,13,'Spazio','MLA24321','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (190,13,'Stilo','MLA29598','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (191,13,'Strada','MLA62711','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (192,13,'Tempra','MLA24232','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (193,13,'Tipo','MLA24334','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (194,13,'Uno','MLA24322','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (195,13,'Vivace','MLA29644','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (196,13,'Otros Modelos','MLA24236','');   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (197,14,'Bronco','MLA65365','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (198,14,'Courier','MLA62806','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (199,14,'Econoline','MLA27359','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (200,14,'Ecosport','MLA24272','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (201,14,'Escape','MLA65315','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (202,14,'Escort','MLA24237','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (203,14,'Expedition','MLA65213','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (204,14,'Explorer','MLA6622','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (205,14,'F-100','MLA24298','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (206,14,'F-150','MLA62732','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (207,14,'F-250','MLA62759','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (208,14,'F-350','MLA32576','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (209,14,'F-400','MLA99992','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (210,14,'Fairlane','MLA34045','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (211,14,'Falcon','MLA24238','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (212,14,'Fiesta','MLA24287','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (213,14,'Fiesta Kinetic Design','MLA90998','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (214,14,'Fiesta Max','MLA29544','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (215,14,'Focus','MLA24288','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (216,14,'Focus II','MLA72037','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (217,14,'Focus III','MLA121413','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (218,14,'Focus III Sedán','MLA121414','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (219,14,'Galaxy','MLA24273','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (220,14,'Ka','MLA24351','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (221,14,'Kuga','MLA75015','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (222,14,'Mondeo','MLA24239','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (223,14,'Mustang','MLA27343','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (224,14,'Orion','MLA24289','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (225,14,'Puma','MLA51508','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (226,14,'Ranchero','MLA24352','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (227,14,'Ranger','MLA6625','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (228,14,'Roadster','MLA87144','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (229,14,'S-Max','MLA51577','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (230,14,'Sierra','MLA24240','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (231,14,'Taunus','MLA24291','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (232,14,'Taurus','MLA24241','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (233,14,'Transit','MLA76389','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (234,14,'Otros Modelos','MLA24299','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (238,15,'Accord','MLA29629','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (239,15,'City','MLA76251','');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (240,15,'Civic','MLA29469','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (241,15,'CR-V','MLA36268','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (242,15,'CRX','MLA51794','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (243,15,'Fit','MLA29511','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (244,15,'HR-V','MLA99995','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (245,15,'Prelude','MLA29630','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (246,15,'Stream','MLA100002','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (247,15,'Otros Modelos','MLA29530','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (248,16,'Otros Modelos','MLA27445','');   
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (249,17,'Accent','MLA29531','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (250,17,'Atos','MLA29660','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (251,17,'Coupe','MLA38426','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (252,17,'Ellantra','MLA29564','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (253,17,'Galloper','MLA62807','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (254,17,'Genesis Coupe','MLA83425','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (255,17,'H1','MLA62716','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (256,17,'H100','MLA62717','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (257,17,'I10','MLA82106','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (258,17,'I30','MLA51588','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (259,17,'Santa Fe','MLA62761','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (260,17,'Santamo','MLA29488','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (261,17,'Terracan','MLA62808','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (262,17,'Tucson','MLA62734','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (263,17,'Veloster','MLA119055','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (264,17,'Veracruz','MLA62809','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (265,17,'Otros Modelos','MLA29471','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (266,18,'Amigo','MLA100004','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (267,18,'Pick-Up','MLA100005','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (268,18,'Space Cab','MLA100001','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (269,18,'Trooper','MLA100006','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (270,18,'Otros Modelos','MLA99999','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (271,19,'S-Type','MLA119057','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (272,19,'X-Type','MLA119056','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (273,19,'XF','MLA83416','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (274,20,'Cherokee','MLA62810','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (275,20,'Compass','MLA32388','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (276,20,'Grand Cherokee','MLA62707','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (277,20,'Patriot','MLA32389','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (278,20,'Wrangler','MLA62811','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (279,20,'Otros Modelos','MLA100009','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (280,21,'Carens','MLA29518','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (281,21,'Carnival','MLA62813','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (282,21,'Cerato','MLA36983','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (283,21,'Grand Sportage','MLA100011','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (284,21,'K2700 Pick-Up','MLA65462','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (285,21,'Picanto','MLA36218','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (286,21,'Pregio','MLA29604','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (287,21,'Pride','MLA29551','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (288,21,'Rio','MLA36959','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (289,21,'Rondo','MLA57914','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (290,21,'Sorento','MLA29552','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (291,21,'Soul','MLA75023','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (292,21,'Sportage','MLA29503','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (293,21,'Otros Modelos','MLA29605','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (294,22,'Laika','MLA29606','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (295,22,'Niva','MLA100013','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (296,22,'Samara','MLA24193','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (297,23,'Defender','MLA62708','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (298,23,'Discovery','MLA62750','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (299,23,'Freelander','MLA62763','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (300,23,'Freelander 2','MLA75028','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (301,23,'Range Rover','MLA62764','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (302,23,'Otros Modelos','MLA27292','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (303,24,'121','MLA29474','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (304,24,'323','MLA29505','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (305,24,'626','MLA29610','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (306,24,'MX3','MLA29473','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (307,24,'Pick-Up','MLA65313','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (308,24,'RX7','MLA29504','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (309,24,'Serie B','MLA65475','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (310,25,'170','MLA87163','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (311,25,'220','MLA87150','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (312,25,'230','MLA119095','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (313,25,'280','MLA87149','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (314,25,'350','MLA87164','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (315,25,'Clase A','MLA24242','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (316,25,'Clase B','MLA32459','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (317,25,'Clase C','MLA24337','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (318,25,'Clase CLC','MLA51501','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (319,25,'Clase CLK','MLA29553','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (320,25,'Clase CLS','MLA32331','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (321,25,'Clase E','MLA24301','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (322,25,'Clase GLK','MLA119748','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (323,25,'Clase S','MLA24262','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (324,25,'Clase SL','MLA24302','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (325,25,'Clase SLK','MLA24246','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (326,25,'MB','MLA65294','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (327,25,'ML','MLA100015','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (328,25,'Sprinter','MLA29476','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (329,25,'Viano','MLA29566','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (330,25,'Vito','MLA65510','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (331,25,'Otros Modelos','MLA24195','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (332,26,'Cooper','MLA52125','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (333,26,'Cooper S','MLA52124','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (334,26,'Countryman','MLA96495','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (335,26,'Otros Modelos','MLA29423','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (336,27,'3000 GT','MLA34097','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (337,27,'Colt','MLA24264','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (338,27,'Eclipse','MLA27410','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (339,27,'Expo','MLA65167','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (340,27,'Galant','MLA24254','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (341,27,'L100','MLA100018','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (342,27,'L200','MLA65448','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (343,27,'L300','MLA65449','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (344,27,'Lancer','MLA24247','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (345,27,'Montero','MLA65185','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (346,27,'Nativa','MLA65170','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (347,27,'Outlander','MLA65171','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (348,27,'Space Wagon','MLA65236','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (349,27,'Otros Modelos','MLA24359','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (350,28,'240','MLA51548','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (351,28,'350Z','MLA35443','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (352,28,'370Z','MLA76250','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (353,28,'Altima','MLA35421','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (354,28,'Bluebird','MLA29631','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (355,28,'D21','MLA65436','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (356,28,'D22','MLA65437','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (357,28,'Frontier','MLA65443','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (358,28,'March','MLA38445','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (359,28,'Maxima','MLA24266','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (360,28,'Murano','MLA35437','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (361,28,'Note','MLA372467','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (362,28,'NP300','MLA100019','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (363,28,'NX','MLA29527','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (364,28,'Pathfinder','MLA65175','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (365,28,'Patrol','MLA65176','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (366,28,'Pick-Up','MLA100016','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (367,28,'Sentra','MLA24267','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (368,28,'Terrano','MLA65177','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (369,28,'Tiida','MLA41826','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (370,28,'Versa','MLA119058','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (371,28,'X-Terra','MLA100021','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (372,28,'X-Trail','MLA65205','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (373,28,'Otros Modelos','MLA24196','');


insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (374,29,'106','MLA6626','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (375,29,'205','MLA6627','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (376,29,'206','MLA6628','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (377,29,'207','MLA51511','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (378,29,'207 Compact','MLA72039','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (379,29,'208','MLA119052','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (380,29,'3008','MLA100024','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (381,29,'306','MLA6629','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (382,29,'307','MLA29581','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (383,29,'307 SW','MLA72040','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (384,29,'308','MLA83428','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (385,29,'4008','MLA352689','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (386,29,'405','MLA6630','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (387,29,'406','MLA29479','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (388,29,'407','MLA29480','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (389,29,'407 SW','MLA72041','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (390,29,'408','MLA95341','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (391,29,'5008','MLA119049','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (392,29,'504','MLA6631','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (393,29,'504 Pick-Up','MLA100025','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (394,29,'505','MLA6632','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (395,29,'508','MLA117195','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (396,29,'605','MLA29612','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (397,29,'607','MLA29555','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (398,29,'806','MLA100027','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (399,29,'807','MLA65180','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (400,29,'Boxer','MLA65181','');


insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (401,30,'911','MLA51464','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (402,30,'Boxster','MLA29583','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (403,30,'Carrera','MLA119061','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (404,30,'Cayenne','MLA36255','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (405,30,'Cayman','MLA51490','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (406,30,'Panamera','MLA83427','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (407,31,'Ram 1500','MLA324319','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (408,31,'Ram 2500','MLA324320','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (409,32,'Clio','MLA6606','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (410,32,'Clio Mío','MLA117204','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (411,32,'Duster','MLA100028','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (412,32,'Express','MLA62814','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (413,32,'Fluence','MLA75083','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (414,32,'Fuego','MLA29585','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (415,32,'Kangoo 2','MLA100029','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (416,32,'Koleos','MLA71417','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (417,32,'Laguna','MLA6607','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (418,32,'Laguna Grand Tour','MLA72038','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (419,32,'Latitude','MLA96802','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (420,32,'Logan','MLA29652','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (421,32,'Master','MLA62737','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (422,32,'Mégane','MLA6602','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (423,32,'Mégane II','MLA51462','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (424,32,'Mégane II Grand Tour','MLA72042','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (425,32,'Mégane III','MLA75081','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (426,32,'Mégane III.R.S','MLA117206','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (427,32,'R11','MLA6633','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (428,32,'R12','MLA6608','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (429,32,'R18','MLA6609','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (430,32,'R19','MLA6610','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (431,32,'R21','MLA6634','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (432,32,'R4','MLA60814','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (433,32,'R5','MLA34033','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (434,32,'R6','MLA60802','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (435,32,'R9','MLA29613','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (436,32,'Rodeo','MLA100033','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (437,32,'Safrane','MLA51586','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (438,32,'Sandero','MLA41088','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (439,32,'Sandero GT Line','MLA117205','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (440,32,'Sandero Stepway','MLA83419','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (441,32,'Scénic','MLA6635','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (442,32,'Scénic II','MLA51505','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (443,32,'Symbol','MLA34036','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (444,32,'Torino','MLA29541','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (445,32,'Trafic','MLA62738','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (446,32,'Twingo','MLA6613','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (447,32,'Otros Modelos','MLA6614','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (448,33,'Serie 200','MLA51478','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (449,33,'Serie 400','MLA51471','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (450,33,'Serie 600','MLA51473','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (451,33,'Otros Modelos','MLA29650','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (452,34,'Córdoba','MLA27287','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (453,34,'Ibiza','MLA27288','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (454,34,'Inca','MLA100036','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (455,34,'Leon','MLA27364','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (456,34,'Toledo','MLA27453','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (457,35,'City','MLA119749','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (458,35,'Fortwo','MLA106928','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (459,35,'Otros Modelos','MLA106930','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (460,36,'Actyon','MLA47727','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (461,36,'Istana','MLA62817','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (462,36,'Korando','MLA32430','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (463,36,'Musso','MLA32431','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (464,37,'Forester','MLA36165','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (465,37,'Impreza','MLA29512','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (466,37,'Legacy','MLA29493','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (467,37,'Legacy SW','MLA72033','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (468,37,'Outback','MLA29536','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (469,37,'Tribeca','MLA65477','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (470,37,'XV','MLA119094','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (471,37,'Otros Modelos','MLA29560','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (472,38,'Baleno','MLA24364','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (473,38,'Fun','MLA29561','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (474,38,'Grand Vitara','MLA65215','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (475,38,'Jimny','MLA24304','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (476,38,'Maruti','MLA38391','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (477,38,'Samurai','MLA100037','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (478,38,'Sidekick','MLA62778','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (479,38,'Swift','MLA24365','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (480,38,'Vitara','MLA65183','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (481,38,'Otros Modelos','MLA24207','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (482,39,'Sumo','MLA100044','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (483,40,'4Runner','MLA76401','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (484,40,'86','MLA117209','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (485,40,'Avensis','MLA29654','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (486,40,'Camry','MLA24355','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (487,40,'Celica','MLA24213','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (488,40,'Corolla','MLA24271','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (489,40,'Corolla Fielder','MLA72034','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (490,40,'Corona','MLA24214','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (491,40,'Etios','MLA121223','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (492,40,'Fielder','MLA36147','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (493,40,'Hiace','MLA100039','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (494,40,'Hilux','MLA62780','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (495,40,'Hilux SW4','MLA62781','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (496,40,'Land Cruiser','MLA65482','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (497,40,'Lexus','MLA29623','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (498,40,'Prado','MLA35426','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (499,40,'Prius','MLA83418','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (500,40,'RAV-4','MLA100038','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (501,40,'Supra','MLA24222','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (502,40,'Otros Modelos','MLA24370','');


insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (503,41,'1500','MLA29484','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (504,41,'Amarok','MLA92242','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (505,41,'Bora','MLA27433','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (506,41,'Caddy','MLA65456','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (507,41,'Carat','MLA41129','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (508,41,'CC','MLA117196','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (509,41,'Crossfox','MLA84567','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (510,41,'Escarabajo','MLA24297','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (511,41,'Fox','MLA29614','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (512,41,'Furgon','MLA100041','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (513,41,'Gacel','MLA24216','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (514,41,'Gol','MLA24217','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (515,41,'Gol Country','MLA29568','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (516,41,'Gol Trend','MLA51456','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (517,41,'Golf','MLA24282','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (518,41,'Golf Variant','MLA72035','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (519,41,'Kombi','MLA3203','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (520,41,'New Beetle','MLA29584','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (521,41,'Passat','MLA24219','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (522,41,'Passat Variant','MLA62520','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (523,41,'Pointer','MLA6620','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (524,41,'Polo','MLA24278','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (525,41,'Quantum','MLA29635','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (526,41,'Santana','MLA24305','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (527,41,'Saveiro','MLA3202','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (528,41,'Scirocco','MLA51491','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (529,41,'Senda','MLA6637','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (530,41,'Sharan','MLA27422','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (531,41,'Suran','MLA29636','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (532,41,'Suran Cross','MLA117197','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (533,41,'The Beetle','MLA324311','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (534,41,'Tgiuan','MLA75115','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (535,41,'Touareg','MLA51461','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (536,41,'Transporter','MLA100042','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (537,41,'Up!','MLA324333','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (538,41,'Vento','MLA29483','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (539,41,'Vento Variant','MLA72036','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (540,41,'Voyage','MLA36137','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (541,41,'Otros Modelos','MLA24306','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (542,42,'850','MLA32446','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (543,42,'940','MLA119084','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (544,42,'960','MLA119093','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (545,42,'C30','MLA51492','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (546,42,'C70','MLA51507','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (547,42,'S40','MLA27479','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (548,42,'S60','MLA27427','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (549,42,'S80','MLA27423','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (550,42,'V50','MLA100043','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (551,42,'V70','MLA36239','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (552,42,'XC60','MLA75113','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (553,42,'XC90','MLA27352','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (554,42,'Otros Modelos','MLA52748','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (555,43,'Otros Modelos','MLA27301','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (556,6,'Aveo G3','MLA117203','');

insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (557,29,'Expert','MLA100022','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (558,29,'Hoggar','MLA100031','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (559,29,'Partner','MLA65199','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (560,29,'RCZ','MLA90999','');
insert into Models (id, make_id, name, mercado_libre_id, olx_id) values (561,29,'Otros Modelos','MLA6605','');


INSERT INTO `miagencia`.`vehicles`
(`ID`,`CREATED_AT`,`UPDATED_TIME`,`CHASSIS_NUMBER`,`COLOR`,`DESCRIPTION`,`ENGINE_NUMBER`,`FUEL_TYPE`,`IMAGE_URL`,`KILOMETERS`,`MAKE_ID`,`MODEL_ID`,`MODEL_YEAR`,`PLATE`,`TRANSMISSION`,`VEHICLE_CONDITION`,`VEHICLE_TYPE`, `LOCATION_ID`)
VALUES ('1', NULL, '2016-07-29 14:57:35', '21', 'Blanco', 'dasads', '2121', 'GASOLINE', NULL, '123', '1', '1', '2014', 'dasa213212', 'AUTOMATIC', 'USED', 'CAR_TRUCK',1);


INSERT INTO `miagencia`.`vehicle_feature_value` (`VEHICLE_ID`, `FEATURE_VALUE_ID`) VALUES (1, 1);
INSERT INTO `miagencia`.`vehicle_feature_value` (`VEHICLE_ID`, `FEATURE_VALUE_ID`) VALUES (1, 56);
INSERT INTO `miagencia`.`vehicle_feature_value` (`VEHICLE_ID`, `FEATURE_VALUE_ID`) VALUES (1, 68);
INSERT INTO `miagencia`.`vehicle_feature_value` (`VEHICLE_ID`, `FEATURE_VALUE_ID`) VALUES (1, 545);

INSERT INTO `miagencia`.`sale_items`(`ID`,`CREATED_AT`,`UPDATED_TIME`,`DAYS_IN_DEALERSHIP`,`HAS_DOMAIN_CERTIFICATE`,`HAS_REGISTRATION`,`SELLING_PRICE`,`STATUS`,`TAX_DEBT`,`TRAFFIC_TICKETS_DEBT`,`VEHICLE_ID`)
VALUES (1, null, null, 1,1,1,100000, 'AVAILABLE', 10000,10000,1);


INSERT INTO `miagencia`.`feature_group` (`id`, `name`, `MERCADO_LIBRE_ID`) VALUES ('1', 'Adicionales', 'ADICIONALES');
INSERT INTO `miagencia`.`feature_group` (`id`, `name`, `MERCADO_LIBRE_ID`) VALUES ('2', 'Confort', 'CONFORT');
INSERT INTO `miagencia`.`feature_group` (`id`, `name`, `MERCADO_LIBRE_ID`) VALUES ('3', 'Exterior', 'EXTERIOR');
INSERT INTO `miagencia`.`feature_group` (`id`, `name`, `MERCADO_LIBRE_ID`) VALUES ('4', 'Ficha t�cnica', 'FIND');
INSERT INTO `miagencia`.`feature_group` (`id`, `name`, `MERCADO_LIBRE_ID`) VALUES ('5', 'Seguridad', 'SECURITY');
INSERT INTO `miagencia`.`feature_group` (`id`, `name`, `MERCADO_LIBRE_ID`) VALUES ('6', 'Sonido', 'SONIDO');


INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('1', 'Horario de contacto', '1', 'MLA1743-HORPREF', 'string');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('2', 'Color', '1', 'MLA1744-COLOREXT', 'list');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('3', 'Direcci�n', '1', 'MLA1744-DIREC', 'string');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('4', '�nico due�o', '1', 'MLA1744-OWNER', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('5', 'Aire acondicionado', '1', 'MLA1744-AIRACON', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('6', 'Alarma de luces encendidas', '2', 'MLA1744-ALARMLUC', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('7', 'Apertura remota de ba�l', '2', 'MLA1744-APERBAUL', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('8', 'Asientos el�ctricos', '2', 'MLA1744-ASIENELEC', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('9', 'Asiento trasero rebatible', '2', 'MLA1744-ASREBAT-Y', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('10', 'Asiento conductor regulable en altura', '2', 'MLA1744-ASREGULA', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('11', 'Cierre centralizado de puertas', '2', 'MLA1744-BLQCNTDOOR', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('12', 'Climatizador autom�tico', '2', 'MLA1744-CLIMAUT', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('13', 'Computadora de abordo', '2', 'MLA1744-COMPABO', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('14', 'Control de velocidad de crucero', '2', 'MLA1744-CTRLVEL', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('15', 'Espejos el�ctricos', '2', 'MLA1744-ESPELEC', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('16', 'Sensor de estacionamiento', '2', 'MLA1744-ESTACIONAM', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('17', 'Faros regulables desde el interior', '2', 'MLA1744-FAROREG', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('18', 'GPS', '2', 'MLA1744-GPS', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('19', 'Sensor de lluvia', '2', 'MLA1744-SENSLL', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('20', 'Sensor de luz', '2', 'MLA1744-SENSLUZ', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('21', 'Tapizado de cuero', '2', 'MLA1744-TAPCUERO', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('22', 'Techo corredizo', '2', 'MLA1744-TECHOCORR', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('23', 'Cristales el�ctricos', '2', 'MLA1744-VIDELEC', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('24', 'Limpia/lava luneta', '3', 'MLA1744-LIMPIA_LAV', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('25', 'Llantas de aleaci�n', '3', 'MLA1744-LLANALEAC', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('26', 'Paragolpes pintados', '3', 'MLA1744-PARAGOLPES', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('27', 'Vidrios polarizados', '3', 'MLA1744-VIDPOLARIZ', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('28', 'Combustible', '4', 'MLA1744-COMBUS', 'list');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('29', 'Cant. de puertas', '4', 'MLA1744-DOOR', 'list');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('30', 'Kil�metros', '4', 'MLA1744-KMTS', 'string');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('31', 'Marca', '4', 'MLA1744-MARC', 'list');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('32', 'Modelo', '4', 'MLA1744-MODL', 'list');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('33', 'Transmisi�n', '4', 'MLA1744-TRANS', 'list');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('34', 'A�o', '4', 'MLA1744-YEAR', 'list');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('35', 'Versi�n', '4', 'MLA92242-VERS', 'string');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('36', 'Tercer stop', '5', 'MLA1744-3LUZSTOP', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('37', 'Frenos ABS', '5', 'MLA1744-ABS', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('38', 'Airbag conductor', '5', 'MLA1744-AIR1', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('39', 'Airbag pasajero', '5', 'MLA1744-AIR2', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('40', 'Airbag laterales', '5', 'MLA1744-AIR3', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('41', 'Airbag de cortina', '5', 'MLA1744-AIRBAGCORT', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('42', 'Alarma', '5', 'MLA1744-ALAR', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('43', 'Apoya cabeza en asientos traseros', '5', 'MLA1744-APCABEZA', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('44', 'Blindado', '5', 'MLA1744-BLIND', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('45', 'Control de tracci�n', '5', 'MLA1744-CNTTRACC', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('46', 'Control de estabilidad', '5', 'MLA1744-CONTR', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('47', 'Doble tracci�n', '5', 'MLA1744-DOBTRACC-Y', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('48', 'Faros antinieblas delanteros', '5', 'MLA1744-FARANTI', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('49', 'Faros de xen�n', '5', 'MLA1744-FAROXEN', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('50', 'Inmovilizador de motor', '5', 'MLA1744-INMOVMOT', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('51', 'Isofix', '5', 'MLA1744-ISOFIX', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('52', 'Faros antinieblas traseros', '5', 'MLA1744-NEBLTRAS', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('53', 'Repartidor electr�nico de fuerza de frenado', '5', 'MLA1744-REPFUERZA', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('54', 'AM/FM', '6', 'MLA1744-AM_FM', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('55', 'Bluetooth', '6', 'MLA1744-BLUETOOTH', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('56', 'Caja de CD', '6', 'MLA1744-CAJACD', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('57', 'Cargador de CD', '6', 'MLA1744-CARGADORCD', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('58', 'Pasacassette', '6', 'MLA1744-CASET', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('59', 'Comando satelital de stereo', '6', 'MLA1744-COMANDOSAT', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('60', 'DVD', '6', 'MLA1744-DVD', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('61', 'Entrada auxiliar', '6', 'MLA1744-ENTAUXILIA', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('62', 'MP3', '6', 'MLA1744-MP3', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('63', 'CD', '6', 'MLA1744-REPRODCD', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('64', 'Tarjeta SD', '6', 'MLA1744-TARJETASD', 'boolean');
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('65', 'Entrada USB', '6', 'MLA1744-USB', 'boolean');
update miagencia.feature set mercado_libre_type = 'BOOLEAN' where mercado_libre_type = 'boolean'


INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('1', 'Amarillo', '2', 'MLA1744-COLOREXT-AMARILLO','14');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('2', 'Azul', '2', 'MLA1744-COLOREXT-AZUL','3');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('3', 'Beige', '2', 'MLA1744-COLOREXT-BEIGE','15');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('4', 'Blanco', '2', 'MLA1744-COLOREXT-BLANCO','13');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('5', 'Bord�', '2', 'MLA1744-COLOREXT-BORDO','4');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('6', 'Celeste', '2', 'MLA1744-COLOREXT-CELESTE','10');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('7', 'Champagne', '2', 'MLA1744-COLOREXT-CHAMPAGNE','6');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('8', 'Gris', '2', 'MLA1744-COLOREXT-GRIS','9');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('9', 'Marr�n', '2', 'MLA1744-COLOREXT-MARRON','5');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('10', 'Negro', '2', 'MLA1744-COLOREXT-NEGRO','2');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('11', 'Oro', '2', 'MLA1744-COLOREXT-ORO','7');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('12', 'Plata', '2', 'MLA1744-COLOREXT-PLATA','12');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('13', 'Rojo', '2', 'MLA1744-COLOREXT-ROJO','11');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('14', 'Rosado', '2', 'MLA1744-COLOREXT-ROSADO','1');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('15', 'Verde', '2', 'MLA1744-COLOREXT-VERDE','8');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('16', 'Otro', '2', 'MLA1744-COLOREXT-OTRO','1');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('17', 'Asistida', '3', 'MLA1744-DIREC-ASISTIDA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('18', 'Hidr�ulica', '3', 'MLA1744-DIREC-HIDRAULICA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('19', 'Mec�nica', '3', 'MLA1744-DIREC-MECANICA');


INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('20', 'SI', '4', 'MLA1744-OWNER-SI');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('21', 'NO', '4', 'MLA1744-OWNER-NO');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('22', 'NO', '5', 'MLA1744-AIRACON-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('23', 'SI', '5', 'MLA1744-AIRACON-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('24', 'SI', '6', 'MLA1744-ALARMLUC-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('25', 'NO', '6', 'MLA1744-ALARMLUC-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('26', 'NO', '7', 'MLA1744-APERBAUL-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('27', 'SI', '7', 'MLA1744-APERBAUL-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('28', 'NO', '8', 'MLA1744-ASIENELEC-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('29', 'SI', '8', 'MLA1744-ASIENELEC-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('30', 'SI', '9', 'MLA1744-ASREBAT-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('31', 'NO', '9', 'MLA1744-ASREBAT-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('32', 'SI', '10', 'MLA1744-ASREGULA-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('33', 'NO', '10', 'MLA1744-ASREGULA-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('34', 'SI', '11', 'MLA1744-BLQCNTDOOR-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('35', 'NO', '11', 'MLA1744-BLQCNTDOOR-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('36', 'SI', '12', 'MLA1744-CLIMAUT-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('37', 'NO', '12', 'MLA1744-CLIMAUT-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('38', 'SI', '13', 'MLA1744-COMPABO-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('39', 'NO', '13', 'MLA1744-COMPABO-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('40', 'SI', '14', 'MLA1744-CTRLVEL-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('41', 'NO', '14', 'MLA1744-CTRLVEL-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('42', 'SI', '15', 'MLA1744-ESPELEC-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('43', 'NO', '15', 'MLA1744-ESPELEC-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('44', 'SI', '16', 'MLA1744-ESTACIONAM-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('45', 'NO', '16', 'MLA1744-ESTACIONAM-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('46', 'SI', '17', 'MLA1744-FAROREG-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('47', 'NO', '17', 'MLA1744-FAROREG-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('48', 'SI', '18', 'MLA1744-GPS-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('49', 'NO', '18', 'MLA1744-GPS-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('50', 'SI', '19', 'MLA1744-SENSLL-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('51', 'NO', '19', 'MLA1744-SENSLL-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('52', 'SI', '20', 'MLA1744-SENSLUZ-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('53', 'NO', '20', 'MLA1744-SENSLUZ-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('54', 'SI', '21', 'MLA1744-TAPCUERO-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('55', 'NO', '21', 'MLA1744-TAPCUERO-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('56', 'SI', '22', 'MLA1744-TECHOCORR-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('57', 'NO', '22', 'MLA1744-TECHOCORR-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('58', 'SI', '23', 'MLA1744-VIDELEC-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('59', 'NO', '23', 'MLA1744-VIDELEC-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('60', 'SI', '24', 'MLA1744-LIMPIA/LAV-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('61', 'NO', '24', 'MLA1744-LIMPIA/LAV-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('62', 'SI', '25', 'MLA1744-LLANALEAC-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('63', 'NO', '25', 'MLA1744-LLANALEAC-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('64', 'SI', '26', 'MLA1744-PARAGOLPES-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('65', 'NO', '26', 'MLA1744-PARAGOLPES-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('66', 'SI', '27', 'MLA1744-VIDPOLARIZ-Y');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('67', 'NO', '27', 'MLA1744-VIDPOLARIZ-N');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('68', 'Diesel', '28', 'MLA1744-COMBUS-DIESEL', '2');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('69', 'Nafta', '28', 'MLA1744-COMBUS-NAFTA', '1');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`, `OLX_ID`) VALUES ('70', 'Nafta/GNC', '28', 'MLA1744-COMBUS-NAFTAGNC', '3');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('71', '2', '29', 'MLA1744-DOOR-2');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('72', '3', '29', 'MLA1744-DOOR-3');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('73', '4', '29', 'MLA1744-DOOR-4');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('74', '5', '29', 'MLA1744-DOOR-5');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('75', 'Alfa Romeo', '31', 'MLA1744-MARC-ALFA_ROMEO');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('76', 'Asia', '31', 'MLA1744-MARC-ASIA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('77', 'Audi', '31', 'MLA1744-MARC-AUDI');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('78', 'BMW', '31', 'MLA1744-MARC-BMW');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('79', 'Chery', '31', 'MLA1744-MARC-CHERY');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('80', 'Chrysler', '31', 'MLA1744-MARC-CHRYSLER');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('81', 'Citroen', '31', 'MLA1744-MARC-CITROEN');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('82', 'Daewoo', '31', 'MLA1744-MARC-DAEWOO');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('83', 'Daihatsu', '31', 'MLA1744-MARC-DAIHATSU');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('84', 'Dodge', '31', 'MLA1744-MARC-DODGE');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('85', 'Ferrari', '31', 'MLA1744-MARC-FERRARI');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('86', 'Fiat', '31', 'MLA1744-MARC-FIAT');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('87', 'Ford', '31', 'MLA1744-MARC-FORD');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('88', 'Honda', '31', 'MLA1744-MARC-HONDA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('89', 'Hummer', '31', 'MLA1744-MARC-HUMMER');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('90', 'Hyundai', '31', 'MLA1744-MARC-HYUNDAI');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('91', 'Isuzu', '31', 'MLA1744-MARC-ISUZU');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('92', 'Jaguar', '31', 'MLA1744-MARC-JAGUAR');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('93', 'Jeep', '31', 'MLA1744-MARC-JEEP');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('94', 'Kia', '31', 'MLA1744-MARC-KIA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('95', 'Lada', '31', 'MLA1744-MARC-LADA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('96', 'Land Rover', '31', 'MLA1744-MARC-LAND_ROVER');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('97', 'Mazda', '31', 'MLA1744-MARC-MAZDA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('98', 'Mercedes Benz', '31', 'MLA1744-MARC-MERCEDES_BENZ');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('99', 'Mini', '31', 'MLA1744-MARC-MIN');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('100', 'Mitsubishi', '31', 'MLA1744-MARC-MITSUBISHI');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('101', 'Nissan', '31', 'MLA1744-MARC-NISSAN');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('102', 'Otras Marcas', '31', 'MLA1744-MARC-OTRAS_MARCAS');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('103', 'Peugeot', '31', 'MLA1744-MARC-PEUGEOT');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('104', 'Porsche', '31', 'MLA1744-MARC-PORSCHE');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('105', 'Renault', '31', 'MLA1744-MARC-RENAULT');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('106', 'Rover', '31', 'MLA1744-MARC-ROVER');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('107', 'Seat', '31', 'MLA1744-MARC-SEAT');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('108', 'Ssangyong', '31', 'MLA1744-MARC-SSANGYONG');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('109', 'Subaru', '31', 'MLA1744-MARC-SUBARU');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('110', 'Suzuki', '31', 'MLA1744-MARC-SUZUKI');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('111', 'Tata', '31', 'MLA1744-MARC-TATA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('112', 'Toyota', '31', 'MLA1744-MARC-TOYOTA');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('113', 'Volkswagen', '31', 'MLA1744-MARC-VOLKSWAGEN');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('114', 'Volvo', '31', 'MLA1744-MARC-VOLVO');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('115', 'Smart', '31', 'MLA1744-MARC-Smart');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('116', 'Ram', '31', 'b2a43ed');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('117', 'Chevrolet', '31', 'MLA1744-MARC-CHEVROLET');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('118', 'Lifan', '31', 'MLA1744-MARC-LIFAN');
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('119', 'MLA1744-MODL-106', '32','106');
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('120', 'MLA1744-MODL-121', '32','121');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('121', 'MLA1744-MODL-125', '32','125');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('122', 'MLA1744-MODL-128', '32','128');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('123', 'MLA1744-MODL-145', '32','145');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('124', 'MLA1744-MODL-146', '32','146');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('125', 'MLA1744-MODL-147', '32','147');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('126', 'MLA1744-MODL-1500', '32','Ram 1500');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('127', 'MLA1744-MODL-155', '32','155');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('128', 'MLA1744-MODL-156', '32','156');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('129', 'MLA1744-MODL-156_SPORTWAGON', '32','156 Sportwagon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('130', 'MLA1744-MODL-159', '32','159');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('131', 'MLA1744-MODL-1600', '32','1600');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('132', 'MLA1744-MODL-164', '32','164');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('133', 'MLA1744-MODL-166', '32','166');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('134', 'MLA1744-MODL-170', '32','170');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('135', 'MLA1744-MODL-200', '32','200');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('136', 'MLA1744-MODL-205', '32','205');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('137', 'MLA1744-MODL-206', '32','206');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('138', 'MLA1744-MODL-206_SW', '32','206 SW');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('139', 'MLA1744-MODL-207', '32','207');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('140', 'MLA1744-MODL-207_COMPACT', '32','207 Compact');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('141', 'MLA1744-MODL-220', '32','220');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('142', 'MLA1744-MODL-240', '32','240');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('143', 'MLA1744-MODL-25', '32','25');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('144', 'MLA1744-MODL-250', '32','250');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('145', 'MLA1744-MODL-280', '32','280');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('146', 'MLA1744-MODL-2CV', '32','2CV');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('147', 'MLA1744-MODL-300', '32','300');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('148', 'MLA1744-MODL-3000_GT', '32','3000 GT');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('149', 'MLA1744-MODL-3008', '32','3008');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('150', 'MLA1744-MODL-300_C', '32','300 C');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('151', 'MLA1744-MODL-300_M', '32','300 M');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('152', 'MLA1744-MODL-306', '32','306');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('153', 'MLA1744-MODL-307', '32','307');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('154', 'MLA1744-MODL-307_SW', '32','307 SW');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('155', 'MLA1744-MODL-308', '32','308');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('156', 'MLA1744-MODL-323', '32','323');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('157', 'MLA1744-MODL-33', '32','33');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('158', 'MLA1744-MODL-350', '32','350');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('159', 'MLA1744-MODL-350Z', '32','350Z');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('160', 'MLA1744-MODL-370Z', '32','370Z');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('161', 'MLA1744-MODL-3CV', '32','3CV');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('162', 'MLA1744-MODL-405', '32','405');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('163', 'MLA1744-MODL-406', '32','406');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('164', 'MLA1744-MODL-407', '32','407');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('165', 'MLA1744-MODL-407_SW', '32','407 SW');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('166', 'MLA1744-MODL-408', '32','408');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('167', 'MLA1744-MODL-4RUNNER', '32','4Runner');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('168', 'MLA1744-MODL-500', '32','500');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('169', 'MLA1744-MODL-504', '32','504');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('170', 'MLA1744-MODL-504_PICK_UP', '32','504 Pick Up');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('171', 'MLA1744-MODL-505', '32','505');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('172', 'MLA1744-MODL-600', '32','600');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('173', 'MLA1744-MODL-605', '32','605');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('174', 'MLA1744-MODL-607', '32','607');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('175', 'MLA1744-MODL-626', '32','626');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('176', 'MLA1744-MODL-75', '32','75');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('177', 'MLA1744-MODL-806', '32','806');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('178', 'MLA1744-MODL-807', '32','807');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('179', 'MLA1744-MODL-820', '32','820');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('180', 'MLA1744-MODL-850', '32','850');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('181', 'MLA1744-MODL-911', '32','911');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('182', 'MLA1744-MODL-924', '32','924');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('183', 'MLA1744-MODL-928', '32','928');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('184', 'MLA1744-MODL-929', '32','929');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('185', 'MLA1744-MODL-944', '32','944');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('186', 'MLA1744-MODL-968', '32','968');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('187', 'MLA1744-MODL-A1', '32','A1');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('188', 'MLA1744-MODL-A3', '32','A3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('189', 'MLA1744-MODL-A4', '32','A4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('190', 'MLA1744-MODL-A4_SPORT', '32','A4 Sport');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('191', 'MLA1744-MODL-A5', '32','A5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('192', 'MLA1744-MODL-A6', '32','A6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('193', 'MLA1744-MODL-A8', '32','A8');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('194', 'MLA1744-MODL-ACCENT', '32','Accent');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('195', 'MLA1744-MODL-ACCORD', '32','Accord');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('196', 'MLA1744-MODL-ACURA', '32','Acura');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('197', 'MLA1744-MODL-AD_WAGON', '32','Ad Wagon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('198', 'MLA1744-MODL-AFALINA', '32','Afalina');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('199', 'MLA1744-MODL-AGILE', '32','Agile');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('200', 'MLA1744-MODL-AIRCROSS', '32','Aircross');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('201', 'MLA1744-MODL-ALHAMBRA', '32','Alhambra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('202', 'MLA1744-MODL-ALLROAD', '32','Allroad');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('203', 'MLA1744-MODL-ALTEA', '32','Altea');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('204', 'MLA1744-MODL-ALTIMA', '32','Altima');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('205', 'MLA1744-MODL-ALTO', '32','Alto');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('206', 'MLA1744-MODL-AMAROK', '32','Amarok');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('207', 'MLA1744-MODL-AMIGO', '32','Amigo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('208', 'MLA1744-MODL-APACHE', '32','Apache');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('209', 'MLA1744-MODL-APPLAUSE', '32','Applause');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('210', 'MLA1744-MODL-ARTIS', '32','Artis');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('211', 'MLA1744-MODL-ASTRA', '32','Astra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('212', 'MLA1744-MODL-ASTRO', '32','Astro');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('213', 'MLA1744-MODL-ATOS', '32','Atos');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('214', 'MLA1744-MODL-AVALANCHE', '32','Avalanche');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('215', 'MLA1744-MODL-AVALON', '32','Avalon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('216', 'MLA1744-MODL-AVELLA', '32','Avella');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('217', 'MLA1744-MODL-AVENSIS', '32','Avensis');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('218', 'MLA1744-MODL-AVEO', '32','Aveo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('219', 'MLA1744-MODL-AXION', '32','Axion');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('220', 'MLA1744-MODL-BALENO', '32','Baleno');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('221', 'MLA1744-MODL-BARCHETTA', '32','Barchetta');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('222', 'MLA1744-MODL-BERETTA', '32','Beretta');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('223', 'MLA1744-MODL-BERLINGO', '32','Berlingo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('224', 'MLA1744-MODL-BERTONE', '32','Bertone');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('225', 'MLA1744-MODL-BESTA', '32','Besta');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('226', 'MLA1744-MODL-BLAZER', '32','Blazer');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('227', 'MLA1744-MODL-BLUEBIRD', '32','Bluebird');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('228', 'MLA1744-MODL-BORA', '32','Bora');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('229', 'MLA1744-MODL-BOXER', '32','Boxer');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('230', 'MLA1744-MODL-BOXSTER', '32','Boxster');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('231', 'MLA1744-MODL-BRAVA', '32','Brava');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('232', 'MLA1744-MODL-BRAVO', '32','Bravo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('233', 'MLA1744-MODL-BRERA', '32','Brera');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('234', 'MLA1744-MODL-BRIO', '32','Brio');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('235', 'MLA1744-MODL-BRONCO', '32','Bronco');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('236', 'MLA1744-MODL-BURBUJA', '32','Burbuja');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('237', 'MLA1744-MODL-C10', '32','C10');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('238', 'MLA1744-MODL-C15', '32','C15');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('239', 'MLA1744-MODL-C20', '32','C20');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('240', 'MLA1744-MODL-C3', '32','C3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('241', 'MLA1744-MODL-C30', '32','C30');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('242', 'MLA1744-MODL-C4', '32','C4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('243', 'MLA1744-MODL-C4_GRAND-PICASSO', '32','C4 Grand Picasso');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('244', 'MLA1744-MODL-C5', '32','C5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('245', 'MLA1744-MODL-C6', '32','C6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('246', 'MLA1744-MODL-C70', '32','C70');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('247', 'MLA1744-MODL-CABRIO', '32','Cabrio');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('248', 'MLA1744-MODL-CADDY', '32','Caddy');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('249', 'MLA1744-MODL-CAMARO', '32','Camaro');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('250', 'MLA1744-MODL-CAMRY', '32','Camry');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('251', 'MLA1744-MODL-CAPITAL', '32','Capital');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('252', 'MLA1744-MODL-CAPTIVA', '32','Captiva');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('253', 'MLA1744-MODL-CARAT', '32','Carat');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('254', 'MLA1744-MODL-CARAVAN', '32','Caravan');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('255', 'MLA1744-MODL-CARENS', '32','Carens');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('256', 'MLA1744-MODL-CARNIVAL', '32','Carnival');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('257', 'MLA1744-MODL-CAVALIER', '32','Cavalier');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('258', 'MLA1744-MODL-CAYENNE', '32','Cayenne');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('259', 'MLA1744-MODL-CAYMAN', '32','Cayman');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('260', 'MLA1744-MODL-CELICA', '32','Celica');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('261', 'MLA1744-MODL-CELTA', '32','Celta');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('262', 'MLA1744-MODL-CERATO', '32','Cerato');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('263', 'MLA1744-MODL-CHARADE', '32','Charade');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('264', 'MLA1744-MODL-CHEROKEE', '32','Cherokee');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('265', 'MLA1744-MODL-CHEVETTE', '32','Chevette');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('266', 'MLA1744-MODL-CHEVY_VAN', '32','Chevy Van');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('267', 'MLA1744-MODL-CHEYENNE', '32','Cheyenne');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('268', 'MLA1744-MODL-CIELO', '32','Cielo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('269', 'MLA1744-MODL-CIRRUS', '32','Cirrus');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('270', 'MLA1744-MODL-CITY', '32','City');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('271', 'MLA1744-MODL-CITYROVER', '32','CityRover');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('272', 'MLA1744-MODL-CIVIC', '32','Civic');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('273', 'MLA1744-MODL-CLARUS', '32','Clarus');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('274', 'MLA1744-MODL-CLASE_A', '32','Clase A');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('275', 'MLA1744-MODL-CLASE_B', '32','Clase B');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('276', 'MLA1744-MODL-CLASE_C', '32','Clase C');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('277', 'MLA1744-MODL-CLASE_CL', '32','Clase CL');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('278', 'MLA1744-MODL-CLASE_CLC', '32','Clase CLC');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('279', 'MLA1744-MODL-CLASE_CLK', '32','Clase CLK');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('280', 'MLA1744-MODL-CLASE_CLS', '32','Clase CLS');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('281', 'MLA1744-MODL-CLASE_C_TOURING', '32','Clase C Touring');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('282', 'MLA1744-MODL-CLASE_E', '32','Clase E');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('283', 'MLA1744-MODL-CLASE_S', '32','Clase S');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('284', 'MLA1744-MODL-CLASE_SL', '32','Clase SL');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('285', 'MLA1744-MODL-CLASE_SLK', '32','Clase SLK');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('286', 'MLA1744-MODL-CLASE_SLR', '32','Clase SLR');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('287', 'MLA1744-MODL-CLASE_V', '32','Clase V');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('288', 'MLA1744-MODL-CLASSIC', '32','Classic');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('289', 'MLA1744-MODL-CLIO', '32','Clio');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('290', 'MLA1744-MODL-COASTER', '32','Coaster');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('291', 'MLA1744-MODL-COLT', '32','Colt');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('292', 'MLA1744-MODL-COMBO', '32','Combo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('293', 'MLA1744-MODL-COMMERCE', '32','Commerce');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('294', 'MLA1744-MODL-COMPASS', '32','Compass');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('295', 'MLA1744-MODL-CONCORDE', '32','Concorde');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('296', 'MLA1744-MODL-COOPER', '32','Cooper');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('297', 'MLA1744-MODL-COOPER_S', '32','Cooper S');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('298', 'MLA1744-MODL-CORDOBA', '32','C�rdoba');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('299', 'MLA1744-MODL-COROLLA', '32','Corolla');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('300', 'MLA1744-MODL-COROLLA_FIELDER', '32','Corolla Fielder');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('301', 'MLA1744-MODL-CORONA', '32','Corona');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('302', 'MLA1744-MODL-CORONADO', '32','Coronado');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('303', 'MLA1744-MODL-CORSA_CLASSIC', '32','Corsa Classic');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('304', 'MLA1744-MODL-CORSA_CLASSIC_SW', '32','Corsa Classic SW');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('305', 'MLA1744-MODL-CORSA_II', '32','Corsa II');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('306', 'MLA1744-MODL-CORSA_PICK-UP', '32','Corsa Pick-Up');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('307', 'MLA1744-MODL-CORVETTE', '32','Corvette');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('308', 'MLA1744-MODL-COUNTRYMAN', '32','Countryman');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('309', 'MLA1744-MODL-COUPE', '32','Coupe');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('310', 'MLA1744-MODL-COURIER', '32','Courier');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('311', 'MLA1744-MODL-CR-V', '32','CR-V');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('312', 'MLA1744-MODL-CROMA', '32','Croma');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('313', 'MLA1744-MODL-CROSSFIRE', '32','Crossfire');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('314', 'MLA1744-MODL-CROSSFOX', '32','Crossfox');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('315', 'MLA1744-MODL-CROWN', '32','Crown');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('316', 'MLA1744-MODL-CRUZE', '32','Cruze');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('317', 'MLA1744-MODL-CRX', '32','CRX');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('318', 'MLA1744-MODL-CUORE', '32','Cuore');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('319', 'MLA1744-MODL-CV', '32','CV');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('320', 'MLA1744-MODL-D-20', '32','D-20');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('321', 'MLA1744-MODL-D100', '32','D100');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('322', 'MLA1744-MODL-D21', '32','D21');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('323', 'MLA1744-MODL-D22', '32','D22');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('324', 'MLA1744-MODL-DAKOTA', '32','Dakota');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('325', 'MLA1744-MODL-DAMAS', '32','Damas');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('326', 'MLA1744-MODL-DAYTONA', '32','Daytona');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('327', 'MLA1744-MODL-DEFENDER', '32','Defender');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('328', 'MLA1744-MODL-DIAMANTE', '32','Diamante');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('329', 'MLA1744-MODL-DISCOVERY', '32','Discovery');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('330', 'MLA1744-MODL-DS3', '32','DS3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('331', 'MLA1744-MODL-DUCATO', '32','Ducato');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('332', 'MLA1744-MODL-DUNA', '32','Duna');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('333', 'MLA1744-MODL-DUSTER', '32','Duster');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('334', 'MLA1744-MODL-E1600', '32','E1600');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('335', 'MLA1744-MODL-ECLIPSE', '32','Eclipse');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('336', 'MLA1744-MODL-ECONOLINE', '32','Econoline');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('337', 'MLA1744-MODL-ECOSPORT', '32','Ecosport');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('338', 'MLA1744-MODL-ELANTRA', '32','Elantra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('339', 'MLA1744-MODL-ESCAPE', '32','Escape');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('340', 'MLA1744-MODL-ESCARABAJO', '32','Escarabajo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('341', 'MLA1744-MODL-ESCORT', '32','Escort');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('342', 'MLA1744-MODL-ESPERO', '32','Espero');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('343', 'MLA1744-MODL-EXCEL', '32','Excel');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('344', 'MLA1744-MODL-EXPEDITION', '32','Expedition');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('345', 'MLA1744-MODL-EXPERT', '32','Expert');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('346', 'MLA1744-MODL-EXPLORER', '32','Explorer');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('347', 'MLA1744-MODL-EXPO', '32','Expo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('348', 'MLA1744-MODL-EXPRESS', '32','Express');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('349', 'MLA1744-MODL-F-100', '32','F-100');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('350', 'MLA1744-MODL-F-150', '32','F-150');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('351', 'MLA1744-MODL-F-250', '32','F-250');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('352', 'MLA1744-MODL-F-350', '32','F-350');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('353', 'MLA1744-MODL-F-400', '32','F-400');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('354', 'MLA1744-MODL-FACE', '32','Face');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('355', 'MLA1744-MODL-FAIRLANE', '32','Fairlane');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('356', 'MLA1744-MODL-FALCON', '32','Falcon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('357', 'MLA1744-MODL-FEROZA', '32','Feroza');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('358', 'MLA1744-MODL-FIELDER', '32','Fielder');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('359', 'MLA1744-MODL-FIESTA', '32','Fiesta');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('360', 'MLA1744-MODL-FIESTA_KINETIC_DESIGN', '32','Fiesta Kinetic Design');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('361', 'MLA1744-MODL-FIESTA_MAX', '32','Fiesta Max');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('362', 'MLA1744-MODL-FIORINO', '32','Fiorino');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('363', 'MLA1744-MODL-FIT', '32','Fit');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('364', 'MLA1744-MODL-FLUENCE', '32','Fluence');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('365', 'MLA1744-MODL-FOCUS', '32','Focus');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('366', 'MLA1744-MODL-FOCUS_II', '32','Focus II');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('367', 'MLA1744-MODL-FORESTER', '32','Forester');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('368', 'MLA1744-MODL-FOX', '32','Fox');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('369', 'MLA1744-MODL-FREELANDER', '32','Freelander');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('370', 'MLA1744-MODL-FREELANDER_2', '32','Freelander 2');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('371', 'MLA1744-MODL-FRONTIER', '32','Frontier');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('372', 'MLA1744-MODL-FUEGO', '32','Fuego');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('373', 'MLA1744-MODL-FUN', '32','Fun');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('374', 'MLA1744-MODL-FURGON', '32','Furgon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('375', 'MLA1744-MODL-GACEL', '32','Gacel');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('376', 'MLA1744-MODL-GALANT', '32','Galant');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('377', 'MLA1744-MODL-GALAXY', '32','Galaxy');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('378', 'MLA1744-MODL-GALLOPER', '32','Galloper');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('379', 'MLA1744-MODL-GENESIS', '32','Genesis Coupe');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('380', 'MLA1744-MODL-GETZ', '32','Getz');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('381', 'MLA1744-MODL-GIULIETTA', '32','Giulietta');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('382', 'MLA1744-MODL-GOL', '32','Gol');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('383', 'MLA1744-MODL-GOLF', '32','Golf');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('384', 'MLA1744-MODL-GOLF_VARIANT', '32','Golf Variant');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('385', 'MLA1744-MODL-GOL_COUNTRY', '32','Gol Country');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('386', 'MLA1744-MODL-GOL_TREND', '32','Gol Trend');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('387', 'MLA1744-MODL-GRAND_BLAZER', '32','Grand Blazer');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('388', 'MLA1744-MODL-GRAND_C4_PICASSO', '32','Grand C4 Picasso');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('389', 'MLA1744-MODL-GRAND_CARAVAN', '32','Grand Caravan');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('390', 'MLA1744-MODL-GRAND_CARNIVAL', '32','Grand Carnival');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('391', 'MLA1744-MODL-GRAND_CHEROKEE', '32','Grand Cherokee');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('392', 'MLA1744-MODL-GRAND_SPORTAGE', '32','Grand Sportage');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('393', 'MLA1744-MODL-GRAND_VITARA', '32','Grand Vitara');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('394', 'MLA1744-MODL-GT', '32','GT');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('395', 'MLA1744-MODL-GTX', '32','GTX');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('396', 'MLA1744-MODL-H1', '32','H1');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('397', 'MLA1744-MODL-H100', '32','H100');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('398', 'MLA1744-MODL-H2', '32','H2');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('399', 'MLA1744-MODL-HIACE', '32','Hiace');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('400', 'MLA1744-MODL-HIJET', '32','Hijet');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('401', 'MLA1744-MODL-HILUX', '32','Hilux');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('402', 'MLA1744-MODL-HILUX_SW4', '32','Hilux SW4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('403', 'MLA1744-MODL-HOGGAR', '32','Hoggar');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('404', 'MLA1744-MODL-HR-V', '32','HR-V');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('405', 'MLA1744-MODL-I10', '32','I10');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('406', 'MLA1744-MODL-I30', '32','I30');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('407', 'MLA1744-MODL-IBIZA', '32','Ibiza');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('408', 'MLA1744-MODL-IBIZA_RC', '32','Ibiza RC');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('409', 'MLA1744-MODL-IDEA', '32','Idea');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('410', 'MLA1744-MODL-IMPALA', '32','Impala');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('411', 'MLA1744-MODL-IMPREZA', '32','Impreza');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('412', 'MLA1744-MODL-INCA', '32','Inca');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('413', 'MLA1744-MODL-INTEGRA', '32','Integra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('414', 'MLA1744-MODL-INTREPID', '32','Intrepid');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('415', 'MLA1744-MODL-IPANEMA', '32','Ipanema');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('416', 'MLA1744-MODL-ISTANA', '32','Istana');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('417', 'MLA1744-MODL-JIMMY', '32','Jimmy');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('418', 'MLA1744-MODL-JIMNY', '32','Jimny');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('419', 'MLA1744-MODL-JOICE', '32','Joice');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('420', 'MLA1744-MODL-JOURNEY', '32','Journey');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('421', 'MLA1744-MODL-JUMPER', '32','Jumper');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('422', 'MLA1744-MODL-JUSTY', '32','Justy');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('423', 'MLA1744-MODL-K2400', '32','K2400');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('424', 'MLA1744-MODL-K2500', '32','K2500');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('425', 'MLA1744-MODL-K2700_PICK-UP', '32','K2700 Pick-Up');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('426', 'MLA1744-MODL-KA', '32','Ka');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('427', 'MLA1744-MODL-KADETT', '32','Kadett');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('428', 'MLA1744-MODL-KANGOO_2', '32','Kangoo 2');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('429', 'MLA1744-MODL-KANGOO_BREAK', '32','Kangoo Break');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('430', 'MLA1744-MODL-KANGOO_EXPRESS', '32','Kangoo Express');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('431', 'MLA1744-MODL-KOLEOS', '32','Koleos');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('432', 'MLA1744-MODL-KOMBI', '32','Kombi');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('433', 'MLA1744-MODL-KORANDO', '32','Korando');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('434', 'MLA1744-MODL-KUGA', '32','Kuga');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('435', 'MLA1744-MODL-L100', '32','L100');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('436', 'MLA1744-MODL-L200', '32','L200');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('437', 'MLA1744-MODL-L300', '32','L300');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('438', 'MLA1744-MODL-LABO', '32','Labo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('439', 'MLA1744-MODL-LAGUNA', '32','Laguna');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('440', 'MLA1744-MODL-LAGUNA_GRAND_TOUR', '32','Laguna Grand Tour');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('441', 'MLA1744-MODL-LAIKA', '32','Laika');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('442', 'MLA1744-MODL-LANCER', '32','Lancer');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('443', 'MLA1744-MODL-LAND_CRUISER', '32','Land Cruiser');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('444', 'MLA1744-MODL-LANOS', '32','Lanos');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('445', 'MLA1744-MODL-LATITUDE', '32','Latitude');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('446', 'MLA1744-MODL-LEGACY', '32','Legacy');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('447', 'MLA1744-MODL-LEGACY_SW', '32','Legacy SW');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('448', 'MLA1744-MODL-LEGANZA', '32','Leganza');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('449', 'MLA1744-MODL-LEGEND', '32','Legend');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('450', 'MLA1744-MODL-LEON', '32','Leon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('451', 'MLA1744-MODL-LEXUS', '32','Lexus');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('452', 'MLA1744-MODL-LE_BARON', '32','Le Baron');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('453', 'MLA1744-MODL-LINEA', '32','Linea');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('454', 'MLA1744-MODL-LOGAN', '32','Logan');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('455', 'MLA1744-MODL-LTD', '32','LTD');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('456', 'MLA1744-MODL-LUMINA', '32','Lumina');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('457', 'MLA1744-MODL-LUV', '32','Luv');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('458', 'MLA1744-MODL-M3', '32','M3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('459', 'MLA1744-MODL-M5', '32','M5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('460', 'MLA1744-MODL-M6', '32','M6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('461', 'MLA1744-MODL-MAGENTIS', '32','Magentis');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('462', 'MLA1744-MODL-MALIBU', '32','Malib�');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('463', 'MLA1744-MODL-MARCH', '32','March');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('464', 'MLA1744-MODL-MAREA', '32','Marea');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('465', 'MLA1744-MODL-MARUTI', '32','Maruti');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('466', 'MLA1744-MODL-MASTER', '32','Master');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('467', 'MLA1744-MODL-MATIZ', '32','Matiz');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('468', 'MLA1744-MODL-MATRIX', '32','Matrix');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('469', 'MLA1744-MODL-MAVERICK', '32','Maverick');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('470', 'MLA1744-MODL-MAXIMA', '32','Maxima');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('471', 'MLA1744-MODL-MB', '32','MB');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('472', 'MLA1744-MODL-MEGANE', '32','M�gane');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('473', 'MLA1744-MODL-MEGANE_II', '32','M�gane II');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('474', 'MLA1744-MODL-MEGANE_III', '32','Megane III');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('475', 'MLA1744-MODL-MEGANE_II_GRAND_TOUR', '32','Megane II Grand Tour');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('476', 'MLA1744-MODL-MEHARI', '32','Mehari');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('477', 'MLA1744-MODL-MERIVA', '32','Meriva');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('478', 'MLA1744-MODL-MIATA', '32','Miata');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('479', 'MLA1744-MODL-MILLENIA', '32','Millenia');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('480', 'MLA1744-MODL-MIRA', '32','Mira');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('481', 'MLA1744-MODL-MIRAGE', '32','Mirage');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('482', 'MLA1744-MODL-MITO', '32','Mito');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('483', 'MLA1744-MODL-ML', '32','ML');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('484', 'MLA1744-MODL-MOHAVE', '32','Mohave');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('485', 'MLA1744-MODL-MONDEO', '32','Mondeo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('486', 'MLA1744-MODL-MONTERO', '32','Montero');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('487', 'MLA1744-MODL-MONTE_CARLO', '32','Monte Carlo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('488', 'MLA1744-MODL-MONZA', '32','Monza');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('489', 'MLA1744-MODL-MOVE', '32','Move');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('490', 'MLA1744-MODL-MPV', '32','MPV');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('491', 'MLA1744-MODL-MR2', '32','MR2');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('492', 'MLA1744-MODL-MULTIVAN', '32','Multivan');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('493', 'MLA1744-MODL-MURANO', '32','Murano');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('494', 'MLA1744-MODL-MUSSO', '32','Musso');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('495', 'MLA1744-MODL-MUSTANG', '32','Mustang');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('496', 'MLA1744-MODL-MX3', '32','MX3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('497', 'MLA1744-MODL-MX5', '32','MX5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('498', 'MLA1744-MODL-MX6', '32','MX6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('499', 'MLA1744-MODL-NATIVA', '32','Nativa');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('500', 'MLA1744-MODL-NAVAJO', '32','Navajo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('501', 'MLA1744-MODL-NAVARA', '32','Navara');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('502', 'MLA1744-MODL-NEON', '32','Neon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('503', 'MLA1744-MODL-NEW_BEETLE', '32','New Beetle');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('504', 'MLA1744-MODL-NIVA', '32','Niva');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('505', 'MLA1744-MODL-NP300', '32','NP300');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('506', 'MLA1744-MODL-NSX', '32','NSX');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('507', 'MLA1744-MODL-NUBIRA', '32','Nubira');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('508', 'MLA1744-MODL-NX', '32','NX');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('509', 'MLA1744-MODL-ODYSSEY', '32','Odyssey');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('510', 'MLA1744-MODL-OMEGA', '32','Omega');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('511', 'MLA1744-MODL-OPIRUS', '32','Opirus');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('512', 'MLA1744-MODL-ORION', '32','Orion');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('513', 'MLA1744-MODL-OTROS', '32','Otros');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('514', 'MLA1744-MODL-OTROS_MODELOS', '32','Otros Modelos');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('515', 'MLA1744-MODL-OUTBACK', '32','Outback');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('516', 'MLA1744-MODL-OUTLANDER', '32','Outlander');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('517', 'MLA1744-MODL-PALIO', '32','Palio');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('518', 'MLA1744-MODL-PALIO_WEEKEND', '32','Palio Weekend');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('519', 'MLA1744-MODL-PANAMERA', '32','Panamera');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('520', 'MLA1744-MODL-PARATI', '32','Parati');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('521', 'MLA1744-MODL-PARTNER', '32','Partner');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('522', 'MLA1744-MODL-PASEO', '32','Paseo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('523', 'MLA1744-MODL-PASSAT', '32','Passat');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('524', 'MLA1744-MODL-PASSAT_VARIANT', '32','Passat Variant');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('525', 'MLA1744-MODL-PASSPORT', '32','Passport');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('526', 'MLA1744-MODL-PATHFINDER', '32','Pathfinder');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('527', 'MLA1744-MODL-PATRIOT', '32','Patriot');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('528', 'MLA1744-MODL-PATROL', '32','Patrol');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('529', 'MLA1744-MODL-PHAETON', '32','Phaeton');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('530', 'MLA1744-MODL-PICANTO', '32','Picanto');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('531', 'MLA1744-MODL-PICK-UP', '32','Pick-Up');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('532', 'MLA1744-MODL-PILOT', '32','Pilot');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('533', 'MLA1744-MODL-POINTER', '32','Pointer');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('534', 'MLA1744-MODL-POLARA', '32','Polara');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('535', 'MLA1744-MODL-POLO', '32','Polo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('536', 'MLA1744-MODL-PORTER', '32','Porter');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('537', 'MLA1744-MODL-PRADO', '32','Prado');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('538', 'MLA1744-MODL-PREGIO', '32','Pregio');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('539', 'MLA1744-MODL-PRELUDE', '32','Prelude');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('540', 'MLA1744-MODL-PREVIA', '32','Previa');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('541', 'MLA1744-MODL-PRIDE', '32','Pride');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('542', 'MLA1744-MODL-PRIMERA', '32','Primera');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('543', 'MLA1744-MODL-PRINCE', '32','Prince');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('544', 'MLA1744-MODL-PRIUS', '32','Prius');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('545', 'MLA1744-MODL-PROBE', '32','Probe');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('546', 'MLA1744-MODL-PROTON', '32','Proton');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('547', 'MLA1744-MODL-PT_CRUISER', '32','PT Cruiser');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('548', 'MLA1744-MODL-PUMA', '32','Puma');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('549', 'MLA1744-MODL-PUNTO', '32','Punto');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('550', 'MLA1744-MODL-Q5', '32','Q5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('551', 'MLA1744-MODL-Q7', '32','Q7');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('552', 'MLA1744-MODL-QQ', '32','QQ');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('553', 'MLA1744-MODL-QUANTUM', '32','Quantum');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('554', 'MLA1744-MODL-QUEST', '32','Quest');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('555', 'MLA1744-MODL-R4', '32','R4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('556', 'MLA1744-MODL-R5', '32','R5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('557', 'MLA1744-MODL-R6', '32','R6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('558', 'MLA1744-MODL-R8', '32','R8');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('559', 'MLA1744-MODL-RABBIT', '32','Rabbit');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('560', 'MLA1744-MODL-RACER', '32','Racer');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('561', 'MLA1744-MODL-RAM', '32','Ram');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('562', 'MLA1744-MODL-RANCHERO', '32','Ranchero');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('563', 'MLA1744-MODL-RANGER', '32','Ranger');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('564', 'MLA1744-MODL-RANGE_ROVER', '32','Range Rover');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('565', 'MLA1744-MODL-RAV-4', '32','RAV-4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('566', 'MLA1744-MODL-RCZ', '32','RCZ');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('567', 'MLA1744-MODL-REGATA', '32','Regata');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('568', 'MLA1744-MODL-REXTON', '32','Rexton');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('569', 'MLA1744-MODL-RIO', '32','Rio');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('570', 'MLA1744-MODL-ROADSTER', '32','Roadster');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('571', 'MLA1744-MODL-ROCKY', '32','Rocky');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('572', 'MLA1744-MODL-RODEO', '32','Rodeo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('573', 'MLA1744-MODL-RONDO', '32','Rondo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('574', 'MLA1744-MODL-RS4', '32','RS4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('575', 'MLA1744-MODL-RS6', '32','RS6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('576', 'MLA1744-MODL-RX7', '32','RX7');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('577', 'MLA1744-MODL-R_11', '32','R 11');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('578', 'MLA1744-MODL-R_12', '32','R 12');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('579', 'MLA1744-MODL-R_18', '32','R 18');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('580', 'MLA1744-MODL-R_19', '32','R 19');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('581', 'MLA1744-MODL-R_21', '32','R 21');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('582', 'MLA1744-MODL-R_9', '32','R 9');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('583', 'MLA1744-MODL-S-MAX', '32','S-Max');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('584', 'MLA1744-MODL-S10', '32','S10');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('585', 'MLA1744-MODL-S2000', '32','S2000');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('586', 'MLA1744-MODL-S3', '32','S3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('587', 'MLA1744-MODL-S4', '32','S4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('588', 'MLA1744-MODL-S40', '32','S40');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('589', 'MLA1744-MODL-S5', '32','S5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('590', 'MLA1744-MODL-S6', '32','S6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('591', 'MLA1744-MODL-S60', '32','S60');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('592', 'MLA1744-MODL-S8', '32','S8');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('593', 'MLA1744-MODL-S80', '32','S80');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('594', 'MLA1744-MODL-SAFRANE', '32','Safrane');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('595', 'MLA1744-MODL-SAMARA', '32','Samara');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('596', 'MLA1744-MODL-SAMURAI', '32','Samurai');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('597', 'MLA1744-MODL-SANDERO', '32','Sandero');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('598', 'MLA1744-MODL-SANDERO_STEPWAY', '32','Sandero Stepway');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('599', 'MLA1744-MODL-SANTAMO', '32','Santamo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('600', 'MLA1744-MODL-SANTANA', '32','Santana');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('601', 'MLA1744-MODL-SANTA_FE', '32','Santa Fe');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('602', 'MLA1744-MODL-SAVEIRO', '32','Saveiro');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('603', 'MLA1744-MODL-SAXO', '32','Saxo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('604', 'MLA1744-MODL-SCENIC', '32','Sc�nic');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('605', 'MLA1744-MODL-SCENIC_II', '32','Sc�nic II');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('606', 'MLA1744-MODL-SCIROCCO', '32','Scirocco');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('607', 'MLA1744-MODL-SCOUPE', '32','Scoupe');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('608', 'MLA1744-MODL-SEBRING', '32','Sebring');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('609', 'MLA1744-MODL-SENDA', '32','Senda');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('610', 'MLA1744-MODL-SENTRA', '32','Sentra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('611', 'MLA1744-MODL-SEPHIA', '32','Sephia');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('612', 'MLA1744-MODL-SERENA', '32','Serena');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('613', 'MLA1744-MODL-SERIE_1', '32','Serie 1');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('614', 'MLA1744-MODL-SERIE_100', '32','Serie 100');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('615', 'MLA1744-MODL-SERIE_200', '32','Serie 200');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('616', 'MLA1744-MODL-SERIE_280', '32','Serie 280');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('617', 'MLA1744-MODL-SERIE_3', '32','Serie 3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('618', 'MLA1744-MODL-SERIE_300', '32','Serie 300');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('619', 'MLA1744-MODL-SERIE_400', '32','Serie 400');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('620', 'MLA1744-MODL-SERIE_5', '32','Serie 5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('621', 'MLA1744-MODL-SERIE_6', '32','Serie 6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('622', 'MLA1744-MODL-SERIE_600', '32','Serie 600');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('623', 'MLA1744-MODL-SERIE_7', '32','Serie 7');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('624', 'MLA1744-MODL-SERIE_8', '32','Serie 8');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('625', 'MLA1744-MODL-SERIE_B', '32','Serie B');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('626', 'MLA1744-MODL-SHADOW', '32','Shadow');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('627', 'MLA1744-MODL-SHARAN', '32','Sharan');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('628', 'MLA1744-MODL-SHUMA', '32','Shuma');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('629', 'MLA1744-MODL-SIDEKICK', '32','Sidekick');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('630', 'MLA1744-MODL-SIENA', '32','Siena');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('631', 'MLA1744-MODL-SIERRA', '32','Sierra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('632', 'MLA1744-MODL-SILVERADO', '32','Silverado');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('633', 'MLA1744-MODL-SIRION', '32','Sirion');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('634', 'MLA1744-MODL-SONATA', '32','Sonata');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('635', 'MLA1744-MODL-SORENTO', '32','Sorento');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('636', 'MLA1744-MODL-SOUL', '32','Soul');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('637', 'MLA1744-MODL-SPACE_CAB', '32','Space Cab');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('638', 'MLA1744-MODL-SPACE_WAGON', '32','Space Wagon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('639', 'MLA1744-MODL-SPARK', '32','Spark');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('640', 'MLA1744-MODL-SPAZIO', '32','Spazio');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('641', 'MLA1744-MODL-SPIDER', '32','Spider');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('642', 'MLA1744-MODL-SPIRIT', '32','Spirit');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('643', 'MLA1744-MODL-SPORTAGE', '32','Sportage');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('644', 'MLA1744-MODL-SPRINTER', '32','Sprinter');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('645', 'MLA1744-MODL-STILO', '32','Stilo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('646', 'MLA1744-MODL-STRADA', '32','Strada');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('647', 'MLA1744-MODL-STRATUS', '32','Stratus');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('648', 'MLA1744-MODL-STREAM', '32','Stream');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('649', 'MLA1744-MODL-STREETWISE', '32','Streetwise');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('650', 'MLA1744-MODL-SUBURBAN', '32','Suburban');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('651', 'MLA1744-MODL-SUMO', '32','Sumo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('652', 'MLA1744-MODL-SUPRA_COUPE', '32','Supra Coupe');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('653', 'MLA1744-MODL-SURAN', '32','Suran');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('654', 'MLA1744-MODL-SVX', '32','SVX');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('655', 'MLA1744-MODL-SWIFT', '32','Swift');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('656', 'MLA1744-MODL-SYMBOL', '32','Symbol');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('657', 'MLA1744-MODL-TACOMA', '32','Tacoma');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('658', 'MLA1744-MODL-TACUMA', '32','Tacuma');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('659', 'MLA1744-MODL-TAHOE', '32','Tahoe');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('660', 'MLA1744-MODL-TALON', '32','Talon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('661', 'MLA1744-MODL-TAUNUS', '32','Taunus');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('662', 'MLA1744-MODL-TAURUS', '32','Taurus');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('663', 'MLA1744-MODL-TEANA', '32','Teana');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('664', 'MLA1744-MODL-TELCOLINE', '32','Telcoline');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('665', 'MLA1744-MODL-TEMPO', '32','Tempo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('666', 'MLA1744-MODL-TEMPRA', '32','Tempra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('667', 'MLA1744-MODL-TERCEL', '32','Tercel');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('668', 'MLA1744-MODL-TERIOS', '32','Terios');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('669', 'MLA1744-MODL-TERRACAN', '32','Terracan');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('670', 'MLA1744-MODL-TERRANO', '32','Terrano');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('671', 'MLA1744-MODL-TICO', '32','Tico');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('672', 'MLA1744-MODL-TIGGO', '32','Tiggo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('673', 'MLA1744-MODL-TIGRA', '32','Tigra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('674', 'MLA1744-MODL-TIGUAN', '32','Tiguan');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('675', 'MLA1744-MODL-TIIDA', '32','Tiida');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('676', 'MLA1744-MODL-TIPO', '32','Tipo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('677', 'MLA1744-MODL-TOLEDO', '32','Toledo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('678', 'MLA1744-MODL-TOPIC', '32','Topic');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('679', 'MLA1744-MODL-TORINO', '32','Torino');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('680', 'MLA1744-MODL-TOUAREG', '32','Touareg');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('681', 'MLA1744-MODL-TOWNER', '32','Towner');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('682', 'MLA1744-MODL-TOWN_&_COUNTRY', '32','Town & Country');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('683', 'MLA1744-MODL-TRADE', '32','Trade');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('684', 'MLA1744-MODL-TRAFIC', '32','Trafic');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('685', 'MLA1744-MODL-TRAJET', '32','Trajet');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('686', 'MLA1744-MODL-TRANSIT', '32','Transit');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('687', 'MLA1744-MODL-TRANSPORTER', '32','Transporter');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('688', 'MLA1744-MODL-TRIBECA', '32','Tribeca');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('689', 'MLA1744-MODL-TRIBUTE', '32','Tribute');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('690', 'MLA1744-MODL-TROOPER', '32','Trooper');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('691', 'MLA1744-MODL-TT', '32','TT');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('692', 'MLA1744-MODL-TUCSON', '32','Tucson');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('693', 'MLA1744-MODL-TUNDRA', '32','Tundra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('694', 'MLA1744-MODL-TWINGO', '32','Twingo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('695', 'MLA1744-MODL-UNO', '32','Uno');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('696', 'MLA1744-MODL-V16', '32','V16');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('697', 'MLA1744-MODL-V40', '32','V40');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('698', 'MLA1744-MODL-V50', '32','V50');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('699', 'MLA1744-MODL-V70', '32','V70');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('700', 'MLA1744-MODL-VAN', '32','Van');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('701', 'MLA1744-MODL-VARICA', '32','Varica');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('702', 'MLA1744-MODL-VECTRA', '32','Vectra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('703', 'MLA1744-MODL-VEHICROSS', '32','Vehicross');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('704', 'MLA1744-MODL-VENTO', '32','Vento');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('705', 'MLA1744-MODL-VENTO_VARIANT', '32','Vento Variant');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('706', 'MLA1744-MODL-VENTURE', '32','Venture');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('707', 'MLA1744-MODL-VERACRUZ', '32','Veracruz');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('708', 'MLA1744-MODL-VERANEIO', '32','Veraneio');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('709', 'MLA1744-MODL-VIANO', '32','Viano');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('710', 'MLA1744-MODL-VIPER', '32','Viper');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('711', 'MLA1744-MODL-VISA', '32','Visa');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('712', 'MLA1744-MODL-VITARA', '32','Vitara');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('713', 'MLA1744-MODL-VITO', '32','Vito');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('714', 'MLA1744-MODL-VIVACE', '32','Vivace');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('715', 'MLA1744-MODL-VOYAGE', '32','Voyage');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('716', 'MLA1744-MODL-VOYAGER', '32','Voyager');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('717', 'MLA1744-MODL-WAGON_R', '32','Wagon R');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('718', 'MLA1744-MODL-WIDE', '32','Wide');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('719', 'MLA1744-MODL-WINDSTAR', '32','Windstar');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('720', 'MLA1744-MODL-WRANGLER', '32','Wrangler');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('721', 'MLA1744-MODL-X-TERRA', '32','X-Terra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('722', 'MLA1744-MODL-X-TRAIL', '32','X-Trail');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('723', 'MLA1744-MODL-X1', '32','X1');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('724', 'MLA1744-MODL-X3', '32','X3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('725', 'MLA1744-MODL-X5', '32','X5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('726', 'MLA1744-MODL-X6', '32','X6');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('727', 'MLA1744-MODL-XANTIA', '32','Xantia');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('728', 'MLA1744-MODL-XC60', '32','XC60');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('729', 'MLA1744-MODL-XC70', '32','XC70');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('730', 'MLA1744-MODL-XC90', '32','XC90');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('731', 'MLA1744-MODL-XF', '32','XF');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('732', 'MLA1744-MODL-XSARA', '32','Xsara');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('733', 'MLA1744-MODL-XSARA_PICASSO', '32','Xsara Picasso');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('734', 'MLA1744-MODL-YARIS', '32','Yaris');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('735', 'MLA1744-MODL-Z1', '32','Z1');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('736', 'MLA1744-MODL-Z3', '32','Z3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('737', 'MLA1744-MODL-Z4', '32','Z4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('738', 'MLA1744-MODL-Z8', '32','Z8');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('739', 'MLA1744-MODL-ZAFIRA', '32','Zafira');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('740', 'MLA1744-MODL-ZX', '32','ZX');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('741', 'MLA1744-MODL-_AEROSTAR', '32','Aerostar');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('742', 'MLA1744-MODL-_CLASE_M', '32','Clase M');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('743', 'MLA1744-MODL-Actyon', '32','Actyon');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('744', 'MLA1744-MODL-DS4', '32','DS4');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('745', 'MLA1744-MODL-Fortwo', '32','Fortwo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('746', 'MLA1744-MODL-Serie800', '32','Serie 800');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('747', 'MLA1744-MODL-SONIC', '32','Sonic');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('748', 'MLA1744-MODL-SUPRA', '32','Supra');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('749', 'MLA1744-MODL-SPIN', '32','Spin');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('750', 'MLA1744-MODL-COBALT', '32','Cobalt');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('751', 'MLA1744-MODL-PRISMA', '32','Prisma');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('752', 'MLA1744-MODL-MONTANA', '32','Montana');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('753', 'MLA1744-MODL-TRAILBLAZER', '32','Trailblazer');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('754', 'MLA1744-MODL-ONIX', '32','Onix');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('755', 'MLA1744-MODL-AVEO_G3', '32','Aveo G3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('756', 'MLA1744-MODL-TRACKER', '32','Tracker');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('757', 'MLA1744-MODL-CLIO_MIO', '32','Clio M�o');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('758', 'MLA1744-MODL-SANDERO_GT_LINE', '32','Sandero GT Line');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('759', 'MLA1744-MODL-MEGANE_III_R_S', '32','M�gane III. R.S');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('760', 'MLA1744-MODL-CC', '32','CC');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('761', 'MLA1744-MODL-SURAN_CROSS', '32','Suran Cross');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('762', 'MLA1744-MODL-508', '32','508');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('763', 'MLA1744-MODL-FIORINO_QUBO', '32','Fiorino Qubo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('764', 'MLA1744-MODL-GRAND_SIENA', '32','Grand Siena');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('765', 'MLA1744-MODL-DOBLO', '32','Dobl�');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('766', 'MLA1744-MODL-DOBLO_CARGO', '32','Dobl� Cargo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('767', 'MLA1744-MODL-86', '32','86');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('768', 'MLA1744-MODL-C3PICASSO', '32','C3 Picasso');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('769', 'MLA1744-MODL-A7', '32','A7');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('770', 'MLA1744-MODL-Q3', '32','Q3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('771', 'MLA1744-MODL-SKIN', '32','Skin');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('772', 'MLA1744-MODL-F-355', '32','F-355');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('773', 'MLA1744-MODL-F-456', '32','F-456');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('774', 'MLA1744-MODL-CALIFORNIA', '32','California');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('775', 'MLA1744-MODL-F-599', '32','F-599');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('776', 'MLA1744-MODL-F-612', '32','F-612');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('777', 'MLA1744-MODL-F-308', '32','F-308');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('778', 'MLA1744-MODL-F-430', '32','F-430');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('779', 'MLA1744-MODL-F-360', '32','F-360');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('780', 'MLA1744-MODL-F-550', '32','F-550');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('781', 'MLA1744-MODL-5008', '32','5008');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('782', 'MLA1744-MODL-OLTCIT', '32','Oltcit');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('783', 'MLA1744-MODL-AX', '32','AX');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('784', 'MLA1744-MODL-208', '32','208');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('785', 'MLA1744-MODL-H3', '32','H3');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('786', 'MLA1744-MODL-VELOSTER', '32','Veloster');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('787', 'MLA1744-MODL-X-TYPE', '32','X-Type');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('788', 'MLA1744-MODL-S-TYPE', '32','S-Type');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('789', 'MLA1744-MODL-VERSA', '32','Versa');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('790', 'MLA1744-MODL-INFINITI', '32','Infiniti');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('791', 'MLA1744-MODL-CARRERA', '32','Carrera');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('792', 'MLA1744-MODL-KYRON', '32','Kyron');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('793', 'MLA1744-MODL-MARBELLA', '32','Marbella');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('794', 'MLA1744-MODL-S70', '32','S70');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('795', 'MLA1744-MODL-940', '32','940');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('796', 'MLA1744-MODL-960', '32','960');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('797', 'MLA1744-MODL-230', '32','230');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('798', 'MLA1744-MODL-XV', '32','XV');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('799', 'MLA1744-MODL-45', '32','45');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('800', 'MLA1744-MODL-CLASE_GLK', '32','Clase GLK');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('801', 'MLA1744-MODL-NAKAI', '32','Nakai');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('802', 'MLA1744-MODL-ETIOS', '32','Etios');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('803', 'MLA1744-MODL-FOCUS_III', '32','Focus III');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('804', 'MLA1744-MODL-FOCUS_III_SEDAN', '32','Focus III Sedan');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('805', 'MLA1744-MODL-FULWIN', '32','Fulwin');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('806', 'MLA1744-MODL-C4_LOUNGE', '32','C4 Lounge');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('807', 'MLA1744-MODL-HD_78', '32','HD 78');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('808', 'MLA1744-MODL-THE_BEETLE', '32','The Beetle');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('809', 'MLA1744-MODL-2500', '32','Ram 2500');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('810', 'MLA1744-MODL-UP!', '32','Up!');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('811', 'MLA1744-MODL-4008', '32','4008');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('812', 'MLA1744-MODL-RAM_2500', '32','Ram 2500');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('813', 'MLA1744-MODL-RAM_1500', '32','Ram 1500');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('814', 'MLA1744-MODL-QUBO', '32','Qubo');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('815', 'MLA1744-MODL-RS5', '32','RS5');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('816', 'MLA1744-MODL-SERIE_2', '32','Serie 2');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('817', 'MLA1744-MODL-NOTE', '32','Note');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('818', 'MLA1744-MODL-2008', '32','2008');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('819', 'MLA1744-MODL-200_SX', '32','200 SX');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('820', 'MLA1744-MODL-C4_AIRCROSS', '32','C4 Aircross');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('821', 'MLA1744-MODL-C4_PICASSO', '32','C4 Picasso');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('822', 'MLA1744-MODL-FOISON', '32','Foison');
     
     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('823', 'MLA1744-MODL-SERIE_4', '32','Serie 4');
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('824', 'MLA1744-MODL-X4', '32','X4');
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('825', 'MLA1744-MODL-X50', '32','X50');
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('826', 'MLA1744-MODL-X60', '32','X60');

INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`, `OLX_ID`) VALUES ('827', 'MLA1744-TRANS-AUTOMATICA', '33','Autom�tica', '2');

INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`, `OLX_ID`) VALUES ('828', 'MLA1744-TRANS-MANUAL', '33','Manual', '1');

INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('829', 'MLA1744-TRANS-SECUENCIAL', '33','Secuencial');

INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('830', 'MLA1744-YEAR-95192c', '34','2016');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('831', 'a9f0a06', '34','2015');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('832', 'MLA1744-YEAR-2014', '34','2014');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('833', 'MLA1744-YEAR-2013', '34','2013');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('834', 'MLA1744-YEAR-2012', '34','2012');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('835', 'MLA1744-YEAR-2011', '34','2011');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('836', 'MLA1744-YEAR-2010', '34','2010');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('837', 'MLA1744-YEAR-2009', '34','2009');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('838', 'MLA1744-YEAR-2008', '34','2008');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('839', 'MLA1744-YEAR-2007', '34','2007');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('840', 'MLA1744-YEAR-2006', '34','2006');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('841', 'MLA1744-YEAR-2005', '34','2005');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('842', 'MLA1744-YEAR-2004', '34','2004');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('843', 'MLA1744-YEAR-2003', '34','2003');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('844', 'MLA1744-YEAR-2002', '34','2002');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('845', 'MLA1744-YEAR-2001', '34','2001');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('846', 'MLA1744-YEAR-2000', '34','2000');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('847', 'MLA1744-YEAR-1999', '34','1999');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('848', 'MLA1744-YEAR-1998', '34','1998');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('849', 'MLA1744-YEAR-1997', '34','1997');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('850', 'MLA1744-YEAR-1996', '34','1996');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('851', 'MLA1744-YEAR-1995', '34','1995');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('852', 'MLA1744-YEAR-1994', '34','1994');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('853', 'MLA1744-YEAR-1993', '34','1993');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('854', 'MLA1744-YEAR-1992', '34','1992');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('855', 'MLA1744-YEAR-1991', '34','1991');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('856', 'MLA1744-YEAR-1990', '34','1990');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('857', 'MLA1744-YEAR-1989', '34','1989');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('858', 'MLA1744-YEAR-1988', '34','1988');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('859', 'MLA1744-YEAR-1987', '34','1987');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('860', 'MLA1744-YEAR-1986', '34','1986');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('861', 'MLA1744-YEAR-1985', '34','1985');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('862', 'MLA1744-YEAR-1984', '34','1984');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('863', 'MLA1744-YEAR-1983', '34','1983');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('864', 'MLA1744-YEAR-1982', '34','1982');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('865', 'MLA1744-YEAR-1981', '34','1981');

     
INSERT INTO `miagencia`.`feature_value` (`id`, `MERCADO_LIBRE_ID`, `FEATURE_ID`, `VALUE`) VALUES ('866', 'MLA1744-YEAR-1980', '34','1980');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('867', 'NO', '36', 'MLA1744-3LUZSTOP-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('868', 'SI', '36', 'MLA1744-3LUZSTOP-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('869', 'NO', '37', 'MLA1744-ABS-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('870', 'SI', '37', 'MLA1744-ABS-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('871', 'NO', '38', 'MLA1744-AIR1-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('872', 'SI', '38', 'MLA1744-AIR1-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('873', 'NO', '39', 'MLA1744-AIR2-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('874', 'SI', '39', 'MLA1744-AIR2-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('875', 'NO', '40', 'MLA1744-AIR3-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('876', 'SI', '40', 'MLA1744-AIR3-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('877', 'NO', '41', 'MLA1744-AIRBAGCORT-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('878', 'SI', '41', 'MLA1744-AIRBAGCORT-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('879', 'NO', '42', 'MLA1744-ALAR-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('880', 'SI', '42', 'MLA1744-ALAR-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('881', 'NO', '43', 'MLA1744-APCABEZA-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('882', 'SI', '43', 'MLA1744-APCABEZA-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('883', 'NO', '44', 'MLA1744-BLIND-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('884', 'SI', '44', 'MLA1744-BLIND-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('885', 'NO', '45', 'MLA1744-CNTTRACC-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('886', 'SI', '45', 'MLA1744-CNTTRACC-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('887', 'NO', '46', 'MLA1744-CONTR-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('888', 'SI', '46', 'MLA1744-CONTR-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('889', 'NO', '47', 'MLA1744-DOBTRACC-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('890', 'SI', '47', 'MLA1744-DOBTRACC-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('891', 'NO', '48', 'MLA1744-FARANTI-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('892', 'SI', '48', 'MLA1744-FARANTI-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('893', 'NO', '49', 'MLA1744-FAROXEN-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('894', 'SI', '49', 'MLA1744-FAROXEN-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('895', 'NO', '50', 'MLA1744-INMOVMOT-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('896', 'SI', '50', 'MLA1744-INMOVMOT-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('897', 'NO', '51', 'MLA1744-ISOFIX-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('898', 'SI', '51', 'MLA1744-ISOFIX-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('899', 'NO', '52', 'MLA1744-NEBLTRAS-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('900', 'SI', '52', 'MLA1744-NEBLTRAS-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('901', 'NO', '53', 'MLA1744-REPFUERZA-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('902', 'SI', '53', 'MLA1744-REPFUERZA-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('903', 'NO', '54', 'MLA1744-AM/FM-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('904', 'SI', '54', 'MLA1744-AM/FM-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('905', 'NO', '55', 'MLA1744-BLUETOOTH-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('906', 'SI', '55', 'MLA1744-BLUETOOTH-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('907', 'NO', '56', 'MLA1744-CAJACD-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('908', 'SI', '56', 'MLA1744-CAJACD-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('909', 'NO', '57', 'MLA1744-CARGADORCD-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('910', 'SI', '57', 'MLA1744-CARGADORCD-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('911', 'NO', '58', 'MLA1744-CASET-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('912', 'SI', '58', 'MLA1744-CASET-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('913', 'NO', '59', 'MLA1744-COMANDOSAT-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('914', 'SI', '59', 'MLA1744-COMANDOSAT-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('915', 'NO', '60', 'MLA1744-DVD-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('916', 'SI', '60', 'MLA1744-DVD-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('917', 'NO', '61', 'MLA1744-ENTAUXILIA-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('918', 'SI', '61', 'MLA1744-ENTAUXILIA-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('919', 'NO', '62', 'MLA1744-MP3-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('920', 'SI', '62', 'MLA1744-MP3-Y');


INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('921', 'NO', '63', 'MLA1744-REPRODCD-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('922', 'SI', '63', 'MLA1744-REPRODCD-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('923', 'NO', '64', 'MLA1744-TARJETASD-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('924', 'SI', '64', 'MLA1744-TARJETASD-Y');

INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('925', 'NO', '65', 'MLA1744-USB-N');
INSERT INTO `miagencia`.`feature_value` (`id`, `VALUE`, `FEATURE_ID`, `MERCADO_LIBRE_ID`) VALUES ('926', 'SI', '65', 'MLA1744-USB-Y');