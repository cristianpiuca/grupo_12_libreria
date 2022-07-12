-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: boulevard
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantify` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `productId` (`productId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'ficción adulta','2022-07-07 22:06:45','2022-07-07 22:06:45','2022-07-07 22:06:45'),(2,'juvenil','2022-07-07 22:06:45','2022-07-07 22:06:45','2022-07-07 22:06:45'),(3,'autoayuda','2022-07-07 22:06:45','2022-07-07 22:06:45','2022-07-07 22:06:45'),(4,'divulgación','2022-07-07 22:06:45','2022-07-07 22:06:45','2022-07-07 22:06:45'),(5,'fantasía','2022-07-07 22:06:45','2022-07-07 22:06:45','2022-07-07 22:06:45'),(6,'histórica','2022-07-07 22:06:45','2022-07-07 22:06:45','2022-07-07 22:06:45'),(7,'no ficción','2022-07-07 22:06:45','2022-07-07 22:06:45','2022-07-07 22:06:45'),(8,'policial y suspenso','2022-07-07 22:06:45','2022-07-07 22:06:45','2022-07-07 22:06:45');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'ficcion1.png',1,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(2,'ficcion2.png',2,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(3,'ficcion3.png',3,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(4,'ficcion4.png',4,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(5,'ficcion5.png',5,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(6,'juvenil1.png',6,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(7,'juvenil2.png',7,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(8,'juvenil3.png',8,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(9,'juvenil4.png',9,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(10,'todaslascosas.jpg',10,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(11,'elcaminodelfuego.webp',11,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(12,'romasoyyo.jpg',12,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(13,'sangreycenizas.png',13,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(14,'cruelprince.jpg',14,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(15,'PORTADA-LA-CUARTA-scaled.jpg',15,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(16,'extincion.png',16,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(17,'aliceoseman.jpg',17,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(18,'reinodepapel.jpg',18,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(19,'heartstopper-box.webp',19,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(20,'nosotrosenlaluna.jpg',20,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(21,'haikyuu.jpg',21,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(22,'rwrb.png',22,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(23,'seisdecuervos.webp',23,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(24,'dune.webp',24,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(25,'portada_el-pecador-de-oxford_mar-petryk_202204190323.jpg',25,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(26,'destroza.jpg',26,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(27,'el-milagro-metabolico.png',27,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(28,'damian.png',28,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(29,'sietemaridos.png',29,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(30,'hechadeestrellas.png',30,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(31,'coronadehuesos.jpeg',31,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(32,'fantasmas.jpg',32,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(33,'romper.jpg',33,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(34,'raquelharo.jpg',34,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(35,'anonima.jpg',35,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(36,'lacabaña.jpg',36,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `statusId` (`statusId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`statusId`) REFERENCES `statuses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `categoryId` int DEFAULT NULL,
  `year` int NOT NULL,
  `language` varchar(255) NOT NULL,
  `pages` int NOT NULL,
  `format` varchar(255) NOT NULL,
  `editorial` varchar(255) NOT NULL,
  `description` text,
  `stars` int DEFAULT NULL,
  `discount` int DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'El día que dejó de nevar en Alaska','Alice Kellen',2790,2,2021,'Español',352,'rustica','Titania','Un chico con el corazón de hielo. Una chica que huye de sí misma. Dos destinos que se cruzan. Heather cree que sólo hay tres cosas que sabe hacer: atraer problemas, salir huyendo y correr. Así es como termina en Alaska, en un pueblo perdido, trabajando de camarera mientras intenta llevar una vida nueva y tranquila. Su unico problema es que uno de los dueños del restaurante parece odiarla y que ella nunca antes ha conocido a nadie que le despierte tanto su curiosidad. Nilak es reservado, frío y distante, pero Heather puede ver a través de todas las capas tras las que se esconde y sabe que en ocasiones hay algunos recuerdos que pesan demasiado; como los de sus propios errores, esos que intenta dejar atrás. Pero, a veces, la vida te da una segunda oportunidad. La nieve empieza a derretirse. Y todo encaja.',3,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(2,'Sed','Amelie Nothomb',1750,1,2022,'Español',128,'rustica','Anagrama','Una apasionante y nothombiana reelaboración de la Historia Sagrada, reelaborada por una de las escritoras más geniales de nuestro tiempo. El Testamento según Jesucristo. O el Testamento según Amélie Nothomb. La novelista belga se atreve a dar voz al protagonista y es el propio Jesús quien nos narra su Pasión. Aparecen en estas páginas Poncio Pilatos, los discípulos de Cristo, el traidor Judas, María Magdalena, los milagros, la crucifixión, la muerte y resurrección, las conversaciones de Jesús con su padre divino... Personajes y situaciones de todos conocidos, pero a los que aquí se da una vuelta de tuerca: se nos cuentan con una mirada moderna, un tono lírico y filosófico con toques de humor. Jesús nos habla del alma y la vida eterna, pero también del cuerpo y del aquí y ahora; de lo trascendental, pero también de lo mundano. Y aflora un personaje visionario y reflexivo que conoce el amor, el deseo, la fe, el dolor, la decepción y la duda. Esta novela reinterpreta y humaniza una figura histórica con una mirada acaso transgresora, tal vez iconoclasta, pero que no busca en absoluto la provocación por la provocación ni el escándalo fácil. ¿Un sacrilegio, una blasfemia? Simplemente literatura, y de la buena, con la fuerza y capacidad de seducción a las que nos tiene bien acostumbrados Amélie Nothomb. Si en algunos libros anteriores la autora jugaba a reelaborar fábulas y antiguos cuentos de hadas con un toque contemporáneo, aquí se atreve ni más ni menos que con la Historia Sagrada. Y su muy humano Jesucristo no dejará indiferente a nadie.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(3,'El peligro de estar cuerda','Rosa Montero',2500,2,2022,'Español',360,'rustica','Seix Barral','Partiendo de su experiencia personal y de la lectura de numerosos libros de psicología, neurociencia, literatura y memorias de grandes autores de distintas disciplinas creativas, Rosa Montero nos ofrece un estudio apasionante sobre los vinculos entre la creatividad y la inestabilidad mental. Y lo hace compartiendo con el lector numerosas curiosidades asombrosas sobre como funciona nuestro cerebro al crear, desmenuzando todos los aspectos que influyen en la creatividad, y montándolos ante los ojos del lector mientras escribe, como un detective dispuesto a resolver las piezas dispersas de una investigación. Ensayo y1dispersas de una investigación sobre los vinculos entre la creatividad y la locura, y asi el lector asistirá en directo al mismo proceso de la creación, descubrira la teoria de la tormenta perfecta, esto es, que en el estallido creativo confluyen una serie de factores irrepetibles químicos y situacionales, y compartirá la experiencia personal de como Rosa Montero vivió en directo, y durante años, muy cerca de la locura. El peligro de estar cuerda habla de que las hadas nos dan un don, y nos hacen pagar un precio por el; los normales no pagamos ese duro precio, pero corremos el riesgo de morir de tedio, en lugar de morir de amor. Como en todo, la clave esta en el equilibrio entre el porcentaje de desapego y el de sentimiento, en lograr cierta armonía entre el yo que sufre y el yo controla, dice la propia autora.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(4,'El libro más lindo del mundo','Rosario Oyharte',2150,1,2021,'Español',192,'tapa dura',' Vergara','Elisa está por casarse con el novio ideal, hasta que la lectura de una novela la devuelve como un imán a otros tiempos. Muy a su pesar recuerda -una y otra vez- a un amor que todavía está vivo en ella: Sebastian, aquel cliente enigmático que conoció en Three Loves, la pequeña librería neoyorquina donde ella trabajaba. ¿Cuánto tiempo debe pasar para que las viejas heridas cierren? ¿Olvidamos a una persona en brazos de otra? Elisa cree que la lectura y la pasión la pueden salvar de la tristeza, pero el pasado vuelve a hacerse presente, como un perfume que nos lleva sin escalas al momento justo que creíamos ya superado. El libro más lindo del mundo es una bella historia de amor a través del tiempo, que demuestra que todo lo que amamos se convierte en1 Rosario Oyhanarte nos transporta a la ciudad de Nueva York tras el rastro de una trama sorprendente y enamora en cada esquina.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(5,'El mentalista','Camilla Läckberg',3600,1,2022,'Español',700,'tapa dura','Planeta','En un parque de atracciones a las afueras de Estocolmo aparece el cuerpo de una joven asesinada de forma macabra: atravesada por multiples espadas dentro de una caja. La agente de policia Mina Dabiri, reservada y metódica, forma parte del equipo especial de investigación que se hace cargo del caso. Cuando Mina agota todas las posibles pistas, recurre al conocido mentalista Vincent Walder para que los ayude a detectar los indicios que podrían conectar al asesinato con el mundo del ilusionismo. Con la aparición de un nuevo cuerpo, Mina y Vincent entienden que se enfrentan a un despiadado asesino en serie y comienzan una trepidante carrera contrarreloj para descifrar los codigos numéricos y las trampas visuales de una mente brillante y perversa. Un apasionante viaje a la parte más oscura del alma humana que no dejará indiferente a ningun lector.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(6,'Perdidos en Nunca Jamás','Alden Thomas',2200,1,2022,'Español',408,'tapa dura','V&R Editoras SA','Hace cinco años, Wendy apareció en el bosque. Sus hermanos John y Michael, no aparecieron nunca. Jamás. Ahora niños han empezado a desaparecer sin dejar rastro por toda Astoria y el caso de los Darling vuelve a estar en el foco de todas las miradas, acaso estan relacionados?. Wendy no quiere abrir esa herida. No quiere más interrogatorios policiales. No quiere sentir esperanza. Pero, entonces, un chico inconsciente cae del cielo directo hacia ella. Un chico imposible. Uno que no debería existir fuera de las historias que Wendy les contaba a sus hermanos antes de dormir.',4,0,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(7,'Anhelo','Tracy Wollf',3100,2,2022,'Español',672,'rustica','Planeta','Mi mundo cambió en el instante en el que pisé el instituto Kaymere. Aquí todo resulta extraño: la escuela, los alumnos,las asignaturas; y yo no soy más que una simpre mortal entre ellos, dioses.. o monstruos. Todavía no se a que bando pertenezco, si es que pertenezco a alguno, sólo se que lo que parece unirlos a todos es su odio hacia mí. Pero entre ellos esta Jaxon Vega, un vampiro que esconde oscuros secretos y que no ha sentido nada durante un siglo. Algo en el me atrae, apenas lo conozco, pero se que hay algoroto en su interior que de alguna manera encaja con lo que hay roto en mi. Acercarme a él puede significar el fin del mundo, pero empiezo a sospechar que alguien me ha traído a este lugar a propósito, y tengo que descubrir por qué.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(8,'Un reino de Carne y fuego','Jennier Armentrout',2900,5,2022,'Español',800,'tapa dura','Puck','Es el amor mas fuerte que la venganza?. Una traición... Todo lo que ha creído Poppy es mentira, incluído el hombre del que se estaba enamorando. Rodeada de pronto por gente que la ve como un símbolo de un reino monstruoso, apenas sabe quien es, sin el velo de la Doncella. Pero lo que si sabe es que nada es tan peligroso para ella como él. El Señor Oscuro. El príncipe de Atlantia. Una elección... A Casteel Da Neer se lo conoce por muchos nombres y muchas caras. Sus mentiras son tan seductoras como sus manos. Sus verdades, tan sensuales como su mordisco. Poppy sabe que no debe confiar en el. Y Casteel la necesita viva para lograr sus objetivos. Pero el también es la única vía para que ella consiga lo que quiere: encontrar a su hermano Ian. Un secreto... El malestar crece en Atlantia mientras esperan el regreso de su príncipe. Los rumores de guerra se estan extendiendo, y Poppy esta en el centro de todo ello. El rey quiere utilizarla para enviar un mensaje. Los Descendientes quieren verla muerta. Los wolven se estan volviendo más impredecibles. Hay secretos oscuros en juego, secretos llenos de los pecados manchados de sangre de dos reinos que harían cualquier cosa por mantener la verdad oculta.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(9,'Casa de cielo y aliento','Sarah Maas',3200,5,2022,'Español',832,'tapa dura','Alfaguara','Bryce Quinlan y Hunt Athalar han salvado Ciudad Medialuna, por fin ha llegado el momento de bajar la guardia y tratar de volver a la normalidad. Para ello, han acordado tomárselo con calma y no empezar su relación hasta el Solsticio de Invierno, si es que antes no incendian la ciudad con su deseo. Pero todavía no están fuera de peligro. Cuando Bryce, Hunt y sus amigos se ven involucrados en un movimiento rebelde del que no quieren formar parte, se dan cuenta de que tienen que tomar una decisión: callar mientras otros sufren o luchar por un mundo mejor. Y la verdad es que callar nunca se les ha dado bien. Una serie con personajes cautivadores, un mundo epico al borde de la guerra y una heroína de armas tomar que no se detendrá ante nada para proteger su ciudad, y la deliciosa tensión que caracteriza las novelas de Sarah J. Maas, autora de Una corte de rosas y espinas.',4,0,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(10,'Todas las cosas que te dire mañana','Elisabet Benavent',4500,2,2022,'Español',523,'rustica','Suma De Letras','¿Y si tuvieras la oportunidad de cambiar lo que ya has vivido? Elísabet Benavent, la autora de Un cuento perfecto y de la Saga Valeria, regresa con su novela más diferente y original: un romance fragmentado con el tiempo como aliado y el amor como hoja de ruta. Miranda trabaja como subdirectora en una revista de moda. Miranda es feliz junto a Tristán. Por eso no entiende que la este dejando. Ojalá pudiera dar marcha atrás y volver al momento en que se conocieron... Pero ¿y si realmente tuviera la oportunidad de cambiar su historia?',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(11,'El camino de fuego','María Oruña',2500,1,2022,'Español',523,'rustica','Destino','Al tiempo, viajaremos a mediados del siglo XIX y descubriremos cómo Jules Berlioz —un modesto librero de las Highlands— y Mary MacLeod —una joven perteneciente a una familia escocesa acomodada— entrecruzan sus pasos en un camino literario y prohibido en el que el crimen lo salpicará todo de dudas y silencio hasta nuestros días.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(12,'Roma soy yo','Santiago Posteguillo',3200,1,2022,'Español',752,'rustica','Ediciones B','Roma, año 77 a.C. El cruel senador Dolabela va a ser juzgado por corrupción, pero ha contratado a los mejores abogados, ha comprado al jurado y es conocido por usar la violencia contra todos los que se enfrentan a él. Nadie se atreve a ser el fiscal, hasta que de pronto, contra todo pronóstico, un joven patricio de tan solo veintitrés años acepta llevar la acusación, defender al pueblo de Roma y desafiar el poder de las élites.',4,0,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(13,'De sangre y cenizas','Armentrout Jennifer',4500,1,2021,'Español',672,'rustica','PUCK','Elegida desde su nacimiento para dar comienzo a una nueva era, la vida de Poppy nunca le ha pertenecido. La vida de laDoncella es solitaria. Jamas la tocaran. Jamas la mirara. Jamas le hablaran. Jamas sentira placer. Mientras espera al dia de su Ascension, preferiria estar con los guardias luchando contra el mal que se llevo a su familia que estar preparandose para que los dioses la encuentren lo bastante digna. Pero la eleccion nunca ha sido suya. Un deber... El futuro del reino entero recae sobre los hombros de Poppy,algo que ni siquiera esta demasiado segura de querer para ella.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(14,'El Principe Cruel','Holly Black',4500,5,2018,'Español',672,'rustica','Editorial Hidra','Jude tenía siete años cuando sus padres fueron asesinados y, junto con sus dos hermanas, fue trasladada a la traicionera Corte Suprema del Reino Feérico. Diez años más tarde, lo único que Jude desea, a pesar de ser una mera mortal, es sentir que pertenece a ese lugar. Pero muchos de los habitantes desprecian a los humanos. Especialmente el Príncipe Cardan, el hijo más joven y perverso del Alto Rey. Para hacerse un hueco en la Corte, Jude deberá enfrentarse a él. Y afrontar las consecuencias. Como resultado, se verá envuelta en las intrigas y engaños del palacio, además de descubrir su propia habilidad para el derramamiento de sangre. Al tiempo que la guerra civil amenaza con arrasar las Cortes Feéricas, Jude se verá obligada a poner en riesgo su propia vida con una peligrosa alianza.',5,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(15,'La Cuarta Revolucion Industrial','Schwab Klaus',4100,4,2016,'Español',672,'rustica','Debate','Son muchos los desafíos a los que se enfrenta el mundo hoy; pero posiblemente uno de los más importantes sea comprender la nueva rev olución tecnológica. Por primera vez podemos afirmar que la cuarta revolución industrial acarrea la transformación de la humanidad; debido a la convergencia de sistemas digitales; físicos y biológicos que la protagonizan. Las nuevas tecnologías están cambiando la manera en la que vivimos; trabajamos y nos relacionamos los unos con los otros; y la velocidad; amplitud y profundidad de esta revolución nos están obligando a repensar cómo los países se desarrollan; cómo las organizaciones generan valor e incluso qué significa ser humanos.',4,0,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(16,'Extinción','Flavia Broffoni',2800,4,2020,'Español',672,'Digital','Sudamericana','Extinción nos revela con evidencia científica la crisis ecológica y climática que atraviesa nuestro planeta. En los próximos cincuenta años 4000 millones de personas vivirán en zonas no aptas para la producción de alimentos. Para 2080 América del Sur estará en una sequía extrema. El 60% de los mamíferos y el 70% de las aves son criados para alimentar humanos. Este año una pandemia puso en estado de emergencia a todo el mundo. El 60% de las enfermedades infecciosas son transmitidas por animales.',5,0,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(17,'Heartstopper','Alice Oseman',3500,2,2020,'Español',321,'rustica','Vyra','Charlie y Nick van al mismo colegio, aunque nunca se haban cruzado hasta el día en que los hacen sentarse juntos en su grupo de estudio. Muy pronto se vuelven amigos y más pronto aún Charlie comienza a sentir cosas por Nick... aunque sabe que es un imposible. Pero el amor obra de formas inesperadas, y Nick está más interesado en Charlie de lo que ninguno de los dos puede llegar a creer.',5,0,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(18,'Reino de Papel','Victoria Resco',2800,2,2022,'Español',480,'rustica','Vyra','La persona que Aspen Vann más odia, no es otra que Aspen Vann. Para quien la mire no es otra cosa que perfecta e inquebrantable, popular, bonita, inalcanzable. Toda una profesional de la mentira. Pero cuando todo a su alrededor se vuelve un caos y los muros que tan perfectamente ha construido en su interior comienzan a resquebrajarse, un chico y su gato malhumorado entran como un rayo de sol a su cielo nublado y ponen su vida de cabeza. Araron llena sus días de color y ruiseñores. Le muestra caras de sí misma que no sabía que tenía. Que la aterran, que la increpan. Que la hacen desear ser una chica que nunca creyó poder ser. ¿Podrá una nueva Aspen surgir de entre tanta oscuridad y tantas mentiras?',5,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(19,'Heartstopper boxset','Alice Oseman',4900,2,2021,'Español',425,'boxset','Vyra','Charlie y Nick van al mismo colegio, aunque nunca se haban cruzado hasta el día en que los hacen sentarse juntos en su grupo de estudio. Muy pronto se vuelven amigos y más pronto aún Charlie comienza a sentir cosas por Nick... aunque sabe que es un imposible. Pero el amor obra de formas inesperadas, y Nick está más interesado en Charlie de lo que ninguno de los dos puede llegar a creer.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(20,'Nosotros en la luna','Alice Kellen',4900,2,2021,'Español',480,'rustica','Planeta','Cuando Rhys y Ginger se conocen en las calles de la ciudad de la luz, no imaginan que sus vidas se unirán para siempre, a pesar de la distancia y de que no puedan ser más diferente Ella vive en Londres y a veces se siente tan perdida que se ha olvidado hasta de sus propios sueños. El es incapaz de quedarse quieto en ningun lugar y cree saber quien es. Y cada noche su amistad crece entre emails que estan llenos deconfidencias, dudas e inquietudes. Pero que ocurre cuando el paso del tiempo pone a prueba su relación? Es posible colgarse de la luna junto a otra persona sin poner en riesgo el corazón?. Una historia sobre el amor, el destino y la búsqueda de uno mismo.',5,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(21,'Haikyuu Box-Set','Furudate Haruichi',4900,1,2012,'Español',240,'rustica','Shueisha','La historia empieza cuando Shōyō Hinata, aún siendo un estudiante de primaria, ve un partido de voleibol por la televisión, en el cual ve jugar al conocido Pequeño Gigante. Desde entonces, desea convertirse en alguien como él, debido a que ambos son bajos de estatura, y comienza a aficionarse por el deporte.',4,0,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(22,'Rojo, Blanco y Sangre Azul','Casey Mcquiston',3000,2,2021,'Español',496,'rustica','Molina','Alex Clarademont-Díaz, el hijo millennial de la presidenta de los Estados Unidos, es un tesoro para el marketing de la Casa Blanca: atractivo, carismático e inteligente. Lo que nadie sabe es que no soporta al príncipe Henry, el hijo de la reina de Inglaterra. Así que, cuando la prensa sensacionalista se hace con una fotografía que refleja un altercado entre Alex y Henry, las relaciones entre Estados Unidos y el Reino Unido se enfrían. Ambos países trazan un plan para paliar los daños. Lo que empieza como una falsa amistad, publicada en Instagram, se va transformando en algo más profundo de lo que Alex y Henry podrían haber imaginado.',5,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(23,'Seis de Cuervos','LEIGH BARDUGO',3000,5,2021,'Español',325,'rustica','Editorial Hidra','Ketterdam:Un desbordante foco de comercio internacional donde todo se puede conseguir por el precio adecuado, como bien sabe el prodigio criminal Kaz Brekker. A Kaz le acaban de ofrecer la oportunidad de llevar a cabo un gran robo, un arriesgado golpe que podría hacerle más rico de lo que se jamás se ha atrevido a imaginar en sus sueños más salvajes. Pero no podrá llevarlo a cabo por sí solo: tendrá que reclutar a un peculiar equipo formado por un convicto, una espía, un pistolero, una Grisha, un ladrón y un fugitivo. Aunque ellos no lo saben, llegado el momento los miembros del grupo de Kaz serán los únicos capaces de salvar el mundo de la aniquilación total. Bueno, lo serán si no se matan entre ellos primero.',5,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(24,'DUNE (Las Crónicas de Dune 1)','Frank Herbert',4600,5,2017,'Español',704,'rustica','Nova Casa Editorial','Arrakis: un planeta desértico donde el agua es el bien más preciado y, donde llorar a los muertos es el símbolo de máxima prodigalidad.Paul Atreides: un adolescente marcado por un destino singular, dotado de extraños poderes y, abocado a convertirse en dictador, mesías y mártir. Los Harkonnen: personificación de las intrigas que rodean el Imperio Galáctico, buscan obtener el control sobre Arrakis para disponer de la melange, preciosa especia y uno de los bienes más codiciados del universo. Los Fremen: seres libres que han convertido el inhóspito paraje de Dune en su hogar, y que se sienten orgullosos de su pasado y temerosos de su futuro.',4,0,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(25,'El Pecador  de Oxford','Mar Petryk',2600,5,2022,'Español',512,'rustica','Nova Casa Editorial','¿Y si la persona que amas fuera un monstruo? ¿Y si la obsesión que siente por ti congregara a otros miles? ¿En quién podrías confiar? ¿Acaso alguna vez te sentirías a salvo? Isabelle cambió su nombre y renunció a su vida cuando descubrió que su marido no era el apuesto y encantador profesor de Teología que le juró amor hasta el fin de los días, sino un asesino serial a quien la prensa apodó El pecador de Oxford. Tres años más tarde, un extraño paquete llega a su puerta, así como los fantasmas que había creído dejar atrás. Sabe que solo una persona puede estar operando desde las sombras, y ahora su vida corre peligro. Un enigmático francotirador retirado se pegará a ella como si fuera su segunda piel e intentará protegerla, pero la obsesión es sangre irrefrenable. Entre los peligros que la acechan, Isabelle intentará hacer lugar a la pasión que alguna vez colmó su alma, pero todos son sospechosos y el deseo de poner fin a tanto sufrimiento primará sobre las razones que dicta su corazón. ¿Quiénes son los malos? ¿Quiénes son los buenos? Es imposible saberlo cuando tu vida pende de un hilo.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(26,'Destroza Este Libro','Keri Smith',2600,7,2018,'Español',224,'rustica','Paidos','Puede que seas un experto destrozador y que hayas devorado uno o varios ejemplares de Destroza este diario. O tal vez esta sea tu primera vez (pst, puede que esta experiencia te cambie la vida). Sea como sea, no busques más, has encontrado el libro perfecto para destrozar. Te presentamos el nuevo Destroza este diario, ¡ahora en una impresionante edición a todo color! Dentro encontrarás retos para pintar, romper, transformar y dar rienda suelta a tu creatividad; una mezcla de tus retos favoritos y otros completamente nuevos. Destroza este diario. Ahora a todo color te invita a destrozar en colores: mezcla pinturas para crear barro, deja que la suerte elija el tono, recorta tiras de papel de brillantes colores, y mucho más.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(27,'El Milagro Metabólico y Antiestrés','Carlos Jaramillo',2600,4,2021,'Español',305,'rustica','Planeta','El nuevo título del autor de El milagro metabólico nos explica por qué el estrés es el asesino silencioso más mortal de nuestros tiempos. Todos estamos en su mira. Por eso el momento para cambiar nuestro estilo de vida es ahora.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(28,'Damian','Álex Mirez',3200,2,2022,'Español',495,'rustica','Nova Casa Editorial','Un pueblo. Un chico misterioso y atractivo. Un secreto. Una chica dispuesta a descubrirlo. Unos gustos bastantes retorcidos. Y una oscura y sangrienta verdad.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(29,'Los 7 maridos de evelyn hugo','Taylor Jenkins Reid',4900,2,2017,'Español',384,'rustica','Nova Casa Editorial','Evelyn Hugo, el ícono de Hollywood que se ha recluido en su edad madura, decide al fin contar la verdad sobre su vida llena de glamour y de escándalos. Pero cuando elige para ello a Monique Grant, una periodista desconocida, nadie se sorprende más que la misma Monique. Por qué ella ? Por qué ahora ? Monique no está precisamente en su mejor momento. Su marido la abandonó, y su vida profesional no avanza. Aún ignorando por que Evelyn la ha elegido para escribir su biografía. Monique esta decidida a aprovechar esa oportunidad para dar impulso a su carrera. Convocada al lujoso apartamento de Evelyn, Monique escucha fascinada mientras la actriz le cuenta su historia. Desde su llegada a Los Angeles en los años 50 hasta su decisión de abandonar su carrera en el espectáculo en los 80 - y desde luego, los siete maridos que tuvo en ese tiempo - Evelyn narra una historia de ambición implacable, amistad inesperada y un gran amor prohibido.',5,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(30,'Hecha de estrellas','Herring Blake Ashley',3700,2,2019,'Español',495,'rustica','V&R Editoras S.A','Mara y Owen son los gemelos más cercanos del mundo. Así que cuando él es acusado de violación, ella no sabe que pensar ¿puede su hermano ser culpable de algo tan atroz? Dividida entre el amor de su familia y su sentido de justicia, Mara deberá hacerle frente a un trauma del pasado que le impide ser libre y ser fuerte para enfrentar la realidad de su presente. Con sensibilidad y franqueza esta novela encara el abuso sexual, la culpa que enfrentan las víctimas y los límites del consentimiento.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(31,'UNA CORONA DE HUESOS DORADOS','Armentrout, Jennifer',3200,5,2021,'Español',495,'rustica','Punk','Inclínate ante tu reina o sangra ante ella… De la autora superventas del New York Times Jennifer L. Armentrout llega el tercer libro de su saga De sangre y cenizas. Ha sido la víctima y la superviviente… Poppy jamás soñó que encontraría el amor que ha encontrado con el príncipe Casteel. Le gustaría disfrutar de su felicidad, pero primero deben liberar al hermano de Casteel y encontrar al suyo. Es una misión peligrosa y una de enormes consecuencias con las que ninguno de los dos había soñado. Porque Poppy es la Elegida, la Bendecida. La verdadera regente de Atlantia. Lleva en su interior la sangre del rey de los dioses. Por derecho propio, la corona y el reino son suyos.',3,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(32,'Fantasmas - El amor en los tiempos del ghosting','Dolly Alderton',4700,2,2021,'Español',416,'rustica','Planeta','Nina y Lola son dos amigas de treinta y pocos: independientes y con éxito profesional, tienen la sensación que se están quedando atrás mientras sus amigas se casan y tienen hijos, pero tampoco quieren perder su libertad ni quedarse con el primer tipo que aparezca. Cuando Nina conoce a Max a través de una app de citas recupera la confianza en el amor, pero tras unos meses maravillosos, Max desparece de su vida en el momento álgido de su relación.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(33,'Romper el círculo (It Ends With Us)','Colleen Hoover',4700,2,2018,'Español',400,'rustica','Planeta','Lily no siempre lo ha tenido fácil. Por eso, su idílica relación con un magnífico neurocirujano llamado Ryle Kincaid, parece demasiado buena para ser verdad. Cuando Atlas, su primer amor, reaparece repentinamente y Ryle comienza a mostrar su verdadera cara, todo lo que Lily ha construido con él se ve amenazado.',5,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(34,'Me falta una teta','Raquel Haro',4700,3,2021,'Español',384,'rustica','Planeta','Cuando el médico le coge las manos para anunciarle que tiene cáncer de mama, lo primero que teme Raquel, guionista y madre soltera de un niño de cuatro años, no es perder la teta, sino su pelazo, y encima justo ahora que acaba de hacerse el alisado de queratina. A medida que asimila la noticia y arranca el tratamiento, el miedo se asienta como un fiel compañero de viaje, al que ella pone a raya a golpe de un humor descarado y sin complejos.',3,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(35,'Anónima','Wendy Mora',4700,2,2021,'Español',136,'rustica','Planeta','Ella: Lo último que quieres cuando tienes insomnio es que te llegue un mensaje cuando estabas a punto de quedarte dormida. Para colmo, están coqueteando contigo y tú, entre todas tus amigas, eres la que menos liga de todas. Tienes exámenes al día siguiente y no puedes creer que un idiota te esté quitando el sueño, literalmente. Él: Por fin conociste a la chica de tus sueños y te dio su número de móvil. Le mandas un mensaje para invitarla a salir y te contesta otra que está completamente loca. Te han engañado. Te dieron un número falso. Pero te divierte que la chica que te contestó se enfade tantísimo. Y… ¿si le mandas otro mensaje? Madrugar, escuchar las broncas de tus padres, dormirte en la primera hora de clase, mirar a tu alrededor y no encontrar a nadie interesante, estar harto de la música que escuchan todos… Esa es la historia de Alex y Elizabeth, nada fuera de lo común, hasta que un mensaje lo cambia todo.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(36,'La cabaña','Natasha Preston',3100,8,2019,'Español',352,'rustica','Booket','Un fin de semana de juerga en una cabaña remota es justamente lo que Mackenzie necesita. Quiere divertirse a tope con sus amigos, lejos de los padres y las obligaciones. Pero tras una noche loca dos de ellos mueren... asesinados. Sin signos de que la puerta haya sido forzada y ningún rastro de forcejeo, las sospechas recaen sobre el grupo de amigos. Entre ellos solo hay un asesino. Pero ninguno es inocente.',4,10,'2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rols`
--

DROP TABLE IF EXISTS `rols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rols` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rols`
--

LOCK TABLES `rols` WRITE;
/*!40000 ALTER TABLE `rols` DISABLE KEYS */;
INSERT INTO `rols` VALUES (1,'admin','2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47'),(2,'user','2022-07-07 22:06:47','2022-07-07 22:06:47','2022-07-07 22:06:47');
/*!40000 ALTER TABLE `rols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20220626135525-create-category.js'),('20220626190004-create-rol.js'),('20220626190157-create-product.js'),('20220626190427-create-user.js'),('20220626190753-create-image.js'),('20220626191814-create-status.js'),('20220626191815-create-order.js'),('20220626192021-create-cart.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'en proceso','2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(2,'cancelado','2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(3,'finalizado','2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rolId` int NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `rolId` (`rolId`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rolId`) REFERENCES `rols` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','noeliaromina20@gmail.com','$2a$10$zJ08R6waWr.Vlzadn5KTUOR.INxFej5iEGtjME94wnoJKXZYsXcgO',1,'admin',NULL,NULL,NULL,NULL,NULL,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48'),(2,'user','invitado@gmail.com','$2a$10$.tu6IFmJ1BehJ5NAgtvxGOc9zl2nI9ovTeoYj.ZkCOB.L0dhZjwsu',2,'invitado',NULL,NULL,NULL,NULL,NULL,'2022-07-07 22:06:48','2022-07-07 22:06:48','2022-07-07 22:06:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-07 19:11:22
