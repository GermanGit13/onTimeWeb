-- Crear tabla Users --
CREATE TABLE `shop`.`users` (
`id` INT(9) NOT NULL auto_increment,
`username` VARCHAR(16) NOT NULL unique,
`rol` VARCHAR(5) NOT NULL DEFAULT 'users',
`pass` VARCHAR(256) NOT NULL,
`email` VARCHAR(64) NOT NULL ,
PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `users` ADD PRIMARY KEY(`id`);

-- Crear tabla Category --
CREATE TABLE `shop`.`category` (
`id` INT NOT NULL auto_increment,
`category` VARCHAR(32) NULL ,
`img` VARCHAR(256) NULL ,
PRIMARY KEY (`id`)
) ENGINE = InnoDB;

-- Crear tabla Comics --
CREATE TABLE `shop`.`comics` (
`id` INT NOT NULL auto_increment,
`title` VARCHAR(64) NOT NULL , 
`reference` VARCHAR(16) NOT NULL , 
`author` VARCHAR(32) NULL , 
`publisher` VARCHAR(32) NULL , 
`description` VARCHAR(128) NULL , 
`formate` VARCHAR(16) NULL , 
`page` INT NULL , 
`price` DOUBLE NULL ,
`img` VARCHAR(256) NULL ,
`idCategory` INT NULL,
PRIMARY KEY (`id`)
) ENGINE = InnoDB;

ALTER TABLE shop.comics ADD FOREIGN KEY (idCategory) REFERENCES category (id) ON DELETE SET NULL;

-- Crear tabla Facturas --
CREATE TABLE `shop`.`facturas` (
`id` INT NOT NULL auto_increment,
`fecha` DATE NOT NULL ,
`numero` VARCHAR(16) NOT NULL ,
`cantidad` INT NOT NULL ,
`importe` DOUBLE NOT NULL ,
`total` DOUBLE NOT NULL ,
`idComics` INT NULL ,
`idUsers` INT NULL ,
PRIMARY KEY (`id`)
) ENGINE = InnoDB;

ALTER TABLE facturas ADD FOREIGN KEY (idUsers) REFERENCES users (id) ON DELETE SET NULL;
ALTER TABLE facturas ADD FOREIGN KEY (idComics) REFERENCES comics (id) ON DELETE SET NULL;

-- Carga de Categorias --
INSERT INTO category (category,img) VALUES('Marvel', 'https://fr.web.img2.acsta.net/r_654_368/newsv7/20/12/17/11/03/2948069.jpg');
INSERT INTO category (category, img) VALUES('DC', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/DC_Comics_logo.svg/180px-DC_Comics_logo.svg.png');
INSERT INTO category (category, img) VALUES('Europeo', 'https://www.kamekame.es/c/16-category_default/europeo.jpg');
INSERT INTO category (category, img) VALUES('Manga', 'http://mangamax.tinymanga.com/landing/logo.png');

--Carga de Comics --
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('Lobezno 1: Honor', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/48114-large_default/marvel-must-have-lobezno-honor.jpg', '1');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('Marvel Omnibus 1. Magneto de Cullen Bunn y G. Hernández Walta', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/53286-large_default/magneto-de-cullen-bunn-y-g-hernandez-walta-marvel-omnibus.jpg', '1');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('MARVEL GALLERY EDITION 01: LOBEZNO: ARMA X', 'MARVEL-78199', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/55001-large_default/marvel-gallery-edition-01-lobezno-arma-x.jpg', '1');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('MARVEL MUST-HAVE: MAGNETO: TESTAMENTO', 'MARVEL-9999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/54783-large_default/marvel-must-have-magneto-testamento.jpg', '1');

INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('UNIVERSO SANDMAN: JOHN CONSTANTINE HELLBLAZER INTEGRAL', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/54882-large_default/universo-sandman-john-constantine-hellblazer-integral.jpg', '2');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('BATMAN: LA MUERTE DE LA FAMILIA (EDICIÓN DELUXE) (SEGUNDA EDICIÓN)', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/54769-large_default/batman-la-muerte-de-la-familia-edicion-deluxe.jpg', '2');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('LAS AVENTURAS DE BATMAN Y ROBIN 14', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/54433-large_default/las-aventuras-de-batman-y-robin-14.jpg', '2');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('DCSOS PARTE 4: PLANETA MUERTO (EDICIÓN ESPECIAL LIMITADA)', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/54452-large_default/dcsos-parte-4-planeta-muerto-edicion-especial-limitada.jpg', '2');

INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('CORTO MALTÉS 12: MÛ, EL CONTINENTE PERDIDO (EDICIÓN EN BLANCO Y NEGRO)', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/54686-large_default/corto-maltes-12-mu-el-continente-perdido-edicion-en-blanco-y-negro.jpg', '3');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('FRANKENSTEIN DE GEORGES BESS', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/54682-large_default/frankenstein-de-georges-bess.jpg', '3');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('SHADOW LIFE', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/54625-large_default/shadow-life.jpg', '3');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('CONAN EL CIMMERIO 05: LA CIUDADELA ESCARLATA', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/54613-large_default/conan-el-cimmerio-05-la-ciudadela-escarlata.jpg', '3');

INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('UNA PAREJA SIN CITAS', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/55034-large_default/una-pareja-sin-citas.jpg', '4');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('SUN-KEN ROCK 10 (DE 12)', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/55027-large_default/sun-ken-rock-10-de-12.jpg', '4');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('SNOWBALL EARTH 03', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/55010-large_default/snowball-earth-03.jpg', '4');
INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('DIAMANTE EN BRUTO 05', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/54988-large_default/diamante-en-bruto-05.jpg', '4');

-- INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('Lobezno 4: Honor', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/48114-large_default/marvel-must-have-lobezno-honor.jpg', '1');
-- INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('Marvel Omnibus 4. Magneto de Cullen Bunn y G. Hernández Walta', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/53286-large_default/magneto-de-cullen-bunn-y-g-hernandez-walta-marvel-omnibus.jpg', '1');
-- INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('Lobezno 4: Honor', 'MARVEL-7899', 'Frank Miller, Chris Claremont', 'Panini Comics', 'Lobezno viaja a Japón para encontrarse con el amor de su vida. ¡Y con los asesinos de La Mano!', 'Tapa dura', '112', '14.25', 'https://tienda.tomosygrapas.com/48114-large_default/marvel-must-have-lobezno-honor.jpg', '1');
-- INSERT INTO comics (title, reference, author, publisher, description, formate, page, price, img, idCategory) VALUES('Marvel Omnibus 4. Magneto de Cullen Bunn y G. Hernández Walta', 'MARVEL-7999', 'Gabriel Hernández', 'Panini Comics', 'El que fuera considerado el mutante más peligroso del planeta ya no es el hombre que todos conocimos', 'Tapa dura', '468', '47.50', 'https://tienda.tomosygrapas.com/53286-large_default/magneto-de-cullen-bunn-y-g-hernandez-walta-marvel-omnibus.jpg', '1');

-- Carga de facturas --
INSERT INTO facturas (fecha, numero, cantidad, importe, total, idComics, idUsers) VALUES ('20230119', 'FAC-0001-2023', '2', '14.25', '28.50', '1', '1');
INSERT INTO facturas (fecha, numero, cantidad, importe, total, idComics, idUsers) VALUES ('20230408', 'FAC-0002-2023', '1', '47.5', '47.50', '2', '2');
INSERT INTO facturas (fecha, numero, cantidad, importe, total, idComics, idUsers) VALUES ('20231122', 'FAC-0004-2023', '4', '14.25', '57', '1', '2');
INSERT INTO facturas (fecha, numero, cantidad, importe, total, idComics, idUsers) VALUES ('20230428', 'FAC-0005-2023', '2', '47.5', '90', '2', '2');

-- Pruebas -
-- CREATE TABLE `shopcomics`.`facturas` (
--                                        `id` INT NOT NULL auto_increment,
--                                        `fecha` DATE NOT NULL ,
--                                        `numero` VARCHAR(16) NOT NULL ,
--                                        `importe` DOUBLE NOT NULL ,
--                                        `idUsers` INT NOT NULL ,
--                                        PRIMARY KEY (`id`)
-- ) ENGINE = InnoDB;
--
-- ALTER TABLE facturas ADD FOREIGN KEY (idUsers) REFERENCES users (id);
--
-- CREATE TABLE `shopcomics`.`detalleFac` (
--                                          `id` INT NOT NULL auto_increment,
--                                          `cantidad` DOUBLE NULL ,
--                                          `idComics` INT NOT NULL ,
--                                          `idFacturas` INT NOT NULL ,
--                                          PRIMARY KEY (`id`)
-- ) ENGINE = InnoDB;
--
-- ALTER TABLE detalleFac ADD FOREIGN KEY (id) REFERENCES facturas (id);
-- ALTER TABLE detalleFac ADD FOREIGN KEY (idFacturas) REFERENCES facturas (id);