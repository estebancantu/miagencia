


// grant select on miagencia.client to miagencia@'localhost';
// grant insert on miagencia.client to miagencia@'localhost';

// acordarse del flush privileges;


INSERT INTO `miagencia`.`account` (`ID`, `USERNAME`, `PASSWORD`, `ACTIVE`, `DEALERSHIP_ID`) VALUES ('1', 'agustin', '123456', '1', '1');
INSERT INTO `miagencia`.`dealership` (`ID`, `NAME`, `LOCATION_ID`, `ACCOUNT_ID`) VALUES ('1', 'Agencia 1', '1', '1');
INSERT INTO `miagencia`.`location` (`ID`, `ADDRESS_LINE`, `ZIP_CODE`, `COUNTRY_ID`, `STATE_ID`, `CITY_ID`, `NEIGHBORHOOD_ID`, `LATITUDE`, `LONGITUDE`, `OPEN_HOURS`) VALUES ('1', '13 n659', '1900', '1', '1', '1', '1', '-21.2332323', '-23.323232', '10 a 20');
INSERT INTO `miagencia`.`country` (`ID`, `NAME`, `MERCADO_LIBRE_ID`) VALUES ('1', 'Argentina', 'AR','www.olx.com.ar');
INSERT INTO `miagencia`.`state` (`ID`, `COUNTRY_ID`, `NAME`, `MERCADO_LIBRE_ID`) VALUES ('1', '1', 'Bs.As. G.B.A. Sur', 'TUxBUEdSQXJlMDNm', 'buenosaires.olx.com.ar');
INSERT INTO `miagencia`.`city` (`ID`, `STATE_ID`, `NAME`, `MERCADO_LIBRE_ID`, `AUTOCOSMOS_ID`) VALUES ('1', '1', 'La Plata', 'TUxBQ0xBUGxhdGE','laplata.olx.com.ar','http://www.autocosmos.com.ar/api2/ciudades/505');
INSERT INTO `miagencia`.`neighborhood` (`ID`, `NAME`, `MERCADO_LIBRE_ID`, `CITY_ID`) VALUES ( '1', 'La Plata', 'TUxBQkxBUDgzNjRa', '1');



 INSERT INTO Clients (dni, FIRST_NAME, LAST_NAME, E_MAIL, MOBILE, PHONE)
 VALUES ( 27528358, 'Esteban','Cantu','estebancantu@gmail.com','2215608507','4519011');


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
INSERT INTO `miagencia`.`feature` (`id`, `name`, `GROUP_ID`, `MERCADO_LIBRE_ID`, `MERCADO_LIBRE_TYPE`) VALUES ('30', 'Kilometros', '4', 'MLA1744-KMTS', 'string');
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