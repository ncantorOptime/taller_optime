/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : taller_optime

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-10-02 18:56:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `marca` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '12983810', 'producto 1', 'prueba de producto 1', 'marca prueba', 'tecnologia', '120000');
INSERT INTO `product` VALUES ('2', '110029', 'Cerveza tibetana Barley', '110029-Cerveza tibetana Barley', 'Exotic Liquids', 'tecnologia', '120900');
INSERT INTO `product` VALUES ('3', '111010', 'Sirope de regaliz', '111010-Sirope de regaliz', 'Exotic Liquids', 'hogar', '209000');
INSERT INTO `product` VALUES ('4', '111991', 'Especias Cajun del chef Anton', '111991-Especias Cajun del chef Anton', 'New Orleans Cajun Delights', 'vehiculo', '30000');
INSERT INTO `product` VALUES ('5', '112972', 'Mezcla Gumbo del chef Anton', '112972-Mezcla Gumbo del chef Anton', 'New Orleans Cajun Delights', 'vehiculo', '1000');
INSERT INTO `product` VALUES ('6', '113953', 'Mermelada de grosellas de la abuela', '113953-Mermelada de grosellas de la abuela', 'Grandma Kelly\'s Homestead', 'vehiculo', '209000');
INSERT INTO `product` VALUES ('7', '114934', 'Peras secas orgánicas del tío Bob', '114934-Peras secas orgánicas del tío Bob', 'Grandma Kelly\'s Homestead', 'hogar', '120900');
INSERT INTO `product` VALUES ('8', '115915', 'Salsa de arándanos Northwoods', '115915-Salsa de arándanos Northwoods', 'Grandma Kelly\'s Homestead', 'hogar', '30000');
INSERT INTO `product` VALUES ('9', '116896', 'Buey Mishi Kobe', '116896-Buey Mishi Kobe', 'Tokyo Traders', 'hogar', '120900');
INSERT INTO `product` VALUES ('10', '117877', 'Pez espada', '117877-Pez espada', 'Tokyo Traders', 'hogar', '120900');
INSERT INTO `product` VALUES ('11', '118858', 'Queso Cabrales', '118858-Queso Cabrales', 'Cooperativa de Quesos \'Las Cabras\'', 'tecnologia', '209000');
INSERT INTO `product` VALUES ('12', '119839', 'Queso Manchego La Pastora', '119839-Queso Manchego La Pastora', 'Cooperativa de Quesos \'Las Cabras\'', 'tecnologia', '1000');
INSERT INTO `product` VALUES ('13', '120820', 'Algas Konbu', '120820-Algas Konbu', 'Mayumi\'s', 'tecnologia', '120900');
INSERT INTO `product` VALUES ('14', '121801', 'Cuajada de judías', '121801-Cuajada de judías', 'Mayumi\'s', 'hogar', '30000');
INSERT INTO `product` VALUES ('15', '122782', 'Salsa de soja baja en sodio', '122782-Salsa de soja baja en sodio', 'Mayumi\'s', 'vehiculo', '209000');
INSERT INTO `product` VALUES ('16', '123763', 'Postre de merengue Pavlova', '123763-Postre de merengue Pavlova', 'Pavlova, Ltd.', 'vehiculo', '209000');
INSERT INTO `product` VALUES ('17', '124744', 'Cordero Alice Springs', '124744-Cordero Alice Springs', 'Pavlova, Ltd.', 'vehiculo', '209000');
INSERT INTO `product` VALUES ('18', '125725', 'Langostinos tigre Carnarvon', '125725-Langostinos tigre Carnarvon', 'Pavlova, Ltd.', 'hogar', '209000');
INSERT INTO `product` VALUES ('19', '126706', 'Pastas de té de chocolate', '126706-Pastas de té de chocolate', 'Specialty Biscuits, Ltd.', 'hogar', '209000');
INSERT INTO `product` VALUES ('20', '127687', 'Mermelada de Sir Rodney\'s', '127687-Mermelada de Sir Rodney\'s', 'Specialty Biscuits, Ltd.', 'hogar', '145147.85');
INSERT INTO `product` VALUES ('21', '128668', 'Bollos de Sir Rodney\'s', '128668-Bollos de Sir Rodney\'s', 'Specialty Biscuits, Ltd.', 'hogar', '147788.57');
INSERT INTO `product` VALUES ('22', '129649', 'Pan de centeno crujiente estilo Gustaf\'s', '129649-Pan de centeno crujiente estilo Gustaf\'s', 'PB Knäckebröd AB', 'tecnologia', '150429.28');
INSERT INTO `product` VALUES ('23', '130630', 'Pan fino', '130630-Pan fino', 'PB Knäckebröd AB', 'tecnologia', '153070');
INSERT INTO `product` VALUES ('24', '131611', 'Refresco Guaraná Fantástica', '131611-Refresco Guaraná Fantástica', 'Refrescos Americanas LTDA', 'tecnologia', '155710.71');
INSERT INTO `product` VALUES ('25', '132592', 'Crema de chocolate y nueces NuNuCa', '132592-Crema de chocolate y nueces NuNuCa', 'Heli Süßwaren GmbH & Co. KG', 'hogar', '158351.42');
INSERT INTO `product` VALUES ('26', '133573', 'Ositos de goma Gumbär', '133573-Ositos de goma Gumbär', 'Heli Süßwaren GmbH & Co. KG', 'vehiculo', '160992.14');
INSERT INTO `product` VALUES ('27', '134554', 'Chocolate Schoggi', '134554-Chocolate Schoggi', 'Heli Süßwaren GmbH & Co. KG', 'vehiculo', '163632.85');
INSERT INTO `product` VALUES ('28', '135535', 'Col fermentada Rössle', '135535-Col fermentada Rössle', 'Plutzer Lebensmittelgroßmärkte AG', 'vehiculo', '166273.57');
INSERT INTO `product` VALUES ('29', '136516', 'Salchicha Thüringer', '136516-Salchicha Thüringer', 'Plutzer Lebensmittelgroßmärkte AG', 'hogar', '168914.28');
INSERT INTO `product` VALUES ('30', '137497', 'Arenque blanco del noroeste', '137497-Arenque blanco del noroeste', 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'hogar', '171555');
INSERT INTO `product` VALUES ('31', '138478', 'Queso gorgonzola Telino', '138478-Queso gorgonzola Telino', 'Formaggi Fortini s.r.l.', 'hogar', '174195.71');
INSERT INTO `product` VALUES ('32', '139459', 'Queso Mascarpone Fabioli', '139459-Queso Mascarpone Fabioli', 'Formaggi Fortini s.r.l.', 'hogar', '176836.42');
INSERT INTO `product` VALUES ('33', '140440', 'Queso de cabra', '140440-Queso de cabra', 'Norske Meierier', 'tecnologia', '179477.14');
INSERT INTO `product` VALUES ('34', '141421', 'Cerveza Sasquatch', '141421-Cerveza Sasquatch', 'Bigfoot Breweries', 'tecnologia', '182117.85');
INSERT INTO `product` VALUES ('35', '142402', 'Cerveza negra Steeleye', '142402-Cerveza negra Steeleye', 'Bigfoot Breweries', 'tecnologia', '184758.57');
INSERT INTO `product` VALUES ('36', '143383', 'Escabeche de arenque', '143383-Escabeche de arenque', 'Svensk Sjöföda AB', 'hogar', '187399.28');
INSERT INTO `product` VALUES ('37', '144364', 'Salmón ahumado Gravad', '144364-Salmón ahumado Gravad', 'Svensk Sjöföda AB', 'vehiculo', '190040');
INSERT INTO `product` VALUES ('38', '145345', 'Vino Côte de Blaye', '145345-Vino Côte de Blaye', 'Aux joyeux ecclésiastiques', 'vehiculo', '192680.71');
INSERT INTO `product` VALUES ('39', '146326', 'Licor verde Chartreuse', '146326-Licor verde Chartreuse', 'Aux joyeux ecclésiastiques', 'vehiculo', '195321.42');
INSERT INTO `product` VALUES ('40', '147307', 'Carne de cangrejo de Boston', '147307-Carne de cangrejo de Boston', 'New England Seafood Cannery', 'hogar', '197962.14');
INSERT INTO `product` VALUES ('41', '148288', 'Crema de almejas estilo Nueva Inglaterra', '148288-Crema de almejas estilo Nueva Inglaterra', 'New England Seafood Cannery', 'hogar', '200602.85');
INSERT INTO `product` VALUES ('42', '149269', 'Tallarines de Singapur', '149269-Tallarines de Singapur', 'Leka Trading', 'hogar', '203243.57');
INSERT INTO `product` VALUES ('43', '150250', 'Café de Malasia', '150250-Café de Malasia', 'Leka Trading', 'hogar', '205884.28');
INSERT INTO `product` VALUES ('44', '151231', 'Azúcar negra Malacca', '151231-Azúcar negra Malacca', 'Leka Trading', 'tecnologia', '208525');
INSERT INTO `product` VALUES ('45', '152212', 'Arenque ahumado', '152212-Arenque ahumado', 'Lyngbysild', 'tecnologia', '211165.71');
INSERT INTO `product` VALUES ('46', '153193', 'Arenque salado', '153193-Arenque salado', 'Lyngbysild', 'tecnologia', '213806.42');
INSERT INTO `product` VALUES ('47', '154174', 'Galletas Zaanse', '154174-Galletas Zaanse', 'Zaanse Snoepfabriek', 'hogar', '216447.14');
INSERT INTO `product` VALUES ('48', '155155', 'Chocolate holandés', '155155-Chocolate holandés', 'Zaanse Snoepfabriek', 'vehiculo', '219087.85');
INSERT INTO `product` VALUES ('49', '156136', 'Regaliz', '156136-Regaliz', 'Karkki Oy', 'vehiculo', '221728.57');
INSERT INTO `product` VALUES ('50', '157117', 'Chocolate blanco', '157117-Chocolate blanco', 'Karkki Oy', 'vehiculo', '224369.28');
INSERT INTO `product` VALUES ('51', '158098', 'Manzanas secas Manjimup', '158098-Manzanas secas Manjimup', 'G\'day, Mate', 'hogar', '227010');
INSERT INTO `product` VALUES ('52', '159079', 'Cereales para Filo', '159079-Cereales para Filo', 'G\'day, Mate', 'hogar', '229650.71');
INSERT INTO `product` VALUES ('53', '160060', 'Empanada de carne', '160060-Empanada de carne', 'G\'day, Mate', 'hogar', '232291.42');
INSERT INTO `product` VALUES ('54', '161041', 'Empanada de cerdo', '161041-Empanada de cerdo', 'Ma Maison', 'hogar', '234932.14');
INSERT INTO `product` VALUES ('55', '162022', 'Paté chino', '162022-Paté chino', 'Ma Maison', 'tecnologia', '237572.85');
INSERT INTO `product` VALUES ('56', '163003', 'Gnocchi de la abuela Alicia', '163003-Gnocchi de la abuela Alicia', 'Pasta Buttini s.r.l.', 'tecnologia', '240213.57');
INSERT INTO `product` VALUES ('57', '163984', 'Raviolis Angelo', '163984-Raviolis Angelo', 'Pasta Buttini s.r.l.', 'tecnologia', '242854.28');
INSERT INTO `product` VALUES ('58', '164965', 'Caracoles de Borgoña', '164965-Caracoles de Borgoña', 'Escargots Nouveaux', 'hogar', '245495');
INSERT INTO `product` VALUES ('59', '165946', 'Raclet de queso Courdavault', '165946-Raclet de queso Courdavault', 'Gai pâturage', 'vehiculo', '248135.71');
INSERT INTO `product` VALUES ('60', '166927', 'Camembert Pierrot', '166927-Camembert Pierrot', 'Gai pâturage', 'vehiculo', '250776.42');
INSERT INTO `product` VALUES ('61', '167908', 'Sirope de arce', '167908-Sirope de arce', 'Forêts d\'érables', 'vehiculo', '253417.14');
INSERT INTO `product` VALUES ('62', '168889', 'Tarta de azúcar', '168889-Tarta de azúcar', 'Forêts d\'érables', 'hogar', '256057.85');
INSERT INTO `product` VALUES ('63', '169870', 'Sandwich de vegetales', '169870-Sandwich de vegetales', 'Pavlova, Ltd.', 'hogar', '258698.57');
INSERT INTO `product` VALUES ('64', '170851', 'Bollos de pan de Wimmer', '170851-Bollos de pan de Wimmer', 'Plutzer Lebensmittelgroßmärkte AG', 'hogar', '261339.28');
INSERT INTO `product` VALUES ('65', '171832', 'Salsa de pimiento picante de Luisiana', '171832-Salsa de pimiento picante de Luisiana', 'New Orleans Cajun Delights', 'hogar', '263980');
INSERT INTO `product` VALUES ('66', '172813', 'Especias picantes de Luisiana', '172813-Especias picantes de Luisiana', 'New Orleans Cajun Delights', 'tecnologia', '266620.71');
INSERT INTO `product` VALUES ('67', '173794', 'Cerveza Laughing Lumberjack', '173794-Cerveza Laughing Lumberjack', 'Bigfoot Breweries', 'tecnologia', '269261.42');
INSERT INTO `product` VALUES ('68', '174775', 'Barras de pan de Escocia', '174775-Barras de pan de Escocia', 'Specialty Biscuits, Ltd.', 'tecnologia', '271902.14');
INSERT INTO `product` VALUES ('69', '175756', 'Queso Gudbrandsdals', '175756-Queso Gudbrandsdals', 'Norske Meierier', 'hogar', '274542.85');
INSERT INTO `product` VALUES ('70', '176737', 'Cerveza Outback', '176737-Cerveza Outback', 'Pavlova, Ltd.', 'vehiculo', '277183.57');
INSERT INTO `product` VALUES ('71', '177718', 'Crema de queso Fløtemys', '177718-Crema de queso Fløtemys', 'Norske Meierier', 'vehiculo', '279824.28');
INSERT INTO `product` VALUES ('72', '178699', 'Queso Mozzarella Giovanni', '178699-Queso Mozzarella Giovanni', 'Formaggi Fortini s.r.l.', 'vehiculo', '282465');
INSERT INTO `product` VALUES ('73', '179680', 'Caviar rojo', '179680-Caviar rojo', 'Svensk Sjöföda AB', 'hogar', '285105.71');
INSERT INTO `product` VALUES ('74', '180661', 'Queso de soja Longlife', '180661-Queso de soja Longlife', 'Tokyo Traders', 'hogar', '287746.42');
INSERT INTO `product` VALUES ('75', '181642', 'Cerveza Klosterbier Rhönbräu', '181642-Cerveza Klosterbier Rhönbräu', 'Plutzer Lebensmittelgroßmärkte AG', 'hogar', '290387.14');
INSERT INTO `product` VALUES ('76', '182623', 'Licor Cloudberry', '182623-Licor Cloudberry', 'Karkki Oy', 'hogar', '293027.85');
INSERT INTO `product` VALUES ('77', '183604', 'Salsa verde original Frankfurter', '183604-Salsa verde original Frankfurter', 'Plutzer Lebensmittelgroßmärkte AG', 'tecnologia', '295668.57');
