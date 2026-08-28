BEGIN TRANSACTION;
CREATE TABLE "aprendizaje_categorias" ("id", "name", "slug", "description", "education_level", "icon", "color", "sort_order", "active", "created_at", "updated_at");
INSERT INTO "aprendizaje_categorias" VALUES(7,'Aritmética','aritmetica','Operaciones básicas y problemas','primaria','▦','purple',10,1,'2026-08-26T22:23:04.000Z','2026-08-27T01:19:36.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(8,'Patrones','curriculo-patrones','Rama curricular importada desde la estructura de matematicas de Google Cloud.','primaria','#','blue',11,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(9,'Geometría','curriculo-geometria','Rama curricular importada desde la estructura de matematicas de Google Cloud.','primaria','#','green',12,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(10,'Medición','curriculo-medicion','Rama curricular importada desde la estructura de matematicas de Google Cloud.','primaria','#','orange',13,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(11,'Estadística','curriculo-estadistica','Rama curricular importada desde la estructura de matematicas de Google Cloud.','primaria','#','pink',14,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(12,'Probabilidad','curriculo-probabilidad','Rama curricular importada desde la estructura de matematicas de Google Cloud.','primaria','#','teal',15,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(13,'Preálgebra','curriculo-prealgebra','Rama curricular importada desde la estructura de matematicas de Google Cloud.','primaria','#','yellow',16,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(14,'Ubicación espacial','curriculo-ubicacion-espacial','Rama curricular importada desde la estructura de matematicas de Google Cloud.','primaria','#','purple',17,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(15,'Ubicación espacial y coordenadas','curriculo-ubicacion-espacial-y-coordenadas','Rama curricular importada desde la estructura de matematicas de Google Cloud.','primaria','#','blue',18,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_categorias" VALUES(26,'Álgebra','algebra-secundaria1','','secundaria','≥','blue',0,1,'2026-08-27T01:19:36.000Z','2026-08-27T01:19:36.000Z');
CREATE TABLE "aprendizaje_configuracion_sitio" ("setting_key", "setting_value", "updated_at");
CREATE TABLE "aprendizaje_lecciones" ("id", "category_id", "title", "slug", "summary", "page_type", "icon", "icon_type", "icon_file", "hero_expression", "hero_media_id", "difficulty", "duration_minutes", "sort_order", "published", "created_at", "updated_at");
INSERT INTO "aprendizaje_lecciones" VALUES(8,7,'P1 - Conteo','ari-p1-001','Clave curricular: ari-p1-001. Grado: P1. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,1,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(9,7,'P1 - Conteo','ari-p1-002','Clave curricular: ari-p1-002. Grado: P1. Rama: Aritmética. Area: Numeración. Subtemas: 8 AL 12.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,2,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(10,7,'P1 - Escritura de números','ari-p1-003','Clave curricular: ari-p1-003. Grado: P1. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 4.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,3,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(11,7,'P1 - Escritura de números','ari-p1-004','Clave curricular: ari-p1-004. Grado: P1. Rama: Aritmética. Area: Numeración. Subtemas: 5 AL 13.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,4,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(12,7,'P1 - Unidades y decenas','ari-p1-005','Clave curricular: ari-p1-005. Grado: P1. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 3.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,5,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(13,7,'P1 - Comparación y orden','ari-p1-006','Clave curricular: ari-p1-006. Grado: P1. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,6,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(14,7,'P1 - Recta numérica','ari-p1-007','Clave curricular: ari-p1-007. Grado: P1. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,7,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(15,7,'P1 - Significado de sumar','ari-p1-008','Clave curricular: ari-p1-008. Grado: P1. Rama: Aritmética. Area: Suma. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,8,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(16,7,'P1 - Sumas básicas','ari-p1-009','Clave curricular: ari-p1-009. Grado: P1. Rama: Aritmética. Area: Suma. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,9,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(17,7,'P1 - Estrategias de suma','ari-p1-010','Clave curricular: ari-p1-010. Grado: P1. Rama: Aritmética. Area: Suma. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,10,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(18,7,'P1 - Problemas de suma','ari-p1-011','Clave curricular: ari-p1-011. Grado: P1. Rama: Aritmética. Area: Suma. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,11,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(19,7,'P1 - Significado de restar','ari-p1-012','Clave curricular: ari-p1-012. Grado: P1. Rama: Aritmética. Area: Resta. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,12,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(20,7,'P1 - Restas básicas','ari-p1-013','Clave curricular: ari-p1-013. Grado: P1. Rama: Aritmética. Area: Resta. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,13,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(21,7,'P1 - Estrategias de resta','ari-p1-014','Clave curricular: ari-p1-014. Grado: P1. Rama: Aritmética. Area: Resta. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,14,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(22,7,'P1 - Problemas de resta','ari-p1-015','Clave curricular: ari-p1-015. Grado: P1. Rama: Aritmética. Area: Resta. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,15,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(23,8,'P1 - Patrones visuales','pat-p1-016','Clave curricular: pat-p1-016. Grado: P1. Rama: Patrones. Area: Patrones. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,16,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(24,8,'P1 - Patrones numéricos','pat-p1-017','Clave curricular: pat-p1-017. Grado: P1. Rama: Patrones. Area: Patrones. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,17,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(25,8,'P1 - Significado del signo igual','pat-p1-018','Clave curricular: pat-p1-018. Grado: P1. Rama: Patrones. Area: Igualdad y valores desconocidos. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,18,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(26,8,'P1 - Número faltante','pat-p1-019','Clave curricular: pat-p1-019. Grado: P1. Rama: Patrones. Area: Igualdad y valores desconocidos. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,19,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(27,9,'P1 - Posición de objetos','geo-p1-020','Clave curricular: geo-p1-020. Grado: P1. Rama: Geometría. Area: Ubicación espacial. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,20,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(28,9,'P1 - Trayectos','geo-p1-021','Clave curricular: geo-p1-021. Grado: P1. Rama: Geometría. Area: Ubicación espacial. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,21,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(29,9,'P1 - Reconocimiento de figuras','geo-p1-022','Clave curricular: geo-p1-022. Grado: P1. Rama: Geometría. Area: Figuras geométricas. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,22,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(30,9,'P1 - Composición de figuras','geo-p1-023','Clave curricular: geo-p1-023. Grado: P1. Rama: Geometría. Area: Figuras geométricas. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,23,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(31,9,'P1 - Reconocimiento de cuerpos','geo-p1-024','Clave curricular: geo-p1-024. Grado: P1. Rama: Geometría. Area: Cuerpos geométricos. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,24,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(32,10,'P1 - Dimensiones','med-p1-025','Clave curricular: med-p1-025. Grado: P1. Rama: Medición. Area: Longitud. Subtemas: 1 AL 4.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,25,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(33,10,'P1 - Medición','med-p1-026','Clave curricular: med-p1-026. Grado: P1. Rama: Medición. Area: Longitud. Subtemas: 5 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,26,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(34,10,'P1 - Masa','med-p1-027','Clave curricular: med-p1-027. Grado: P1. Rama: Medición. Area: Masa. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,27,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(35,10,'P1 - Capacidad','med-p1-028','Clave curricular: med-p1-028. Grado: P1. Rama: Medición. Area: Capacidad. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,28,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(36,10,'P1 - Tiempo','med-p1-029','Clave curricular: med-p1-029. Grado: P1. Rama: Medición. Area: Tiempo. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,29,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(37,10,'P1 - Dinero','med-p1-030','Clave curricular: med-p1-030. Grado: P1. Rama: Medición. Area: Dinero. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,30,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(38,7,'P2 - Números de hasta tres cifras','ari-p2-031','Clave curricular: ari-p2-031. Grado: P2. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,31,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(39,7,'P2 - Números de hasta tres cifras','ari-p2-032','Clave curricular: ari-p2-032. Grado: P2. Rama: Aritmética. Area: Numeración. Subtemas: 6 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,32,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(40,7,'P2 - Comparación y orden','ari-p2-033','Clave curricular: ari-p2-033. Grado: P2. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,33,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(41,7,'P2 - Suma de dos y tres cifras','ari-p2-034','Clave curricular: ari-p2-034. Grado: P2. Rama: Aritmética. Area: Suma y resta. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,34,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(42,7,'P2 - Suma de dos y tres cifras','ari-p2-035','Clave curricular: ari-p2-035. Grado: P2. Rama: Aritmética. Area: Suma y resta. Subtemas: 6 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,35,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(43,7,'P2 - Resta de dos y tres cifras','ari-p2-036','Clave curricular: ari-p2-036. Grado: P2. Rama: Aritmética. Area: Suma y resta. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,36,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(44,7,'P2 - Cálculo mental','ari-p2-037','Clave curricular: ari-p2-037. Grado: P2. Rama: Aritmética. Area: Suma y resta. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,37,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(45,7,'P2 - Problemas aditivos','ari-p2-038','Clave curricular: ari-p2-038. Grado: P2. Rama: Aritmética. Area: Suma y resta. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,38,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(46,7,'P2 - Grupos iguales','ari-p2-039','Clave curricular: ari-p2-039. Grado: P2. Rama: Aritmética. Area: Multiplicación inicial. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,39,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(47,7,'P2 - Tablas iniciales','ari-p2-040','Clave curricular: ari-p2-040. Grado: P2. Rama: Aritmética. Area: Multiplicación inicial. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,40,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(48,7,'P2 - Problemas de multiplicación','ari-p2-041','Clave curricular: ari-p2-041. Grado: P2. Rama: Aritmética. Area: Multiplicación inicial. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,41,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(49,7,'P2 - Reparto equitativo','ari-p2-042','Clave curricular: ari-p2-042. Grado: P2. Rama: Aritmética. Area: División inicial. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,42,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(50,7,'P2 - Problemas de reparto','ari-p2-043','Clave curricular: ari-p2-043. Grado: P2. Rama: Aritmética. Area: División inicial. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,43,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(51,8,'P2 - Patrones y suc.','pat-p2-044','Clave curricular: pat-p2-044. Grado: P2. Rama: Patrones. Area: Patrones y suc.. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,44,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(52,8,'P2 - Igualdad y operaciones inversas','pat-p2-045','Clave curricular: pat-p2-045. Grado: P2. Rama: Patrones. Area: Igualdad y operaciones inversas. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,45,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(53,9,'P2 - Figuras planas','geo-p2-046','Clave curricular: geo-p2-046. Grado: P2. Rama: Geometría. Area: Figuras planas. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,46,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(54,9,'P2 - Lineas y trayectorias','geo-p2-047','Clave curricular: geo-p2-047. Grado: P2. Rama: Geometría. Area: Lineas y trayectorias. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,47,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(55,9,'P2 - Cuerpos geométricos','geo-p2-048','Clave curricular: geo-p2-048. Grado: P2. Rama: Geometría. Area: Cuerpos geométricos. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,48,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(56,10,'P2 - Longitud','med-p2-049','Clave curricular: med-p2-049. Grado: P2. Rama: Medición. Area: Longitud. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,49,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(57,10,'P2 - Masa','med-p2-050','Clave curricular: med-p2-050. Grado: P2. Rama: Medición. Area: Masa. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,50,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(58,10,'P2 - Capacidad','med-p2-051','Clave curricular: med-p2-051. Grado: P2. Rama: Medición. Area: Capacidad. Subtemas: 1 AL 4.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,51,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(59,10,'P2 - Tiempo','med-p2-052','Clave curricular: med-p2-052. Grado: P2. Rama: Medición. Area: Tiempo. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,52,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(60,10,'P2 - Dinero','med-p2-053','Clave curricular: med-p2-053. Grado: P2. Rama: Medición. Area: Dinero. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,53,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(61,11,'P2 - Estadistica','est-p2-054','Clave curricular: est-p2-054. Grado: P2. Rama: Estadística. Area: Estadistica. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,54,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(62,12,'P2 - Probabilidad','pro-p2-055','Clave curricular: pro-p2-055. Grado: P2. Rama: Probabilidad. Area: Probabilidad. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,55,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(63,7,'P3 - Numeros de 4 cifras','ari-p3-056','Clave curricular: ari-p3-056. Grado: P3. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 4.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,56,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(64,7,'P3 - Calculos con 4 cifras','ari-p3-057','Clave curricular: ari-p3-057. Grado: P3. Rama: Aritmética. Area: Numeración. Subtemas: 5 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,57,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(65,7,'P3 - Suma de tres y cuatro cifras','ari-p3-058','Clave curricular: ari-p3-058. Grado: P3. Rama: Aritmética. Area: Suma y resta. Subtemas: 1 AL 2.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,58,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(66,7,'P3 - TIP´S suma de tres y cuatro cifras','ari-p3-059','Clave curricular: ari-p3-059. Grado: P3. Rama: Aritmética. Area: Suma y resta. Subtemas: 3 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,59,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(67,7,'P3 - Tablas de multiplicar','ari-p3-060','Clave curricular: ari-p3-060. Grado: P3. Rama: Aritmética. Area: Multiplicación. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,60,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(68,7,'P3 - Producto por una cifra','ari-p3-061','Clave curricular: ari-p3-061. Grado: P3. Rama: Aritmética. Area: Algoritmo. Subtemas: 1 AL 3.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,61,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(69,7,'P3 - Casos especiales','ari-p3-062','Clave curricular: ari-p3-062. Grado: P3. Rama: Aritmética. Area: Algoritmo. Subtemas: 4 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,62,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(70,7,'P3 - Problemas de producto','ari-p3-063','Clave curricular: ari-p3-063. Grado: P3. Rama: Aritmética. Area: Problemas. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,63,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(71,7,'P3 - Introducción a la división','ari-p3-064','Clave curricular: ari-p3-064. Grado: P3. Rama: Aritmética. Area: División. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,64,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(72,7,'P3 - División','ari-p3-065','Clave curricular: ari-p3-065. Grado: P3. Rama: Aritmética. Area: División. Subtemas: 6 AL 12.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,65,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(73,7,'P3 - Concepto de fracción','ari-p3-066','Clave curricular: ari-p3-066. Grado: P3. Rama: Aritmética. Area: Fracciones iniciales. Subtemas: 1 AL 4.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,66,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(74,7,'P3 - Casos particulares','ari-p3-067','Clave curricular: ari-p3-067. Grado: P3. Rama: Aritmética. Area: Fracciones iniciales. Subtemas: 5 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,67,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(75,7,'P3 - Interpretanción','ari-p3-068','Clave curricular: ari-p3-068. Grado: P3. Rama: Aritmética. Area: Fracciones iniciales. Subtemas: 10 AL 12.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,68,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(76,7,'P3 - Representación y comparación','ari-p3-069','Clave curricular: ari-p3-069. Grado: P3. Rama: Aritmética. Area: Fracciones iniciales. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,69,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(77,8,'P3 - Succeciones','pat-p3-070','Clave curricular: pat-p3-070. Grado: P3. Rama: Patrones. Area: Patrones. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,70,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(78,8,'P3 - Succeciones','pat-p3-071','Clave curricular: pat-p3-071. Grado: P3. Rama: Patrones. Area: Patrones. Subtemas: 8 AL 12.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,71,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(79,9,'P3 - Líneas y ángulos','geo-p3-072','Clave curricular: geo-p3-072. Grado: P3. Rama: Geometría. Area: Líneas y ángulos. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,72,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(80,9,'P3 - Triángulos','geo-p3-073','Clave curricular: geo-p3-073. Grado: P3. Rama: Geometría. Area: Triángulos. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,73,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(81,9,'P3 - Simetría','geo-p3-074','Clave curricular: geo-p3-074. Grado: P3. Rama: Geometría. Area: Simetría. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,74,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(82,9,'P3 - Cuerpos geométricos','geo-p3-075','Clave curricular: geo-p3-075. Grado: P3. Rama: Geometría. Area: Cuerpos geométricos. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,75,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(83,10,'P3 - Longitud, masa y capacidad','med-p3-076','Clave curricular: med-p3-076. Grado: P3. Rama: Medición. Area: Longitud, masa y capacidad. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,76,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(84,10,'P3 - Tiempo','med-p3-077','Clave curricular: med-p3-077. Grado: P3. Rama: Medición. Area: Tiempo. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,77,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(85,10,'P3 - Perímetro','med-p3-078','Clave curricular: med-p3-078. Grado: P3. Rama: Medición. Area: Perímetro. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,78,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(86,10,'P3 - Área inicial','med-p3-079','Clave curricular: med-p3-079. Grado: P3. Rama: Medición. Area: Área inicial. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,79,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(87,11,'P3 - Introducción a la estadística','est-p3-080','Clave curricular: est-p3-080. Grado: P3. Rama: Estadística. Area: Estadística. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,80,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(88,12,'P3 - Probabilidad','pro-p3-081','Clave curricular: pro-p3-081. Grado: P3. Rama: Probabilidad. Area: Probabilidad. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,81,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(89,7,'P4 - Numeros de 5 cifras','ari-p4-082','Clave curricular: ari-p4-082. Grado: P4. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,82,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(90,7,'P4 - Suma y resta','ari-p4-083','Clave curricular: ari-p4-083. Grado: P4. Rama: Aritmética. Area: Operaciones con naturales. Subtemas: 1 AL 2.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,83,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(91,7,'P4 - Multiplicacion de una y dos cifras','ari-p4-084','Clave curricular: ari-p4-084. Grado: P4. Rama: Aritmética. Area: Operaciones con naturales. Subtemas: 3 AL 4.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,84,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(92,7,'P4 - División','ari-p4-085','Clave curricular: ari-p4-085. Grado: P4. Rama: Aritmética. Area: Operaciones con naturales. Subtemas: 5 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,85,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(93,7,'P4 - Calculo mental','ari-p4-086','Clave curricular: ari-p4-086. Grado: P4. Rama: Aritmética. Area: Operaciones con naturales. Subtemas: 7 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,86,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(94,7,'P4 - División','ari-p4-087','Clave curricular: ari-p4-087. Grado: P4. Rama: Aritmética. Area: Múltiplos y divisores. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,87,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(95,7,'P4 - Tipos y representaciones','ari-p4-088','Clave curricular: ari-p4-088. Grado: P4. Rama: Aritmética. Area: Fracciones. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,88,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(96,7,'P4 - Equivalencia y comparación','ari-p4-089','Clave curricular: ari-p4-089. Grado: P4. Rama: Aritmética. Area: Fracciones. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,89,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(97,7,'P4 - Suma y resta','ari-p4-090','Clave curricular: ari-p4-090. Grado: P4. Rama: Aritmética. Area: Fracciones. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,90,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(98,7,'P4 - Números decimales iniciales','ari-p4-091','Clave curricular: ari-p4-091. Grado: P4. Rama: Aritmética. Area: Fracciones. Subtemas: 1 AL 12.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,91,1,'2026-08-26T22:23:04.000Z','2026-08-26T22:23:04.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(99,13,'P4 - Succeciones','pre-p4-092','Clave curricular: pre-p4-092. Grado: P4. Rama: Preálgebra. Area: Succeciones. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,92,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(100,9,'P4 - Ángulos','geo-p4-093','Clave curricular: geo-p4-093. Grado: P4. Rama: Geometría. Area: Ángulos. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,93,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(101,9,'P4 - Triángulos y cuadriláteros','geo-p4-094','Clave curricular: geo-p4-094. Grado: P4. Rama: Geometría. Area: Triángulos y cuadriláteros. Subtemas: 1 AL 12.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,94,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(102,9,'P4 - Círculo y circunferencia inicial','geo-p4-095','Clave curricular: geo-p4-095. Grado: P4. Rama: Geometría. Area: Círculo y circunferencia inicial. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,95,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(103,9,'P4 - Cuerpos geométricos','geo-p4-096','Clave curricular: geo-p4-096. Grado: P4. Rama: Geometría. Area: Cuerpos geométricos. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,96,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(104,10,'P4 - Conversiones','med-p4-097','Clave curricular: med-p4-097. Grado: P4. Rama: Medición. Area: Conversiones. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,97,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(105,10,'P4 - Tiempo','med-p4-098','Clave curricular: med-p4-098. Grado: P4. Rama: Medición. Area: Tiempo. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,98,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(106,10,'P4 - Perímetro','med-p4-099','Clave curricular: med-p4-099. Grado: P4. Rama: Medición. Area: Perímetro. Subtemas: 1 AL 6.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,99,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(107,10,'P4 - Área','med-p4-100','Clave curricular: med-p4-100. Grado: P4. Rama: Medición. Area: Área. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,100,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(108,14,'P4 - Ubicación espacial','ubi-p4-101','Clave curricular: ubi-p4-101. Grado: P4. Rama: Ubicación espacial. Area: Ubicación espacial. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,101,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(109,11,'P4 - Estadística','est-p4-102','Clave curricular: est-p4-102. Grado: P4. Rama: Estadística. Area: Estadística. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,102,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(110,12,'P4 - Probabilidad','pro-p4-103','Clave curricular: pro-p4-103. Grado: P4. Rama: Probabilidad. Area: Probabilidad. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,103,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(111,7,'P5 - Numeros de 6 cifras','ari-p5-104','Clave curricular: ari-p5-104. Grado: P5. Rama: Aritmética. Area: Numeración. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,104,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(112,7,'P5 - Operaciones con números naturales','ari-p5-105','Clave curricular: ari-p5-105. Grado: P5. Rama: Aritmética. Area: Operaciones con números naturales. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,105,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(113,7,'P5 - Divisibilidad','ari-p5-106','Clave curricular: ari-p5-106. Grado: P5. Rama: Aritmética. Area: Divisibilidad. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,106,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(114,7,'P5 - Equivalencia y simplificación','ari-p5-107','Clave curricular: ari-p5-107. Grado: P5. Rama: Aritmética. Area: Fracciones. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,107,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(115,7,'P5 - Suma y resta','ari-p5-108','Clave curricular: ari-p5-108. Grado: P5. Rama: Aritmética. Area: Fracciones. Subtemas: 1 AL 7.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,108,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(116,7,'P5 - Multiplicación inicial','ari-p5-109','Clave curricular: ari-p5-109. Grado: P5. Rama: Aritmética. Area: Fracciones. Subtemas: 1 AL 5.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,109,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(117,7,'P5 - Números decimales','ari-p5-110','Clave curricular: ari-p5-110. Grado: P5. Rama: Aritmética. Area: Números decimales. Subtemas: 1 AL 15.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,110,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(118,7,'P5 - Proporcionalidad y porcentaje','ari-p5-111','Clave curricular: ari-p5-111. Grado: P5. Rama: Aritmética. Area: Proporcionalidad y porcentaje. Subtemas: 1 AL 15.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,111,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(119,13,'P5 - Succeciones','pre-p5-112','Clave curricular: pre-p5-112. Grado: P5. Rama: Preálgebra. Area: Succeciones. Subtemas: 1 AL 12.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,112,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(120,9,'P5 - Polígonos','geo-p5-113','Clave curricular: geo-p5-113. Grado: P5. Rama: Geometría. Area: Polígonos. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,113,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(121,9,'P5 - Círculo y circunferencia','geo-p5-114','Clave curricular: geo-p5-114. Grado: P5. Rama: Geometría. Area: Círculo y circunferencia. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,114,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(122,9,'P5 - Cuerpos geométricos','geo-p5-115','Clave curricular: geo-p5-115. Grado: P5. Rama: Geometría. Area: Cuerpos geométricos. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,115,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(123,10,'P5 - Perímetro y área','med-p5-116','Clave curricular: med-p5-116. Grado: P5. Rama: Medición. Area: Perímetro y área. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,116,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(124,10,'P5 - Volumen inicial','med-p5-117','Clave curricular: med-p5-117. Grado: P5. Rama: Medición. Area: Volumen inicial. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,117,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(125,14,'P5 - Ubicación espacial','ubi-p5-118','Clave curricular: ubi-p5-118. Grado: P5. Rama: Ubicación espacial. Area: Ubicación espacial. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,118,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(126,11,'P5 - Estadística','est-p5-119','Clave curricular: est-p5-119. Grado: P5. Rama: Estadística. Area: Estadística. Subtemas: 1 AL 13.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,119,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(127,12,'P5 - Probabilidad','pro-p5-120','Clave curricular: pro-p5-120. Grado: P5. Rama: Probabilidad. Area: Probabilidad. Subtemas: 1 AL 12.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,120,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(128,7,'P6 - Numeros naturales','ari-p6-121','Clave curricular: ari-p6-121. Grado: P6. Rama: Aritmética. Area: Numeros naturales. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,121,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(129,7,'P6 - Divisibilidad','ari-p6-122','Clave curricular: ari-p6-122. Grado: P6. Rama: Aritmética. Area: Divisibilidad. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,122,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(130,7,'P6 - Fracciones','ari-p6-123','Clave curricular: ari-p6-123. Grado: P6. Rama: Aritmética. Area: Fracciones. Subtemas: 1 AL 15.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,123,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(131,7,'P6 - Números decimales','ari-p6-124','Clave curricular: ari-p6-124. Grado: P6. Rama: Aritmética. Area: Números decimales. Subtemas: 1 AL 13.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,124,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(132,7,'P6 - Razones y proporcionalidad','ari-p6-125','Clave curricular: ari-p6-125. Grado: P6. Rama: Aritmética. Area: Razones y proporcionalidad. Subtemas: 1 AL 13.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,125,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(133,7,'P6 - Porcentajes','ari-p6-126','Clave curricular: ari-p6-126. Grado: P6. Rama: Aritmética. Area: Porcentajes. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,126,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(134,7,'P6 - Porcentajes','ari-p6-127','Clave curricular: ari-p6-127. Grado: P6. Rama: Aritmética. Area: Porcentajes. Subtemas: 8 AL 16.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,127,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(135,13,'P6 - Succeciones','pre-p6-128','Clave curricular: pre-p6-128. Grado: P6. Rama: Preálgebra. Area: Patrones. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,128,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(136,13,'P6 - Igualdad y valor desconocido','pre-p6-129','Clave curricular: pre-p6-129. Grado: P6. Rama: Preálgebra. Area: Igualdad y valor desconocido. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,129,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(137,13,'P6 - Relaciones y variación','pre-p6-130','Clave curricular: pre-p6-130. Grado: P6. Rama: Preálgebra. Area: Relaciones y variación. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,130,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(138,9,'P6 - Polígonos','geo-p6-131','Clave curricular: geo-p6-131. Grado: P6. Rama: Geometría. Area: Polígonos. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,131,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(139,9,'P6 - Círculo y circunferencia','geo-p6-132','Clave curricular: geo-p6-132. Grado: P6. Rama: Geometría. Area: Círculo y circunferencia. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,132,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(140,9,'P6 - Cuerpos geométricos','geo-p6-133','Clave curricular: geo-p6-133. Grado: P6. Rama: Geometría. Area: Cuerpos geométricos. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,133,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(141,10,'P6 - Perímetro y área','med-p6-134','Clave curricular: med-p6-134. Grado: P6. Rama: Medición. Area: Perímetro y área. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,134,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(142,10,'P6 - Volumen','med-p6-135','Clave curricular: med-p6-135. Grado: P6. Rama: Medición. Area: Volumen. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,135,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(143,10,'P6 - Conversiones de unidades','med-p6-136','Clave curricular: med-p6-136. Grado: P6. Rama: Medición. Area: Conversiones de unidades. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,136,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(144,15,'P6 - Mapas y escalas','ubi-p6-137','Clave curricular: ubi-p6-137. Grado: P6. Rama: Ubicación espacial y coordenadas. Area: Mapas y escalas. Subtemas: 1 AL 11.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,137,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(145,15,'P6 - Plano cartesiano introductorio','ubi-p6-138','Clave curricular: ubi-p6-138. Grado: P6. Rama: Ubicación espacial y coordenadas. Area: Plano cartesiano introductorio. Subtemas: 1 AL 10.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,138,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(146,11,'P6 - Organización de datos','est-p6-139','Clave curricular: est-p6-139. Grado: P6. Rama: Estadística. Area: Organización de datos. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,139,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(147,11,'P6 - Gráficas','est-p6-140','Clave curricular: est-p6-140. Grado: P6. Rama: Estadística. Area: Gráficas. Subtemas: 1 AL 8.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,140,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(148,11,'P6 - Medidas estadísticas','est-p6-141','Clave curricular: est-p6-141. Grado: P6. Rama: Estadística. Area: Medidas estadísticas. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,141,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(149,12,'P6 - Espacio muestral','pro-p6-142','Clave curricular: pro-p6-142. Grado: P6. Rama: Probabilidad. Area: Espacio muestral. Subtemas: 1 AL 9.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,142,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(150,12,'P6 - Probabilidad teórica y experimental','pro-p6-143','Clave curricular: pro-p6-143. Grado: P6. Rama: Probabilidad. Area: Probabilidad teórica y experimental. Subtemas: 1 AL 13.','topic','#','emoji',NULL,NULL,NULL,'Basica',30,143,1,'2026-08-26T22:23:05.000Z','2026-08-26T22:23:05.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(294,7,'Suma de números naturales','suma-numeros-naturales','Grado: P1. Area: Suma. Aprende a sumar números naturales y a resolver situaciones de la vida cotidiana usando la adición.','topic','+','emoji','','24 + 13 = 37',NULL,'Básica',35,1,1,'2026-08-27T01:19:36.000Z','2026-08-27T01:21:12.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(295,7,'Suma de fracciones','suma-fracciones','Grado: P4. Area: Fracciones. Aprende a sumar fracciones con el mismo o distinto denominador mediante ejercicios paso a paso.','topic','½','emoji',NULL,'1/2 + 1/3 = ?',NULL,'Básica',60,2,1,'2026-08-27T01:19:36.000Z','2026-08-27T01:21:12.000Z');
INSERT INTO "aprendizaje_lecciones" VALUES(296,26,'Ecuaciones lineales de una variable','ecuaciones-lineales-s1','Grado: S1. Area: Ecuaciones. En este tema aprenderás a resolver ecuaciones lineales de una variable en la forma \(ax + b = c\). El objetivo es identificar los números que acompañan a la variable, usar operaciones contrarias para despejar la \(x\) y comprobar que el resultado sea correcto. También se trabajará la idea de mantener el equilibrio en ambos lados de la ecuación. \(\)','topic','+','emoji','','',NULL,'Basica',30,10,1,'2026-08-27T01:19:36.000Z','2026-08-27T01:21:12.000Z');
CREATE TABLE "aprendizaje_medios" ("id", "title", "media_type", "file_path", "thumbnail_path", "external_url", "alt_text", "upload_context", "wp_attachment_id", "width", "height", "file_size", "created_at");
INSERT INTO "aprendizaje_medios" VALUES(6,'Presentación: suma de números naturales','document','/api/learning/uploads/cabsa-suma-numeros-naturales.pptx',NULL,NULL,'Presentación didáctica sobre la suma de números naturales','content',NULL,NULL,NULL,107794,'2026-08-01T07:15:29.000Z');
INSERT INTO "aprendizaje_medios" VALUES(7,'Presentación: ecuaciones lineales','document','/api/learning/uploads/cabsa-ecuaciones-lineales.pptx',NULL,NULL,'Presentación didáctica sobre ecuaciones lineales','content',NULL,NULL,NULL,109410,'2026-08-01T07:15:29.000Z');
CREATE TABLE "aprendizaje_medios_leccion" ("lesson_id", "media_id", "placement", "sort_order");
CREATE TABLE "aprendizaje_niveles_educativos" ("slug", "name", "description", "icon", "color", "sort_order", "active", "created_at", "updated_at");
INSERT INTO "aprendizaje_niveles_educativos" VALUES('preparatoria','Preparatoria','Aprendizajes de primero a tercer grado de preparatoria.','🎓','green',30,1,'2026-08-26T22:29:35.000Z','2026-08-26T22:29:35.000Z');
INSERT INTO "aprendizaje_niveles_educativos" VALUES('primaria','Primaria','Aprendizajes de primero a sexto grado de primaria.','🎒','purple',10,1,'2026-08-26T22:29:35.000Z','2026-08-26T22:29:35.000Z');
INSERT INTO "aprendizaje_niveles_educativos" VALUES('secundaria','Secundaria','Aprendizajes de primero a tercer grado de secundaria.','📐','blue',20,1,'2026-08-26T22:29:35.000Z','2026-08-26T22:29:35.000Z');
CREATE TABLE "aprendizaje_recursos" ("id", "lesson_id", "title", "description", "resource_type", "url", "sort_order", "published", "created_at");
CREATE TABLE "aprendizaje_secciones_leccion" ("id", "lesson_id", "parent_section_id", "section_type", "title", "body_html", "ai_prompt", "ai_exercises_enabled", "ai_exercise_type", "ai_difficulty", "ai_exercise_count", "media_id", "duration_minutes", "sort_order", "published", "created_at", "updated_at");
INSERT INTO "aprendizaje_secciones_leccion" VALUES(355,8,659,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:2:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Aprendemos a contar | Ari-P1-001</title>

  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      padding: 25px 15px;
      font-family: Arial, Helvetica, sans-serif;
      background: #FFFBEA;
      color: #37474F;
      line-height: 1.7;
    }

    .lesson {
      max-width: 1000px;
      margin: auto;
      background: #FFFFFF;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 8px 28px rgba(0, 0, 0, 0.08);
    }

    /* ENCABEZADO */

    .header {
      background: linear-gradient(135deg, #FFF1A8, #F6D76B);
      padding: 45px 35px;
      text-align: center;
    }

    .code {
      display: inline-block;
      background: rgba(255, 255, 255, 0.65);
      padding: 7px 17px;
      border-radius: 30px;
      margin-bottom: 15px;
      color: #725A10;
      font-weight: bold;
      font-size: 14px;
    }

    .header h1 {
      margin: 0 0 12px;
      color: #5F4B0E;
      font-size: 38px;
    }

    .header p {
      max-width: 720px;
      margin: auto;
      color: #6B5819;
      font-size: 18px;
    }

    /* CONTENIDO */

    .content {
      padding: 40px 45px 55px;
    }

    .description {
      background: #FFF8D6;
      border-left: 6px solid #F2C94C;
      border-radius: 15px;
      padding: 23px 25px;
      margin-bottom: 30px;
    }

    .description h2 {
      margin-top: 0;
      color: #806619;
    }

    .objective {
      background: #FFFDF0;
      border: 2px solid #F5DF8B;
      border-radius: 16px;
      padding: 22px 25px;
      margin-bottom: 40px;
    }

    .objective h2 {
      margin-top: 0;
      color: #806619;
    }

    .section {
      margin: 45px 0;
    }

    .section h2 {
      color: #7A6117;
      font-size: 27px;
      margin-bottom: 12px;
      border-bottom: 3px solid #F8E49C;
      padding-bottom: 8px;
    }

    .section h3 {
      color: #6A581D;
      margin-top: 25px;
    }

    /* TARJETAS */

    .example,
    .practice,
    .important {
      border-radius: 16px;
      padding: 22px;
      margin: 22px 0;
    }

    .example {
      background: #FFF9E6;
      border: 2px solid #F4DA80;
    }

    .practice {
      background: #FFF6C7;
      border: 2px solid #E9CF71;
    }

    .important {
      background: #FFF1A8;
      border-left: 6px solid #D9AE2B;
    }

    /* NÚMEROS */

    .number-row {
      display: flex;
      justify-content: center;
      align-items: center;
      flex-wrap: wrap;
      gap: 10px;
      margin: 25px 0;
    }

    .number-box {
      width: 55px;
      height: 55px;
      background: #F2C94C;
      color: #59470F;
      border-radius: 14px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-size: 22px;
      font-weight: bold;
    }

    .arrow {
      color: #A88B2A;
      font-size: 24px;
      font-weight: bold;
    }

    /* OBJETOS */

    .objects {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
      align-items: center;
      margin: 20px 0;
    }

    .object {
      width: 48px;
      height: 48px;
      border-radius: 50%;
      background: #F2C94C;
      border: 3px solid #D6AD2F;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #59470F;
      font-weight: bold;
      font-size: 18px;
    }

    .object.light {
      background: #FFEBA0;
    }

    .object.orange {
      background: #FFD28A;
      border-color: #F0B85E;
    }

    /* CANTIDADES */

    .quantity-grid {
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      gap: 12px;
      margin: 25px 0;
    }

    .quantity-card {
      background: #FFFBEA;
      border: 2px solid #F0D87D;
      border-radius: 16px;
      padding: 18px 8px;
      text-align: center;
    }

    .quantity-number {
      font-size: 22px;
      font-weight: bold;
      color: #725A10;
      margin-bottom: 10px;
    }

    .dot {
      display: inline-block;
      width: 22px;
      height: 22px;
      background: #F2C94C;
      border-radius: 50%;
      margin: 3px;
    }

    /* RETOS */

    .challenge {
      background: #FFF7D1;
      border: 2px solid #EBCF68;
      border-radius: 20px;
      padding: 28px;
      margin-top: 45px;
    }

    .challenge h2 {
      color: #725A10;
      margin-top: 0;
    }

    .question {
      background: #FFFFFF;
      border: 1px solid #EEDC9A;
      border-radius: 14px;
      padding: 20px;
      margin: 18px 0;
    }

    .answer {
      background: #FFF4BD;
      border-radius: 10px;
      padding: 10px 14px;
      margin-top: 12px;
      font-weight: bold;
      color: #675312;
    }

    /* RESUMEN */

    .summary {
      background: #F2C94C;
      color: #4D3E0D;
      border-radius: 20px;
      padding: 30px;
      margin-top: 45px;
    }

    .summary h2 {
      margin-top: 0;
      color: #4D3E0D;
    }

    .summary li {
      margin-bottom: 10px;
    }

    .closing {
      text-align: center;
      margin-top: 35px;
      font-size: 21px;
      font-weight: bold;
      color: #806619;
    }

    @media (max-width: 750px) {
      .content {
        padding: 28px 20px 45px;
      }

      .header {
        padding: 35px 20px;
      }

      .header h1 {
        font-size: 31px;
      }

      .quantity-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }
  </style>
</head>

<body>

<div class="lesson">

  <!-- ENCABEZADO -->
  <header class="header">

    <div class="code">
      Ari-P1-001 · Primer grado de primaria
    </div>

    <h1>Aprendemos a contar</h1>

    <p>
      Aprende a seguir los números, contar objetos correctamente
      y reconocer cantidades pequeñas.
    </p>

  </header>


  <main class="content">

    <!-- DESCRIPCIÓN -->
    <section class="description">

      <h2>Descripción del contenido</h2>

      <p>
        En esta lección aprenderás a contar desde el número \(1\),
        realizar conteos ascendentes y descendentes sencillos,
        contar objetos de manera ordenada y relacionar cada objeto
        con un número.
      </p>

      <p>
        También aprenderás a evitar repetir u omitir elementos
        durante el conteo y a reconocer cantidades pequeñas de
        manera visual.
      </p>

    </section>


    <!-- OBJETIVO -->
    <section class="objective">

      <h2>¿Qué aprenderás?</h2>

      <p>
        Al terminar esta lección podrás contar números y objetos
        correctamente, reconocer el orden de los números y utilizar
        estrategias sencillas para saber cuántos elementos hay en
        una colección.
      </p>

    </section>


    <!-- INTRODUCCIÓN -->
    <section class="section">

      <h2>¿Qué significa contar?</h2>

      <p>
        Contar nos permite saber <strong>cuántos elementos hay</strong>.
        Podemos contar juguetes, frutas, lápices, animales y muchas
        otras cosas que encontramos todos los días.
      </p>

      <div class="example">

        <strong>Ejemplo</strong>

        <p>Observa estos objetos:</p>

        <div class="objects">
          <div class="object"></div>
          <div class="object"></div>
          <div class="object"></div>
        </div>

        <p>
          Los contamos uno por uno:
        </p>

        <p>
          \(1,\ 2,\ 3\)
        </p>

        <p>
          Entonces sabemos que hay <strong>\(3\) objetos</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 1 -->
    <section class="section">

      <h2>1. Conteo oral desde \(1\)</h2>

      <p>
        Para comenzar a contar decimos los números siguiendo un orden.
        Podemos comenzar desde el número \(1\).
      </p>

      <div class="number-row">

        <div class="number-box">\(1\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(2\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(3\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(4\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(5\)</div>

      </div>

      <p>
        Después podemos continuar:
      </p>

      <div class="number-row">

        <div class="number-box">\(6\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(7\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(8\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(9\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(10\)</div>

      </div>

      <div class="practice">

        <strong>Practica</strong>

        <p>
          Lee en voz alta:
        </p>

        <p>
          \(1,\ 2,\ 3,\ 4,\ 5,\ 6,\ 7,\ 8,\ 9,\ 10\)
        </p>

      </div>

    </section>


    <!-- SUBTEMA 2 -->
    <section class="section">

      <h2>2. Conteo ascendente</h2>

      <p>
        Cuando contamos avanzando hacia números mayores realizamos
        un <strong>conteo ascendente</strong>.
      </p>

      <p>
        Es parecido a subir una escalera: avanzamos un número
        a la vez.
      </p>

      <div class="number-row">

        <div class="number-box">\(1\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(2\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(3\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(4\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(5\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(6\)</div>

      </div>

      <div class="important">

        <strong>Observa:</strong>

        <p>Después de \(2\) viene \(3\).</p>
        <p>Después de \(3\) viene \(4\).</p>
        <p>Después de \(4\) viene \(5\).</p>

      </div>

      <div class="practice">

        <strong>Completa:</strong>

        <p>
          \(1,\ 2,\ 3,\ \_\_,\ 5\)
        </p>

        <p>
          El número que falta es <strong>\(4\)</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 3 -->
    <section class="section">

      <h2>3. Conteo descendente sencillo</h2>

      <p>
        También podemos contar hacia atrás.
      </p>

      <p>
        Cuando comenzamos con un número y avanzamos hacia números
        menores hacemos un <strong>conteo descendente</strong>.
      </p>

      <div class="number-row">

        <div class="number-box">\(5\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(4\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(3\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(2\)</div>
        <span class="arrow">→</span>

        <div class="number-box">\(1\)</div>

      </div>

      <div class="example">

        <strong>Imagina un cohete preparado para despegar:</strong>

        <p>
          \(5,\ 4,\ 3,\ 2,\ 1\)
        </p>

        <p>
          ¡Despegue!
        </p>

      </div>

      <div class="practice">

        <strong>Completa:</strong>

        <p>
          \(6,\ 5,\ 4,\ \_\_,\ 2,\ 1\)
        </p>

        <p>
          El número que falta es <strong>\(3\)</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 4 -->
    <section class="section">

      <h2>4. Conteo de objetos</h2>

      <p>
        Podemos utilizar el conteo para descubrir cuántos objetos
        hay en una colección.
      </p>

      <p>
        Para hacerlo debemos contarlos
        <strong>uno por uno</strong>.
      </p>

      <div class="example">

        <strong>Vamos a contar:</strong>

        <div class="objects">

          <div class="object orange">\(1\)</div>
          <div class="object orange">\(2\)</div>
          <div class="object orange">\(3\)</div>
          <div class="object orange">\(4\)</div>
          <div class="object orange">\(5\)</div>

        </div>

        <p>
          Contamos:
        </p>

        <p>
          \(1,\ 2,\ 3,\ 4,\ 5\)
        </p>

        <p>
          La colección tiene <strong>\(5\) objetos</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 5 -->
    <section class="section">

      <h2>5. Correspondencia uno a uno</h2>

      <p>
        Cuando contamos correctamente debemos relacionar
        <strong>cada objeto con un número</strong>.
      </p>

      <div class="example">

        <div class="objects">

          <div class="object light">\(1\)</div>
          <div class="object light">\(2\)</div>
          <div class="object light">\(3\)</div>
          <div class="object light">\(4\)</div>

        </div>

        <p>
          Primer objeto → \(1\)
        </p>

        <p>
          Segundo objeto → \(2\)
        </p>

        <p>
          Tercer objeto → \(3\)
        </p>

        <p>
          Cuarto objeto → \(4\)
        </p>

      </div>

      <div class="important">

        <strong>Regla importante</strong>

        <p>
          Cada objeto debe contarse una sola vez.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 6 -->
    <section class="section">

      <h2>6. Contamos sin repetir ni omitir</h2>

      <p>
        Cuando contamos podemos cometer errores si repetimos un objeto
        o si dejamos alguno sin contar.
      </p>


      <h3>No repetir</h3>

      <p>
        Repetir significa contar el mismo objeto dos veces.
      </p>

      <div class="example">

        <div class="objects">
          <div class="object"></div>
          <div class="object"></div>
          <div class="object"></div>
          <div class="object"></div>
        </div>

        <p>
          El conteo correcto es:
        </p>

        <p>
          \(1,\ 2,\ 3,\ 4\)
        </p>

        <p>
          Hay \(4\) objetos.
        </p>

      </div>


      <h3>No omitir</h3>

      <p>
        Omitir significa dejar un objeto sin contar.
      </p>

      <div class="example">

        <div class="objects">
          <div class="object orange"></div>
          <div class="object orange"></div>
          <div class="object orange"></div>
          <div class="object orange"></div>
          <div class="object orange"></div>
        </div>

        <p>
          Debemos contar:
        </p>

        <p>
          \(1,\ 2,\ 3,\ 4,\ 5\)
        </p>

        <p>
          La cantidad correcta es \(5\).
        </p>

      </div>


      <div class="important">

        <strong>¿Cómo podemos evitar errores?</strong>

        <ul>
          <li>Señala cada objeto mientras cuentas.</li>
          <li>Comienza por un extremo.</li>
          <li>Cuenta cada objeto una sola vez.</li>
          <li>Revisa que ninguno haya quedado sin contar.</li>
        </ul>

      </div>

    </section>


    <!-- SUBTEMA 7 -->
    <section class="section">

      <h2>7. Reconocimiento de cantidades pequeñas</h2>

      <p>
        Con la práctica podemos reconocer cantidades pequeñas
        con mayor rapidez.
      </p>

      <p>
        Observa:
      </p>

      <div class="quantity-grid">

        <div class="quantity-card">

          <div class="quantity-number">\(1\)</div>

          <span class="dot"></span>

        </div>


        <div class="quantity-card">

          <div class="quantity-number">\(2\)</div>

          <span class="dot"></span>
          <span class="dot"></span>

        </div>


        <div class="quantity-card">

          <div class="quantity-number">\(3\)</div>

          <span class="dot"></span>
          <span class="dot"></span>
          <span class="dot"></span>

        </div>


        <div class="quantity-card">

          <div class="quantity-number">\(4\)</div>

          <span class="dot"></span>
          <span class="dot"></span>
          <span class="dot"></span>
          <span class="dot"></span>

        </div>


        <div class="quantity-card">

          <div class="quantity-number">\(5\)</div>

          <span class="dot"></span>
          <span class="dot"></span>
          <span class="dot"></span>
          <span class="dot"></span>
          <span class="dot"></span>

        </div>

      </div>

      <p>
        Al principio puedes contar cada punto uno por uno.
        Después de practicar podrás reconocer algunas cantidades
        pequeñas con mayor facilidad.
      </p>

    </section>


    <!-- RETOS -->
    <section class="challenge">

      <h2>Practiquemos lo aprendido</h2>


      <div class="question">

        <h3>Reto 1. Continúa contando</h3>

        <p>
          \(1,\ 2,\ 3,\ 4,\ \_\_\)
        </p>

        <div class="answer">
          Respuesta: \(5\)
        </div>

      </div>


      <div class="question">

        <h3>Reto 2. Cuenta hacia atrás</h3>

        <p>
          \(5,\ 4,\ 3,\ \_\_,\ 1\)
        </p>

        <div class="answer">
          Respuesta: \(2\)
        </div>

      </div>


      <div class="question">

        <h3>Reto 3. Cuenta los objetos</h3>

        <div class="objects">
          <div class="object"></div>
          <div class="object"></div>
          <div class="object"></div>
          <div class="object"></div>
        </div>

        <p>
          ¿Cuántos objetos hay?
        </p>

        <div class="answer">
          Respuesta: \(4\)
        </div>

      </div>


      <div class="question">

        <h3>Reto 4. Detecta el error</h3>

        <p>
          Observa esta colección:
        </p>

        <div class="objects">
          <div class="object orange"></div>
          <div class="object orange"></div>
          <div class="object orange"></div>
          <div class="object orange"></div>
          <div class="object orange"></div>
        </div>

        <p>
          Un alumno contó:
        </p>

        <p>
          \(1,\ 2,\ 3,\ 4\)
        </p>

        <p>
          ¿Qué ocurrió?
        </p>

        <div class="answer">
          Se omitió un objeto. La cantidad correcta es \(5\).
        </div>

      </div>


      <div class="question">

        <h3>Reto 5. Reconoce la cantidad</h3>

        <div class="objects">
          <div class="object light"></div>
          <div class="object light"></div>
          <div class="object light"></div>
        </div>

        <p>
          ¿Qué cantidad observas?
        </p>

        <div class="answer">
          Respuesta: \(3\)
        </div>

      </div>

    </section>


    <!-- RESUMEN -->
    <section class="summary">

      <h2>Recuerda</h2>

      <ul>

        <li>
          Podemos comenzar a contar desde \(1\).
        </li>

        <li>
          El conteo ascendente avanza:
          \(1,\ 2,\ 3,\ 4,\ 5\).
        </li>

        <li>
          El conteo descendente va hacia atrás:
          \(5,\ 4,\ 3,\ 2,\ 1\).
        </li>

        <li>
          Contar nos permite saber cuántos objetos hay.
        </li>

        <li>
          Cada objeto debe relacionarse con un número.
        </li>

        <li>
          No debemos repetir objetos ni dejar elementos sin contar.
        </li>

        <li>
          Con la práctica podemos reconocer cantidades pequeñas
          cada vez más rápido.
        </li>

      </ul>

    </section>


    <div class="closing">
      ¡Excelente! Ya sabes cómo contar de manera ordenada.
    </div>

  </main>

</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(356,8,659,'video','Conteo','<!-- etl-google-cloud-matematicas:media-plan:2 -->
<p>Video mostrando los números, vinculando el nombre del número con los objetos</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(357,8,659,'video','Conteo','<!-- etl-google-cloud-matematicas:media-plan:3 -->
<p>Video mostrando un corral con una explciación de agrupar No. número de animales, de manera tanto ascendente como descendente. No necesariamente el mismo ejemplo.</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(358,8,659,'video','Correspondencia 1 a 1','<!-- etl-google-cloud-matematicas:media-plan:4 -->
<p>No. números de niños se tienen que repartir cierta cantidad de caramelos</p>',NULL,0,'generic','Básica',10,NULL,0,4,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(359,8,659,'video','Comparación','<!-- etl-google-cloud-matematicas:media-plan:5 -->
<p>Explicar las 3 formas de comparación mediante: Lineas conectando, grupos crecientes y verificación por conteo. Dos árboles con manzanas, mostrar que tienen la misma cantidad por lineas, poniendo una canasta abajo y llenando y verificando por conteo.</p>',NULL,0,'generic','Básica',10,NULL,0,5,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(360,9,660,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:3:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Comparamos cantidades | Ari-P1-002</title>

  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      padding: 25px 15px;
      font-family: Arial, Helvetica, sans-serif;
      background: #FFFBEA;
      color: #37474F;
      line-height: 1.7;
    }

    .lesson {
      max-width: 1000px;
      margin: auto;
      background: #FFFFFF;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 8px 28px rgba(0, 0, 0, 0.08);
    }

    /* ENCABEZADO */

    .header {
      background: linear-gradient(135deg, #FFF1A8, #F6D76B);
      padding: 45px 35px;
      text-align: center;
    }

    .code {
      display: inline-block;
      background: rgba(255,255,255,0.65);
      padding: 7px 17px;
      border-radius: 30px;
      margin-bottom: 15px;
      color: #725A10;
      font-weight: bold;
      font-size: 14px;
    }

    .header h1 {
      margin: 0 0 12px;
      color: #5F4B0E;
      font-size: 38px;
    }

    .header p {
      max-width: 720px;
      margin: auto;
      color: #6B5819;
      font-size: 18px;
    }

    /* CONTENIDO */

    .content {
      padding: 40px 45px 55px;
    }

    .description {
      background: #FFF8D6;
      border-left: 6px solid #F2C94C;
      border-radius: 15px;
      padding: 23px 25px;
      margin-bottom: 30px;
    }

    .description h2,
    .objective h2 {
      margin-top: 0;
      color: #806619;
    }

    .objective {
      background: #FFFDF0;
      border: 2px solid #F5DF8B;
      border-radius: 16px;
      padding: 22px 25px;
      margin-bottom: 40px;
    }

    .section {
      margin: 45px 0;
    }

    .section h2 {
      color: #7A6117;
      font-size: 27px;
      margin-bottom: 12px;
      border-bottom: 3px solid #F8E49C;
      padding-bottom: 8px;
    }

    .section h3 {
      color: #6A581D;
      margin-top: 25px;
    }

    /* TARJETAS */

    .example,
    .practice,
    .important {
      border-radius: 16px;
      padding: 22px;
      margin: 22px 0;
    }

    .example {
      background: #FFF9E6;
      border: 2px solid #F4DA80;
    }

    .practice {
      background: #FFF6C7;
      border: 2px solid #E9CF71;
    }

    .important {
      background: #FFF1A8;
      border-left: 6px solid #D9AE2B;
    }

    /* COLECCIONES */

    .comparison-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 20px;
      margin: 25px 0;
    }

    .collection {
      background: #FFFDF5;
      border: 2px solid #F0D87D;
      border-radius: 18px;
      padding: 22px;
      text-align: center;
    }

    .collection h3 {
      margin-top: 0;
      color: #725A10;
    }

    .objects {
      display: flex;
      justify-content: center;
      align-items: center;
      flex-wrap: wrap;
      gap: 10px;
      margin: 18px 0;
    }

    .object {
      width: 45px;
      height: 45px;
      border-radius: 50%;
      background: #F2C94C;
      border: 3px solid #D6AD2F;
    }

    .object.orange {
      background: #FFD28A;
      border-color: #EAB25A;
    }

    .object.light {
      background: #FFEBA0;
      border-color: #E1C863;
    }

    .object.green {
      background: #DDEFA8;
      border-color: #B8D36E;
    }

    .quantity {
      font-size: 22px;
      font-weight: bold;
      color: #725A10;
    }

    /* PASOS */

    .steps {
      padding-left: 22px;
    }

    .steps li {
      margin-bottom: 10px;
    }

    /* RETOS */

    .challenge {
      background: #FFF7D1;
      border: 2px solid #EBCF68;
      border-radius: 20px;
      padding: 28px;
      margin-top: 45px;
    }

    .challenge h2 {
      color: #725A10;
      margin-top: 0;
    }

    .question {
      background: #FFFFFF;
      border: 1px solid #EEDC9A;
      border-radius: 14px;
      padding: 20px;
      margin: 18px 0;
    }

    .answer {
      background: #FFF4BD;
      border-radius: 10px;
      padding: 10px 14px;
      margin-top: 12px;
      font-weight: bold;
      color: #675312;
    }

    /* RESUMEN */

    .summary {
      background: #F2C94C;
      color: #4D3E0D;
      border-radius: 20px;
      padding: 30px;
      margin-top: 45px;
    }

    .summary h2 {
      margin-top: 0;
      color: #4D3E0D;
    }

    .summary li {
      margin-bottom: 10px;
    }

    .closing {
      text-align: center;
      margin-top: 35px;
      font-size: 21px;
      font-weight: bold;
      color: #806619;
    }

    @media (max-width: 750px) {
      .content {
        padding: 28px 20px 45px;
      }

      .header {
        padding: 35px 20px;
      }

      .header h1 {
        font-size: 31px;
      }

      .comparison-grid {
        grid-template-columns: 1fr;
      }
    }
  </style>
</head>

<body>

<div class="lesson">

  <!-- ENCABEZADO -->
  <header class="header">

    <div class="code">
      Ari-P1-002 · Primer grado de primaria
    </div>

    <h1>Comparamos cantidades</h1>

    <p>
      Aprende a descubrir dónde hay más, dónde hay menos
      y cuándo dos colecciones tienen la misma cantidad.
    </p>

  </header>


  <main class="content">

    <!-- DESCRIPCIÓN -->
    <section class="description">

      <h2>Descripción del contenido</h2>

      <p>
        En esta lección aprenderás a comparar colecciones de objetos
        para reconocer cuál tiene más elementos, cuál tiene menos
        y cuándo dos colecciones tienen la misma cantidad.
      </p>

      <p>
        También utilizarás el conteo para comprobar que tus
        respuestas sean correctas.
      </p>

    </section>


    <!-- OBJETIVO -->
    <section class="objective">

      <h2>¿Qué aprenderás?</h2>

      <p>
        Al terminar esta lección podrás observar y comparar dos
        colecciones, identificar diferencias entre sus cantidades
        y utilizar el conteo para verificar tus respuestas.
      </p>

    </section>


    <!-- INTRODUCCIÓN -->
    <section class="section">

      <h2>¿Qué significa comparar?</h2>

      <p>
        Comparar significa observar dos o más colecciones para
        descubrir cómo se relacionan sus cantidades.
      </p>

      <p>
        Podemos descubrir:
      </p>

      <ul>
        <li>Cuál colección tiene <strong>más</strong>.</li>
        <li>Cuál colección tiene <strong>menos</strong>.</li>
        <li>Si las dos tienen <strong>la misma cantidad</strong>.</li>
      </ul>

      <div class="important">

        <strong>Recuerda:</strong>

        <p>
          Para comparar correctamente podemos contar los objetos
          de cada colección.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 8 -->
    <section class="section">

      <h2>1. Comparación de colecciones</h2>

      <p>
        Una <strong>colección</strong> es un grupo de objetos.
        Podemos comparar dos colecciones para saber si sus
        cantidades son diferentes o iguales.
      </p>

      <div class="comparison-grid">

        <div class="collection">

          <h3>Colección A</h3>

          <div class="objects">
            <div class="object"></div>
            <div class="object"></div>
            <div class="object"></div>
          </div>

          <div class="quantity">
            \(3\) objetos
          </div>

        </div>


        <div class="collection">

          <h3>Colección B</h3>

          <div class="objects">
            <div class="object orange"></div>
            <div class="object orange"></div>
            <div class="object orange"></div>
            <div class="object orange"></div>
            <div class="object orange"></div>
          </div>

          <div class="quantity">
            \(5\) objetos
          </div>

        </div>

      </div>

      <p>
        La colección A tiene \(3\) objetos.
      </p>

      <p>
        La colección B tiene \(5\) objetos.
      </p>

      <p>
        Como las cantidades son diferentes, podemos compararlas
        para descubrir cuál tiene más y cuál tiene menos.
      </p>

    </section>


    <!-- SUBTEMA 9 -->
    <section class="section">

      <h2>2. ¿Dónde hay más?</h2>

      <p>
        Una colección tiene <strong>más</strong> cuando contiene
        una cantidad mayor de objetos que otra colección.
      </p>

      <div class="example">

        <div class="comparison-grid">

          <div class="collection">

            <h3>Grupo A</h3>

            <div class="objects">
              <div class="object light"></div>
              <div class="object light"></div>
            </div>

            <div class="quantity">
              \(2\)
            </div>

          </div>


          <div class="collection">

            <h3>Grupo B</h3>

            <div class="objects">
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
            </div>

            <div class="quantity">
              \(5\)
            </div>

          </div>

        </div>

        <p>
          El grupo B tiene <strong>más objetos</strong>,
          porque contiene \(5\) y el grupo A contiene \(2\).
        </p>

      </div>


      <div class="practice">

        <strong>Practica</strong>

        <p>
          Una caja tiene \(3\) pelotas y otra caja tiene \(6\).
        </p>

        <p>
          ¿Cuál caja tiene más?
        </p>

        <p>
          La caja que contiene \(6\) pelotas tiene
          <strong>más</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 10 -->
    <section class="section">

      <h2>3. ¿Dónde hay menos?</h2>

      <p>
        Una colección tiene <strong>menos</strong> cuando contiene
        una cantidad menor de objetos que otra.
      </p>

      <div class="comparison-grid">

        <div class="collection">

          <h3>Colección A</h3>

          <div class="objects">
            <div class="object green"></div>
            <div class="object green"></div>
            <div class="object green"></div>
          </div>

          <div class="quantity">
            \(3\)
          </div>

        </div>


        <div class="collection">

          <h3>Colección B</h3>

          <div class="objects">
            <div class="object orange"></div>
            <div class="object orange"></div>
            <div class="object orange"></div>
            <div class="object orange"></div>
            <div class="object orange"></div>
            <div class="object orange"></div>
          </div>

          <div class="quantity">
            \(6\)
          </div>

        </div>

      </div>

      <p>
        La colección A tiene <strong>menos</strong> objetos porque
        contiene \(3\), mientras que la colección B contiene \(6\).
      </p>


      <div class="practice">

        <strong>Practica</strong>

        <p>
          Un plato tiene \(2\) galletas y otro tiene \(5\).
        </p>

        <p>
          ¿Cuál tiene menos?
        </p>

        <p>
          El plato que tiene \(2\) galletas tiene
          <strong>menos</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 11 -->
    <section class="section">

      <h2>4. Colecciones con la misma cantidad</h2>

      <p>
        Algunas colecciones pueden contener objetos diferentes
        y aun así tener la <strong>misma cantidad</strong>.
      </p>

      <div class="comparison-grid">

        <div class="collection">

          <h3>Colección A</h3>

          <div class="objects">
            <div class="object"></div>
            <div class="object"></div>
            <div class="object"></div>
            <div class="object"></div>
          </div>

          <div class="quantity">
            \(4\)
          </div>

        </div>


        <div class="collection">

          <h3>Colección B</h3>

          <div class="objects">
            <div class="object green"></div>
            <div class="object green"></div>
            <div class="object green"></div>
            <div class="object green"></div>
          </div>

          <div class="quantity">
            \(4\)
          </div>

        </div>

      </div>

      <p>
        La primera colección tiene \(4\) objetos.
      </p>

      <p>
        La segunda colección también tiene \(4\).
      </p>

      <div class="important">

        <strong>Entonces:</strong>

        <p>
          Las dos colecciones tienen la
          <strong>misma cantidad</strong>.
        </p>

      </div>


      <div class="practice">

        <strong>Otro ejemplo</strong>

        <p>
          Ana tiene \(3\) lápices y Luis tiene \(3\) libros.
        </p>

        <p>
          Aunque los objetos son diferentes, ambos tienen
          una colección de \(3\) elementos.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 12 -->
    <section class="section">

      <h2>5. Verificamos contando</h2>

      <p>
        Algunas veces podemos mirar dos colecciones e imaginar
        cuál tiene más o menos.
      </p>

      <p>
        Pero para estar seguros podemos
        <strong>verificar mediante el conteo</strong>.
      </p>


      <div class="example">

        <strong>Observa estas colecciones:</strong>

        <div class="comparison-grid">

          <div class="collection">

            <h3>Colección A</h3>

            <div class="objects">
              <div class="object light"></div>
              <div class="object light"></div>
              <div class="object light"></div>
              <div class="object light"></div>
            </div>

          </div>


          <div class="collection">

            <h3>Colección B</h3>

            <div class="objects">
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
            </div>

          </div>

        </div>

        <p>
          Ahora contamos la primera:
        </p>

        <p>
          \(1,\ 2,\ 3,\ 4\)
        </p>

        <p>
          La colección A tiene \(4\) objetos.
        </p>

        <p>
          Contamos la segunda:
        </p>

        <p>
          \(1,\ 2,\ 3,\ 4,\ 5,\ 6\)
        </p>

        <p>
          La colección B tiene \(6\) objetos.
        </p>

        <p>
          Ahora sabemos que la colección B tiene
          <strong>más</strong> y la colección A tiene
          <strong>menos</strong>.
        </p>

      </div>


      <div class="important">

        <strong>Pasos para comprobar</strong>

        <ol class="steps">
          <li>Observa las dos colecciones.</li>
          <li>Cuenta los objetos de la primera colección.</li>
          <li>Cuenta los objetos de la segunda colección.</li>
          <li>Compara las cantidades obtenidas.</li>
          <li>Decide si hay más, menos o la misma cantidad.</li>
        </ol>

      </div>

    </section>


    <!-- PRÁCTICA FINAL -->
    <section class="challenge">

      <h2>Practiquemos lo aprendido</h2>


      <!-- RETO 1 -->
      <div class="question">

        <h3>Reto 1. ¿Dónde hay más?</h3>

        <div class="comparison-grid">

          <div class="collection">

            <h3>A</h3>

            <div class="objects">
              <div class="object"></div>
              <div class="object"></div>
              <div class="object"></div>
            </div>

          </div>


          <div class="collection">

            <h3>B</h3>

            <div class="objects">
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
            </div>

          </div>

        </div>

        <div class="answer">
          La colección B tiene más: \(5\) objetos.
        </div>

      </div>


      <!-- RETO 2 -->
      <div class="question">

        <h3>Reto 2. ¿Dónde hay menos?</h3>

        <p>
          Una colección tiene \(2\) objetos y otra tiene \(7\).
        </p>

        <div class="answer">
          La colección con \(2\) objetos tiene menos.
        </div>

      </div>


      <!-- RETO 3 -->
      <div class="question">

        <h3>Reto 3. ¿Tienen la misma cantidad?</h3>

        <div class="comparison-grid">

          <div class="collection">

            <div class="objects">
              <div class="object light"></div>
              <div class="object light"></div>
              <div class="object light"></div>
              <div class="object light"></div>
            </div>

          </div>


          <div class="collection">

            <div class="objects">
              <div class="object green"></div>
              <div class="object green"></div>
              <div class="object green"></div>
              <div class="object green"></div>
            </div>

          </div>

        </div>

        <div class="answer">
          Sí. Las dos colecciones tienen \(4\) objetos.
        </div>

      </div>


      <!-- RETO 4 -->
      <div class="question">

        <h3>Reto 4. Cuenta para comprobar</h3>

        <div class="comparison-grid">

          <div class="collection">

            <h3>A</h3>

            <div class="objects">
              <div class="object"></div>
              <div class="object"></div>
              <div class="object"></div>
              <div class="object"></div>
              <div class="object"></div>
            </div>

          </div>


          <div class="collection">

            <h3>B</h3>

            <div class="objects">
              <div class="object orange"></div>
              <div class="object orange"></div>
              <div class="object orange"></div>
            </div>

          </div>

        </div>

        <p>
          Cuenta los objetos de cada colección.
        </p>

        <div class="answer">
          A tiene \(5\). B tiene \(3\).  
          A tiene más y B tiene menos.
        </div>

      </div>

    </section>


    <!-- RESUMEN -->
    <section class="summary">

      <h2>Recuerda</h2>

      <ul>

        <li>
          Podemos comparar dos colecciones observando sus cantidades.
        </li>

        <li>
          Una colección tiene <strong>más</strong> cuando contiene
          una cantidad mayor de objetos.
        </li>

        <li>
          Una colección tiene <strong>menos</strong> cuando contiene
          una cantidad menor.
        </li>

        <li>
          Dos colecciones tienen la <strong>misma cantidad</strong>
          cuando tienen igual número de elementos.
        </li>

        <li>
          Los objetos pueden ser diferentes y aun así representar
          la misma cantidad.
        </li>

        <li>
          Podemos contar los objetos para comprobar nuestras
          comparaciones.
        </li>

      </ul>

    </section>


    <div class="closing">
      ¡Muy bien! Ya puedes comparar diferentes cantidades.
    </div>

  </main>

</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(361,9,660,'video','Digitación','<!-- etl-google-cloud-matematicas:media-plan:6 -->
<p>Video mostrando del 1 al 10, objetos, letra, simbolos.  Animados, con una presentación y mostrando como se escribe (trazo).</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(362,9,660,'video','Digitación','<!-- etl-google-cloud-matematicas:media-plan:7 -->
<p>Video mostrando del 11 al 20, objetos, letra, simbolos.  Animados, con una presentación y mostrando como se escribe.</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(363,9,660,'video','Digitación','<!-- etl-google-cloud-matematicas:media-plan:8 -->
<p>Video mostrando del 21 al 30, objetos, letra, simbolos.  Animados, con una presentación y mostrando como se escribe.</p>',NULL,0,'generic','Básica',10,NULL,0,4,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(364,9,660,'video','Digitación','<!-- etl-google-cloud-matematicas:media-plan:9 -->
<p>Video mostrando del 31 al 50, objetos, letra, simbolos.  Animados, con una presentación y mostrando como se escribe.</p>',NULL,0,'generic','Básica',10,NULL,0,5,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(365,9,660,'video','Digitación','<!-- etl-google-cloud-matematicas:media-plan:10 -->
<p>Video mostrando del 51 al 100, objetos, letra, simbolos.  Animados, con una presentación y mostrando como se escribe.</p>',NULL,0,'generic','Básica',10,NULL,0,6,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(366,9,660,'video','Digitación','<!-- etl-google-cloud-matematicas:media-plan:11 -->
<p>Ejemplos de lo que sería posteriormente la actividad de sucesiones, secuencias y ordenes</p>',NULL,0,'generic','Básica',10,NULL,0,7,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(367,9,660,'video','Digitación','<!-- etl-google-cloud-matematicas:media-plan:12 -->
<p>Uso ordinal, cardinal y como código. Mediante ejemplos de uso</p>',NULL,0,'generic','Básica',10,NULL,0,8,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(368,10,661,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:4:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Conocemos los números hasta 100 | Ari-P1-003</title>

  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      padding: 25px 15px;
      font-family: Arial, Helvetica, sans-serif;
      background: #FFFBEA;
      color: #37474F;
      line-height: 1.7;
    }

    .lesson {
      max-width: 1000px;
      margin: auto;
      background: #FFFFFF;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 8px 28px rgba(0, 0, 0, 0.08);
    }

    /* ENCABEZADO */

    .header {
      background: linear-gradient(135deg, #FFF1A8, #F6D76B);
      padding: 45px 35px;
      text-align: center;
    }

    .code {
      display: inline-block;
      background: rgba(255, 255, 255, 0.65);
      padding: 7px 17px;
      border-radius: 30px;
      margin-bottom: 15px;
      color: #725A10;
      font-weight: bold;
      font-size: 14px;
    }

    .header h1 {
      margin: 0 0 12px;
      color: #5F4B0E;
      font-size: 38px;
    }

    .header p {
      max-width: 730px;
      margin: auto;
      color: #6B5819;
      font-size: 18px;
    }

    /* CONTENIDO */

    .content {
      padding: 40px 45px 55px;
    }

    .description {
      background: #FFF8D6;
      border-left: 6px solid #F2C94C;
      border-radius: 15px;
      padding: 23px 25px;
      margin-bottom: 30px;
    }

    .objective {
      background: #FFFDF0;
      border: 2px solid #F5DF8B;
      border-radius: 16px;
      padding: 22px 25px;
      margin-bottom: 40px;
    }

    .description h2,
    .objective h2 {
      margin-top: 0;
      color: #806619;
    }

    .section {
      margin: 45px 0;
    }

    .section h2 {
      color: #7A6117;
      font-size: 27px;
      margin-bottom: 12px;
      border-bottom: 3px solid #F8E49C;
      padding-bottom: 8px;
    }

    .section h3 {
      color: #6A581D;
      margin-top: 25px;
    }

    /* TARJETAS */

    .example,
    .practice,
    .important {
      border-radius: 16px;
      padding: 22px;
      margin: 22px 0;
    }

    .example {
      background: #FFF9E6;
      border: 2px solid #F4DA80;
    }

    .practice {
      background: #FFF6C7;
      border: 2px solid #E9CF71;
    }

    .important {
      background: #FFF1A8;
      border-left: 6px solid #D9AE2B;
    }

    /* NÚMEROS */

    .number-grid {
      display: grid;
      grid-template-columns: repeat(10, 1fr);
      gap: 8px;
      margin: 25px 0;
    }

    .number-box {
      min-height: 50px;
      background: #F2C94C;
      color: #59470F;
      border-radius: 12px;
      display: flex;
      justify-content: center;
      align-items: center;
      font-weight: bold;
      font-size: 18px;
      border: 2px solid #DBB635;
    }

    .number-box.light {
      background: #FFF0A6;
      border-color: #E9D06F;
    }

    .number-box.white {
      background: #FFFDF5;
      border-color: #E8D58C;
    }

    .number-sequence {
      text-align: center;
      font-size: 22px;
      font-weight: bold;
      background: #FFF8D6;
      padding: 20px;
      border-radius: 15px;
      margin: 20px 0;
      color: #725A10;
    }

    /* BLOQUES DE DIEZ */

    .tens-grid {
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      gap: 15px;
      margin: 25px 0;
    }

    .ten-card {
      background: #FFFDF5;
      border: 2px solid #F0D87D;
      border-radius: 16px;
      padding: 18px 10px;
      text-align: center;
    }

    .ten-card strong {
      font-size: 22px;
      color: #725A10;
    }

    .ten-card p {
      margin: 5px 0 0;
      font-size: 14px;
    }

    /* RETOS */

    .challenge {
      background: #FFF7D1;
      border: 2px solid #EBCF68;
      border-radius: 20px;
      padding: 28px;
      margin-top: 45px;
    }

    .challenge h2 {
      color: #725A10;
      margin-top: 0;
    }

    .question {
      background: #FFFFFF;
      border: 1px solid #EEDC9A;
      border-radius: 14px;
      padding: 20px;
      margin: 18px 0;
    }

    .answer {
      background: #FFF4BD;
      border-radius: 10px;
      padding: 10px 14px;
      margin-top: 12px;
      font-weight: bold;
      color: #675312;
    }

    /* RESUMEN */

    .summary {
      background: #F2C94C;
      color: #4D3E0D;
      border-radius: 20px;
      padding: 30px;
      margin-top: 45px;
    }

    .summary h2 {
      margin-top: 0;
      color: #4D3E0D;
    }

    .summary li {
      margin-bottom: 10px;
    }

    .closing {
      text-align: center;
      margin-top: 35px;
      font-size: 21px;
      font-weight: bold;
      color: #806619;
    }

    @media (max-width: 800px) {
      .content {
        padding: 28px 20px 45px;
      }

      .header {
        padding: 35px 20px;
      }

      .header h1 {
        font-size: 31px;
      }

      .number-grid {
        grid-template-columns: repeat(5, 1fr);
      }

      .tens-grid {
        grid-template-columns: repeat(2, 1fr);
      }
    }
  </style>
</head>

<body>

<div class="lesson">

  <!-- ENCABEZADO -->
  <header class="header">

    <div class="code">
      Ari-P1-003 · Primer grado de primaria
    </div>

    <h1>Conocemos los números hasta \(100\)</h1>

    <p>
      Vamos a conocer los números poco a poco:
      primero hasta \(10\), después hasta \(20\),
      luego hasta \(50\) y finalmente hasta \(100\).
    </p>

  </header>


  <main class="content">

    <!-- DESCRIPCIÓN -->
    <section class="description">

      <h2>Descripción del contenido</h2>

      <p>
        En esta lección conocerás y reconocerás números desde
        \(0\) hasta \(100\), avanzando de manera gradual.
      </p>

      <p>
        Comenzaremos con los números del \(0\) al \(10\),
        continuaremos hasta \(20\), después llegaremos hasta
        \(50\) y finalmente conoceremos los números hasta \(100\).
      </p>

    </section>


    <!-- OBJETIVO -->
    <section class="objective">

      <h2>¿Qué aprenderás?</h2>

      <p>
        Al terminar esta lección podrás reconocer números dentro
        de diferentes grupos y seguir secuencias numéricas cada
        vez más largas hasta llegar al número \(100\).
      </p>

    </section>


    <!-- INTRODUCCIÓN -->
    <section class="section">

      <h2>Los números crecen</h2>

      <p>
        Ya sabemos que podemos utilizar los números para contar.
        Pero los números no terminan en \(5\) o en \(10\).
      </p>

      <p>
        Podemos seguir avanzando y encontrar números cada vez
        mayores.
      </p>

      <div class="important">

        <strong>Aprenderemos poco a poco.</strong>

        <p>
          Primero trabajaremos con pocos números y después
          ampliaremos nuestra secuencia.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 1 -->
    <section class="section">

      <h2>1. Números del \(0\) al \(10\)</h2>

      <p>
        Comenzaremos con los primeros números que utilizamos
        con mayor frecuencia.
      </p>

      <div class="number-grid">

        <div class="number-box">\(0\)</div>
        <div class="number-box">\(1\)</div>
        <div class="number-box">\(2\)</div>
        <div class="number-box">\(3\)</div>
        <div class="number-box">\(4\)</div>
        <div class="number-box">\(5\)</div>
        <div class="number-box">\(6\)</div>
        <div class="number-box">\(7\)</div>
        <div class="number-box">\(8\)</div>
        <div class="number-box">\(9\)</div>
        <div class="number-box">\(10\)</div>

      </div>

      <h3>¿Qué representa el \(0\)?</h3>

      <p>
        El número \(0\) puede representar que no hay ningún
        elemento.
      </p>

      <div class="example">

        <strong>Ejemplo:</strong>

        <p>
          Si una caja no tiene ninguna pelota, podemos decir
          que tiene \(0\) pelotas.
        </p>

      </div>


      <h3>Seguimos el orden</h3>

      <div class="number-sequence">
        \(0,\ 1,\ 2,\ 3,\ 4,\ 5,\ 6,\ 7,\ 8,\ 9,\ 10\)
      </div>

      <div class="practice">

        <strong>Completa:</strong>

        <p>
          \(0,\ 1,\ 2,\ \_\_,\ 4,\ 5\)
        </p>

        <p>
          El número que falta es <strong>\(3\)</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 2 -->
    <section class="section">

      <h2>2. Números del \(0\) al \(20\)</h2>

      <p>
        Después del \(10\), la secuencia continúa.
      </p>

      <div class="number-sequence">
        \(10,\ 11,\ 12,\ 13,\ 14,\ 15,\ 16,\ 17,\ 18,\ 19,\ 20\)
      </div>

      <p>
        Podemos unir los números que ya conocemos con estos
        nuevos números.
      </p>

      <div class="number-grid">

        <div class="number-box light">\(1\)</div>
        <div class="number-box light">\(2\)</div>
        <div class="number-box light">\(3\)</div>
        <div class="number-box light">\(4\)</div>
        <div class="number-box light">\(5\)</div>
        <div class="number-box light">\(6\)</div>
        <div class="number-box light">\(7\)</div>
        <div class="number-box light">\(8\)</div>
        <div class="number-box light">\(9\)</div>
        <div class="number-box light">\(10\)</div>

        <div class="number-box">\(11\)</div>
        <div class="number-box">\(12\)</div>
        <div class="number-box">\(13\)</div>
        <div class="number-box">\(14\)</div>
        <div class="number-box">\(15\)</div>
        <div class="number-box">\(16\)</div>
        <div class="number-box">\(17\)</div>
        <div class="number-box">\(18\)</div>
        <div class="number-box">\(19\)</div>
        <div class="number-box">\(20\)</div>

      </div>

      <div class="example">

        <strong>Observa:</strong>

        <p>
          Después de \(10\) viene \(11\).
        </p>

        <p>
          Después de \(11\) viene \(12\).
        </p>

        <p>
          Después de \(19\) viene \(20\).
        </p>

      </div>

      <div class="practice">

        <strong>Completa la secuencia:</strong>

        <p>
          \(15,\ 16,\ \_\_,\ 18,\ 19,\ 20\)
        </p>

        <p>
          El número que falta es <strong>\(17\)</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 3 -->
    <section class="section">

      <h2>3. Números hasta \(50\)</h2>

      <p>
        Podemos seguir contando después del \(20\).
        Poco a poco llegamos a números más grandes.
      </p>

      <div class="tens-grid">

        <div class="ten-card">
          <strong>\(10\)</strong>
          <p>diez</p>
        </div>

        <div class="ten-card">
          <strong>\(20\)</strong>
          <p>veinte</p>
        </div>

        <div class="ten-card">
          <strong>\(30\)</strong>
          <p>treinta</p>
        </div>

        <div class="ten-card">
          <strong>\(40\)</strong>
          <p>cuarenta</p>
        </div>

        <div class="ten-card">
          <strong>\(50\)</strong>
          <p>cincuenta</p>
        </div>

      </div>

      <p>
        Entre estos números encontramos otros números.
      </p>

      <div class="example">

        <p>
          Después de \(20\):
        </p>

        <div class="number-sequence">
          \(21,\ 22,\ 23,\ 24,\ 25,\ 26,\ 27,\ 28,\ 29,\ 30\)
        </div>

        <p>
          Después de \(30\):
        </p>

        <div class="number-sequence">
          \(31,\ 32,\ 33,\ 34,\ 35,\ 36,\ 37,\ 38,\ 39,\ 40\)
        </div>

        <p>
          Después de \(40\):
        </p>

        <div class="number-sequence">
          \(41,\ 42,\ 43,\ 44,\ 45,\ 46,\ 47,\ 48,\ 49,\ 50\)
        </div>

      </div>

      <div class="practice">

        <strong>¿Qué número falta?</strong>

        <p>
          \(27,\ 28,\ 29,\ \_\_,\ 31\)
        </p>

        <p>
          La respuesta es <strong>\(30\)</strong>.
        </p>

      </div>

      <div class="practice">

        <strong>Ahora observa:</strong>

        <p>
          \(46,\ 47,\ \_\_,\ 49,\ 50\)
        </p>

        <p>
          El número que falta es <strong>\(48\)</strong>.
        </p>

      </div>

    </section>


    <!-- SUBTEMA 4 -->
    <section class="section">

      <h2>4. Números hasta \(100\)</h2>

      <p>
        Cuando llegamos al \(50\), podemos seguir contando
        hasta alcanzar el número \(100\).
      </p>

      <p>
        Observa algunos números importantes:
      </p>

      <div class="tens-grid">

        <div class="ten-card">
          <strong>\(10\)</strong>
          <p>diez</p>
        </div>

        <div class="ten-card">
          <strong>\(20\)</strong>
          <p>veinte</p>
        </div>

        <div class="ten-card">
          <strong>\(30\)</strong>
          <p>treinta</p>
        </div>

        <div class="ten-card">
          <strong>\(40\)</strong>
          <p>cuarenta</p>
        </div>

        <div class="ten-card">
          <strong>\(50\)</strong>
          <p>cincuenta</p>
        </div>

        <div class="ten-card">
          <strong>\(60\)</strong>
          <p>sesenta</p>
        </div>

        <div class="ten-card">
          <strong>\(70\)</strong>
          <p>setenta</p>
        </div>

        <div class="ten-card">
          <strong>\(80\)</strong>
          <p>ochenta</p>
        </div>

        <div class="ten-card">
          <strong>\(90\)</strong>
          <p>noventa</p>
        </div>

        <div class="ten-card">
          <strong>\(100\)</strong>
          <p>cien</p>
        </div>

      </div>


      <h3>Del \(50\) al \(60\)</h3>

      <div class="number-sequence">
        \(50,\ 51,\ 52,\ 53,\ 54,\ 55,\ 56,\ 57,\ 58,\ 59,\ 60\)
      </div>


      <h3>Del \(60\) al \(70\)</h3>

      <div class="number-sequence">
        \(60,\ 61,\ 62,\ 63,\ 64,\ 65,\ 66,\ 67,\ 68,\ 69,\ 70\)
      </div>


      <h3>Del \(70\) al \(80\)</h3>

      <div class="number-sequence">
        \(70,\ 71,\ 72,\ 73,\ 74,\ 75,\ 76,\ 77,\ 78,\ 79,\ 80\)
      </div>


      <h3>Del \(80\) al \(90\)</h3>

      <div class="number-sequence">
        \(80,\ 81,\ 82,\ 83,\ 84,\ 85,\ 86,\ 87,\ 88,\ 89,\ 90\)
      </div>


      <h3>Del \(90\) al \(100\)</h3>

      <div class="number-sequence">
        \(90,\ 91,\ 92,\ 93,\ 94,\ 95,\ 96,\ 97,\ 98,\ 99,\ 100\)
      </div>


      <div class="important">

        <strong>Observa el recorrido:</strong>

        <p>
          \(10,\ 20,\ 30,\ 40,\ 50,\ 60,\ 70,\ 80,\ 90,\ 100\)
        </p>

        <p>
          Todos estos números nos ayudan a reconocer diferentes
          partes de la secuencia hasta llegar a \(100\).
        </p>

      </div>


      <div class="practice">

        <strong>Completa:</strong>

        <p>
          \(96,\ 97,\ \_\_,\ 99,\ 100\)
        </p>

        <p>
          El número que falta es <strong>\(98\)</strong>.
        </p>

      </div>

    </section>


    <!-- PRÁCTICA FINAL -->
    <section class="challenge">

      <h2>Practiquemos lo aprendido</h2>


      <div class="question">

        <h3>Reto 1. Del \(0\) al \(10\)</h3>

        <p>
          \(5,\ 6,\ 7,\ \_\_,\ 9,\ 10\)
        </p>

        <div class="answer">
          Respuesta: \(8\)
        </div>

      </div>


      <div class="question">

        <h3>Reto 2. Del \(0\) al \(20\)</h3>

        <p>
          \(16,\ 17,\ \_\_,\ 19,\ 20\)
        </p>

        <div class="answer">
          Respuesta: \(18\)
        </div>

      </div>


      <div class="question">

        <h3>Reto 3. Hasta \(50\)</h3>

        <p>
          \(37,\ 38,\ 39,\ \_\_,\ 41\)
        </p>

        <div class="answer">
          Respuesta: \(40\)
        </div>

      </div>


      <div class="question">

        <h3>Reto 4. Hasta \(100\)</h3>

        <p>
          \(87,\ 88,\ \_\_,\ 90\)
        </p>

        <div class="answer">
          Respuesta: \(89\)
        </div>

      </div>


      <div class="question">

        <h3>Reto 5. Llegamos al \(100\)</h3>

        <p>
          \(97,\ 98,\ 99,\ \_\_\)
        </p>

        <div class="answer">
          Respuesta: \(100\)
        </div>

      </div>

    </section>


    <!-- RESUMEN -->
    <section class="summary">

      <h2>Recuerda</h2>

      <ul>

        <li>
          Podemos comenzar a reconocer los números desde \(0\).
        </li>

        <li>
          Primero aprendemos los números del \(0\) al \(10\).
        </li>

        <li>
          Después ampliamos la secuencia hasta \(20\).
        </li>

        <li>
          Podemos seguir contando hasta \(50\).
        </li>

        <li>
          La secuencia continúa hasta llegar a \(100\).
        </li>

        <li>
          Después de un número viene el siguiente número de la secuencia.
        </li>

        <li>
          Podemos utilizar patrones como
          \(10,\ 20,\ 30,\ 40,\ 50,\ 60,\ 70,\ 80,\ 90,\ 100\)
          para ayudarnos a reconocer números mayores.
        </li>

      </ul>

    </section>


    <div class="closing">
      ¡Excelente! Ya conoces muchos más números y llegaste hasta \(100\).
    </div>

  </main>

</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(369,11,662,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:5:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Ari-P1-005 | Representamos números con unidades y decenas</title>

<style>
*{box-sizing:border-box}

body{
  margin:0;
  padding:25px 15px;
  font-family:Arial,Helvetica,sans-serif;
  background:#FFFBEA;
  color:#37474F;
  line-height:1.7;
}

.lesson{
  max-width:1000px;
  margin:auto;
  background:#FFFFFF;
  border-radius:24px;
  overflow:hidden;
  box-shadow:0 8px 28px rgba(0,0,0,.08);
}

.header{
  background:linear-gradient(135deg,#FFF1A8,#F6D76B);
  padding:45px 35px;
  text-align:center;
}

.code{
  display:inline-block;
  background:rgba(255,255,255,.65);
  padding:7px 17px;
  border-radius:30px;
  margin-bottom:15px;
  color:#725A10;
  font-weight:bold;
}

.header h1{
  margin:0 0 12px;
  color:#5F4B0E;
  font-size:38px;
}

.header p{
  max-width:720px;
  margin:auto;
  color:#6B5819;
  font-size:18px;
}

.content{
  padding:40px 45px 55px;
}

.description,
.objective{
  border-radius:16px;
  padding:22px 25px;
  margin-bottom:30px;
}

.description{
  background:#FFF8D6;
  border-left:6px solid #F2C94C;
}

.objective{
  background:#FFFDF0;
  border:2px solid #F5DF8B;
}

.description h2,
.objective h2{
  margin-top:0;
  color:#806619;
}

.section{
  margin:45px 0;
}

.section h2{
  color:#7A6117;
  font-size:27px;
  border-bottom:3px solid #F8E49C;
  padding-bottom:8px;
}

.example,
.practice,
.important{
  padding:22px;
  margin:22px 0;
  border-radius:16px;
}

.example{
  background:#FFF9E6;
  border:2px solid #F4DA80;
}

.practice{
  background:#FFF6C7;
  border:2px solid #E9CF71;
}

.important{
  background:#FFF1A8;
  border-left:6px solid #D9AE2B;
}

.blocks{
  display:flex;
  flex-wrap:wrap;
  align-items:center;
  gap:8px;
  margin:20px 0;
}

.unit{
  width:36px;
  height:36px;
  background:#F2C94C;
  border:2px solid #D6AD2F;
  border-radius:8px;
}

.ten{
  width:55px;
  height:105px;
  background:#FFE38A;
  border:3px solid #D6AD2F;
  border-radius:10px;
  display:flex;
  align-items:center;
  justify-content:center;
  font-weight:bold;
  color:#654F0E;
}

.place-table{
  width:100%;
  max-width:500px;
  margin:25px auto;
  border-collapse:collapse;
  text-align:center;
  font-size:20px;
}

.place-table th{
  background:#F2C94C;
  color:#54420D;
  padding:13px;
}

.place-table td{
  border:2px solid #F0D87D;
  padding:16px;
  background:#FFFDF5;
}

.big-number{
  text-align:center;
  font-size:34px;
  font-weight:bold;
  color:#725A10;
  margin:20px;
}

.challenge{
  background:#FFF7D1;
  border:2px solid #EBCF68;
  padding:28px;
  border-radius:20px;
}

.question{
  background:#FFF;
  border:1px solid #EEDC9A;
  padding:20px;
  border-radius:14px;
  margin:18px 0;
}

.answer{
  background:#FFF4BD;
  padding:10px 14px;
  border-radius:10px;
  font-weight:bold;
}

.summary{
  background:#F2C94C;
  color:#4D3E0D;
  padding:30px;
  border-radius:20px;
  margin-top:45px;
}

.summary h2{margin-top:0}

.closing{
  text-align:center;
  margin-top:35px;
  font-size:21px;
  font-weight:bold;
  color:#806619;
}

@media(max-width:750px){
  .content{padding:28px 20px 45px}
  .header h1{font-size:31px}
}
</style>
</head>

<body>

<div class="lesson">

<header class="header">
  <div class="code">Ari-P1-005 · Primer grado de primaria</div>
  <h1>Representamos números con unidades y decenas</h1>
  <p>
    Utiliza fichas y bloques para representar números y descubre
    por qué importa el lugar que ocupa cada cifra.
  </p>
</header>

<main class="content">

<section class="description">
  <h2>Descripción del contenido</h2>
  <p>
    En esta lección utilizarás paquetes, fichas y bloques para representar
    cantidades. También aprenderás que una cifra puede tener diferente
    valor dependiendo de su posición y conocerás el uso inicial del cero.
  </p>
</section>

<section class="objective">
  <h2>¿Qué aprenderás?</h2>
  <p>
    Aprenderás a representar números mediante materiales visuales,
    identificar unidades y decenas y comprender por qué el cero es
    importante dentro de algunos números.
  </p>
</section>

<section class="section">

<h2>1. Uso de paquetes, fichas o bloques</h2>

<p>
Podemos representar los números utilizando objetos como fichas,
palitos, cubos o bloques.
</p>

<p>
Cada ficha individual puede representar <strong>una unidad</strong>.
</p>

<div class="example">

<strong>Ejemplo</strong>

<div class="blocks">
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
</div>

<p>
Tenemos \(5\) fichas individuales.
</p>

<p>
Por lo tanto, representamos el número \(5\).
</p>

</div>

<p>
Cuando juntamos varias unidades también podemos formar grupos.
Un grupo de \(10\) unidades puede representarse mediante un paquete
o un bloque largo.
</p>

<div class="example">

<div class="blocks">
  <div class="ten">\(10\)</div>
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
</div>

<p>
El bloque largo representa \(10\) unidades y tenemos además
\(3\) unidades sueltas.
</p>

<p>
Entonces representamos:
</p>

<p class="big-number">
\(10+3=13\)
</p>

</div>

<div class="important">
<strong>Recuerda:</strong>
<p>
Los objetos y bloques nos ayudan a observar cómo están formados
los números.
</p>
</div>

</section>

<section class="section">

<h2>2. Valor de una cifra según su posición</h2>

<p>
Una cifra puede tener un valor diferente según el lugar donde
se encuentre dentro de un número.
</p>

<p>
Observemos el número:
</p>

<div class="big-number">
\(24\)
</div>

<table class="place-table">
<tr>
  <th>Decenas</th>
  <th>Unidades</th>
</tr>
<tr>
  <td>\(2\)</td>
  <td>\(4\)</td>
</tr>
</table>

<p>
El \(2\) está en el lugar de las decenas, por eso representa
\(2\) grupos de \(10\).
</p>

<p>
El \(4\) está en el lugar de las unidades y representa
\(4\) unidades.
</p>

<div class="example">

<p>
Podemos representarlo así:
</p>

<div class="blocks">
  <div class="ten">\(10\)</div>
  <div class="ten">\(10\)</div>

  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
</div>

<p>
\(20+4=24\)
</p>

</div>

<div class="practice">

<strong>Observa el número \(32\).</strong>

<table class="place-table">
<tr>
  <th>Decenas</th>
  <th>Unidades</th>
</tr>
<tr>
  <td>\(3\)</td>
  <td>\(2\)</td>
</tr>
</table>

<p>
Tiene \(3\) decenas y \(2\) unidades.
</p>

</div>

</section>

<section class="section">

<h2>3. Uso inicial del cero</h2>

<p>
El número \(0\) tiene una función muy importante.
Puede indicar que no hay elementos en una posición.
</p>

<div class="example">

<p>
Observa el número:
</p>

<div class="big-number">
\(20\)
</div>

<table class="place-table">
<tr>
  <th>Decenas</th>
  <th>Unidades</th>
</tr>
<tr>
  <td>\(2\)</td>
  <td>\(0\)</td>
</tr>
</table>

<p>
Tenemos \(2\) decenas y \(0\) unidades sueltas.
</p>

<div class="blocks">
  <div class="ten">\(10\)</div>
  <div class="ten">\(10\)</div>
</div>

<p>
\(10+10=20\)
</p>

</div>

<div class="important">

<strong>¿Por qué necesitamos el \(0\)?</strong>

<p>
Porque nos ayuda a indicar que no hay unidades en esa posición.
</p>

<p>
No es lo mismo escribir \(2\) que escribir \(20\).
</p>

</div>

<div class="practice">

<p>
El número \(30\) tiene:
</p>

<ul>
  <li>\(3\) decenas.</li>
  <li>\(0\) unidades.</li>
</ul>

</div>

</section>

<section class="challenge">

<h2>Practiquemos lo aprendido</h2>

<div class="question">
<h3>Reto 1</h3>
<p>Tenemos un bloque de \(10\) y \(4\) fichas sueltas.</p>
<p>¿Qué número formamos?</p>
<div class="answer">Respuesta: \(14\)</div>
</div>

<div class="question">
<h3>Reto 2</h3>
<p>En el número \(25\), ¿qué cifra está en las unidades?</p>
<div class="answer">Respuesta: \(5\)</div>
</div>

<div class="question">
<h3>Reto 3</h3>
<p>En el número \(25\), ¿qué cifra está en las decenas?</p>
<div class="answer">Respuesta: \(2\)</div>
</div>

<div class="question">
<h3>Reto 4</h3>
<p>¿Cuántas unidades sueltas tiene \(40\)?</p>
<div class="answer">Respuesta: \(0\)</div>
</div>

</section>

<section class="summary">

<h2>Recuerda</h2>

<ul>
<li>Podemos utilizar fichas, paquetes o bloques para representar números.</li>
<li>Las fichas individuales pueden representar unidades.</li>
<li>Un bloque de \(10\) puede representar un grupo de diez unidades.</li>
<li>El valor de una cifra depende de su posición.</li>
<li>Podemos identificar posiciones de decenas y unidades.</li>
<li>El \(0\) puede indicar que no hay unidades en una posición.</li>
</ul>

</section>

<div class="closing">
¡Excelente! Ahora puedes representar números de diferentes maneras.
</div>

</main>
</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(370,12,663,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:6:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Ari-P1-005 | Representamos números con unidades y decenas</title>

<style>
*{box-sizing:border-box}

body{
  margin:0;
  padding:25px 15px;
  font-family:Arial,Helvetica,sans-serif;
  background:#FFFBEA;
  color:#37474F;
  line-height:1.7;
}

.lesson{
  max-width:1000px;
  margin:auto;
  background:#FFFFFF;
  border-radius:24px;
  overflow:hidden;
  box-shadow:0 8px 28px rgba(0,0,0,.08);
}

.header{
  background:linear-gradient(135deg,#FFF1A8,#F6D76B);
  padding:45px 35px;
  text-align:center;
}

.code{
  display:inline-block;
  background:rgba(255,255,255,.65);
  padding:7px 17px;
  border-radius:30px;
  margin-bottom:15px;
  color:#725A10;
  font-weight:bold;
}

.header h1{
  margin:0 0 12px;
  color:#5F4B0E;
  font-size:38px;
}

.header p{
  max-width:720px;
  margin:auto;
  color:#6B5819;
  font-size:18px;
}

.content{
  padding:40px 45px 55px;
}

.description,
.objective{
  border-radius:16px;
  padding:22px 25px;
  margin-bottom:30px;
}

.description{
  background:#FFF8D6;
  border-left:6px solid #F2C94C;
}

.objective{
  background:#FFFDF0;
  border:2px solid #F5DF8B;
}

.description h2,
.objective h2{
  margin-top:0;
  color:#806619;
}

.section{
  margin:45px 0;
}

.section h2{
  color:#7A6117;
  font-size:27px;
  border-bottom:3px solid #F8E49C;
  padding-bottom:8px;
}

.example,
.practice,
.important{
  padding:22px;
  margin:22px 0;
  border-radius:16px;
}

.example{
  background:#FFF9E6;
  border:2px solid #F4DA80;
}

.practice{
  background:#FFF6C7;
  border:2px solid #E9CF71;
}

.important{
  background:#FFF1A8;
  border-left:6px solid #D9AE2B;
}

.blocks{
  display:flex;
  flex-wrap:wrap;
  align-items:center;
  gap:8px;
  margin:20px 0;
}

.unit{
  width:36px;
  height:36px;
  background:#F2C94C;
  border:2px solid #D6AD2F;
  border-radius:8px;
}

.ten{
  width:55px;
  height:105px;
  background:#FFE38A;
  border:3px solid #D6AD2F;
  border-radius:10px;
  display:flex;
  align-items:center;
  justify-content:center;
  font-weight:bold;
  color:#654F0E;
}

.place-table{
  width:100%;
  max-width:500px;
  margin:25px auto;
  border-collapse:collapse;
  text-align:center;
  font-size:20px;
}

.place-table th{
  background:#F2C94C;
  color:#54420D;
  padding:13px;
}

.place-table td{
  border:2px solid #F0D87D;
  padding:16px;
  background:#FFFDF5;
}

.big-number{
  text-align:center;
  font-size:34px;
  font-weight:bold;
  color:#725A10;
  margin:20px;
}

.challenge{
  background:#FFF7D1;
  border:2px solid #EBCF68;
  padding:28px;
  border-radius:20px;
}

.question{
  background:#FFF;
  border:1px solid #EEDC9A;
  padding:20px;
  border-radius:14px;
  margin:18px 0;
}

.answer{
  background:#FFF4BD;
  padding:10px 14px;
  border-radius:10px;
  font-weight:bold;
}

.summary{
  background:#F2C94C;
  color:#4D3E0D;
  padding:30px;
  border-radius:20px;
  margin-top:45px;
}

.summary h2{margin-top:0}

.closing{
  text-align:center;
  margin-top:35px;
  font-size:21px;
  font-weight:bold;
  color:#806619;
}

@media(max-width:750px){
  .content{padding:28px 20px 45px}
  .header h1{font-size:31px}
}
</style>
</head>

<body>

<div class="lesson">

<header class="header">
  <div class="code">Ari-P1-005 · Primer grado de primaria</div>
  <h1>Representamos números con unidades y decenas</h1>
  <p>
    Utiliza fichas y bloques para representar números y descubre
    por qué importa el lugar que ocupa cada cifra.
  </p>
</header>

<main class="content">

<section class="description">
  <h2>Descripción del contenido</h2>
  <p>
    En esta lección utilizarás paquetes, fichas y bloques para representar
    cantidades. También aprenderás que una cifra puede tener diferente
    valor dependiendo de su posición y conocerás el uso inicial del cero.
  </p>
</section>

<section class="objective">
  <h2>¿Qué aprenderás?</h2>
  <p>
    Aprenderás a representar números mediante materiales visuales,
    identificar unidades y decenas y comprender por qué el cero es
    importante dentro de algunos números.
  </p>
</section>

<section class="section">

<h2>1. Uso de paquetes, fichas o bloques</h2>

<p>
Podemos representar los números utilizando objetos como fichas,
palitos, cubos o bloques.
</p>

<p>
Cada ficha individual puede representar <strong>una unidad</strong>.
</p>

<div class="example">

<strong>Ejemplo</strong>

<div class="blocks">
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
</div>

<p>
Tenemos \(5\) fichas individuales.
</p>

<p>
Por lo tanto, representamos el número \(5\).
</p>

</div>

<p>
Cuando juntamos varias unidades también podemos formar grupos.
Un grupo de \(10\) unidades puede representarse mediante un paquete
o un bloque largo.
</p>

<div class="example">

<div class="blocks">
  <div class="ten">\(10\)</div>
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
</div>

<p>
El bloque largo representa \(10\) unidades y tenemos además
\(3\) unidades sueltas.
</p>

<p>
Entonces representamos:
</p>

<p class="big-number">
\(10+3=13\)
</p>

</div>

<div class="important">
<strong>Recuerda:</strong>
<p>
Los objetos y bloques nos ayudan a observar cómo están formados
los números.
</p>
</div>

</section>

<section class="section">

<h2>2. Valor de una cifra según su posición</h2>

<p>
Una cifra puede tener un valor diferente según el lugar donde
se encuentre dentro de un número.
</p>

<p>
Observemos el número:
</p>

<div class="big-number">
\(24\)
</div>

<table class="place-table">
<tr>
  <th>Decenas</th>
  <th>Unidades</th>
</tr>
<tr>
  <td>\(2\)</td>
  <td>\(4\)</td>
</tr>
</table>

<p>
El \(2\) está en el lugar de las decenas, por eso representa
\(2\) grupos de \(10\).
</p>

<p>
El \(4\) está en el lugar de las unidades y representa
\(4\) unidades.
</p>

<div class="example">

<p>
Podemos representarlo así:
</p>

<div class="blocks">
  <div class="ten">\(10\)</div>
  <div class="ten">\(10\)</div>

  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
  <div class="unit"></div>
</div>

<p>
\(20+4=24\)
</p>

</div>

<div class="practice">

<strong>Observa el número \(32\).</strong>

<table class="place-table">
<tr>
  <th>Decenas</th>
  <th>Unidades</th>
</tr>
<tr>
  <td>\(3\)</td>
  <td>\(2\)</td>
</tr>
</table>

<p>
Tiene \(3\) decenas y \(2\) unidades.
</p>

</div>

</section>

<section class="section">

<h2>3. Uso inicial del cero</h2>

<p>
El número \(0\) tiene una función muy importante.
Puede indicar que no hay elementos en una posición.
</p>

<div class="example">

<p>
Observa el número:
</p>

<div class="big-number">
\(20\)
</div>

<table class="place-table">
<tr>
  <th>Decenas</th>
  <th>Unidades</th>
</tr>
<tr>
  <td>\(2\)</td>
  <td>\(0\)</td>
</tr>
</table>

<p>
Tenemos \(2\) decenas y \(0\) unidades sueltas.
</p>

<div class="blocks">
  <div class="ten">\(10\)</div>
  <div class="ten">\(10\)</div>
</div>

<p>
\(10+10=20\)
</p>

</div>

<div class="important">

<strong>¿Por qué necesitamos el \(0\)?</strong>

<p>
Porque nos ayuda a indicar que no hay unidades en esa posición.
</p>

<p>
No es lo mismo escribir \(2\) que escribir \(20\).
</p>

</div>

<div class="practice">

<p>
El número \(30\) tiene:
</p>

<ul>
  <li>\(3\) decenas.</li>
  <li>\(0\) unidades.</li>
</ul>

</div>

</section>

<section class="challenge">

<h2>Practiquemos lo aprendido</h2>

<div class="question">
<h3>Reto 1</h3>
<p>Tenemos un bloque de \(10\) y \(4\) fichas sueltas.</p>
<p>¿Qué número formamos?</p>
<div class="answer">Respuesta: \(14\)</div>
</div>

<div class="question">
<h3>Reto 2</h3>
<p>En el número \(25\), ¿qué cifra está en las unidades?</p>
<div class="answer">Respuesta: \(5\)</div>
</div>

<div class="question">
<h3>Reto 3</h3>
<p>En el número \(25\), ¿qué cifra está en las decenas?</p>
<div class="answer">Respuesta: \(2\)</div>
</div>

<div class="question">
<h3>Reto 4</h3>
<p>¿Cuántas unidades sueltas tiene \(40\)?</p>
<div class="answer">Respuesta: \(0\)</div>
</div>

</section>

<section class="summary">

<h2>Recuerda</h2>

<ul>
<li>Podemos utilizar fichas, paquetes o bloques para representar números.</li>
<li>Las fichas individuales pueden representar unidades.</li>
<li>Un bloque de \(10\) puede representar un grupo de diez unidades.</li>
<li>El valor de una cifra depende de su posición.</li>
<li>Podemos identificar posiciones de decenas y unidades.</li>
<li>El \(0\) puede indicar que no hay unidades en una posición.</li>
</ul>

</section>

<div class="closing">
¡Excelente! Ahora puedes representar números de diferentes maneras.
</div>

</main>
</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(371,12,663,'video','Decenas','<!-- etl-google-cloud-matematicas:media-plan:13 -->
<p>Representación de decenas y unidades por medio de objetos, separando decenas de unidades y realizando un conteo real y plasmarlo en una tablita. Eso con cada ejecrcici de cantidad correspondiente, con el fin de que sirva como guía al estudiante para aprender a separar y representar en números naturales.</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(372,12,663,'video','Decenas','<!-- etl-google-cloud-matematicas:media-plan:14 -->
<p>Mostrar como se relaciona con la estructura numérica posicional. Y ejemplo mediante paquete de dulces, señalando la función del cero.</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(373,13,664,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:7:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Ari-P1-006 | Comparamos y ordenamos números</title>

<style>
*{box-sizing:border-box}

body{
margin:0;
padding:25px 15px;
font-family:Arial,Helvetica,sans-serif;
background:#FFFBEA;
color:#37474F;
line-height:1.7;
}

.lesson{
max-width:1000px;
margin:auto;
background:#FFF;
border-radius:24px;
overflow:hidden;
box-shadow:0 8px 28px rgba(0,0,0,.08);
}

.header{
background:linear-gradient(135deg,#FFF1A8,#F6D76B);
padding:45px 35px;
text-align:center;
}

.code{
display:inline-block;
background:rgba(255,255,255,.65);
padding:7px 17px;
border-radius:30px;
font-weight:bold;
color:#725A10;
}

.header h1{
color:#5F4B0E;
font-size:38px;
margin:15px 0 10px;
}

.header p{
max-width:750px;
margin:auto;
color:#6B5819;
font-size:18px;
}

.content{padding:40px 45px 55px}

.description{
background:#FFF8D6;
border-left:6px solid #F2C94C;
padding:23px 25px;
border-radius:15px;
}

.objective{
background:#FFFDF0;
border:2px solid #F5DF8B;
padding:22px 25px;
border-radius:16px;
margin:30px 0 40px;
}

.description h2,.objective h2{color:#806619;margin-top:0}

.section{margin:45px 0}

.section h2{
color:#7A6117;
font-size:27px;
border-bottom:3px solid #F8E49C;
padding-bottom:8px;
}

.example,.practice,.important{
padding:22px;
border-radius:16px;
margin:22px 0;
}

.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}

.compare{
display:grid;
grid-template-columns:1fr 1fr;
gap:20px;
margin:22px 0;
}

.group{
text-align:center;
background:#FFFDF5;
border:2px solid #EFD77E;
padding:20px;
border-radius:16px;
}

.objects{
display:flex;
justify-content:center;
flex-wrap:wrap;
gap:8px;
margin:15px;
}

.object{
width:38px;
height:38px;
border-radius:50%;
background:#F2C94C;
border:2px solid #D6AD2F;
}

.object.alt{background:#FFE6A3}

.sequence{
display:flex;
flex-wrap:wrap;
justify-content:center;
align-items:center;
gap:9px;
margin:25px 0;
}

.number{
min-width:54px;
height:54px;
padding:0 10px;
display:flex;
align-items:center;
justify-content:center;
background:#F2C94C;
border:2px solid #D6AD2F;
border-radius:13px;
font-size:21px;
font-weight:bold;
color:#59470F;
}

.arrow{font-size:24px;color:#A88B2A}

.symbol{
font-size:38px;
font-weight:bold;
color:#806619;
margin:0 15px;
}

.challenge{
background:#FFF7D1;
border:2px solid #EBCF68;
padding:28px;
border-radius:20px;
}

.question{
background:white;
border:1px solid #EEDC9A;
padding:20px;
border-radius:14px;
margin:18px 0;
}

.answer{
background:#FFF4BD;
padding:10px 14px;
border-radius:10px;
font-weight:bold;
}

.summary{
background:#F2C94C;
padding:30px;
border-radius:20px;
color:#4D3E0D;
margin-top:45px;
}

.closing{
text-align:center;
font-size:21px;
font-weight:bold;
color:#806619;
margin-top:35px;
}

@media(max-width:750px){
.content{padding:28px 20px}
.compare{grid-template-columns:1fr}
.header h1{font-size:31px}
}
</style>
</head>

<body>

<div class="lesson">

<header class="header">
<div class="code">Ari-P1-006 · Primer grado de primaria</div>
<h1>Comparamos y ordenamos números</h1>
<p>
Aprende a identificar cantidades mayores, menores o iguales
y a colocar números siguiendo un orden.
</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección compararás cantidades mediante objetos, dibujos y números.
Aprenderás a identificar cantidades mayores, menores e iguales,
ordenar números y utilizar inicialmente los signos \(>\), \(<\) y \(=\).
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Podrás comparar y ordenar diferentes cantidades y reconocer
la posición que ocupa un número dentro de una secuencia.
</p>
</section>

<section class="section">

<h2>1. Mayor cantidad</h2>

<p>
Una cantidad es mayor cuando tiene más elementos que otra.
</p>

<div class="compare">

<div class="group">
<strong>Grupo A</strong>
<div class="objects">
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
</div>
<p>\(3\)</p>
</div>

<div class="group">
<strong>Grupo B</strong>
<div class="objects">
<div class="object alt"></div>
<div class="object alt"></div>
<div class="object alt"></div>
<div class="object alt"></div>
<div class="object alt"></div>
</div>
<p>\(5\)</p>
</div>

</div>

<p>
La cantidad \(5\) es mayor que la cantidad \(3\).
</p>

</section>

<section class="section">

<h2>2. Menor cantidad</h2>

<p>
Una cantidad es menor cuando tiene menos elementos.
</p>

<div class="example">
<p>
Si una caja tiene \(2\) juguetes y otra tiene \(6\),
la cantidad \(2\) es menor.
</p>
</div>

</section>

<section class="section">

<h2>3. Igual cantidad</h2>

<p>
Dos grupos tienen igual cantidad cuando contienen el mismo
número de elementos.
</p>

<div class="compare">

<div class="group">
<div class="objects">
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
</div>
<p>\(4\)</p>
</div>

<div class="group">
<div class="objects">
<div class="object alt"></div>
<div class="object alt"></div>
<div class="object alt"></div>
<div class="object alt"></div>
</div>
<p>\(4\)</p>
</div>

</div>

<p>
Ambos grupos tienen \(4\) elementos.
</p>

</section>

<section class="section">

<h2>4. Orden ascendente</h2>

<p>
Ordenar de forma ascendente significa colocar los números
desde el menor hasta el mayor.
</p>

<div class="sequence">
<div class="number">\(1\)</div>
<span class="arrow">→</span>
<div class="number">\(2\)</div>
<span class="arrow">→</span>
<div class="number">\(3\)</div>
<span class="arrow">→</span>
<div class="number">\(4\)</div>
<span class="arrow">→</span>
<div class="number">\(5\)</div>
</div>

<div class="practice">
<p>
Ordena \(4,\ 2,\ 1,\ 3\).
</p>
<p>
Resultado: \(1,\ 2,\ 3,\ 4\).
</p>
</div>

</section>

<section class="section">

<h2>5. Orden descendente</h2>

<p>
El orden descendente va del número mayor al número menor.
</p>

<div class="sequence">
<div class="number">\(5\)</div>
<span class="arrow">→</span>
<div class="number">\(4\)</div>
<span class="arrow">→</span>
<div class="number">\(3\)</div>
<span class="arrow">→</span>
<div class="number">\(2\)</div>
<span class="arrow">→</span>
<div class="number">\(1\)</div>
</div>

</section>

<section class="section">

<h2>6. Comparación con dibujos</h2>

<p>
Podemos utilizar dibujos para representar y comparar cantidades.
</p>

<div class="example">

<div class="compare">

<div class="group">
<p>★★★</p>
<p>\(3\) estrellas</p>
</div>

<div class="group">
<p>★★★★★</p>
<p>\(5\) estrellas</p>
</div>

</div>

<p>
El dibujo con \(5\) estrellas representa la mayor cantidad.
</p>

</div>

</section>

<section class="section">

<h2>7. Comparación con objetos</h2>

<p>
También podemos comparar objetos reales como lápices,
bloques, juguetes o fichas.
</p>

<div class="important">
<p>
Una estrategia útil es colocar un objeto de un grupo frente
a un objeto del otro grupo. Si sobran objetos, ese grupo
tiene una cantidad mayor.
</p>
</div>

</section>

<section class="section">

<h2>8. Signos \(>\), \(<\) y \(=\)</h2>

<p>
Podemos utilizar signos matemáticos para representar comparaciones.
</p>

<div class="example">

<p class="symbol">\(5>3\)</p>
<p>\(5\) es mayor que \(3\).</p>

<p class="symbol">\(2<6\)</p>
<p>\(2\) es menor que \(6\).</p>

<p class="symbol">\(4=4\)</p>
<p>\(4\) es igual a \(4\).</p>

</div>

<div class="important">

<ul>
<li>\(>\) significa <strong>mayor que</strong>.</li>
<li>\(<\) significa <strong>menor que</strong>.</li>
<li>\(=\) significa <strong>igual a</strong>.</li>
</ul>

</div>

</section>

<section class="section">

<h2>9. Ubicación de números en secuencias</h2>

<p>
Los números ocupan una posición dentro de una secuencia.
</p>

<div class="sequence">
<div class="number">\(6\)</div>
<span class="arrow">→</span>
<div class="number">\(7\)</div>
<span class="arrow">→</span>
<div class="number">\(8\)</div>
<span class="arrow">→</span>
<div class="number">\(9\)</div>
<span class="arrow">→</span>
<div class="number">\(10\)</div>
</div>

<div class="practice">

<p>
Completa:
</p>

<p>
\(11,\ 12,\ \_\_,\ 14,\ 15\)
</p>

<p>
El número faltante es \(13\).
</p>

</div>

</section>

<section class="challenge">

<h2>Practiquemos</h2>

<div class="question">
<p>¿Qué cantidad es mayor: \(4\) o \(7\)?</p>
<div class="answer">\(7\)</div>
</div>

<div class="question">
<p>¿Qué cantidad es menor: \(3\) o \(8\)?</p>
<div class="answer">\(3\)</div>
</div>

<div class="question">
<p>Completa: \(5\ \_\_\ 2\)</p>
<div class="answer">\(5>2\)</div>
</div>

<div class="question">
<p>Ordena de menor a mayor: \(5,\ 2,\ 4,\ 1,\ 3\).</p>
<div class="answer">\(1,\ 2,\ 3,\ 4,\ 5\)</div>
</div>

<div class="question">
<p>Completa: \(9,\ 10,\ \_\_,\ 12\)</p>
<div class="answer">\(11\)</div>
</div>

</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Podemos identificar cantidades mayores, menores e iguales.</li>
<li>Podemos comparar utilizando dibujos y objetos.</li>
<li>El orden ascendente va de menor a mayor.</li>
<li>El orden descendente va de mayor a menor.</li>
<li>\(>\) significa mayor que.</li>
<li>\(<\) significa menor que.</li>
<li>\(=\) significa igual a.</li>
<li>Los números tienen una posición dentro de las secuencias.</li>
</ul>
</section>

<div class="closing">
¡Excelente! Ya puedes comparar y ordenar números.
</div>

</main>
</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(374,13,664,'video','¿Dónde hay más, menos o igual?','<!-- etl-google-cloud-matematicas:media-plan:15 -->
<p>Video visual donde el alumno compara colecciones representadas con objetos y dibujos para identificar cuál tiene mayor cantidad, menor cantidad o la misma cantidad. La comparación se verifica mediante conteo. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(375,13,664,'video','Video-lección','<!-- etl-google-cloud-matematicas:media-plan:16 -->
<p>Vídeo animado expositivo que muestra el concepto de orden ascendente observando a un personaje subir escalones numerados del 1 al 10 y descendente con el conteo regresivo de un cohete al despegar. A continuación, se presentan ejemplos visuales de grupos de objetos reales (juguetes) y sus representaciones en dibujos para observar y comparar visualmente en qué grupo hay más, menos o igual cantidad de elementos. 4-7</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(376,13,664,'video','Video-lección','<!-- etl-google-cloud-matematicas:media-plan:17 -->
<p>Vídeo interactivo que introduce formalmente los signos mayor que (&gt;), menor que (&lt;) e igual a (=) mediante la dinámica del &quot;cocodrilo comelón&quot;. En la segunda parte, los alumnos ayudan a un personaje a cruzar un camino completando y ubicando los números faltantes en las casillas de secuencias numéricas tipo dora jaja. 8-9</p>',NULL,0,'generic','Básica',10,NULL,0,4,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(377,14,665,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:8:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Ari-P1-007 | Exploramos la recta numérica</title>

<style>
*{box-sizing:border-box}

body{
margin:0;
padding:25px 15px;
font-family:Arial,Helvetica,sans-serif;
background:#FFFBEA;
color:#37474F;
line-height:1.7;
}

.lesson{
max-width:1000px;
margin:auto;
background:#FFF;
border-radius:24px;
overflow:hidden;
box-shadow:0 8px 28px rgba(0,0,0,.08);
}

.header{
background:linear-gradient(135deg,#FFF1A8,#F6D76B);
padding:45px 35px;
text-align:center;
}

.code{
display:inline-block;
background:rgba(255,255,255,.65);
padding:7px 17px;
border-radius:30px;
color:#725A10;
font-weight:bold;
}

.header h1{
font-size:38px;
color:#5F4B0E;
margin:15px 0 10px;
}

.header p{
max-width:750px;
margin:auto;
color:#6B5819;
font-size:18px;
}

.content{padding:40px 45px}

.description{
background:#FFF8D6;
border-left:6px solid #F2C94C;
padding:23px;
border-radius:15px;
}

.objective{
background:#FFFDF0;
border:2px solid #F5DF8B;
padding:22px;
border-radius:16px;
margin:30px 0 40px;
}

.description h2,.objective h2{color:#806619;margin-top:0}

.section{margin:45px 0}

.section h2{
color:#7A6117;
font-size:27px;
border-bottom:3px solid #F8E49C;
padding-bottom:8px;
}

.example,.practice,.important{
padding:22px;
border-radius:16px;
margin:22px 0;
}

.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}

.line{
display:flex;
align-items:flex-end;
justify-content:center;
flex-wrap:nowrap;
overflow-x:auto;
padding:30px 10px 10px;
margin:20px 0;
}

.point{
min-width:65px;
text-align:center;
position:relative;
border-top:5px solid #C49B20;
padding-top:15px;
font-weight:bold;
font-size:19px;
color:#674F0D;
}

.point::before{
content:"";
width:4px;
height:15px;
background:#C49B20;
position:absolute;
top:-10px;
left:50%;
}

.jump{
text-align:center;
font-size:25px;
font-weight:bold;
color:#806619;
margin:20px 0;
}

.challenge{
background:#FFF7D1;
border:2px solid #EBCF68;
padding:28px;
border-radius:20px;
}

.question{
background:#FFF;
border:1px solid #EEDC9A;
border-radius:14px;
padding:20px;
margin:18px 0;
}

.answer{
background:#FFF4BD;
padding:10px 14px;
border-radius:10px;
font-weight:bold;
}

.summary{
background:#F2C94C;
color:#4D3E0D;
padding:30px;
border-radius:20px;
margin-top:45px;
}

.closing{
text-align:center;
font-size:21px;
font-weight:bold;
color:#806619;
margin:35px 0;
}

@media(max-width:750px){
.content{padding:28px 20px}
.header h1{font-size:31px}
.point{min-width:50px}
}
</style>
</head>

<body>

<div class="lesson">

<header class="header">
<div class="code">Ari-P1-007 · Primer grado de primaria</div>
<h1>Exploramos la recta numérica</h1>
<p>
Aprende a ubicar números y a desplazarte hacia adelante
y hacia atrás sobre una recta.
</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección conocerás la recta numérica y aprenderás
a utilizarla para ubicar números, avanzar, retroceder,
completar secuencias, sumar, restar y observar distancias sencillas.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás a utilizar la posición de los números en una recta
como una herramienta para comprender mejor cómo se relacionan.
</p>
</section>

<section class="section">

<h2>¿Qué es una recta numérica?</h2>

<p>
Una recta numérica es una línea donde colocamos los números
siguiendo su orden.
</p>

<div class="line">
<div class="point">\(0\)</div>
<div class="point">\(1\)</div>
<div class="point">\(2\)</div>
<div class="point">\(3\)</div>
<div class="point">\(4\)</div>
<div class="point">\(5\)</div>
<div class="point">\(6\)</div>
<div class="point">\(7\)</div>
<div class="point">\(8\)</div>
<div class="point">\(9\)</div>
<div class="point">\(10\)</div>
</div>

</section>

<section class="section">

<h2>1. Ubicación de números</h2>

<p>
Cada número ocupa un lugar específico en la recta.
</p>

<div class="example">
<p>
El número \(4\) se encuentra después del \(3\)
y antes del \(5\).
</p>
</div>

</section>

<section class="section">

<h2>2. Avanzar una posición</h2>

<p>
Cuando avanzamos una posición hacia la derecha llegamos
al número siguiente.
</p>

<div class="jump">
\(3\rightarrow4\)
</div>

<p>
Si estamos en \(3\) y avanzamos una posición, llegamos a \(4\).
</p>

<div class="practice">
<p>
Estás en \(7\). Avanza una posición.
</p>
<p>Resultado: \(8\).</p>
</div>

</section>

<section class="section">

<h2>3. Retroceder una posición</h2>

<p>
Retroceder significa movernos una posición hacia la izquierda.
</p>

<div class="jump">
\(6\rightarrow5\)
</div>

<p>
Si estamos en \(6\) y retrocedemos una posición,
llegamos a \(5\).
</p>

</section>

<section class="section">

<h2>4. Completar números faltantes</h2>

<p>
La recta numérica nos ayuda a descubrir qué números faltan.
</p>

<div class="example">
<p>
\(2,\ 3,\ \_\_,\ 5,\ 6\)
</p>
<p>
Entre \(3\) y \(5\) encontramos \(4\).
</p>
</div>

<div class="practice">
<p>
\(7,\ 8,\ \_\_,\ 10\)
</p>
<p>Respuesta: \(9\).</p>
</div>

</section>

<section class="section">

<h2>5. Sumar mediante saltos</h2>

<p>
También podemos utilizar la recta numérica para sumar.
Para hacerlo avanzamos hacia la derecha.
</p>

<div class="example">

<p>
Vamos a resolver:
</p>

<div class="jump">
\(3+2\)
</div>

<p>
Comenzamos en \(3\).
</p>

<p>
Primer salto: \(3\rightarrow4\)
</p>

<p>
Segundo salto: \(4\rightarrow5\)
</p>

<p>
Por lo tanto:
</p>

<div class="jump">
\(3+2=5\)
</div>

</div>

</section>

<section class="section">

<h2>6. Restar mediante retrocesos</h2>

<p>
Para representar una resta podemos comenzar en un número
y retroceder hacia la izquierda.
</p>

<div class="example">

<p>
Vamos a resolver:
</p>

<div class="jump">
\(6-2\)
</div>

<p>
Comenzamos en \(6\).
</p>

<p>
Primer retroceso: \(6\rightarrow5\)
</p>

<p>
Segundo retroceso: \(5\rightarrow4\)
</p>

<div class="jump">
\(6-2=4\)
</div>

</div>

</section>

<section class="section">

<h2>7. Distancia sencilla entre dos números</h2>

<p>
Podemos contar cuántos pasos existen entre dos números.
</p>

<div class="example">

<p>
¿Cuántos pasos hay de \(2\) a \(5\)?
</p>

<p>
\(2\rightarrow3\) = \(1\) paso
</p>

<p>
\(3\rightarrow4\) = \(2\) pasos
</p>

<p>
\(4\rightarrow5\) = \(3\) pasos
</p>

<p>
La distancia es de \(3\) pasos.
</p>

</div>

<div class="important">
<p>
Para encontrar una distancia sencilla podemos contar los saltos,
no solamente los números que observamos.
</p>
</div>

</section>

<section class="challenge">

<h2>Practiquemos</h2>

<div class="question">
<p>¿Qué número está después de \(5\)?</p>
<div class="answer">\(6\)</div>
</div>

<div class="question">
<p>Estás en \(8\) y retrocedes una posición.</p>
<div class="answer">Llegas a \(7\).</div>
</div>

<div class="question">
<p>Completa: \(3,\ 4,\ \_\_,\ 6\).</p>
<div class="answer">\(5\)</div>
</div>

<div class="question">
<p>Usa saltos: \(4+3\).</p>
<div class="answer">\(4\rightarrow5\rightarrow6\rightarrow7\), por lo tanto \(4+3=7\).</div>
</div>

<div class="question">
<p>Usa retrocesos: \(7-2\).</p>
<div class="answer">\(7\rightarrow6\rightarrow5\), por lo tanto \(7-2=5\).</div>
</div>

</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Los números aparecen ordenados en la recta numérica.</li>
<li>Avanzar una posición nos lleva al número siguiente.</li>
<li>Retroceder una posición nos lleva al número anterior.</li>
<li>La recta ayuda a completar números faltantes.</li>
<li>Podemos sumar avanzando mediante saltos.</li>
<li>Podemos representar restas mediante retrocesos.</li>
<li>Podemos contar los saltos para observar una distancia sencilla.</li>
</ul>
</section>

<div class="closing">
¡Muy bien! Ya sabes recorrer la recta numérica.
</div>

</main>
</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(378,14,665,'video','Uso y Movimientos en la Recta Numérica','<!-- etl-google-cloud-matematicas:media-plan:18 -->
<p>Vídeo expositivo que muestra cómo ubicar números del 1 al 10, avanzar o retroceder una posición y completar casillas faltantes en la recta numérica. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(379,14,665,'video','Suma, Resta y Distancias en la Recta Numérica','<!-- etl-google-cloud-matematicas:media-plan:19 -->
<p>Vídeo didáctico sobre cómo sumar dando saltos adelante, restar retrocediendo y medir la distancia sencilla entre dos números sobre la recta. 5-7</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(380,15,666,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:9:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Ari-P1-008 | Aprendemos qué significa sumar</title>

<style>
*{box-sizing:border-box}

body{
margin:0;
padding:25px 15px;
font-family:Arial,Helvetica,sans-serif;
background:#FFFBEA;
color:#37474F;
line-height:1.7;
}

.lesson{
max-width:1000px;
margin:auto;
background:#FFF;
border-radius:24px;
overflow:hidden;
box-shadow:0 8px 28px rgba(0,0,0,.08);
}

.header{
background:linear-gradient(135deg,#FFF1A8,#F6D76B);
padding:45px 35px;
text-align:center;
}

.code{
display:inline-block;
background:rgba(255,255,255,.65);
padding:7px 17px;
border-radius:30px;
color:#725A10;
font-weight:bold;
}

.header h1{
font-size:38px;
color:#5F4B0E;
margin:15px 0 10px;
}

.header p{
max-width:750px;
margin:auto;
color:#6B5819;
font-size:18px;
}

.content{padding:40px 45px}

.description{
background:#FFF8D6;
border-left:6px solid #F2C94C;
padding:23px 25px;
border-radius:15px;
}

.objective{
background:#FFFDF0;
border:2px solid #F5DF8B;
padding:22px 25px;
border-radius:16px;
margin:30px 0 40px;
}

.description h2,.objective h2{
color:#806619;
margin-top:0;
}

.section{margin:45px 0}

.section h2{
color:#7A6117;
font-size:27px;
border-bottom:3px solid #F8E49C;
padding-bottom:8px;
}

.example,.practice,.important{
padding:22px;
border-radius:16px;
margin:22px 0;
}

.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}

.objects{
display:flex;
flex-wrap:wrap;
gap:8px;
align-items:center;
margin:15px 0;
}

.object{
width:40px;
height:40px;
border-radius:50%;
background:#F2C94C;
border:2px solid #D6AD2F;
}

.object.alt{background:#FFE6A3}

.operation{
font-size:30px;
font-weight:bold;
text-align:center;
color:#725A10;
background:#FFF8D6;
padding:18px;
border-radius:15px;
margin:20px 0;
}

.parts{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:15px;
margin:25px 0;
}

.part{
background:#FFFDF5;
border:2px solid #EFD77E;
padding:20px;
border-radius:16px;
text-align:center;
}

.part strong{
font-size:25px;
color:#725A10;
}

.challenge{
background:#FFF7D1;
border:2px solid #EBCF68;
padding:28px;
border-radius:20px;
}

.question{
background:#FFF;
border:1px solid #EEDC9A;
border-radius:14px;
padding:20px;
margin:18px 0;
}

.answer{
background:#FFF4BD;
padding:10px 14px;
border-radius:10px;
font-weight:bold;
}

.summary{
background:#F2C94C;
color:#4D3E0D;
padding:30px;
border-radius:20px;
margin-top:45px;
}

.closing{
text-align:center;
font-size:21px;
font-weight:bold;
color:#806619;
margin:35px 0;
}

@media(max-width:750px){
.content{padding:28px 20px}
.header h1{font-size:31px}
.parts{grid-template-columns:1fr}
}
</style>
</head>

<body>

<div class="lesson">

<header class="header">
<div class="code">Ari-P1-008 · Primer grado de primaria</div>

<h1>Aprendemos qué significa sumar</h1>

<p>
Descubre cómo juntar y agregar cantidades para formar
una cantidad nueva.
</p>
</header>

<main class="content">

<section class="description">

<h2>Descripción del contenido</h2>

<p>
En esta lección aprenderás qué significa sumar mediante situaciones
donde juntamos, agregamos, aumentamos y combinamos cantidades.
También representarás sumas con objetos, dibujos y números.
</p>

</section>

<section class="objective">

<h2>¿Qué aprenderás?</h2>

<p>
Comprenderás el significado de la suma, conocerás los signos \(+\)
y \(=\), identificarás los sumandos y reconocerás el resultado
de una suma.
</p>

</section>

<section class="section">

<h2>¿Qué significa sumar?</h2>

<p>
Sumar significa formar una cantidad nueva al juntar
o agregar cantidades.
</p>

<div class="example">

<p>
Tenemos \(2\) objetos:
</p>

<div class="objects">
<div class="object"></div>
<div class="object"></div>
</div>

<p>
Agregamos \(1\):
</p>

<div class="objects">
<div class="object alt"></div>
</div>

<p>
Ahora tenemos \(3\) objetos.
</p>

<div class="operation">
\(2+1=3\)
</div>

</div>

</section>

<section class="section">

<h2>1. Juntar dos colecciones</h2>

<p>
Podemos sumar cuando juntamos dos grupos de objetos.
</p>

<div class="example">

<p>Primera colección: \(2\) objetos.</p>

<div class="objects">
<div class="object"></div>
<div class="object"></div>
</div>

<p>Segunda colección: \(3\) objetos.</p>

<div class="objects">
<div class="object alt"></div>
<div class="object alt"></div>
<div class="object alt"></div>
</div>

<p>Al juntarlas tenemos \(5\).</p>

<div class="operation">
\(2+3=5\)
</div>

</div>

</section>

<section class="section">

<h2>2. Agregar objetos</h2>

<p>
También sumamos cuando tenemos una cantidad y agregamos
más objetos.
</p>

<div class="example">
<p>
Tienes \(4\) fichas y agregas \(2\).
</p>

<div class="operation">
\(4+2=6\)
</div>
</div>

</section>

<section class="section">

<h2>3. Aumentar una cantidad</h2>

<p>
Cuando una cantidad aumenta significa que se hace mayor.
</p>

<div class="example">
<p>
Había \(3\) globos y llegaron \(2\) globos más.
</p>

<div class="operation">
\(3+2=5\)
</div>

<p>
La cantidad aumentó de \(3\) a \(5\).
</p>
</div>

</section>

<section class="section">

<h2>4. Combinar cantidades</h2>

<p>
Podemos combinar cantidades aunque los objetos sean diferentes.
</p>

<div class="example">
<p>
Hay \(2\) manzanas y \(3\) peras.
</p>

<p>
En total tenemos:
</p>

<div class="operation">
\(2+3=5\)
</div>

<p>
Hay \(5\) frutas.
</p>
</div>

</section>

<section class="section">

<h2>5. Representar sumas con objetos</h2>

<p>
Los objetos nos permiten observar lo que ocurre en una suma.
</p>

<div class="example">

<div class="objects">
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
</div>

<p>más</p>

<div class="objects">
<div class="object alt"></div>
<div class="object alt"></div>
</div>

<p>
Al contar todos obtenemos:
</p>

<div class="operation">
\(3+2=5\)
</div>

</div>

</section>

<section class="section">

<h2>6. Representar sumas con dibujos</h2>

<p>
También podemos utilizar dibujos.
</p>

<div class="example">

<p>
★★ + ★★★
</p>

<p>
Contamos todas las estrellas:
</p>

<p>
★★★★★
</p>

<div class="operation">
\(2+3=5\)
</div>

</div>

</section>

<section class="section">

<h2>7. Representar sumas con números</h2>

<p>
Después de comprender la suma con objetos y dibujos,
podemos representarla solamente con números.
</p>

<div class="operation">
\(4+3=7\)
</div>

<p>
La expresión nos dice que juntamos una cantidad de \(4\)
con una cantidad de \(3\) y obtenemos \(7\).
</p>

</section>

<section class="section">

<h2>8. El signo de suma</h2>

<p>
El símbolo \(+\) se llama <strong>signo de suma</strong>.
</p>

<div class="important">
<p>
Cuando encontramos \(+\), significa que debemos juntar
o agregar cantidades.
</p>
</div>

<div class="operation">
\(2+4\)
</div>

</section>

<section class="section">

<h2>9. El signo igual</h2>

<p>
El signo \(=\) indica que lo que está de un lado
tiene el mismo valor que lo que aparece del otro.
</p>

<div class="operation">
\(2+3=5\)
</div>

<p>
La suma \(2+3\) tiene el mismo valor que \(5\).
</p>

</section>

<section class="section">

<h2>10. Sumandos</h2>

<p>
Los números que estamos juntando en una suma reciben
el nombre de <strong>sumandos</strong>.
</p>

<div class="operation">
\(3+2=5\)
</div>

<div class="parts">

<div class="part">
<strong>\(3\)</strong>
<p>Primer sumando</p>
</div>

<div class="part">
<strong>\(2\)</strong>
<p>Segundo sumando</p>
</div>

<div class="part">
<strong>\(5\)</strong>
<p>Resultado</p>
</div>

</div>

</section>

<section class="section">

<h2>11. Resultado de una suma</h2>

<p>
El número que obtenemos después de realizar una suma
es el <strong>resultado</strong>.
</p>

<div class="example">

<div class="operation">
\(4+2=6\)
</div>

<p>
Los sumandos son \(4\) y \(2\).
</p>

<p>
El resultado es \(6\).
</p>

</div>

<div class="important">

<strong>Una suma tiene:</strong>

<ul>
<li>Las cantidades que vamos a juntar: los sumandos.</li>
<li>El signo \(+\).</li>
<li>El signo \(=\).</li>
<li>La cantidad final: el resultado.</li>
</ul>

</div>

</section>

<section class="challenge">

<h2>Practiquemos lo aprendido</h2>

<div class="question">
<p>Tienes \(2\) lápices y recibes \(3\) más. ¿Cuántos tienes?</p>
<div class="answer">\(2+3=5\)</div>
</div>

<div class="question">
<p>Completa: \(4+1=\_\_\)</p>
<div class="answer">\(5\)</div>
</div>

<div class="question">
<p>En \(3+2=5\), ¿cuáles son los sumandos?</p>
<div class="answer">\(3\) y \(2\)</div>
</div>

<div class="question">
<p>En \(6+2=8\), ¿cuál es el resultado?</p>
<div class="answer">\(8\)</div>
</div>

<div class="question">
<p>¿Qué significa el signo \(+\)?</p>
<div class="answer">Indica que vamos a sumar, juntar o agregar cantidades.</div>
</div>

</section>

<section class="summary">

<h2>Recuerda</h2>

<ul>
<li>Sumar puede significar juntar dos colecciones.</li>
<li>También podemos agregar objetos o aumentar una cantidad.</li>
<li>Podemos combinar cantidades diferentes.</li>
<li>Las sumas pueden representarse con objetos, dibujos y números.</li>
<li>El símbolo \(+\) es el signo de suma.</li>
<li>El símbolo \(=\) indica igualdad.</li>
<li>Los números que se juntan se llaman sumandos.</li>
<li>La cantidad que obtenemos es el resultado de la suma.</li>
</ul>

</section>

<div class="closing">
¡Excelente! Ya conoces el significado de sumar.
</div>

</main>
</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(381,15,666,'video','Significado de Sumar: Objetos y Dibujos','<!-- etl-google-cloud-matematicas:media-plan:20 -->
<p>Vídeo expositivo que muestra cómo juntar, agregar, aumentar y combinar colecciones visuales mediante el uso de objetos reales y dibujos. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(382,15,666,'video','Elementos y Símbolos de la Suma','<!-- etl-google-cloud-matematicas:media-plan:21 -->
<p>Vídeo didáctico que explica la representación numérica de la suma, identificando los signos (+ y =), los sumandos y el resultado final. 7-11</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(383,16,667,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:10:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ari-P1-009 | Practicamos sumas básicas</title>

<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,Helvetica,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px 35px;text-align:center}
.code{display:inline-block;background:rgba(255,255,255,.65);padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E;margin:15px 0 10px}
.header p{max-width:750px;margin:auto;color:#6B5819;font-size:18px}
.content{padding:40px 45px}
.description{background:#FFF8D6;border-left:6px solid #F2C94C;padding:23px 25px;border-radius:15px}
.objective{background:#FFFDF0;border:2px solid #F5DF8B;padding:22px 25px;border-radius:16px;margin:30px 0 40px}
.description h2,.objective h2{color:#806619;margin-top:0}
.section{margin:45px 0}
.section h2{color:#7A6117;font-size:27px;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.operation{font-size:29px;font-weight:bold;text-align:center;color:#725A10;background:#FFF8D6;padding:17px;border-radius:15px;margin:18px 0}
.cards{display:grid;grid-template-columns:repeat(3,1fr);gap:15px;margin:22px 0}
.card{background:#FFFDF5;border:2px solid #EFD77E;border-radius:15px;padding:18px;text-align:center}
.card strong{font-size:23px;color:#725A10}
.challenge{background:#FFF7D1;border:2px solid #EBCF68;padding:28px;border-radius:20px}
.question{background:#FFF;border:1px solid #EEDC9A;border-radius:14px;padding:20px;margin:18px 0}
.answer{background:#FFF4BD;padding:10px 14px;border-radius:10px;font-weight:bold}
.summary{background:#F2C94C;color:#4D3E0D;padding:30px;border-radius:20px;margin-top:45px}
.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px 0}
@media(max-width:750px){.content{padding:28px 20px}.header h1{font-size:31px}.cards{grid-template-columns:1fr}}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Ari-P1-009 · Primer grado de primaria</div>
<h1>Practicamos sumas básicas</h1>
<p>Aprende a resolver sumas sencillas y descubre estrategias para encontrar resultados cada vez más rápido.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección resolverás sumas hasta \(5\), \(10\) y \(20\).
También practicarás sumas con \(0\) y \(1\), dobles, combinaciones,
descomposición de números y cálculo mental básico.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás a reconocer y resolver diferentes tipos de sumas sencillas,
utilizando números que ya conoces.
</p>
</section>

<section class="section">
<h2>1. Sumas hasta \(5\)</h2>

<p>Comenzamos con sumas cuyo resultado no es mayor que \(5\).</p>

<div class="example">
<div class="operation">\(1+1=2\)</div>
<div class="operation">\(2+1=3\)</div>
<div class="operation">\(2+2=4\)</div>
<div class="operation">\(3+2=5\)</div>
</div>

<div class="practice">
<p>Completa:</p>
<div class="operation">\(4+1=\_\_\)</div>
<p>Respuesta: \(5\).</p>
</div>
</section>

<section class="section">
<h2>2. Sumas hasta \(10\)</h2>

<p>Ahora podemos trabajar con cantidades un poco mayores.</p>

<div class="example">
<div class="operation">\(4+3=7\)</div>
<div class="operation">\(5+3=8\)</div>
<div class="operation">\(6+4=10\)</div>
</div>

<div class="practice">
<p>\(5+4=\_\_\)</p>
<p>Respuesta: \(9\).</p>
</div>
</section>

<section class="section">
<h2>3. Sumas hasta \(20\)</h2>

<p>
Cuando dominamos las sumas pequeñas podemos avanzar hacia resultados
de hasta \(20\).
</p>

<div class="example">
<div class="operation">\(10+3=13\)</div>
<div class="operation">\(8+7=15\)</div>
<div class="operation">\(10+10=20\)</div>
</div>

<div class="practice">
<p>\(12+4=\_\_\)</p>
<p>Respuesta: \(16\).</p>
</div>
</section>

<section class="section">
<h2>4. Sumar cero</h2>

<p>
Cuando sumamos \(0\), la cantidad no cambia.
</p>

<div class="operation">\(5+0=5\)</div>
<div class="operation">\(0+7=7\)</div>

<div class="important">
<p>Sumar \(0\) significa que no agregamos ningún elemento.</p>
</div>
</section>

<section class="section">
<h2>5. Sumar uno</h2>

<p>
Cuando sumamos \(1\), avanzamos al número siguiente.
</p>

<div class="example">
<div class="operation">\(4+1=5\)</div>
<div class="operation">\(7+1=8\)</div>
<div class="operation">\(9+1=10\)</div>
</div>
</section>

<section class="section">
<h2>6. Dobles sencillos</h2>

<p>
Un doble aparece cuando sumamos una cantidad consigo misma.
</p>

<div class="cards">
<div class="card"><strong>\(1+1=2\)</strong><p>Doble de \(1\)</p></div>
<div class="card"><strong>\(2+2=4\)</strong><p>Doble de \(2\)</p></div>
<div class="card"><strong>\(3+3=6\)</strong><p>Doble de \(3\)</p></div>
<div class="card"><strong>\(4+4=8\)</strong><p>Doble de \(4\)</p></div>
<div class="card"><strong>\(5+5=10\)</strong><p>Doble de \(5\)</p></div>
</div>
</section>

<section class="section">
<h2>7. Combinaciones que forman \(5\)</h2>

<p>Existen diferentes maneras de formar \(5\).</p>

<div class="example">
<div class="operation">\(0+5=5\)</div>
<div class="operation">\(1+4=5\)</div>
<div class="operation">\(2+3=5\)</div>
<div class="operation">\(3+2=5\)</div>
<div class="operation">\(4+1=5\)</div>
</div>
</section>

<section class="section">
<h2>8. Combinaciones que forman \(10\)</h2>

<p>También podemos buscar parejas de números que formen \(10\).</p>

<div class="example">
<div class="operation">\(1+9=10\)</div>
<div class="operation">\(2+8=10\)</div>
<div class="operation">\(3+7=10\)</div>
<div class="operation">\(4+6=10\)</div>
<div class="operation">\(5+5=10\)</div>
</div>
</section>

<section class="section">
<h2>9. Descomposición de números</h2>

<p>
Descomponer significa separar un número en cantidades más pequeñas.
</p>

<div class="example">
<p>El número \(8\) puede separarse de distintas maneras:</p>
<div class="operation">\(8=5+3\)</div>
<div class="operation">\(8=4+4\)</div>
<div class="operation">\(8=6+2\)</div>
</div>

<div class="important">
<p>
Un mismo número puede formarse utilizando diferentes combinaciones.
</p>
</div>
</section>

<section class="section">
<h2>10. Cálculo mental básico</h2>

<p>
El cálculo mental consiste en encontrar resultados sencillos sin
necesidad de escribir todos los pasos.
</p>

<div class="example">
<p>Si ya sabes que \(5+5=10\), puedes recordar ese resultado rápidamente.</p>
<p>Si tienes \(7\) y agregas \(1\), sabes que llegas a \(8\).</p>
</div>

<div class="practice">
<p>Intenta responder mentalmente:</p>
<p>\(2+2=\ ?\)</p>
<p>\(5+1=\ ?\)</p>
<p>\(5+5=\ ?\)</p>
<p>Resultados: \(4,\ 6,\ 10\).</p>
</div>
</section>

<section class="challenge">
<h2>Practiquemos</h2>

<div class="question">
<p>\(3+2=\ ?\)</p>
<div class="answer">\(5\)</div>
</div>

<div class="question">
<p>\(6+4=\ ?\)</p>
<div class="answer">\(10\)</div>
</div>

<div class="question">
<p>\(8+0=\ ?\)</p>
<div class="answer">\(8\)</div>
</div>

<div class="question">
<p>¿Cuál es el doble de \(4\)?</p>
<div class="answer">\(4+4=8\)</div>
</div>

<div class="question">
<p>Completa para formar \(10\): \(7+\_\_=10\)</p>
<div class="answer">\(3\)</div>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Podemos resolver sumas hasta \(5\), \(10\) y \(20\).</li>
<li>Sumar \(0\) no cambia la cantidad.</li>
<li>Sumar \(1\) nos lleva al siguiente número.</li>
<li>Los dobles suman una cantidad consigo misma.</li>
<li>Hay distintas combinaciones que forman \(5\) y \(10\).</li>
<li>Los números pueden descomponerse de diferentes maneras.</li>
<li>Las sumas conocidas ayudan al cálculo mental.</li>
</ul>
</section>

<div class="closing">¡Muy bien! Cada vez puedes resolver más sumas.</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(384,16,667,'video','Sumas por Rangos Numéricos','<!-- etl-google-cloud-matematicas:media-plan:22 -->
<p>Vídeo expositivo que muestra la resolución de sumas de forma progresiva con cantidades hasta 5, hasta 10 y hasta 20. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(385,16,667,'video','Casos Especiales de Suma y Dobles','<!-- etl-google-cloud-matematicas:media-plan:23 -->
<p>Vídeo didáctico que explica la propiedad de sumar cero, sumar uno a un número e introduce el concepto de dobles sencillos. 4-6</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(386,16,667,'video','Combinaciones, Descomposición y Cálculo Mental','<!-- etl-google-cloud-matematicas:media-plan:24 -->
<p>Vídeo explicativo sobre cómo combinar y descomponer números para formar 5 y 10, aplicando estas estrategias al cálculo mental básico. 7-10</p>',NULL,0,'generic','Básica',10,NULL,0,4,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(387,17,668,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:11:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ari-P1-010 | Estrategias para sumar</title>

<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,Helvetica,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px 35px;text-align:center}
.code{display:inline-block;background:rgba(255,255,255,.65);padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E;margin:15px 0 10px}
.header p{max-width:750px;margin:auto;color:#6B5819;font-size:18px}
.content{padding:40px 45px}
.description{background:#FFF8D6;border-left:6px solid #F2C94C;padding:23px 25px;border-radius:15px}
.objective{background:#FFFDF0;border:2px solid #F5DF8B;padding:22px 25px;border-radius:16px;margin:30px 0 40px}
.description h2,.objective h2{color:#806619;margin-top:0}
.section{margin:45px 0}
.section h2{color:#7A6117;font-size:27px;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.operation{text-align:center;background:#FFF8D6;padding:17px;border-radius:15px;color:#725A10;font-size:28px;font-weight:bold;margin:18px 0}
.objects{display:flex;gap:8px;flex-wrap:wrap;margin:15px 0}
.object{width:38px;height:38px;border-radius:50%;background:#F2C94C;border:2px solid #D6AD2F}
.challenge{background:#FFF7D1;border:2px solid #EBCF68;padding:28px;border-radius:20px}
.question{background:#FFF;border:1px solid #EEDC9A;border-radius:14px;padding:20px;margin:18px 0}
.answer{background:#FFF4BD;padding:10px 14px;border-radius:10px;font-weight:bold}
.summary{background:#F2C94C;color:#4D3E0D;padding:30px;border-radius:20px;margin-top:45px}
.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px 0}
@media(max-width:750px){.content{padding:28px 20px}.header h1{font-size:31px}}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Ari-P1-010 · Primer grado de primaria</div>
<h1>Estrategias para sumar</h1>
<p>Descubre diferentes caminos para encontrar el resultado de una suma.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección aprenderás diferentes estrategias para resolver sumas.
Podrás elegir la que te resulte más sencilla según los números que aparezcan.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás a sumar contando hacia adelante, usando dedos o fichas,
completando a \(10\), utilizando dobles y separando cantidades.
</p>
</section>

<section class="section">
<h2>1. Contar hacia adelante</h2>

<p>
Podemos comenzar desde uno de los números de la suma y continuar contando.
</p>

<div class="example">
<p>Resolvamos \(5+3\).</p>
<p>Comenzamos en \(5\) y contamos tres números más:</p>
<div class="operation">\(6,\ 7,\ 8\)</div>
<div class="operation">\(5+3=8\)</div>
</div>
</section>

<section class="section">
<h2>2. Usar los dedos</h2>

<p>
Los dedos pueden ayudarnos a representar cantidades pequeñas.
</p>

<div class="example">
<p>Para resolver \(4+2\):</p>
<p>Piensa en \(4\) y levanta \(2\) dedos adicionales.</p>
<p>Cuenta hacia adelante: \(5,\ 6\).</p>
<div class="operation">\(4+2=6\)</div>
</div>
</section>

<section class="section">
<h2>3. Usar fichas</h2>

<p>
Las fichas permiten ver las cantidades que estamos juntando.
</p>

<div class="example">
<p>Representamos \(3+2\).</p>

<div class="objects">
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
</div>

<p>Agregamos:</p>

<div class="objects">
<div class="object"></div>
<div class="object"></div>
</div>

<p>Contamos todas las fichas.</p>
<div class="operation">\(3+2=5\)</div>
</div>
</section>

<section class="section">
<h2>4. Completar a \(10\)</h2>

<p>
Algunas sumas se vuelven más sencillas cuando primero formamos \(10\).
</p>

<div class="example">
<p>Tenemos:</p>
<div class="operation">\(8+5\)</div>

<p>A \(8\) le faltan \(2\) para llegar a \(10\).</p>
<p>Podemos separar \(5\) en \(2+3\).</p>

<div class="operation">\(8+2=10\)</div>
<div class="operation">\(10+3=13\)</div>

<p>Entonces:</p>
<div class="operation">\(8+5=13\)</div>
</div>

<div class="important">
<p>
Esta estrategia es una introducción visual. En primero de primaria
puede trabajarse con fichas o bloques para observar el proceso.
</p>
</div>
</section>

<section class="section">
<h2>5. Utilizar dobles</h2>

<p>
Si conocemos los dobles, algunas sumas pueden resolverse con rapidez.
</p>

<div class="example">
<div class="operation">\(4+4=8\)</div>
<div class="operation">\(5+5=10\)</div>

<p>
Si recuerdas estos resultados, no necesitas volver a contar
todos los elementos.
</p>
</div>
</section>

<section class="section">
<h2>6. Cambiar el orden de los sumandos</h2>

<p>
Podemos cambiar el orden de dos cantidades y obtener el mismo resultado.
</p>

<div class="example">
<div class="operation">\(2+5=7\)</div>
<div class="operation">\(5+2=7\)</div>
</div>

<p>
En ambos casos el resultado es \(7\).
</p>

<div class="important">
<p>
A veces resulta más fácil comenzar con la cantidad mayor y contar
hacia adelante la cantidad menor.
</p>
</div>
</section>

<section class="section">
<h2>7. Separar una cantidad para facilitar el cálculo</h2>

<p>
Podemos dividir una cantidad en partes más pequeñas.
</p>

<div class="example">
<p>Resolvamos:</p>
<div class="operation">\(6+4\)</div>

<p>Podemos separar \(4\) en \(2+2\).</p>

<div class="operation">\(6+2=8\)</div>
<div class="operation">\(8+2=10\)</div>

<p>Entonces:</p>
<div class="operation">\(6+4=10\)</div>
</div>
</section>

<section class="challenge">
<h2>Practiquemos</h2>

<div class="question">
<p>Cuenta hacia adelante para resolver \(4+3\).</p>
<div class="answer">\(5,\ 6,\ 7\). Resultado: \(7\).</div>
</div>

<div class="question">
<p>¿Cuál es el doble de \(3\)?</p>
<div class="answer">\(3+3=6\)</div>
</div>

<div class="question">
<p>¿Tienen el mismo resultado \(2+6\) y \(6+2\)?</p>
<div class="answer">Sí. Ambos dan \(8\).</div>
</div>

<div class="question">
<p>Completa \(7+\_\_=10\).</p>
<div class="answer">\(3\)</div>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Puedes contar hacia adelante.</li>
<li>Los dedos pueden ayudarte con cantidades pequeñas.</li>
<li>Las fichas permiten representar las sumas.</li>
<li>Puedes formar \(10\) para facilitar algunas sumas.</li>
<li>Los dobles son resultados útiles para recordar.</li>
<li>Cambiar el orden de los sumandos no cambia el resultado.</li>
<li>Separar cantidades puede hacer una suma más sencilla.</li>
</ul>
</section>

<div class="closing">¡Excelente! Ahora tienes diferentes estrategias para sumar.</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(388,17,668,'video','Estrategias de Conteo Físico y Materiales','<!-- etl-google-cloud-matematicas:media-plan:25 -->
<p>Vídeo expositivo que muestra cómo sumar contando hacia adelante, utilizando el conteo con los dedos de la mano y apoyándose del uso de fichas o contadores visuales. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(389,17,668,'video','Estrategias de Cálculo Mental para Sumar','<!-- etl-google-cloud-matematicas:media-plan:26 -->
<p>Vídeo didáctico que enseña técnicas para sumar completando a 10, aprovechando los dobles, cambiando el orden de los sumandos y descomponiendo una cantidad para facilitar el cálculo. 4-7</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(390,18,669,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:12:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ari-P1-011 | Resolvemos problemas de suma</title>

<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,Helvetica,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px 35px;text-align:center}
.code{display:inline-block;background:rgba(255,255,255,.65);padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E;margin:15px 0 10px}
.header p{max-width:750px;margin:auto;color:#6B5819;font-size:18px}
.content{padding:40px 45px}
.description{background:#FFF8D6;border-left:6px solid #F2C94C;padding:23px 25px;border-radius:15px}
.objective{background:#FFFDF0;border:2px solid #F5DF8B;padding:22px 25px;border-radius:16px;margin:30px 0 40px}
.description h2,.objective h2{color:#806619;margin-top:0}
.section{margin:45px 0}
.section h2{color:#7A6117;font-size:27px;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.problem,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.problem{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.operation{text-align:center;background:#FFF8D6;padding:17px;border-radius:15px;color:#725A10;font-size:28px;font-weight:bold;margin:18px 0}
.steps li{margin-bottom:9px}
.challenge{background:#FFF7D1;border:2px solid #EBCF68;padding:28px;border-radius:20px}
.question{background:#FFF;border:1px solid #EEDC9A;border-radius:14px;padding:20px;margin:18px 0}
.answer{background:#FFF4BD;padding:10px 14px;border-radius:10px;font-weight:bold}
.summary{background:#F2C94C;color:#4D3E0D;padding:30px;border-radius:20px;margin-top:45px}
.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px 0}
@media(max-width:750px){.content{padding:28px 20px}.header h1{font-size:31px}}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Ari-P1-011 · Primer grado de primaria</div>
<h1>Resolvemos problemas de suma</h1>
<p>Utiliza la suma para resolver situaciones que pueden ocurrir todos los días.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección utilizarás la suma para resolver problemas de juntar,
agregar, aumentar y completar. También trabajarás con dibujos,
monedas y situaciones cotidianas.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás a identificar cuándo una situación puede resolverse
mediante una suma y a representar el problema con números.
</p>
</section>

<section class="section">
<h2>¿Cómo resolvemos un problema de suma?</h2>

<div class="important">
<ol class="steps">
<li>Lee u observa la situación.</li>
<li>Identifica las cantidades.</li>
<li>Piensa qué está ocurriendo.</li>
<li>Representa la situación con una suma.</li>
<li>Encuentra el resultado.</li>
<li>Comprueba que la respuesta tenga sentido.</li>
</ol>
</div>
</section>

<section class="section">
<h2>1. Problemas de juntar</h2>

<div class="problem">
<p>
Ana tiene \(3\) lápices y Luis tiene \(2\) lápices.
¿Cuántos lápices tienen entre los dos?
</p>

<p>Juntamos las cantidades:</p>
<div class="operation">\(3+2=5\)</div>

<p>Respuesta: tienen \(5\) lápices.</p>
</div>
</section>

<section class="section">
<h2>2. Problemas de agregar</h2>

<div class="problem">
<p>
Había \(4\) pelotas en una caja. Colocaron \(3\) pelotas más.
¿Cuántas hay ahora?
</p>

<div class="operation">\(4+3=7\)</div>

<p>Respuesta: ahora hay \(7\) pelotas.</p>
</div>
</section>

<section class="section">
<h2>3. Problemas de aumentar</h2>

<div class="problem">
<p>
Una colección tenía \(5\) estampas. Después aumentó en \(2\) estampas.
¿Cuántas tiene ahora?
</p>

<div class="operation">\(5+2=7\)</div>

<p>La cantidad aumentó hasta \(7\).</p>
</div>
</section>

<section class="section">
<h2>4. Problemas de completar</h2>

<p>
En algunos problemas conocemos la cantidad final y debemos descubrir
cuánto falta para llegar a ella.
</p>

<div class="problem">
<p>
Sofía tiene \(6\) fichas y quiere tener \(10\).
¿Cuántas fichas necesita agregar?
</p>

<p>Buscamos:</p>
<div class="operation">\(6+\square=10\)</div>

<p>Probamos con \(4\):</p>
<div class="operation">\(6+4=10\)</div>

<p>Respuesta: necesita \(4\) fichas.</p>
</div>
</section>

<section class="section">
<h2>5. Problemas con dibujos</h2>

<div class="problem">
<p>Observa:</p>

<p>🍎 🍎 🍎</p>
<p>más</p>
<p>🍎 🍎</p>

<p>Contamos todos los dibujos:</p>

<div class="operation">\(3+2=5\)</div>

<p>Hay \(5\) manzanas.</p>
</div>
</section>

<section class="section">
<h2>6. Problemas con monedas</h2>

<p>
También podemos utilizar sumas sencillas para juntar valores de monedas.
</p>

<div class="problem">
<p>
Tienes una moneda de \(5\) pesos y otra de \(2\) pesos.
¿Cuánto dinero tienes?
</p>

<div class="operation">\(5+2=7\)</div>

<p>Respuesta: tienes \(7\) pesos.</p>
</div>

<div class="practice">
<p>
Tienes \(2\) pesos y recibes \(3\) pesos más.
</p>
<div class="operation">\(2+3=5\)</div>
<p>Ahora tienes \(5\) pesos.</p>
</div>
</section>

<section class="section">
<h2>7. Problemas con cantidades cotidianas</h2>

<div class="problem">
<p>
En una mesa hay \(4\) vasos. Colocamos \(2\) vasos más.
¿Cuántos vasos hay?
</p>

<div class="operation">\(4+2=6\)</div>

<p>Respuesta: hay \(6\) vasos.</p>
</div>

<div class="problem">
<p>
En el patio juegan \(5\) niños y llegan \(3\) más.
¿Cuántos niños están jugando ahora?
</p>

<div class="operation">\(5+3=8\)</div>

<p>Respuesta: hay \(8\) niños.</p>
</div>
</section>

<section class="challenge">
<h2>Practiquemos</h2>

<div class="question">
<p>Mario tiene \(3\) canicas y recibe \(4\) más. ¿Cuántas tiene?</p>
<div class="answer">\(3+4=7\). Tiene \(7\) canicas.</div>
</div>

<div class="question">
<p>Hay \(6\) pájaros y llegan \(2\) más.</p>
<div class="answer">\(6+2=8\). Hay \(8\) pájaros.</div>
</div>

<div class="question">
<p>Tienes \(7\) fichas. ¿Cuántas necesitas agregar para llegar a \(10\)?</p>
<div class="answer">\(7+3=10\). Necesitas \(3\).</div>
</div>

<div class="question">
<p>Tienes \(5\) pesos y recibes \(4\) pesos.</p>
<div class="answer">\(5+4=9\). Tienes \(9\) pesos.</div>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Algunos problemas de suma consisten en juntar cantidades.</li>
<li>Otros implican agregar o aumentar.</li>
<li>También podemos buscar cuánto falta para completar una cantidad.</li>
<li>Los dibujos pueden ayudarnos a comprender un problema.</li>
<li>Podemos resolver situaciones sencillas con monedas.</li>
<li>La suma aparece en muchas situaciones cotidianas.</li>
</ul>
</section>

<div class="closing">¡Excelente! Ya puedes utilizar la suma para resolver problemas.</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(391,18,669,'video','Tipos de Problemas de Suma','<!-- etl-google-cloud-matematicas:media-plan:27 -->
<p>Vídeo expositivo que muestra cómo identificar y resolver situaciones de juntar, agregar, aumentar y completar cantidades. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(392,18,669,'video','Problemas Visuales, Dinero y Vida Cotidiana','<!-- etl-google-cloud-matematicas:media-plan:28 -->
<p>Vídeo didáctico que explica la resolución de problemas de suma apoyándose en dibujos, el uso de monedas y situaciones del día a día. 5-7</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(393,19,670,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:13:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ari-P1-012 | Aprendemos qué significa restar</title>

<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,Helvetica,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px 35px;text-align:center}
.code{display:inline-block;background:rgba(255,255,255,.65);padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E;margin:15px 0 10px}
.header p{max-width:750px;margin:auto;color:#6B5819;font-size:18px}
.content{padding:40px 45px}
.description{background:#FFF8D6;border-left:6px solid #F2C94C;padding:23px 25px;border-radius:15px}
.objective{background:#FFFDF0;border:2px solid #F5DF8B;padding:22px 25px;border-radius:16px;margin:30px 0 40px}
.description h2,.objective h2{color:#806619;margin-top:0}
.section{margin:45px 0}
.section h2{color:#7A6117;font-size:27px;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.operation{text-align:center;background:#FFF8D6;padding:17px;border-radius:15px;color:#725A10;font-size:29px;font-weight:bold;margin:18px 0}
.objects{display:flex;gap:8px;flex-wrap:wrap;margin:15px 0}
.object{width:40px;height:40px;border-radius:50%;background:#F2C94C;border:2px solid #D6AD2F}
.object.removed{opacity:.25;text-decoration:line-through}
.compare{display:grid;grid-template-columns:1fr 1fr;gap:18px}
.group{background:#FFFDF5;border:2px solid #EFD77E;border-radius:15px;padding:18px;text-align:center}
.challenge{background:#FFF7D1;border:2px solid #EBCF68;padding:28px;border-radius:20px}
.question{background:#FFF;border:1px solid #EEDC9A;border-radius:14px;padding:20px;margin:18px 0}
.answer{background:#FFF4BD;padding:10px 14px;border-radius:10px;font-weight:bold}
.summary{background:#F2C94C;color:#4D3E0D;padding:30px;border-radius:20px;margin-top:45px}
.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px 0}
@media(max-width:750px){.content{padding:28px 20px}.header h1{font-size:31px}.compare{grid-template-columns:1fr}}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Ari-P1-012 · Primer grado de primaria</div>
<h1>Aprendemos qué significa restar</h1>
<p>Descubre qué ocurre cuando quitamos, separamos o disminuimos una cantidad.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección aprenderás qué significa restar mediante situaciones
en las que quitamos, separamos o disminuimos cantidades.
También aprenderás a comparar colecciones y encontrar diferencias.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Comprenderás el significado de la resta, podrás representarla con objetos,
dibujos y números, y conocerás el signo \(-\) y el resultado o diferencia.
</p>
</section>

<section class="section">
<h2>¿Qué significa restar?</h2>

<p>
Restar nos ayuda a saber qué sucede cuando una cantidad disminuye.
</p>

<div class="example">
<p>Tenemos \(5\) objetos y quitamos \(2\).</p>
<div class="operation">\(5-2=3\)</div>
<p>Quedan \(3\) objetos.</p>
</div>
</section>

<section class="section">
<h2>1. Quitar objetos</h2>

<div class="example">
<p>Tenemos \(5\) fichas:</p>

<div class="objects">
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
</div>

<p>Quitamos \(2\).</p>

<div class="operation">\(5-2=3\)</div>

<p>Quedan \(3\).</p>
</div>
</section>

<section class="section">
<h2>2. Separar elementos</h2>

<p>
También podemos separar algunos objetos de un grupo.
</p>

<div class="example">
<p>Tenemos \(6\) bloques y separamos \(2\).</p>
<div class="operation">\(6-2=4\)</div>
<p>En el grupo original quedan \(4\).</p>
</div>
</section>

<section class="section">
<h2>3. Disminuir una cantidad</h2>

<p>
Disminuir significa hacer que una cantidad sea menor.
</p>

<div class="example">
<p>Había \(8\) globos y se fueron \(3\).</p>
<div class="operation">\(8-3=5\)</div>
<p>La cantidad disminuyó de \(8\) a \(5\).</p>
</div>
</section>

<section class="section">
<h2>4. Encontrar cuántos quedan</h2>

<div class="example">
<p>
Había \(7\) galletas. Se comieron \(2\).
¿Cuántas quedan?
</p>

<div class="operation">\(7-2=5\)</div>

<p>Quedan \(5\) galletas.</p>
</div>
</section>

<section class="section">
<h2>5. Comparar dos colecciones</h2>

<p>
La resta también puede ayudarnos a comparar dos cantidades.
</p>

<div class="compare">

<div class="group">
<strong>Colección A</strong>
<p>\(7\) objetos</p>
</div>

<div class="group">
<strong>Colección B</strong>
<p>\(4\) objetos</p>
</div>

</div>

<p>
La colección A tiene más elementos que la colección B.
Podemos utilizar una resta para saber cuántos más.
</p>

<div class="operation">\(7-4=3\)</div>
</section>

<section class="section">
<h2>6. Encontrar la diferencia</h2>

<p>
La <strong>diferencia</strong> nos indica cuánto separa a una cantidad de otra.
</p>

<div class="example">
<p>Comparamos \(9\) y \(6\).</p>
<div class="operation">\(9-6=3\)</div>
<p>La diferencia es \(3\).</p>
</div>
</section>

<section class="section">
<h2>7. Representar restas con objetos</h2>

<div class="example">
<p>Tenemos \(5\) objetos:</p>

<div class="objects">
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
<div class="object"></div>
</div>

<p>Quitamos \(2\) y contamos los restantes.</p>

<div class="operation">\(5-2=3\)</div>
</div>
</section>

<section class="section">
<h2>8. Representar restas con dibujos</h2>

<div class="example">
<p>
★★★★★
</p>

<p>Tachamos \(2\):</p>

<p>
★★★ ~~★★~~
</p>

<p>Quedan \(3\) estrellas.</p>

<div class="operation">\(5-2=3\)</div>
</div>
</section>

<section class="section">
<h2>9. El signo de resta</h2>

<p>
El símbolo \(-\) se llama <strong>signo de resta</strong>.
</p>

<div class="operation">\(6-2\)</div>

<div class="important">
<p>
El signo \(-\) nos indica que vamos a quitar, separar,
disminuir o encontrar una diferencia.
</p>
</div>
</section>

<section class="section">
<h2>10. Resultado o diferencia</h2>

<p>
El número que obtenemos después de realizar una resta puede llamarse
<strong>resultado</strong> o <strong>diferencia</strong>.
</p>

<div class="example">
<div class="operation">\(8-3=5\)</div>
<p>El resultado es \(5\).</p>
<p>La diferencia es \(5\).</p>
</div>
</section>

<section class="challenge">
<h2>Practiquemos</h2>

<div class="question">
<p>Tienes \(5\) lápices y regalas \(2\). ¿Cuántos quedan?</p>
<div class="answer">\(5-2=3\). Quedan \(3\).</div>
</div>

<div class="question">
<p>Había \(8\) pelotas y quitamos \(3\).</p>
<div class="answer">\(8-3=5\)</div>
</div>

<div class="question">
<p>¿Cuál es la diferencia entre \(7\) y \(5\)?</p>
<div class="answer">\(7-5=2\). La diferencia es \(2\).</div>
</div>

<div class="question">
<p>En \(9-4=5\), ¿cuál es el resultado?</p>
<div class="answer">\(5\)</div>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Restar puede significar quitar objetos.</li>
<li>También podemos separar elementos.</li>
<li>Una resta puede representar una disminución.</li>
<li>Podemos descubrir cuántos elementos quedan.</li>
<li>La resta puede servir para comparar colecciones.</li>
<li>Podemos utilizarla para encontrar una diferencia.</li>
<li>Las restas pueden representarse con objetos y dibujos.</li>
<li>El símbolo \(-\) es el signo de resta.</li>
<li>El número obtenido es el resultado o diferencia.</li>
</ul>
</section>

<div class="closing">¡Excelente! Ya conoces el significado de restar.</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(394,19,670,'video','Significado de Restar: Acciones y Comparación','<!-- etl-google-cloud-matematicas:media-plan:29 -->
<p>Vídeo expositivo que muestra el concepto de restar mediante las acciones de quitar objetos, separar elementos, disminuir una cantidad, encontrar cuántos quedan, comparar colecciones y hallar la diferencia. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(395,19,670,'video','Representación y Símbolos de la Resta','<!-- etl-google-cloud-matematicas:media-plan:30 -->
<p>Vídeo didáctico sobre cómo representar restas utilizando objetos concretos y dibujos, explicando el significado del signo de resta (-) y la identificación del resultado o diferencia. 7-10</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(396,20,671,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:14:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P1-013 | Practicamos restas básicas</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #00000014}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px 35px;text-align:center}.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}.header h1{font-size:38px;color:#5F4B0E;margin:15px 0 10px}.header p{max-width:750px;margin:auto;color:#6B5819;font-size:18px}.content{padding:40px 45px}.box,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.important{background:#FFF1A8;border-left:6px solid #D9AE2B}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.operation{text-align:center;background:#FFF8D6;padding:15px;border-radius:14px;color:#725A10;font-size:27px;font-weight:bold;margin:15px 0}.summary{background:#F2C94C;color:#4D3E0D;padding:28px;border-radius:20px;margin-top:40px}.closing{text-align:center;color:#806619;font-size:21px;font-weight:bold;margin:35px 0}@media(max-width:700px){.content{padding:25px 20px}.header h1{font-size:30px}}
</style>
</head>
<body>
<div class="lesson">

<header class="header">
<div class="code">Ari-P1-013 · Primer grado</div>
<h1>Practicamos restas básicas</h1>
<p>Aprende a quitar cantidades y encontrar resultados de restas sencillas.</p>
</header>

<main class="content">

<section class="box">
<h2>Descripción del contenido</h2>
<p>Aprenderás a resolver restas hasta \(5\), \(10\) y \(20\), a restar \(0\) y \(1\), y a reconocer la relación que existe entre sumar y restar.</p>
</section>

<section class="section">
<h2>1. Restas hasta \(5\)</h2>
<p>Comenzamos con cantidades pequeñas.</p>
<div class="example">
<div class="operation">\(3-1=2\)</div>
<div class="operation">\(4-2=2\)</div>
<div class="operation">\(5-3=2\)</div>
</div>
</section>

<section class="section">
<h2>2. Restas hasta \(10\)</h2>
<div class="example">
<div class="operation">\(7-2=5\)</div>
<div class="operation">\(9-4=5\)</div>
<div class="operation">\(10-3=7\)</div>
</div>
<div class="practice"><p>Resuelve: \(8-3=\ ?\)</p><strong>Resultado: \(5\)</strong></div>
</section>

<section class="section">
<h2>3. Restas hasta \(20\)</h2>
<div class="example">
<div class="operation">\(12-2=10\)</div>
<div class="operation">\(15-5=10\)</div>
<div class="operation">\(20-4=16\)</div>
</div>
</section>

<section class="section">
<h2>4. Restar cero</h2>
<p>Si quitamos \(0\), la cantidad permanece igual.</p>
<div class="operation">\(7-0=7\)</div>
<div class="important">Restar \(0\) significa que no quitamos ningún elemento.</div>
</section>

<section class="section">
<h2>5. Restar uno</h2>
<p>Cuando restamos \(1\), retrocedemos al número anterior.</p>
<div class="operation">\(6-1=5\)</div>
<div class="operation">\(10-1=9\)</div>
</section>

<section class="section">
<h2>6. Relación entre suma y resta</h2>
<p>La suma y la resta están relacionadas.</p>
<div class="example">
<div class="operation">\(3+2=5\)</div>
<p>Si conocemos esa suma, también podemos saber:</p>
<div class="operation">\(5-2=3\)</div>
<div class="operation">\(5-3=2\)</div>
</div>
</section>

<section class="section">
<h2>7. Familias de operaciones</h2>
<p>Con tres números podemos formar operaciones relacionadas.</p>
<div class="example">
<p>Usamos \(2\), \(3\) y \(5\):</p>
<div class="operation">\(2+3=5\)</div>
<div class="operation">\(3+2=5\)</div>
<div class="operation">\(5-2=3\)</div>
<div class="operation">\(5-3=2\)</div>
</div>
</section>

<section class="section">
<h2>8. Cálculo mental básico</h2>
<p>Algunas restas pueden resolverse mentalmente cuando conocemos bien los números.</p>
<div class="practice">
<p>\(5-1=\ ?\)</p>
<p>\(10-5=\ ?\)</p>
<p>\(8-0=\ ?\)</p>
<strong>Resultados: \(4,\ 5,\ 8\).</strong>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Podemos resolver restas hasta \(5\), \(10\) y \(20\).</li>
<li>Restar \(0\) no cambia una cantidad.</li>
<li>Restar \(1\) lleva al número anterior.</li>
<li>La suma y la resta están relacionadas.</li>
<li>Podemos formar familias de operaciones.</li>
<li>Practicar ayuda a desarrollar cálculo mental.</li>
</ul>
</section>

<div class="closing">Ya puedes resolver diferentes restas básicas.</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(397,20,671,'video','Restas por Rangos Numéricos y Casos Especiales','<!-- etl-google-cloud-matematicas:media-plan:31 -->
<p>Vídeo expositivo que muestra la resolución de restas hasta 5, hasta 10 y hasta 20, junto con los casos especiales de restar cero y restar uno. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(398,20,671,'video','Relación Suma-Resta y Cálculo Mental','<!-- etl-google-cloud-matematicas:media-plan:32 -->
<p>Vídeo didáctico que explica la relación inversa entre suma y resta, la formación de familias de operaciones y la aplicación de estas estrategias al cálculo mental básico. 6-8</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(399,21,672,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:15:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P1-014 | Estrategias para restar</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px 35px;text-align:center}.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}.header h1{font-size:38px;color:#5F4B0E}.header p{color:#6B5819}.content{padding:40px 45px}.box,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.important{background:#FFF1A8;border-left:6px solid #D9AE2B}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.operation{text-align:center;background:#FFF8D6;padding:16px;border-radius:14px;color:#725A10;font-size:27px;font-weight:bold}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;font-weight:bold;color:#806619;font-size:21px;margin:35px}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P1-014 · Primer grado</div>
<h1>Estrategias para restar</h1>
<p>Descubre diferentes caminos para encontrar el resultado de una resta.</p>
</header>
<main class="content">

<section class="box"><h2>Descripción del contenido</h2><p>Utilizarás distintas estrategias para quitar cantidades y encontrar diferencias de una manera más sencilla.</p></section>

<section class="section">
<h2>1. Contar hacia atrás</h2>
<p>Podemos comenzar en el número mayor y contar hacia atrás.</p>
<div class="example">
<p>Para resolver \(7-3\), comenzamos en \(7\):</p>
<div class="operation">\(6,\ 5,\ 4\)</div>
<p>Retrocedimos \(3\) veces.</p>
<div class="operation">\(7-3=4\)</div>
</div>
</section>

<section class="section">
<h2>2. Quitar elementos físicamente</h2>
<p>Podemos representar una cantidad usando fichas, lápices o bloques y retirar algunos.</p>
<div class="example"><p>Representamos \(6\) fichas y quitamos \(2\). Al contar las restantes obtenemos \(4\).</p><div class="operation">\(6-2=4\)</div></div>
</section>

<section class="section">
<h2>3. Tachado de dibujos</h2>
<div class="example">
<p>Tenemos cinco estrellas:</p>
<p>★★★★★</p>
<p>Tachamos dos:</p>
<p>★★★ <s>★★</s></p>
<div class="operation">\(5-2=3\)</div>
</div>
</section>

<section class="section">
<h2>4. Completar desde el número menor</h2>
<p>Para encontrar la diferencia podemos comenzar en el número menor y contar cuánto falta para llegar al mayor.</p>
<div class="example">
<p>¿Cuál es la diferencia entre \(5\) y \(8\)?</p>
<p>\(5\rightarrow6\rightarrow7\rightarrow8\)</p>
<p>Avanzamos \(3\) posiciones.</p>
<div class="operation">\(8-5=3\)</div>
</div>
</section>

<section class="section">
<h2>5. Utilizar sumas conocidas</h2>
<p>Una suma que ya conocemos puede ayudarnos a resolver una resta.</p>
<div class="example">
<div class="operation">\(4+3=7\)</div>
<p>Entonces sabemos que:</p>
<div class="operation">\(7-3=4\)</div>
</div>
</section>

<section class="section">
<h2>6. Retroceder en la recta numérica</h2>
<p>La recta numérica permite comenzar en una cantidad y hacer saltos hacia atrás.</p>
<div class="example">
<p>Para resolver \(8-3\):</p>
<p>\(8\rightarrow7\rightarrow6\rightarrow5\)</p>
<div class="operation">\(8-3=5\)</div>
</div>
</section>

<section class="practice">
<h2>Practica</h2>
<p>Usa conteo hacia atrás: \(6-2=\ ?\)</p>
<p>Usa una suma conocida: si \(3+5=8\), entonces \(8-5=\ ?\)</p>
<p><strong>Resultados: \(4\) y \(3\).</strong></p>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Puedes contar hacia atrás.</li>
<li>Puedes quitar objetos físicamente.</li>
<li>Puedes tachar dibujos.</li>
<li>Puedes completar desde el número menor.</li>
<li>Las sumas conocidas ayudan a restar.</li>
<li>También puedes retroceder sobre la recta numérica.</li>
</ul>
</section>

<div class="closing">Ahora conoces diferentes estrategias para restar.</div>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(400,21,672,'video','Estrategias Concretas y Visuales para Restar','<!-- etl-google-cloud-matematicas:media-plan:33 -->
<p>Vídeo expositivo que enseña a restar mediante el conteo hacia atrás, la acción de quitar elementos físicamente y la técnica del tachado de dibujos. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(401,21,672,'video','Estrategias Mentales y de Recta Numérica para Restar','<!-- etl-google-cloud-matematicas:media-plan:34 -->
<p>Vídeo didáctico que explica cómo restar completando desde el número menor, apoyándose en sumas conocidas y retrocediendo posiciones sobre la recta numérica. 4-6</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(402,22,673,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:16:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P1-015 | Problemas de resta</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}.code{background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold;display:inline-block}.header h1{color:#5F4B0E;font-size:38px}.content{padding:40px 45px}.box,.problem,.practice{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.problem{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.operation{text-align:center;background:#FFF8D6;padding:15px;border-radius:14px;font-size:27px;font-weight:bold;color:#725A10}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;color:#806619;font-weight:bold;font-size:21px;margin:35px}
</style>
</head>
<body><div class="lesson">

<header class="header">
<div class="code">Ari-P1-015 · Primer grado</div>
<h1>Resolvemos problemas de resta</h1>
<p>Utiliza la resta para resolver diferentes situaciones cotidianas.</p>
</header>

<main class="content">

<section class="box"><h2>Descripción del contenido</h2><p>Aprenderás a reconocer situaciones que pueden resolverse mediante una resta.</p></section>

<section class="section">
<h2>1. Problemas de quitar</h2>
<div class="problem"><p>Había \(7\) manzanas y se comieron \(2\). ¿Cuántas quedan?</p><div class="operation">\(7-2=5\)</div><p>Quedan \(5\) manzanas.</p></div>
</section>

<section class="section">
<h2>2. Problemas de comparar</h2>
<div class="problem"><p>Ana tiene \(8\) fichas y Luis tiene \(5\). ¿Cuántas fichas más tiene Ana?</p><div class="operation">\(8-5=3\)</div><p>Ana tiene \(3\) fichas más.</p></div>
</section>

<section class="section">
<h2>3. Problemas de encontrar la diferencia</h2>
<div class="problem"><p>Una torre mide \(9\) bloques y otra \(6\). ¿Cuál es la diferencia?</p><div class="operation">\(9-6=3\)</div><p>La diferencia es \(3\).</p></div>
</section>

<section class="section">
<h2>4. Problemas de completar</h2>
<div class="problem"><p>Tienes \(6\) estampas y quieres llegar a \(10\). ¿Cuántas faltan?</p><div class="operation">\(10-6=4\)</div><p>Faltan \(4\).</p></div>
</section>

<section class="section">
<h2>5. Problemas de cambio</h2>
<div class="problem"><p>Había \(10\) pájaros. Después quedaron \(7\). ¿Cuántos se fueron?</p><div class="operation">\(10-7=3\)</div><p>Se fueron \(3\) pájaros.</p></div>
</section>

<section class="section">
<h2>6. Problemas con dinero sencillo</h2>
<div class="problem"><p>Tienes \(10\) pesos y compras algo de \(4\) pesos. ¿Cuánto dinero queda?</p><div class="operation">\(10-4=6\)</div><p>Quedan \(6\) pesos.</p></div>
</section>

<section class="practice">
<h2>Practica</h2>
<p>Tenías \(9\) juguetes y regalaste \(3\). ¿Cuántos quedan?</p>
<div class="operation">\(9-3=6\)</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>La resta sirve para problemas de quitar.</li>
<li>También permite comparar cantidades.</li>
<li>Podemos encontrar diferencias.</li>
<li>Podemos descubrir cuánto falta.</li>
<li>Podemos analizar cambios en una cantidad.</li>
<li>También podemos trabajar con dinero sencillo.</li>
</ul>
</section>

<div class="closing">Ya puedes resolver diferentes problemas utilizando la resta.</div>
</main></div></body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(403,22,673,'video','Tipos de Problemas de Resta: Quitar, Comparar y Diferencia','<!-- etl-google-cloud-matematicas:media-plan:35 -->
<p>Vídeo expositivo que muestra cómo identificar y resolver situaciones problema que involucran quitar elementos, comparar dos cantidades y encontrar la diferencia. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(404,22,673,'video','Problemas de Completar, Cambio y Dinero Sencillo','<!-- etl-google-cloud-matematicas:media-plan:36 -->
<p>Vídeo didáctico que explica la resolución de problemas de resta enfocados en completar una cantidad, situaciones de cambio y ejercicios prácticos utilizando dinero sencillo. 4-6</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(405,23,728,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:17:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pat-P1-016 | Patrones visuales</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}.header h1{font-size:38px;color:#5F4B0E}.content{padding:40px 45px}.box,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.pattern{text-align:center;font-size:32px;letter-spacing:8px;background:#FFF8D6;padding:18px;border-radius:15px}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;font-weight:bold;color:#806619;font-size:21px;margin:35px}
</style>
</head>
<body><div class="lesson">

<header class="header">
<div class="code">Pat-P1-016 · Primer grado</div>
<h1>Descubrimos patrones visuales</h1>
<p>Observa, descubre qué se repite y continúa diferentes patrones.</p>
</header>

<main class="content">

<section class="box"><h2>Descripción del contenido</h2><p>Aprenderás a reconocer patrones formados por colores, figuras, tamaños y posiciones, además de crear tus propios patrones.</p></section>

<section class="section">
<h2>1. Patrones de colores</h2>
<div class="example"><div class="pattern">🟡 🔵 🟡 🔵 🟡 🔵</div><p>Se repiten amarillo y azul.</p></div>
</section>

<section class="section">
<h2>2. Patrones de figuras</h2>
<div class="example"><div class="pattern">● ▲ ● ▲ ● ▲</div><p>Se repiten un círculo y un triángulo.</p></div>
</section>

<section class="section">
<h2>3. Patrones de tamaños</h2>
<div class="example"><p class="pattern">● • ● • ● •</p><p>Se alterna una figura grande y una pequeña.</p></div>
</section>

<section class="section">
<h2>4. Patrones de posiciones</h2>
<div class="example"><div class="pattern">↑ ↓ ↑ ↓ ↑ ↓</div><p>La posición cambia de arriba a abajo.</p></div>
</section>

<section class="section">
<h2>5. Unidad que se repite</h2>
<p>La parte más pequeña que vuelve a aparecer se llama unidad del patrón.</p>
<div class="example"><div class="pattern">■ ▲ | ■ ▲ | ■ ▲</div><p>La unidad que se repite es <strong>■ ▲</strong>.</p></div>
</section>

<section class="section">
<h2>6. Continuación de un patrón</h2>
<div class="practice"><div class="pattern">● ▲ ● ▲ ● ___</div><p>La figura que sigue es ▲.</p></div>
</section>

<section class="section">
<h2>7. Elemento faltante</h2>
<div class="practice"><div class="pattern">■ ● ___ ● ■ ●</div><p>Falta ■.</p></div>
</section>

<section class="section">
<h2>8. Creación de patrones propios</h2>
<p>Puedes elegir dos o más elementos y repetirlos siguiendo siempre la misma regla.</p>
<div class="example"><div class="pattern">★ ● ★ ● ★ ●</div><p>Este es un patrón creado con dos figuras.</p></div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Los patrones siguen una regla.</li>
<li>Pueden utilizar colores, figuras, tamaños o posiciones.</li>
<li>Debemos descubrir qué parte se repite.</li>
<li>Podemos continuar patrones.</li>
<li>También podemos encontrar elementos faltantes.</li>
<li>Podemos crear nuestros propios patrones.</li>
</ul>
</section>

<div class="closing">Ya puedes descubrir y crear patrones visuales.</div>
</main></div></body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(406,23,728,'video','Tipos de Patrones Visuales','<!-- etl-google-cloud-matematicas:media-plan:37 -->
<p>Vídeo expositivo que muestra la identificación y construcción de secuencias observando cambios en colores, figuras, tamaños y posiciones. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(407,23,728,'video','Análisis y Continuación de Patrones','<!-- etl-google-cloud-matematicas:media-plan:38 -->
<p>Vídeo didáctico que enseña a identificar la unidad que se repite, continuar una secuencia visual, encontrar elementos faltantes y crear patrones propios. 5-8</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(408,24,729,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:18:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pat-P1-017 | Patrones numéricos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}.header h1{font-size:38px;color:#5F4B0E}.content{padding:40px 45px}.box,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.sequence{text-align:center;font-size:25px;font-weight:bold;color:#725A10;background:#FFF8D6;padding:18px;border-radius:15px}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px}
</style>
</head>
<body><div class="lesson">

<header class="header">
<div class="code">Pat-P1-017 · Primer grado</div>
<h1>Descubrimos patrones con números</h1>
<p>Observa cómo cambian los números y descubre la regla de cada secuencia.</p>
</header>

<main class="content">

<section class="box"><h2>Descripción del contenido</h2><p>Aprenderás a reconocer y continuar diferentes secuencias numéricas.</p></section>

<section class="section">
<h2>1. Secuencias ascendentes</h2>
<p>Los números aumentan.</p>
<div class="sequence">\(1,\ 2,\ 3,\ 4,\ 5\)</div>
</section>

<section class="section">
<h2>2. Secuencias descendentes</h2>
<p>Los números disminuyen.</p>
<div class="sequence">\(10,\ 9,\ 8,\ 7,\ 6\)</div>
</section>

<section class="section">
<h2>3. Conteo de \(2\) en \(2\)</h2>
<div class="sequence">\(2,\ 4,\ 6,\ 8,\ 10\)</div>
<p>Cada vez agregamos \(2\).</p>
</section>

<section class="section">
<h2>4. Conteo de \(5\) en \(5\)</h2>
<div class="sequence">\(5,\ 10,\ 15,\ 20,\ 25\)</div>
<p>Cada número aumenta \(5\).</p>
</section>

<section class="section">
<h2>5. Conteo de \(10\) en \(10\)</h2>
<div class="sequence">\(10,\ 20,\ 30,\ 40,\ 50\)</div>
</section>

<section class="section">
<h2>6. Números faltantes</h2>
<div class="practice">
<div class="sequence">\(2,\ 4,\ \_\_,\ 8,\ 10\)</div>
<p>Falta \(6\).</p>
</div>
</section>

<section class="section">
<h2>7. Reconocimiento de reglas sencillas</h2>
<p>Una regla explica cómo cambia una secuencia.</p>
<div class="example">
<div class="sequence">\(10,\ 20,\ 30,\ 40\)</div>
<p>Regla: agregar \(10\) cada vez.</p>
</div>
<div class="practice">
<div class="sequence">\(5,\ 10,\ 15,\ 20,\ \_\_\)</div>
<p>Regla: sumar \(5\). El siguiente número es \(25\).</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Las secuencias pueden aumentar o disminuir.</li>
<li>Podemos contar de \(2\) en \(2\).</li>
<li>Podemos contar de \(5\) en \(5\).</li>
<li>Podemos contar de \(10\) en \(10\).</li>
<li>Una regla nos ayuda a continuar una secuencia.</li>
</ul>
</section>

<div class="closing">Ya puedes descubrir reglas en patrones numéricos.</div>
</main></div></body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(409,24,729,'video','Tipos de Secuencias Numéricas y Conteo','<!-- etl-google-cloud-matematicas:media-plan:39 -->
<p>Vídeo expositivo que muestra el concepto de secuencias ascendentes y descendentes, ilustrando conteos a saltos de 2 en 2, 5 en 5 y 10 en 10. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(410,24,729,'video','Análisis de Reglas y Números Faltantes','<!-- etl-google-cloud-matematicas:media-plan:40 -->
<p>Vídeo didáctico que explica cómo identificar números faltantes en una secuencia a partir del reconocimiento de reglas sencillas de conteo. 6-7</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(411,25,730,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:19:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pat-P1-018 | El signo igual</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}.code{background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold;display:inline-block}.header h1{font-size:38px;color:#5F4B0E}.content{padding:40px 45px}.box,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.important{background:#FFF1A8;border-left:6px solid #D9AE2B}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.operation{text-align:center;font-size:29px;font-weight:bold;color:#725A10;background:#FFF8D6;padding:17px;border-radius:15px}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;color:#806619;font-size:21px;font-weight:bold;margin:35px}
</style>
</head>
<body><div class="lesson">

<header class="header">
<div class="code">Pat-P1-018 · Primer grado</div>
<h1>Comprendemos el signo igual</h1>
<p>Descubre por qué \(=\) significa que dos lados tienen el mismo valor.</p>
</header>

<main class="content">

<section class="box"><h2>Descripción del contenido</h2><p>Aprenderás que el signo \(=\) indica igualdad entre cantidades o expresiones.</p></section>

<section class="section">
<h2>1. Dos cantidades iguales</h2>
<div class="example">
<p>Un grupo tiene \(4\) objetos y otro también tiene \(4\).</p>
<div class="operation">\(4=4\)</div>
</div>
</section>

<section class="section">
<h2>2. Dos expresiones con el mismo valor</h2>
<p>Los dos lados no necesitan verse iguales; necesitan valer lo mismo.</p>
<div class="operation">\(2+3=4+1\)</div>
<p>Los dos lados valen \(5\).</p>
</section>

<section class="section">
<h2>3. Igualdades verdaderas</h2>
<p>Una igualdad es verdadera cuando ambos lados tienen el mismo valor.</p>
<div class="example">
<div class="operation">\(3+2=5\)</div>
<div class="operation">\(6-2=4\)</div>
</div>
</section>

<section class="section">
<h2>4. Igualdades falsas</h2>
<p>Una igualdad es falsa cuando los dos lados tienen valores diferentes.</p>
<div class="example">
<div class="operation">\(2+2=5\)</div>
<p>Es falsa porque \(2+2=4\), no \(5\).</p>
</div>
</section>

<section class="section">
<h2>5. Equilibrio con objetos</h2>
<p>Podemos imaginar el signo igual como una balanza.</p>
<div class="important">
<p>Si colocamos \(3\) fichas de un lado y \(3\) del otro, existe equilibrio:</p>
<div class="operation">\(3=3\)</div>
</div>
<div class="practice">
<p>¿Es verdadera \(4+1=3+2\)?</p>
<p>Sí. Los dos lados valen \(5\).</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>\(=\) significa que ambos lados tienen el mismo valor.</li>
<li>Dos cantidades iguales pueden relacionarse con \(=\).</li>
<li>Dos operaciones diferentes pueden tener el mismo resultado.</li>
<li>Una igualdad puede ser verdadera o falsa.</li>
<li>El equilibrio ayuda a comprender la igualdad.</li>
</ul>
</section>

<div class="closing">Ahora sabes qué significa realmente el signo igual.</div>
</main></div></body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(412,25,730,'video','Cantidades y Expresiones Iguales','<!-- etl-google-cloud-matematicas:media-plan:41 -->
<p>Vídeo expositivo que enseña el concepto de igualdad comparando dos cantidades iguales y mostrando cómo distintas expresiones numéricas pueden tener el mismo valor. 1-2</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(413,25,730,'video','Igualdades Verdaderas, Falsas y Equilibrio','<!-- etl-google-cloud-matematicas:media-plan:42 -->
<p>Vídeo didáctico que explica la identificación de igualdades verdaderas y falsas, ilustrando el concepto de equivalencia mediante una balanza en equilibrio con objetos. 3-5</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(414,26,731,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:20:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pat-P1-019 | Número faltante</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}.header h1{font-size:38px;color:#5F4B0E}.content{padding:40px 45px}.box,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.important{background:#FFF1A8;border-left:6px solid #D9AE2B}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.operation{text-align:center;font-size:29px;font-weight:bold;color:#725A10;background:#FFF8D6;padding:17px;border-radius:15px}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px}
</style>
</head>
<body><div class="lesson">

<header class="header">
<div class="code">Pat-P1-019 · Primer grado</div>
<h1>Encontramos el número faltante</h1>
<p>Descubre qué cantidad debe ocupar el espacio vacío.</p>
</header>

<main class="content">

<section class="box"><h2>Descripción del contenido</h2><p>Aprenderás a encontrar cantidades faltantes en sumas y restas mediante números, cuadros, dibujos y conteo.</p></section>

<section class="section">
<h2>1. Sumando faltante</h2>
<div class="example">
<div class="operation">\(3+\square=5\)</div>
<p>¿Cuánto necesitamos agregar a \(3\) para llegar a \(5\)?</p>
<p>\(3,\ 4,\ 5\): necesitamos \(2\).</p>
<div class="operation">\(3+2=5\)</div>
</div>
</section>

<section class="section">
<h2>2. Resultado faltante</h2>
<div class="operation">\(4+3=\square\)</div>
<p>Juntamos \(4\) y \(3\).</p>
<div class="operation">\(4+3=7\)</div>
</section>

<section class="section">
<h2>3. Cantidad faltante en una resta</h2>
<div class="example">
<div class="operation">\(7-\square=5\)</div>
<p>¿Cuánto debemos quitar de \(7\) para llegar a \(5\)?</p>
<div class="operation">\(7-2=5\)</div>
</div>
</section>

<section class="section">
<h2>4. Uso de cuadros</h2>
<p>Un cuadro puede representar el número que todavía desconocemos.</p>
<div class="example">
<div class="operation">\(\square+2=6\)</div>
<p>El cuadro vale \(4\), porque \(4+2=6\).</p>
</div>
</section>

<section class="section">
<h2>5. Uso de dibujos</h2>
<div class="example">
<p>Tenemos:</p>
<p>★★★ + ? = ★★★★★</p>
<p>Faltan dos estrellas.</p>
<div class="operation">\(3+2=5\)</div>
</div>
</section>

<section class="section">
<h2>6. Comprobación mediante conteo</h2>
<p>Después de encontrar un número podemos contar para comprobarlo.</p>
<div class="practice">
<div class="operation">\(5+\square=8\)</div>
<p>Desde \(5\): \(6,\ 7,\ 8\).</p>
<p>Avanzamos \(3\).</p>
<div class="operation">\(5+3=8\)</div>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Puede faltar un sumando.</li>
<li>Puede faltar el resultado.</li>
<li>También puede faltar una cantidad en una resta.</li>
<li>Un cuadro puede representar un número desconocido.</li>
<li>Los dibujos ayudan a encontrar cantidades.</li>
<li>El conteo permite comprobar la respuesta.</li>
</ul>
</section>

<div class="closing">Ya puedes encontrar números que faltan.</div>
</main></div></body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(415,26,731,'video','Identificación de Valores Faltantes','<!-- etl-google-cloud-matematicas:media-plan:43 -->
<p>Vídeo expositivo que enseña a identificar el sumando faltante, el resultado faltante y la cantidad faltante en una resta en operaciones aditivas sencillas. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(416,26,731,'video','Representación y Comprobación de Valores Faltantes','<!-- etl-google-cloud-matematicas:media-plan:44 -->
<p>Vídeo didáctico sobre cómo representar números desconocidos mediante el uso de cuadros y dibujos, aplicando la comprobación mediante conteo directo. 4-6</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(417,27,736,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:21:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P1-020 | Posición de objetos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}.header h1{font-size:38px;color:#5F4B0E}.content{padding:40px 45px}.box,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.visual{text-align:center;font-size:45px;background:#FFF8D6;border-radius:15px;padding:20px}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px}
</style>
</head>
<body><div class="lesson">

<header class="header">
<div class="code">Geo-P1-020 · Primer grado</div>
<h1>Descubrimos dónde están los objetos</h1>
<p>Aprende a describir la posición de una persona u objeto.</p>
</header>

<main class="content">

<section class="box"><h2>Descripción del contenido</h2><p>Aprenderás palabras que nos ayudan a explicar dónde se encuentra un objeto respecto de otro.</p></section>

<section class="section"><h2>1. Arriba y abajo</h2><div class="example"><p>Un pájaro puede estar <strong>arriba</strong> de un árbol y una pelota <strong>abajo</strong>.</p></div></section>

<section class="section"><h2>2. Encima y debajo</h2><div class="example"><p>Un libro está <strong>encima</strong> de la mesa. Una mochila puede estar <strong>debajo</strong> de ella.</p></div></section>

<section class="section"><h2>3. Dentro y fuera</h2><div class="example"><p>Una pelota puede estar <strong>dentro</strong> de una caja o <strong>fuera</strong> de ella.</p></div></section>

<section class="section"><h2>4. Delante y detrás</h2><div class="example"><p>Una persona puede estar <strong>delante</strong> de una puerta o <strong>detrás</strong> de ella.</p></div></section>

<section class="section"><h2>5. Cerca y lejos</h2><div class="example"><p>Un lápiz junto a ti está <strong>cerca</strong>. Una montaña puede verse <strong>lejos</strong>.</p></div></section>

<section class="section"><h2>6. Entre</h2><div class="visual">■ ● ▲</div><p>El círculo está <strong>entre</strong> el cuadrado y el triángulo.</p></section>

<section class="section"><h2>7. Derecha e izquierda</h2><div class="visual">← izquierda &nbsp;&nbsp;&nbsp; derecha →</div><p>Podemos describir objetos usando nuestra derecha y nuestra izquierda.</p></section>

<section class="section"><h2>8. Alrededor</h2><div class="example"><p>Si varias sillas rodean una mesa, decimos que están <strong>alrededor</strong> de ella.</p></div></section>

<section class="section">
<h2>9. Posición respecto de otro objeto</h2>
<div class="practice">
<p>Observa dos objetos y describe su relación.</p>
<p>Ejemplo: “El lápiz está a la derecha del cuaderno”.</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Arriba y abajo.</li>
<li>Encima y debajo.</li>
<li>Dentro y fuera.</li>
<li>Delante y detrás.</li>
<li>Cerca y lejos.</li>
<li>Entre.</li>
<li>Derecha e izquierda.</li>
<li>Alrededor.</li>
<li>La posición siempre puede describirse respecto de algo.</li>
</ul>
</section>

<div class="closing">Ahora puedes explicar dónde se encuentran diferentes objetos.</div>
</main></div></body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(418,27,736,'video','Nociones Espaciales Básicas','<!-- etl-google-cloud-matematicas:media-plan:45 -->
<p>Vídeo expositivo que muestra ejemplos ilustrados para identificar posiciones relativas: arriba y abajo, encima y debajo, dentro y fuera, delante y detrás, cerca y lejos. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(419,27,736,'video','Ubicación, Lateralidad y Puntos de Referencia','<!-- etl-google-cloud-matematicas:media-plan:46 -->
<p>Vídeo didáctico que explica cómo ubicar objetos cuando están entre otros, el uso de la derecha e izquierda, el concepto de alrededor y la ubicación de un objeto respecto a otro. 6-9</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(420,28,737,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:22:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P1-021 | Trayectos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}.header h1{font-size:38px;color:#5F4B0E}.content{padding:40px 45px}.box,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.important{background:#FFF1A8;border-left:6px solid #D9AE2B}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.direction{text-align:center;font-size:40px;color:#725A10;background:#FFF8D6;padding:20px;border-radius:15px}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px}
</style>
</head>
<body><div class="lesson">

<header class="header">
<div class="code">Geo-P1-021 · Primer grado</div>
<h1>Seguimos y describimos trayectos</h1>
<p>Aprende a desplazarte siguiendo diferentes instrucciones.</p>
</header>

<main class="content">

<section class="box"><h2>Descripción del contenido</h2><p>Aprenderás a reconocer movimientos y utilizarlos para seguir y describir recorridos sencillos.</p></section>

<section class="section">
<h2>1. Avanzar</h2>
<p>Avanzar significa movernos hacia adelante.</p>
<div class="direction">↑ ↑ ↑</div>
</section>

<section class="section">
<h2>2. Retroceder</h2>
<p>Retroceder significa movernos hacia atrás.</p>
<div class="direction">↓ ↓</div>
</section>

<section class="section">
<h2>3. Girar a la derecha</h2>
<p>Un giro cambia la dirección en la que nos desplazamos.</p>
<div class="direction">→</div>
</section>

<section class="section">
<h2>4. Girar a la izquierda</h2>
<div class="direction">←</div>
<p>Debemos distinguir nuestra izquierda de nuestra derecha.</p>
</section>

<section class="section">
<h2>5. Seguir instrucciones</h2>
<div class="example">
<p>Sigue este recorrido:</p>
<ol>
<li>Avanza \(3\) pasos.</li>
<li>Gira a la derecha.</li>
<li>Avanza \(2\) pasos.</li>
</ol>
</div>
<div class="important"><p>El orden de las instrucciones es importante. Si cambiamos el orden, podemos terminar en otro lugar.</p></div>
</section>

<section class="section">
<h2>6. Describir recorridos sencillos</h2>
<div class="example">
<p>Podemos explicar un trayecto usando palabras:</p>
<p><strong>“Avanza dos pasos, gira a la izquierda y avanza tres pasos.”</strong></p>
</div>
<div class="practice">
<p>Intenta describir cómo llegar desde tu lugar hasta una puerta utilizando las palabras avanzar, girar, derecha e izquierda.</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Podemos avanzar.</li>
<li>Podemos retroceder.</li>
<li>Podemos girar a la derecha.</li>
<li>Podemos girar a la izquierda.</li>
<li>Debemos seguir instrucciones en orden.</li>
<li>Podemos utilizar palabras para describir un trayecto.</li>
</ul>
</section>

<div class="closing">Ya puedes seguir y explicar recorridos sencillos.</div>
</main></div></body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:36.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(421,28,737,'video','Movimientos, Orientación y Trayectos','<!-- etl-google-cloud-matematicas:media-plan:47 -->
<p>Vídeo expositivo que muestra cómo realizar desplazamientos (avanzar y retroceder) y giros (izquierda y derecha) para seguir instrucciones y describir recorridos sencillos en un plano ilustrado. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(422,29,738,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:23:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P1-022 | Figuras geométricas</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #0001}.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}.header h1{font-size:38px;color:#5F4B0E}.content{padding:40px 45px}.box,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.box{background:#FFF8D6;border-left:6px solid #F2C94C}.example{background:#FFF9E6;border:2px solid #F4DA80}.practice{background:#FFF6C7;border:2px solid #E9CF71}.important{background:#FFF1A8;border-left:6px solid #D9AE2B}.section{margin:42px 0}.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}.figures{display:flex;justify-content:center;align-items:center;gap:35px;flex-wrap:wrap;padding:25px}.circle{width:100px;height:100px;border-radius:50%;background:#F2C94C}.square{width:100px;height:100px;background:#F2C94C}.rectangle{width:150px;height:90px;background:#FFE08A}.triangle{width:0;height:0;border-left:55px solid transparent;border-right:55px solid transparent;border-bottom:100px solid #F2C94C}.card{text-align:center}.summary{background:#F2C94C;padding:28px;border-radius:20px;color:#4D3E0D}.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px}
</style>
</head>

<body><div class="lesson">

<header class="header">
<div class="code">Geo-P1-022 · Primer grado</div>
<h1>Conocemos las figuras geométricas</h1>
<p>Observa sus formas y aprende a reconocer sus semejanzas y diferencias.</p>
</header>

<main class="content">

<section class="box">
<h2>Descripción del contenido</h2>
<p>Aprenderás a reconocer círculo, triángulo, cuadrado y rectángulo, además de comparar y clasificar diferentes figuras.</p>
</section>

<section class="section">
<h2>1. Círculo</h2>
<div class="figures"><div class="card"><div class="circle"></div><strong>Círculo</strong></div></div>
<p>El círculo tiene un borde curvo y no tiene lados rectos.</p>
</section>

<section class="section">
<h2>2. Triángulo</h2>
<div class="figures"><div class="card"><div class="triangle"></div><strong>Triángulo</strong></div></div>
<p>El triángulo tiene \(3\) lados rectos.</p>
</section>

<section class="section">
<h2>3. Cuadrado</h2>
<div class="figures"><div class="card"><div class="square"></div><strong>Cuadrado</strong></div></div>
<p>El cuadrado tiene \(4\) lados.</p>
</section>

<section class="section">
<h2>4. Rectángulo</h2>
<div class="figures"><div class="card"><div class="rectangle"></div><strong>Rectángulo</strong></div></div>
<p>El rectángulo también tiene \(4\) lados.</p>
</section>

<section class="section">
<h2>5. Comparación de formas</h2>
<div class="example">
<p>Podemos observar:</p>
<ul>
<li>El círculo es diferente porque tiene borde curvo.</li>
<li>El triángulo tiene \(3\) lados.</li>
<li>El cuadrado y el rectángulo tienen \(4\) lados.</li>
</ul>
</div>
</section>

<section class="section">
<h2>6. Figuras con lados rectos</h2>
<div class="figures">
<div class="triangle"></div>
<div class="square"></div>
<div class="rectangle"></div>
</div>
<p>Triángulo, cuadrado y rectángulo tienen lados rectos.</p>
</section>

<section class="section">
<h2>7. Figuras con bordes curvos</h2>
<div class="figures"><div class="circle"></div></div>
<p>El círculo tiene un borde completamente curvo.</p>
</section>

<section class="section">
<h2>8. Clasificación por semejanzas</h2>
<p>Podemos formar grupos según las características de las figuras.</p>

<div class="example">
<h3>Con lados rectos</h3>
<p>Triángulo, cuadrado y rectángulo.</p>

<h3>Con borde curvo</h3>
<p>Círculo.</p>
</div>

<div class="practice">
<p>¿Qué tienen en común un cuadrado y un rectángulo?</p>
<p>Ambos tienen \(4\) lados.</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>El círculo tiene borde curvo.</li>
<li>El triángulo tiene \(3\) lados.</li>
<li>El cuadrado tiene \(4\) lados.</li>
<li>El rectángulo tiene \(4\) lados.</li>
<li>Podemos comparar figuras observando sus características.</li>
<li>Algunas figuras tienen lados rectos.</li>
<li>Otras presentan bordes curvos.</li>
<li>Podemos clasificar figuras por sus semejanzas.</li>
</ul>
</section>

<div class="closing">Ya puedes reconocer y comparar las principales figuras geométricas.</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(423,29,738,'video','Figuras Métricas Básicas','<!-- etl-google-cloud-matematicas:media-plan:48 -->
<p>Vídeo expositivo que presenta y muestra las características visuales del círculo, triángulo, cuadrado y rectángulo. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(424,29,738,'video','Comparación y Clasificación de Figuras','<!-- etl-google-cloud-matematicas:media-plan:49 -->
<p>Vídeo didáctico que enseña a comparar formas distinguiendo entre figuras con lados rectos y bordes curvos para clasificarlas por sus semejanzas. 5-8</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(425,30,739,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:24:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Geo-P1-023 | Construimos figuras con otras figuras</title>

<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 25px 15px;
  font-family: Arial, Helvetica, sans-serif;
  background: #FFFBEA;
  color: #37474F;
  line-height: 1.7;
}

.lesson {
  max-width: 1000px;
  margin: auto;
  background: #FFFFFF;
  border-radius: 24px;
  overflow: hidden;
  box-shadow: 0 8px 28px rgba(0,0,0,.08);
}

.header {
  background: linear-gradient(135deg,#FFF1A8,#F6D76B);
  padding: 45px 35px;
  text-align: center;
}

.code {
  display: inline-block;
  background: rgba(255,255,255,.65);
  padding: 7px 17px;
  border-radius: 30px;
  color: #725A10;
  font-weight: bold;
}

.header h1 {
  margin: 15px 0 10px;
  color: #5F4B0E;
  font-size: 38px;
}

.header p {
  max-width: 750px;
  margin: auto;
  color: #6B5819;
  font-size: 18px;
}

.content {
  padding: 40px 45px 55px;
}

.description,
.objective {
  padding: 22px 25px;
  border-radius: 16px;
  margin-bottom: 30px;
}

.description {
  background: #FFF8D6;
  border-left: 6px solid #F2C94C;
}

.objective {
  background: #FFFDF0;
  border: 2px solid #F5DF8B;
}

.description h2,
.objective h2 {
  margin-top: 0;
  color: #806619;
}

.section {
  margin: 45px 0;
}

.section h2 {
  color: #7A6117;
  font-size: 27px;
  border-bottom: 3px solid #F8E49C;
  padding-bottom: 8px;
}

.example,
.practice,
.important {
  padding: 22px;
  border-radius: 16px;
  margin: 22px 0;
}

.example {
  background: #FFF9E6;
  border: 2px solid #F4DA80;
}

.practice {
  background: #FFF6C7;
  border: 2px solid #E9CF71;
}

.important {
  background: #FFF1A8;
  border-left: 6px solid #D9AE2B;
}

.figures {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 18px;
  flex-wrap: wrap;
  margin: 25px 0;
}

.square {
  width: 80px;
  height: 80px;
  background: #F2C94C;
  border: 3px solid #D5AD2D;
}

.rectangle {
  width: 130px;
  height: 75px;
  background: #FFE18C;
  border: 3px solid #D5AD2D;
}

.circle {
  width: 80px;
  height: 80px;
  background: #F2C94C;
  border: 3px solid #D5AD2D;
  border-radius: 50%;
}

.triangle {
  width: 0;
  height: 0;
  border-left: 45px solid transparent;
  border-right: 45px solid transparent;
  border-bottom: 80px solid #F2C94C;
}

.model {
  text-align: center;
  background: #FFF8D6;
  padding: 25px;
  border-radius: 17px;
}

.challenge {
  background: #FFF7D1;
  border: 2px solid #EBCF68;
  border-radius: 20px;
  padding: 28px;
}

.question {
  background: #FFFFFF;
  border: 1px solid #EEDC9A;
  border-radius: 14px;
  padding: 20px;
  margin: 18px 0;
}

.answer {
  background: #FFF4BD;
  padding: 10px 14px;
  border-radius: 10px;
  font-weight: bold;
}

.summary {
  background: #F2C94C;
  color: #4D3E0D;
  padding: 30px;
  border-radius: 20px;
  margin-top: 45px;
}

.closing {
  text-align: center;
  margin-top: 35px;
  font-size: 21px;
  font-weight: bold;
  color: #806619;
}

@media(max-width:750px) {
  .content {
    padding: 28px 20px 45px;
  }

  .header h1 {
    font-size: 31px;
  }
}
</style>
</head>

<body>

<div class="lesson">

<header class="header">

  <div class="code">
    Geo-P1-023 · Primer grado de primaria
  </div>

  <h1>Construimos figuras con otras figuras</h1>

  <p>
    Descubre cómo podemos unir, separar y organizar figuras
    geométricas para crear nuevas formas.
  </p>

</header>

<main class="content">

<section class="description">

  <h2>Descripción del contenido</h2>

  <p>
    En esta lección aprenderás a formar figuras utilizando otras
    figuras geométricas, resolver rompecabezas sencillos, explorar
    el tangram, separar figuras en partes y reproducir modelos.
  </p>

</section>

<section class="objective">

  <h2>¿Qué aprenderás?</h2>

  <p>
    Aprenderás que varias figuras pequeñas pueden unirse para
    formar una figura diferente y que una figura también puede
    dividirse en partes más pequeñas.
  </p>

</section>


<section class="section">

<h2>1. Formar figuras con otras figuras</h2>

<p>
Las figuras geométricas pueden combinarse para crear otras formas.
</p>

<div class="example">

<p>
Por ejemplo, podemos utilizar dos cuadrados para formar
un rectángulo.
</p>

<div class="figures">
  <div class="square"></div>
  <div class="square"></div>
</div>

<p>
Si colocamos los dos cuadrados juntos podemos obtener una
figura más larga.
</p>

<div class="figures">
  <div class="rectangle"></div>
</div>

</div>

<div class="important">

<strong>Observa:</strong>

<p>
Las figuras pequeñas no desaparecen. Solamente cambiamos
la manera en que están acomodadas.
</p>

</div>

</section>


<section class="section">

<h2>2. Rompecabezas geométricos</h2>

<p>
Un rompecabezas geométrico está formado por piezas que debemos
acomodar para completar una figura.
</p>

<div class="example">

<p>
Podemos utilizar:
</p>

<div class="figures">
  <div class="triangle"></div>
  <div class="square"></div>
  <div class="circle"></div>
</div>

<p>
El reto consiste en observar la forma y decidir dónde debe
colocarse cada pieza.
</p>

</div>

<div class="practice">

<strong>Piensa:</strong>

<p>
Si una figura tiene un espacio con forma de cuadrado,
¿qué pieza elegirías?
</p>

<p>
Elegiríamos el <strong>cuadrado</strong>.
</p>

</div>

</section>


<section class="section">

<h2>3. Tangram sencillo</h2>

<p>
El tangram es un rompecabezas formado por figuras geométricas
que pueden acomodarse de diferentes maneras.
</p>

<div class="example">

<p>
Con sus piezas podemos construir animales, casas, personas
y muchas otras figuras.
</p>

<div class="figures">
  <div class="triangle"></div>
  <div class="square"></div>
  <div class="triangle"></div>
</div>

</div>

<div class="important">

<p>
Lo importante no es memorizar una figura, sino observar
cómo podemos <strong>girar, mover y combinar</strong> las piezas.
</p>

</div>

</section>


<section class="section">

<h2>4. Separar una figura en partes</h2>

<p>
Así como podemos unir figuras, también podemos observar
cómo una figura grande está formada por partes pequeñas.
</p>

<div class="example">

<p>
Observa un rectángulo formado por dos cuadrados:
</p>

<div class="figures">
  <div class="square"></div>
  <div class="square"></div>
</div>

<p>
Podemos decir que la figura está formada por
<strong>\(2\) cuadrados</strong>.
</p>

</div>

<div class="practice">

<p>
Si dividimos una figura en \(2\) partes, podemos analizar
cada parte por separado y después volver a unirlas.
</p>

</div>

</section>


<section class="section">

<h2>5. Reproducir modelos</h2>

<p>
Reproducir un modelo significa observar una figura y tratar
de construir otra igual utilizando nuestras piezas.
</p>

<div class="model">

<p><strong>Modelo</strong></p>

<div class="figures">
  <div class="triangle"></div>
  <div class="square"></div>
  <div class="triangle"></div>
</div>

</div>

<div class="important">

<strong>Para reproducir un modelo:</strong>

<ol>
  <li>Observa qué figuras aparecen.</li>
  <li>Cuenta cuántas piezas hay.</li>
  <li>Observa dónde está cada pieza.</li>
  <li>Fíjate si alguna figura está girada.</li>
  <li>Coloca tus piezas en la misma posición.</li>
</ol>

</div>

</section>


<section class="challenge">

<h2>Practiquemos lo aprendido</h2>

<div class="question">

<h3>Reto 1</h3>

<p>
Si juntas \(2\) cuadrados uno junto al otro,
¿qué tipo de figura más larga puedes formar?
</p>

<div class="answer">
Puedes formar un rectángulo.
</div>

</div>


<div class="question">

<h3>Reto 2</h3>

<p>
¿Qué debemos hacer primero para reproducir un modelo?
</p>

<div class="answer">
Observar cuidadosamente las figuras y su posición.
</div>

</div>


<div class="question">

<h3>Reto 3</h3>

<p>
Si una figura está formada por varias piezas,
¿podemos separarla para estudiar sus partes?
</p>

<div class="answer">
Sí. Podemos separar la figura y observar cada pieza.
</div>

</div>

</section>


<section class="summary">

<h2>Recuerda</h2>

<ul>
  <li>Podemos formar figuras utilizando otras figuras.</li>
  <li>Los rompecabezas geométricos utilizan diferentes piezas.</li>
  <li>El tangram permite formar muchos modelos.</li>
  <li>Una figura puede separarse en partes.</li>
  <li>Podemos observar un modelo y reproducirlo.</li>
  <li>Las figuras pueden moverse, girarse y combinarse.</li>
</ul>

</section>

<div class="closing">
¡Excelente! Ya puedes construir nuevas figuras utilizando otras formas.
</div>

</main>
</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(426,30,739,'video','Composición y Descomposición de Figuras','<!-- etl-google-cloud-matematicas:media-plan:50 -->
<p>Vídeo expositivo que muestra cómo formar nuevas figuras uniendo otras formas, armar rompecabezas geométricos y piezas de un tangram sencillo, así como descomponer figuras en partes y reproducir modelos visuales paso a paso. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(427,31,740,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:25:5 -->
<!DOCTYPE html>
<html lang="es">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Geo-P1-024 | Conocemos los cuerpos geométricos</title>

<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 25px 15px;
  font-family: Arial, Helvetica, sans-serif;
  background: #FFFBEA;
  color: #37474F;
  line-height: 1.7;
}

.lesson {
  max-width: 1000px;
  margin: auto;
  background: #FFFFFF;
  border-radius: 24px;
  overflow: hidden;
  box-shadow: 0 8px 28px rgba(0,0,0,.08);
}

.header {
  background: linear-gradient(135deg,#FFF1A8,#F6D76B);
  padding: 45px 35px;
  text-align: center;
}

.code {
  display: inline-block;
  background: rgba(255,255,255,.65);
  padding: 7px 17px;
  border-radius: 30px;
  color: #725A10;
  font-weight: bold;
}

.header h1 {
  margin: 15px 0 10px;
  color: #5F4B0E;
  font-size: 38px;
}

.header p {
  max-width: 750px;
  margin: auto;
  color: #6B5819;
  font-size: 18px;
}

.content {
  padding: 40px 45px 55px;
}

.description,
.objective {
  border-radius: 16px;
  padding: 22px 25px;
  margin-bottom: 30px;
}

.description {
  background: #FFF8D6;
  border-left: 6px solid #F2C94C;
}

.objective {
  background: #FFFDF0;
  border: 2px solid #F5DF8B;
}

.description h2,
.objective h2 {
  margin-top: 0;
  color: #806619;
}

.section {
  margin: 45px 0;
}

.section h2 {
  color: #7A6117;
  font-size: 27px;
  border-bottom: 3px solid #F8E49C;
  padding-bottom: 8px;
}

.example,
.practice,
.important {
  padding: 22px;
  border-radius: 16px;
  margin: 22px 0;
}

.example {
  background: #FFF9E6;
  border: 2px solid #F4DA80;
}

.practice {
  background: #FFF6C7;
  border: 2px solid #E9CF71;
}

.important {
  background: #FFF1A8;
  border-left: 6px solid #D9AE2B;
}

.shape-grid {
  display: grid;
  grid-template-columns: repeat(3,1fr);
  gap: 18px;
  margin: 25px 0;
}

.shape-card {
  background: #FFFDF5;
  border: 2px solid #EFD77E;
  border-radius: 17px;
  padding: 22px;
  text-align: center;
}

.shape-card strong {
  color: #725A10;
  font-size: 19px;
}

.shape-icon {
  font-size: 55px;
  margin-bottom: 10px;
}

.feature-table {
  width: 100%;
  border-collapse: collapse;
  margin: 25px 0;
}

.feature-table th {
  background: #F2C94C;
  color: #55430D;
  padding: 12px;
}

.feature-table td {
  border: 2px solid #F0D87D;
  padding: 13px;
  text-align: center;
}

.challenge {
  background: #FFF7D1;
  border: 2px solid #EBCF68;
  border-radius: 20px;
  padding: 28px;
}

.question {
  background: #FFFFFF;
  border: 1px solid #EEDC9A;
  border-radius: 14px;
  padding: 20px;
  margin: 18px 0;
}

.answer {
  background: #FFF4BD;
  padding: 10px 14px;
  border-radius: 10px;
  font-weight: bold;
}

.summary {
  background: #F2C94C;
  color: #4D3E0D;
  padding: 30px;
  border-radius: 20px;
  margin-top: 45px;
}

.closing {
  text-align: center;
  margin-top: 35px;
  font-size: 21px;
  font-weight: bold;
  color: #806619;
}

@media(max-width:750px) {

  .content {
    padding: 28px 20px 45px;
  }

  .header h1 {
    font-size: 31px;
  }

  .shape-grid {
    grid-template-columns: 1fr;
  }
}
</style>
</head>

<body>

<div class="lesson">

<header class="header">

<div class="code">
Geo-P1-024 · Primer grado de primaria
</div>

<h1>Conocemos los cuerpos geométricos</h1>

<p>
Descubre las formas de los objetos que nos rodean y aprende
cuáles pueden rodar, deslizarse o tener superficies planas y curvas.
</p>

</header>


<main class="content">

<section class="description">

<h2>Descripción del contenido</h2>

<p>
En esta lección conocerás diferentes cuerpos geométricos:
cubo, prisma rectangular, cilindro, cono y esfera.
</p>

<p>
También aprenderás a identificar cuerpos que ruedan o se deslizan
y a reconocer superficies planas y curvas.
</p>

</section>


<section class="objective">

<h2>¿Qué aprenderás?</h2>

<p>
Aprenderás a reconocer diferentes cuerpos geométricos observando
su forma y algunas de sus características.
</p>

</section>


<section class="section">

<h2>¿Qué es un cuerpo geométrico?</h2>

<p>
Los cuerpos geométricos son formas que ocupan espacio.
Podemos observar objetos con formas parecidas a ellos
en nuestra vida cotidiana.
</p>

<div class="important">

<p>
A diferencia de una figura dibujada en una hoja, un cuerpo
geométrico tiene volumen y podemos observarlo desde diferentes lados.
</p>

</div>

</section>


<section class="section">

<h2>1. Cubo</h2>

<div class="shape-card">

<div class="shape-icon">🧊</div>

<strong>Cubo</strong>

<p>
Un dado o algunos bloques de construcción tienen una forma
parecida a un cubo.
</p>

</div>

<div class="example">

<p>
El cubo tiene superficies planas.
</p>

<p>
Cuando lo colocamos sobre una mesa puede mantenerse estable
y deslizarse si lo empujamos.
</p>

</div>

</section>


<section class="section">

<h2>2. Prisma rectangular</h2>

<div class="shape-card">

<div class="shape-icon">📦</div>

<strong>Prisma rectangular</strong>

<p>
Muchas cajas tienen una forma parecida a un prisma rectangular.
</p>

</div>

<p>
Tiene superficies planas y puede apoyarse de diferentes maneras.
</p>

</section>


<section class="section">

<h2>3. Cilindro</h2>

<div class="shape-card">

<div class="shape-icon">🥫</div>

<strong>Cilindro</strong>

<p>
Una lata puede tener una forma parecida a un cilindro.
</p>

</div>

<div class="example">

<p>
El cilindro tiene superficies planas en sus extremos
y una superficie curva alrededor.
</p>

<p>
Dependiendo de cómo lo coloquemos, puede rodar o deslizarse.
</p>

</div>

</section>


<section class="section">

<h2>4. Cono</h2>

<div class="shape-card">

<div class="shape-icon">🍦</div>

<strong>Cono</strong>

<p>
Un cono de helado tiene una forma parecida al cuerpo
geométrico llamado cono.
</p>

</div>

<p>
Tiene una superficie curva y una superficie plana en su base.
</p>

</section>


<section class="section">

<h2>5. Esfera</h2>

<div class="shape-card">

<div class="shape-icon">⚽</div>

<strong>Esfera</strong>

<p>
Una pelota tiene una forma parecida a una esfera.
</p>

</div>

<div class="important">

<p>
La esfera tiene una superficie curva y puede rodar fácilmente.
</p>

</div>

</section>


<section class="section">

<h2>6. Objetos que ruedan</h2>

<p>
Los cuerpos que tienen superficies curvas pueden rodar.
</p>

<div class="shape-grid">

<div class="shape-card">
<div class="shape-icon">⚽</div>
<strong>Esfera</strong>
<p>Puede rodar.</p>
</div>

<div class="shape-card">
<div class="shape-icon">🥫</div>
<strong>Cilindro</strong>
<p>Puede rodar cuando está acostado.</p>
</div>

<div class="shape-card">
<div class="shape-icon">🍦</div>
<strong>Cono</strong>
<p>Puede moverse sobre su superficie curva.</p>
</div>

</div>

</section>


<section class="section">

<h2>7. Objetos que se deslizan</h2>

<p>
Los objetos con superficies planas pueden deslizarse
sobre una superficie.
</p>

<div class="shape-grid">

<div class="shape-card">
<div class="shape-icon">🧊</div>
<strong>Cubo</strong>
<p>Puede deslizarse.</p>
</div>

<div class="shape-card">
<div class="shape-icon">📦</div>
<strong>Prisma rectangular</strong>
<p>Puede deslizarse.</p>
</div>

</div>

</section>


<section class="section">

<h2>8. Superficies planas</h2>

<p>
Una superficie plana es aquella que no presenta una curvatura.
</p>

<div class="example">

<p>
Podemos encontrar superficies planas en:
</p>

<ul>
<li>El cubo.</li>
<li>El prisma rectangular.</li>
<li>Las bases de un cilindro.</li>
<li>La base de un cono.</li>
</ul>

</div>

</section>


<section class="section">

<h2>9. Superficies curvas</h2>

<p>
Una superficie curva tiene una forma redondeada.
</p>

<div class="example">

<p>
Podemos encontrar superficies curvas en:
</p>

<ul>
<li>La esfera.</li>
<li>El cilindro.</li>
<li>El cono.</li>
</ul>

</div>

</section>


<section class="section">

<h2>Comparamos los cuerpos</h2>

<table class="feature-table">

<tr>
<th>Cuerpo</th>
<th>Superficie plana</th>
<th>Superficie curva</th>
<th>Puede rodar</th>
</tr>

<tr>
<td>Cubo</td>
<td>Sí</td>
<td>No</td>
<td>No fácilmente</td>
</tr>

<tr>
<td>Prisma rectangular</td>
<td>Sí</td>
<td>No</td>
<td>No fácilmente</td>
</tr>

<tr>
<td>Cilindro</td>
<td>Sí</td>
<td>Sí</td>
<td>Sí</td>
</tr>

<tr>
<td>Cono</td>
<td>Sí</td>
<td>Sí</td>
<td>Puede rodar</td>
</tr>

<tr>
<td>Esfera</td>
<td>No</td>
<td>Sí</td>
<td>Sí</td>
</tr>

</table>

</section>


<section class="challenge">

<h2>Practiquemos lo aprendido</h2>

<div class="question">

<h3>Reto 1</h3>

<p>
¿Qué cuerpo geométrico se parece a una pelota?
</p>

<div class="answer">
La esfera.
</div>

</div>


<div class="question">

<h3>Reto 2</h3>

<p>
¿Qué cuerpo se parece a una caja?
</p>

<div class="answer">
El prisma rectangular.
</div>

</div>


<div class="question">

<h3>Reto 3</h3>

<p>
¿Cuál de estos cuerpos puede rodar fácilmente:
un cubo o una esfera?
</p>

<div class="answer">
La esfera.
</div>

</div>


<div class="question">

<h3>Reto 4</h3>

<p>
¿Qué cuerpo tiene superficies planas y también una
superficie curva alrededor?
</p>

<div class="answer">
El cilindro.
</div>

</div>


<div class="question">

<h3>Reto 5</h3>

<p>
¿La esfera tiene una superficie plana?
</p>

<div class="answer">
No. Su superficie es curva.
</div>

</div>

</section>


<section class="summary">

<h2>Recuerda</h2>

<ul>
<li>El cubo tiene superficies planas.</li>
<li>El prisma rectangular se parece a muchas cajas.</li>
<li>El cilindro tiene superficies planas y una curva.</li>
<li>El cono tiene una base plana y una superficie curva.</li>
<li>La esfera tiene una superficie curva.</li>
<li>Algunos cuerpos pueden rodar.</li>
<li>Otros pueden deslizarse.</li>
<li>Existen superficies planas.</li>
<li>También existen superficies curvas.</li>
</ul>

</section>

<div class="closing">
¡Excelente! Ya puedes reconocer diferentes cuerpos geométricos.
</div>

</main>
</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(428,31,740,'video','Reconocimiento de Cuerpos Geométricos','<!-- etl-google-cloud-matematicas:media-plan:51 -->
<p>Vídeo expositivo que presenta e identifica las formas del cubo, prisma rectangular, cilindro, cono y esfera en elementos del entorno. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(429,31,740,'video','Propiedades y Movimiento de Cuerpos','<!-- etl-google-cloud-matematicas:media-plan:52 -->
<p>Vídeo didáctico que muestra la diferencia entre cuerpos con superficies planas y curvas, observando cómo estas características permiten que los objetos rueden o se mezan y deslicen. 6-9</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(430,32,758,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:26:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Med-P1-025 | Comparamos longitudes</title>

<style>
*{box-sizing:border-box}
body{
margin:0;
padding:25px 15px;
font-family:Arial,Helvetica,sans-serif;
background:#FFFBEA;
color:#37474F;
line-height:1.7;
}
.lesson{
max-width:1000px;
margin:auto;
background:#FFF;
border-radius:24px;
overflow:hidden;
box-shadow:0 8px 28px rgba(0,0,0,.08);
}
.header{
background:linear-gradient(135deg,#FFF1A8,#F6D76B);
padding:45px 35px;
text-align:center;
}
.code{
display:inline-block;
background:rgba(255,255,255,.65);
padding:7px 17px;
border-radius:30px;
color:#725A10;
font-weight:bold;
}
.header h1{
font-size:38px;
color:#5F4B0E;
margin:15px 0 10px;
}
.header p{
max-width:750px;
margin:auto;
color:#6B5819;
font-size:18px;
}
.content{padding:40px 45px}
.description,.objective,.example,.practice,.important{
padding:22px;
border-radius:16px;
margin:22px 0;
}
.description{
background:#FFF8D6;
border-left:6px solid #F2C94C;
}
.objective{
background:#FFFDF0;
border:2px solid #F5DF8B;
}
.example{
background:#FFF9E6;
border:2px solid #F4DA80;
}
.practice{
background:#FFF6C7;
border:2px solid #E9CF71;
}
.important{
background:#FFF1A8;
border-left:6px solid #D9AE2B;
}
.section{margin:45px 0}
.section h2{
color:#7A6117;
font-size:27px;
border-bottom:3px solid #F8E49C;
padding-bottom:8px;
}
.visual{
text-align:center;
font-size:25px;
font-weight:bold;
color:#725A10;
padding:22px;
background:#FFF8D6;
border-radius:16px;
margin:20px 0;
}
.line-long{
height:12px;
width:85%;
background:#E0B732;
margin:15px auto;
border-radius:10px;
}
.line-short{
height:12px;
width:40%;
background:#E0B732;
margin:15px auto;
border-radius:10px;
}
.summary{
background:#F2C94C;
color:#4D3E0D;
padding:30px;
border-radius:20px;
margin-top:45px;
}
.closing{
text-align:center;
font-size:21px;
font-weight:bold;
color:#806619;
margin:35px 0;
}
@media(max-width:750px){
.content{padding:28px 20px}
.header h1{font-size:31px}
}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Med-P1-025 · Primer grado de primaria</div>
<h1>Descubrimos qué tan largos son los objetos</h1>
<p>Aprende a observar y comparar el tamaño de los objetos que te rodean.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección aprenderás a comparar objetos utilizando las palabras
largo, corto, alto, bajo, ancho y angosto.
También aprenderás a colocar objetos juntos para comparar directamente sus longitudes.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás a describir y comparar las dimensiones de diferentes objetos.
</p>
</section>

<section class="section">
<h2>1. Largo y corto</h2>

<p>
Cuando comparamos la longitud de dos objetos podemos decir que
uno es <strong>más largo</strong> y otro es <strong>más corto</strong>.
</p>

<div class="example">
<p><strong>Objeto largo</strong></p>
<div class="line-long"></div>

<p><strong>Objeto corto</strong></p>
<div class="line-short"></div>
</div>

<div class="important">
<p>
Para comparar correctamente, conviene colocar los objetos comenzando
desde el mismo punto.
</p>
</div>
</section>

<section class="section">
<h2>2. Alto y bajo</h2>

<p>
También podemos comparar objetos observando su altura.
</p>

<div class="example">
<p>
Un árbol puede ser <strong>alto</strong>, mientras que una pequeña
planta puede ser <strong>baja</strong>.
</p>
</div>

<div class="practice">
<p>
Observa dos objetos de tu salón. ¿Cuál es más alto? ¿Cuál es más bajo?
</p>
</div>
</section>

<section class="section">
<h2>3. Ancho y angosto</h2>

<p>
El ancho nos ayuda a comparar cuánto espacio ocupa un objeto de un lado al otro.
</p>

<div class="example">
<p>
Una puerta puede ser más <strong>ancha</strong> que una tabla.
La tabla puede ser más <strong>angosta</strong>.
</p>
</div>
</section>

<section class="section">
<h2>4. Comparación directa</h2>

<p>
Comparar directamente significa colocar dos objetos juntos
para observar cuál es más largo, corto, alto o ancho.
</p>

<div class="example">
<p>
Imagina dos lápices colocados desde el mismo punto.
Si uno llega más lejos, ese lápiz es el más largo.
</p>
</div>

<div class="practice">
<p>
Coloca dos lápices juntos y responde:
</p>
<ul>
<li>¿Cuál es más largo?</li>
<li>¿Cuál es más corto?</li>
<li>¿Miden aproximadamente lo mismo?</li>
</ul>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Podemos comparar objetos como largos o cortos.</li>
<li>También podemos decir que son altos o bajos.</li>
<li>Un objeto puede ser ancho o angosto.</li>
<li>Para comparar directamente, colocamos los objetos desde el mismo punto.</li>
</ul>
</section>

<div class="closing">
¡Muy bien! Ahora puedes comparar las dimensiones de diferentes objetos.
</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(431,32,758,'video','Atributos Medibles y Comparación Directa','<!-- etl-google-cloud-matematicas:media-plan:53 -->
<p>Vídeo expositivo que muestra las dimensiones de objetos cotidianos para identificar si son largos/cortos, altos/bajos, anchos/angostos y compararlos directamente. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(432,33,759,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:27:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P1-026 | Medimos con pasos, palmas y objetos</title>

<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,Helvetica,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px 35px;text-align:center}
.code{display:inline-block;background:rgba(255,255,255,.65);padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E;margin:15px 0 10px}
.header p{max-width:750px;margin:auto;color:#6B5819;font-size:18px}
.content{padding:40px 45px}
.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.description{background:#FFF8D6;border-left:6px solid #F2C94C}
.objective{background:#FFFDF0;border:2px solid #F5DF8B}
.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.section{margin:45px 0}
.section h2{color:#7A6117;font-size:27px;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.measure{text-align:center;font-size:28px;font-weight:bold;color:#725A10;background:#FFF8D6;padding:20px;border-radius:15px;margin:20px 0}
.summary{background:#F2C94C;color:#4D3E0D;padding:30px;border-radius:20px;margin-top:45px}
.closing{text-align:center;font-size:21px;font-weight:bold;color:#806619;margin:35px 0}
@media(max-width:750px){.content{padding:28px 20px}.header h1{font-size:31px}}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Med-P1-026 · Primer grado de primaria</div>
<h1>Medimos con pasos, palmas y objetos</h1>
<p>Descubre cómo medir utilizando objetos y partes de nuestro cuerpo.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección aprenderás a medir longitudes utilizando pasos,
palmas y lápices. También descubrirás por qué debemos mantener
la misma unidad durante toda una medición y aprenderás a hacer estimaciones.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás diferentes maneras sencillas de medir objetos y distancias
sin utilizar todavía una regla.
</p>
</section>

<section class="section">
<h2>1. Medición con pasos</h2>

<p>
Podemos medir distancias contando nuestros pasos.
</p>

<div class="example">
<p>
Si necesitamos \(8\) pasos para llegar desde una mesa hasta una puerta,
podemos decir que esa distancia mide aproximadamente \(8\) pasos.
</p>

<div class="measure">\(8\) pasos</div>
</div>
</section>

<section class="section">
<h2>2. Medición con palmas</h2>

<p>
Podemos colocar nuestra mano varias veces sobre una superficie
y contar cuántas palmas mide.
</p>

<div class="example">
<p>
Una mesa puede medir aproximadamente \(6\) palmas de largo.
</p>
<div class="measure">\(6\) palmas</div>
</div>
</section>

<section class="section">
<h2>3. Medición con lápices</h2>

<p>
Un mismo objeto también puede servir como unidad de medida.
</p>

<div class="example">
<p>
Si colocamos varias veces el mismo lápiz junto al borde de una mesa
y cabe \(5\) veces, podemos decir:
</p>

<div class="measure">
La mesa mide aproximadamente \(5\) lápices.
</div>
</div>
</section>

<section class="section">
<h2>4. Uso de una misma unidad</h2>

<p>
Para obtener una medición más clara debemos utilizar siempre
la <strong>misma unidad</strong>.
</p>

<div class="important">
<p>
No debemos medir primero con un lápiz grande y después con uno pequeño,
porque las unidades tienen tamaños diferentes.
</p>
</div>

<div class="example">
<p>
Si comenzamos a medir con un lápiz, utilizamos ese mismo lápiz
hasta terminar la medición.
</p>
</div>
</section>

<section class="section">
<h2>5. Estimación de longitudes</h2>

<p>
Estimar significa pensar cuánto creemos que mide algo
antes de comprobarlo.
</p>

<div class="example">
<p>
Antes de medir una mesa puedes pensar:
</p>

<div class="measure">
“Creo que mide aproximadamente \(7\) palmas”.
</div>

<p>
Después puedes medirla para comprobar qué tan cerca estuvo tu estimación.
</p>
</div>

<div class="practice">
<p>
Antes de medir tu cuaderno con un lápiz, responde:
</p>
<p><strong>¿Cuántos lápices crees que mide?</strong></p>
<p>Después realiza la medición y compara.</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Podemos medir distancias con pasos.</li>
<li>Podemos medir objetos con palmas.</li>
<li>También podemos utilizar lápices.</li>
<li>Debemos mantener la misma unidad durante toda la medición.</li>
<li>Estimar significa pensar aproximadamente cuánto mide algo.</li>
</ul>
</section>

<div class="closing">
¡Excelente! Ya puedes realizar tus primeras mediciones.
</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(433,33,759,'video','Medición con Unidades No Convencionales','<!-- etl-google-cloud-matematicas:media-plan:54 -->
<p>Vídeo expositivo que enseña a medir la longitud de diversos objetos e itinerarios utilizando pasos, palmas de la mano y lápices. 5-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(434,33,759,'video','Unidad Fija y Estimación de Longitudes','<!-- etl-google-cloud-matematicas:media-plan:55 -->
<p>Vídeo didáctico sobre la importancia de usar una misma unidad de medida y cómo estimar longitudes antes de medirlas. 8-9</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(435,34,760,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:28:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P1-027 | Masa</title>
<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}
.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E}
.header p{color:#6B5819;font-size:18px}
.content{padding:40px 45px}
.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.description{background:#FFF8D6;border-left:6px solid #F2C94C}
.objective{background:#FFFDF0;border:2px solid #F5DF8B}
.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.section{margin:45px 0}
.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.balance{text-align:center;font-size:45px;padding:20px;background:#FFF8D6;border-radius:16px}
.summary{background:#F2C94C;padding:30px;border-radius:20px;color:#4D3E0D}
.closing{text-align:center;color:#806619;font-weight:bold;font-size:21px;margin:35px}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Med-P1-027 · Primer grado de primaria</div>
<h1>Descubrimos qué objetos pesan más o menos</h1>
<p>Compara objetos y descubre cuáles son pesados y cuáles son ligeros.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
Aprenderás a comparar la masa de diferentes objetos utilizando
las palabras pesado y ligero, además de conocer cómo puede ayudarnos una balanza.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Podrás comparar objetos y reconocer cuál pesa más, cuál pesa menos
y cuándo dos objetos pueden estar en equilibrio.
</p>
</section>

<section class="section">
<h2>1. Pesado y ligero</h2>

<p>
Algunos objetos son más pesados que otros.
</p>

<div class="example">
<p>
Una mochila llena de libros puede ser más <strong>pesada</strong>
que un lápiz.
</p>

<p>
El lápiz es más <strong>ligero</strong>.
</p>
</div>
</section>

<section class="section">
<h2>2. Comparación directa</h2>

<p>
Podemos sostener dos objetos, uno en cada mano, para sentir
cuál parece pesar más.
</p>

<div class="practice">
<p>
Compara un cuaderno y un lápiz.</p>
<p>¿Cuál parece más pesado?</p>
</div>
</section>

<section class="section">
<h2>3. Uso inicial de una balanza</h2>

<p>
Una balanza permite comparar la masa de dos objetos.
</p>

<div class="balance">⚖</div>

<div class="important">
<p>
El lado que baja indica que ese objeto pesa más.
El lado que sube corresponde al objeto más ligero.
</p>
</div>
</section>

<section class="section">
<h2>4. Equilibrio</h2>

<p>
Cuando ambos lados de una balanza permanecen a la misma altura,
decimos que existe <strong>equilibrio</strong>.
</p>

<div class="example">
<p>
Esto puede indicar que los objetos tienen masas iguales
o muy parecidas.
</p>
</div>
</section>

<section class="section">
<h2>5. Estimar qué objeto pesa más</h2>

<p>
Antes de utilizar una balanza podemos observar dos objetos
y hacer una estimación.
</p>

<div class="example">
<p>
¿Qué crees que pesa más: una pelota o una mochila con libros?
</p>
<p>
Después podemos utilizar una balanza para comprobar nuestra idea.
</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Un objeto puede ser pesado o ligero.</li>
<li>Podemos comparar objetos directamente.</li>
<li>Una balanza ayuda a comparar masas.</li>
<li>Una balanza puede mostrar equilibrio.</li>
<li>Podemos estimar qué objeto pesa más antes de comprobarlo.</li>
</ul>
</section>

<div class="closing">
¡Muy bien! Ahora puedes comparar la masa de diferentes objetos.
</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(436,34,760,'video','Noción de Peso y Comparación Directa','<!-- etl-google-cloud-matematicas:media-plan:56 -->
<p>Vídeo expositivo que introduce los conceptos de pesado y ligero mediante la comparación directa entre dos objetos cotidianos. 1-2</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(437,34,760,'video','Uso de la Balanza y Estimación de Peso','<!-- etl-google-cloud-matematicas:media-plan:57 -->
<p>Vídeo didáctico que muestra el funcionamiento inicial de una balanza, el estado de equilibrio y cómo estimar qué objeto pesa más. 3-5</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(438,35,761,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:29:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P1-028 | Capacidad</title>

<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}
.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E}
.content{padding:40px 45px}
.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.description{background:#FFF8D6;border-left:6px solid #F2C94C}
.objective{background:#FFFDF0;border:2px solid #F5DF8B}
.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.section{margin:45px 0}
.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.cups{text-align:center;font-size:60px;padding:20px;background:#FFF8D6;border-radius:16px}
.summary{background:#F2C94C;padding:30px;border-radius:20px;color:#4D3E0D}
.closing{text-align:center;color:#806619;font-size:21px;font-weight:bold;margin:35px}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Med-P1-028 · Primer grado de primaria</div>
<h1>Descubrimos cuánto cabe en un recipiente</h1>
<p>Compara recipientes y descubre cuáles pueden contener más o menos.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
Aprenderás a reconocer recipientes llenos y vacíos,
comparar su capacidad y utilizar líquidos para comprobar
en cuál recipiente cabe una mayor cantidad.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás que la capacidad indica cuánto puede contener un recipiente.
</p>
</section>

<section class="section">
<h2>1. Lleno y vacío</h2>

<div class="cups">🥛 &nbsp;&nbsp; 🥤</div>

<p>
Un recipiente está <strong>lleno</strong> cuando contiene una cantidad
hasta su límite.
</p>

<p>
Está <strong>vacío</strong> cuando no contiene nada.
</p>
</section>

<section class="section">
<h2>2. Mayor capacidad</h2>

<p>
Un recipiente tiene mayor capacidad cuando puede contener
más cantidad que otro.
</p>

<div class="example">
<p>
Una cubeta normalmente puede contener más agua que un vaso.
Por eso tiene una capacidad mayor.
</p>
</div>
</section>

<section class="section">
<h2>3. Menor capacidad</h2>

<p>
Un recipiente tiene menor capacidad cuando puede contener
menos cantidad.
</p>

<div class="example">
<p>
Una taza normalmente tiene menor capacidad que una jarra.
</p>
</div>
</section>

<section class="section">
<h2>4. Comparación mediante recipientes</h2>

<p>
Podemos llenar diferentes recipientes utilizando la misma cantidad
pequeña, por ejemplo una taza.
</p>

<div class="practice">
<p>
Si para llenar una jarra necesitamos \(5\) tazas y para llenar
otro recipiente necesitamos \(3\), ¿cuál tiene mayor capacidad?
</p>

<p>
La jarra que necesita \(5\) tazas tiene mayor capacidad.
</p>
</div>
</section>

<section class="section">
<h2>5. Trasvase de líquidos</h2>

<p>
Trasvasar significa pasar un líquido de un recipiente a otro.
</p>

<div class="example">
<p>
Podemos llenar un recipiente y después pasar el agua a otro
para observar si cabe toda, sobra o falta.
</p>
</div>

<div class="important">
<p>
El trasvase nos permite comparar capacidades de manera directa.
</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Un recipiente puede estar lleno o vacío.</li>
<li>Algunos recipientes tienen mayor capacidad.</li>
<li>Otros tienen menor capacidad.</li>
<li>Podemos comparar recipientes utilizando una misma unidad.</li>
<li>Trasvasar significa pasar un líquido de un recipiente a otro.</li>
</ul>
</section>

<div class="closing">
¡Excelente! Ya puedes comparar la capacidad de diferentes recipientes.
</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(439,35,761,'video','Conceptos de Capacidad','<!-- etl-google-cloud-matematicas:media-plan:58 -->
<p>Vídeo expositivo que muestra los estados de lleno y vacío en recipientes e identifica cuál tiene mayor o menor capacidad. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(440,35,761,'video','Comparación y Trasvase de Líquidos','<!-- etl-google-cloud-matematicas:media-plan:59 -->
<p>Vídeo didáctico que enseña a comparar la capacidad de distintos contenedores mediante la técnica del trasvase de líquidos. 4-5</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(441,36,762,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:30:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P1-029 | Tiempo</title>

<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px;text-align:center}
.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E}
.header p{color:#6B5819;font-size:18px}
.content{padding:40px 45px}
.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.description{background:#FFF8D6;border-left:6px solid #F2C94C}
.objective{background:#FFFDF0;border:2px solid #F5DF8B}
.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.section{margin:45px 0}
.section h2{color:#7A6117;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.sequence{text-align:center;font-size:22px;font-weight:bold;color:#725A10;background:#FFF8D6;padding:20px;border-radius:15px}
.days{display:flex;flex-wrap:wrap;justify-content:center;gap:8px;margin:20px}
.day{background:#F2C94C;padding:10px 13px;border-radius:10px;color:#59470F;font-weight:bold}
.clock{text-align:center;font-size:60px;margin:20px}
.summary{background:#F2C94C;padding:30px;border-radius:20px;color:#4D3E0D}
.closing{text-align:center;color:#806619;font-weight:bold;font-size:21px;margin:35px}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Med-P1-029 · Primer grado de primaria</div>
<h1>Aprendemos a organizar el tiempo</h1>
<p>Descubre cómo organizamos los días, las actividades y las horas.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
Aprenderás las ideas de antes y después, ayer, hoy y mañana,
día y noche. También conocerás los días de la semana,
los meses, el calendario y la hora en punto.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás a ubicar acontecimientos en el tiempo y a ordenar
actividades de acuerdo con el momento en que ocurren.
</p>
</section>

<section class="section">
<h2>1. Antes y después</h2>

<p>
Utilizamos <strong>antes</strong> y <strong>después</strong>
para explicar el orden en que ocurren las cosas.
</p>

<div class="example">
<div class="sequence">
Despertar → desayunar → ir a la escuela
</div>

<p>
Despertamos antes de desayunar.
Vamos a la escuela después de desayunar.
</p>
</div>
</section>

<section class="section">
<h2>2. Ayer, hoy y mañana</h2>

<div class="example">
<p><strong>Ayer:</strong> el día que ya pasó.</p>
<p><strong>Hoy:</strong> el día en que estamos.</p>
<p><strong>Mañana:</strong> el día que sigue.</p>
</div>
</section>

<section class="section">
<h2>3. Día y noche</h2>

<p>
Durante un día existen diferentes momentos.
</p>

<div class="example">
<p>☀️ Durante el día tenemos luz del Sol.</p>
<p>🌙 Durante la noche el cielo se oscurece.</p>
</div>
</section>

<section class="section">
<h2>4. Días de la semana</h2>

<div class="days">
<div class="day">Lunes</div>
<div class="day">Martes</div>
<div class="day">Miércoles</div>
<div class="day">Jueves</div>
<div class="day">Viernes</div>
<div class="day">Sábado</div>
<div class="day">Domingo</div>
</div>

<div class="important">
<p>
Una semana tiene \(7\) días.
</p>
</div>
</section>

<section class="section">
<h2>5. Meses del año</h2>

<p>
Un año está organizado en \(12\) meses.
</p>

<div class="example">
<p>
Enero, febrero, marzo, abril, mayo, junio,
julio, agosto, septiembre, octubre, noviembre y diciembre.
</p>
</div>
</section>

<section class="section">
<h2>6. Calendario</h2>

<p>
Un calendario nos ayuda a organizar días, semanas y meses.
</p>

<div class="practice">
<p>
Podemos utilizarlo para localizar cumpleaños, días de clases,
vacaciones y otras fechas importantes.
</p>
</div>
</section>

<section class="section">
<h2>7. Orden de actividades</h2>

<p>
Podemos colocar actividades según el momento en que ocurren.
</p>

<div class="example">
<div class="sequence">
Despertar → desayunar → estudiar → comer → dormir
</div>
</div>

<div class="practice">
<p>
¿Qué haces primero por la mañana?
¿Qué actividad realizas después?
</p>
</div>
</section>

<section class="section">
<h2>8. Hora en punto</h2>

<p>
El reloj nos permite saber qué hora es.
</p>

<div class="clock">🕒</div>

<div class="example">
<p>
Cuando la manecilla larga señala el \(12\), podemos hablar
de una <strong>hora en punto</strong>.
</p>

<p>
Por ejemplo:
</p>

<p><strong>\(3{:}00\) — las tres en punto.</strong></p>
</div>

<div class="important">
<p>
Esta es una primera introducción al uso del reloj.
Más adelante aprenderás a reconocer otros horarios.
</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Antes y después indican el orden de los acontecimientos.</li>
<li>Podemos hablar de ayer, hoy y mañana.</li>
<li>Reconocemos el día y la noche.</li>
<li>Una semana tiene \(7\) días.</li>
<li>Un año tiene \(12\) meses.</li>
<li>El calendario nos ayuda a organizar fechas.</li>
<li>Las actividades pueden colocarse en orden temporal.</li>
<li>El reloj permite reconocer la hora en punto.</li>
</ul>
</section>

<div class="closing">
¡Muy bien! Ahora puedes organizar diferentes acontecimientos en el tiempo.
</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(442,36,762,'video','Secuencia Temporal y Días de la Semana','<!-- etl-google-cloud-matematicas:media-plan:60 -->
<p>Vídeo expositivo sobre las nociones de antes/después, ayer/hoy/mañana, día/noche y la secuencia de los días de la semana. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(443,36,762,'video','Meses, Calendario y la Hora en Punto','<!-- etl-google-cloud-matematicas:media-plan:61 -->
<p>Vídeo didáctico que explica los meses del año, la lectura del calendario para ordenar actividades y la introducción a la hora en punto en el reloj. 5-8</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(444,37,763,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:31:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P1-030 | Aprendemos a utilizar el dinero</title>

<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFFBEA;color:#37474F;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#FFF;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(0,0,0,.08)}
.header{background:linear-gradient(135deg,#FFF1A8,#F6D76B);padding:45px 35px;text-align:center}
.code{display:inline-block;background:#ffffffa6;padding:7px 17px;border-radius:30px;color:#725A10;font-weight:bold}
.header h1{font-size:38px;color:#5F4B0E;margin:15px 0}
.header p{max-width:750px;margin:auto;color:#6B5819;font-size:18px}
.content{padding:40px 45px}
.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.description{background:#FFF8D6;border-left:6px solid #F2C94C}
.objective{background:#FFFDF0;border:2px solid #F5DF8B}
.example{background:#FFF9E6;border:2px solid #F4DA80}
.practice{background:#FFF6C7;border:2px solid #E9CF71}
.important{background:#FFF1A8;border-left:6px solid #D9AE2B}
.section{margin:45px 0}
.section h2{color:#7A6117;font-size:27px;border-bottom:3px solid #F8E49C;padding-bottom:8px}
.money-row{display:flex;justify-content:center;gap:15px;flex-wrap:wrap;margin:25px}
.coin{
width:75px;height:75px;border-radius:50%;
background:#F2C94C;border:4px solid #CDA72F;
display:flex;align-items:center;justify-content:center;
font-size:18px;font-weight:bold;color:#5A460D;
}
.operation{text-align:center;background:#FFF8D6;padding:17px;border-radius:15px;font-size:27px;font-weight:bold;color:#725A10;margin:18px}
.product-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:15px;margin:22px 0}
.product{background:#FFFDF5;border:2px solid #EFD77E;border-radius:16px;padding:20px;text-align:center}
.summary{background:#F2C94C;padding:30px;border-radius:20px;color:#4D3E0D;margin-top:45px}
.closing{text-align:center;color:#806619;font-size:21px;font-weight:bold;margin:35px}
@media(max-width:750px){.content{padding:28px 20px}.product-grid{grid-template-columns:1fr}.header h1{font-size:31px}}
</style>
</head>

<body>
<div class="lesson">

<header class="header">
<div class="code">Med-P1-030 · Primer grado de primaria</div>
<h1>Aprendemos a utilizar el dinero</h1>
<p>Conoce las monedas y descubre cómo podemos utilizarlas para comprar.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>
En esta lección aprenderás a reconocer monedas, identificar su valor,
formar cantidades pequeñas, comparar precios, realizar compras sencillas
y calcular cambios básicos.
</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>
Aprenderás que las monedas representan diferentes valores
y que podemos combinarlas para formar cantidades.
</p>
</section>

<section class="section">
<h2>1. Reconocimiento de monedas</h2>

<p>
En México utilizamos monedas para pagar diferentes productos.
</p>

<div class="money-row">
<div class="coin">\(1\) peso</div>
<div class="coin">\(2\) pesos</div>
<div class="coin">\(5\) pesos</div>
<div class="coin">\(10\) pesos</div>
</div>

<div class="important">
<p>
Aunque todas son monedas, no todas tienen el mismo valor.
</p>
</div>
</section>

<section class="section">
<h2>2. Valor de las monedas</h2>

<p>
El número que aparece en una moneda nos ayuda a reconocer su valor.
</p>

<div class="example">
<p>
Una moneda de \(1\) peso tiene menor valor que una moneda de \(5\) pesos.
</p>

<div class="operation">
\(1<5\)
</div>
</div>
</section>

<section class="section">
<h2>3. Formación de cantidades pequeñas</h2>

<p>
Podemos juntar monedas para formar una cantidad.
</p>

<div class="example">
<p>
Una moneda de \(5\) pesos y una moneda de \(2\) pesos forman:
</p>

<div class="operation">
\(5+2=7\)
</div>

<p>
Tenemos \(7\) pesos.
</p>
</div>

<div class="practice">
<p>
Una moneda de \(5\) pesos y dos monedas de \(1\) peso:
</p>

<div class="operation">
\(5+1+1=7\)
</div>
</div>
</section>

<section class="section">
<h2>4. Comparación de precios</h2>

<div class="product-grid">

<div class="product">
<strong>Lápiz</strong>
<p>\(3\) pesos</p>
</div>

<div class="product">
<strong>Cuaderno</strong>
<p>\(8\) pesos</p>
</div>

<div class="product">
<strong>Borrador</strong>
<p>\(2\) pesos</p>
</div>

</div>

<div class="example">
<p>
El cuaderno es el producto de mayor precio porque cuesta \(8\) pesos.
</p>

<p>
El borrador cuesta menos porque su precio es de \(2\) pesos.
</p>
</div>
</section>

<section class="section">
<h2>5. Compra sencilla</h2>

<div class="example">
<p>
Quieres comprar un lápiz que cuesta \(4\) pesos.
Tienes una moneda de \(5\) pesos.
</p>

<p>
Como \(5\) es mayor que \(4\), tienes suficiente dinero para comprarlo.
</p>
</div>

<div class="practice">
<p>
Un juguete cuesta \(7\) pesos y tienes \(5\) pesos.
</p>

<p>
¿Tienes suficiente?
</p>

<p>
No, porque:
</p>

<div class="operation">
\(5<7\)
</div>
</div>
</section>

<section class="section">
<h2>6. Cálculo básico del cambio</h2>

<p>
Cuando pagamos con una cantidad mayor que el precio,
podemos recibir dinero de regreso. Ese dinero se llama
<strong>cambio</strong>.
</p>

<div class="example">
<p>
Un producto cuesta \(7\) pesos y pagamos con \(10\) pesos.
</p>

<p>
Calculamos:
</p>

<div class="operation">
\(10-7=3\)
</div>

<p>
El cambio es de \(3\) pesos.
</p>
</div>

<div class="practice">
<p>
Un producto cuesta \(6\) pesos y pagas con \(10\).
¿Cuánto cambio recibes?
</p>

<div class="operation">
\(10-6=4\)
</div>

<p>
Recibes \(4\) pesos de cambio.
</p>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Las monedas tienen diferentes valores.</li>
<li>Podemos reconocer el valor de una moneda.</li>
<li>Varias monedas pueden formar una cantidad.</li>
<li>Podemos comparar precios.</li>
<li>Para comprar necesitamos tener suficiente dinero.</li>
<li>El cambio es el dinero que recibimos cuando pagamos una cantidad mayor al precio.</li>
</ul>
</section>

<div class="closing">
¡Excelente! Ya conoces algunas formas sencillas de utilizar el dinero.
</div>

</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(445,37,763,'video','Reconocimiento y Valor de Monedas','<!-- etl-google-cloud-matematicas:media-plan:62 -->
<p>Vídeo expositivo sobre la identificación de las monedas de uso corriente, su valor nominal y cómo formar cantidades pequeñas. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(446,37,763,'video','Precios, Compras y Cambio Sencillo','<!-- etl-google-cloud-matematicas:media-plan:63 -->
<p>Vídeo didáctico que muestra cómo comparar precios de productos, simular una compra sencilla y calcular el cambio recibido. 4-6</p>',NULL,0,'generic','Básica',10,NULL,0,3,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(447,38,674,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:32:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Ari-P2-031 | Conocemos los números de hasta tres cifras</title>

<style>

* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 25px 15px;
  font-family: Arial, Helvetica, sans-serif;
  background: #FFF5F5;
  color: #3E454A;
  line-height: 1.7;
}

.lesson {
  max-width: 1000px;
  margin: auto;
  background: #FFFFFF;
  border-radius: 24px;
  overflow: hidden;
  box-shadow: 0 8px 28px rgba(120, 50, 50, 0.10);
}

/* ENCABEZADO */

.header {
  background: linear-gradient(135deg, #FADADD, #F3B9BE);
  padding: 45px 35px;
  text-align: center;
}

.code {
  display: inline-block;
  background: rgba(255,255,255,0.70);
  padding: 7px 17px;
  border-radius: 30px;
  color: #8A454B;
  font-weight: bold;
  font-size: 14px;
}

.header h1 {
  margin: 15px 0 12px;
  color: #7A3E44;
  font-size: 38px;
}

.header p {
  max-width: 750px;
  margin: auto;
  color: #784B50;
  font-size: 18px;
}

/* CONTENIDO */

.content {
  padding: 40px 45px 55px;
}

.description {
  background: #FFF0F1;
  border-left: 6px solid #E9A1A8;
  padding: 23px 25px;
  border-radius: 16px;
  margin-bottom: 30px;
}

.objective {
  background: #FFF8F8;
  border: 2px solid #F0C7CB;
  padding: 22px 25px;
  border-radius: 16px;
  margin-bottom: 40px;
}

.description h2,
.objective h2 {
  margin-top: 0;
  color: #8D4B52;
}

.section {
  margin: 45px 0;
}

.section h2 {
  color: #8A454B;
  font-size: 27px;
  border-bottom: 3px solid #F2CDD0;
  padding-bottom: 8px;
}

.section h3 {
  color: #825158;
}

/* TARJETAS */

.example,
.practice,
.important {
  padding: 22px;
  border-radius: 16px;
  margin: 22px 0;
}

.example {
  background: #FFF5F5;
  border: 2px solid #EFC8CB;
}

.practice {
  background: #FDEBED;
  border: 2px solid #E8B6BB;
}

.important {
  background: #F9DDE0;
  border-left: 6px solid #D98991;
}

/* NÚMEROS */

.number-row {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 10px;
  margin: 25px 0;
}

.number-box {
  min-width: 65px;
  height: 60px;
  padding: 0 12px;
  display: flex;
  justify-content: center;
  align-items: center;

  background: #E9A1A8;
  border: 2px solid #D48890;
  border-radius: 14px;

  color: #642F35;
  font-size: 21px;
  font-weight: bold;
}

.number-box.light {
  background: #F7D7DA;
}

/* TABLA POSICIONAL */

.place-table {
  width: 100%;
  max-width: 600px;
  margin: 25px auto;
  border-collapse: collapse;
  text-align: center;
}

.place-table th {
  background: #E9A1A8;
  color: #603137;
  padding: 14px;
  font-size: 18px;
}

.place-table td {
  background: #FFF8F8;
  border: 2px solid #EBC5C9;
  padding: 17px;
  font-size: 24px;
  font-weight: bold;
}

/* BLOQUES */

.blocks {
  display: flex;
  align-items: flex-end;
  justify-content: center;
  flex-wrap: wrap;
  gap: 15px;
  margin: 25px 0;
}

.unit {
  width: 35px;
  height: 35px;
  background: #E9A1A8;
  border: 2px solid #CC7B84;
  border-radius: 7px;
}

.ten {
  width: 42px;
  height: 120px;
  background: #F2BEC3;
  border: 3px solid #D78C94;
  border-radius: 8px;

  display: flex;
  justify-content: center;
  align-items: center;

  color: #703B41;
  font-weight: bold;
}

.hundred {
  width: 150px;
  height: 150px;
  background:
    linear-gradient(90deg, rgba(255,255,255,.35) 1px, transparent 1px),
    linear-gradient(rgba(255,255,255,.35) 1px, transparent 1px),
    #E9A1A8;

  background-size: 15px 15px;
  border: 3px solid #C8757E;
  border-radius: 10px;

  display: flex;
  justify-content: center;
  align-items: center;

  color: #623238;
  font-size: 23px;
  font-weight: bold;
}

/* OPERACIONES */

.operation {
  background: #FFF0F1;
  padding: 17px;
  margin: 18px 0;
  border-radius: 15px;

  text-align: center;
  color: #81454C;
  font-size: 28px;
  font-weight: bold;
}

/* RETOS */

.challenge {
  background: #FDEBED;
  border: 2px solid #E4AFB5;
  border-radius: 20px;
  padding: 28px;
  margin-top: 45px;
}

.challenge h2 {
  margin-top: 0;
  color: #86464D;
}

.question {
  background: #FFFFFF;
  border: 1px solid #EAC3C7;
  border-radius: 14px;
  padding: 20px;
  margin: 18px 0;
}

.answer {
  background: #F8D9DC;
  padding: 10px 14px;
  border-radius: 10px;
  color: #713A40;
  font-weight: bold;
}

/* RESUMEN */

.summary {
  background: #E9A1A8;
  color: #542D32;
  padding: 30px;
  border-radius: 20px;
  margin-top: 45px;
}

.summary h2 {
  margin-top: 0;
  color: #542D32;
}

.closing {
  text-align: center;
  font-size: 21px;
  font-weight: bold;
  color: #8A454B;
  margin-top: 35px;
}

@media(max-width:750px) {

  .content {
    padding: 28px 20px 45px;
  }

  .header h1 {
    font-size: 31px;
  }

  .hundred {
    width: 120px;
    height: 120px;
  }

}

</style>
</head>


<body>

<div class="lesson">


<!-- ENCABEZADO -->

<header class="header">

  <div class="code">
    Ari-P2-031 · Segundo grado de primaria
  </div>

  <h1>Conocemos los números de hasta tres cifras</h1>

  <p>
    Aprende a leer, escribir y representar números utilizando
    centenas, decenas y unidades.
  </p>

</header>


<main class="content">


<!-- DESCRIPCIÓN -->

<section class="description">

  <h2>Descripción del contenido</h2>

  <p>
    En esta lección aprenderás a leer y escribir números,
    reconocer centenas, decenas y unidades, y comprender cómo
    podemos formar cantidades mediante agrupaciones de diez
    y agrupaciones de cien.
  </p>

  <p>
    También utilizarás representaciones visuales para comprender
    mejor el valor que tiene cada cifra según la posición
    que ocupa dentro de un número.
  </p>

</section>


<!-- OBJETIVO -->

<section class="objective">

  <h2>¿Qué aprenderás?</h2>

  <p>
    Al terminar esta lección podrás leer y escribir diferentes
    números, identificar centenas, decenas y unidades y representar
    cantidades mediante grupos de \(10\) y de \(100\).
  </p>

</section>


<!-- INTRODUCCIÓN -->

<section class="section">

<h2>Los números pueden representar cantidades grandes</h2>

<p>
En primer grado aprendimos a reconocer y utilizar diferentes números.
Ahora continuaremos avanzando hacia cantidades mayores.
</p>

<p>
Para comprenderlas mejor podemos organizar los números en:
</p>

<ul>
  <li><strong>Unidades</strong>.</li>
  <li><strong>Decenas</strong>.</li>
  <li><strong>Centenas</strong>.</li>
</ul>

<div class="important">

<strong>Recuerda:</strong>

<p>
\(10\) unidades forman \(1\) decena y
\(10\) decenas forman \(1\) centena.
</p>

</div>

</section>


<!-- SUBTEMA 1 -->

<section class="section">

<h2>1. Lectura de números hasta \(1{,}000\)</h2>

<p>
Cada número tiene una manera de leerse.
Podemos comenzar con números de una cifra y avanzar
hacia números cada vez mayores.
</p>

<div class="example">

<h3>Observa algunos ejemplos</h3>

<p>
\(8\) se lee <strong>ocho</strong>.
</p>

<p>
\(25\) se lee <strong>veinticinco</strong>.
</p>

<p>
\(48\) se lee <strong>cuarenta y ocho</strong>.
</p>

<p>
\(100\) se lee <strong>cien</strong>.
</p>

<p>
\(234\) se lee <strong>doscientos treinta y cuatro</strong>.
</p>

<p>
\(500\) se lee <strong>quinientos</strong>.
</p>

<p>
\(1{,}000\) se lee <strong>mil</strong>.
</p>

</div>


<div class="practice">

<strong>Practica la lectura</strong>

<p>
Lee en voz alta:
</p>

<div class="number-row">

<div class="number-box">\(32\)</div>
<div class="number-box">\(105\)</div>
<div class="number-box">\(240\)</div>
<div class="number-box">\(361\)</div>

</div>

<p>
Se leen:
</p>

<ul>
<li>treinta y dos;</li>
<li>ciento cinco;</li>
<li>doscientos cuarenta;</li>
<li>trescientos sesenta y uno.</li>
</ul>

</div>

</section>


<!-- SUBTEMA 2 -->

<section class="section">

<h2>2. Escritura de números</h2>

<p>
Además de leer los números, debemos aprender a representarlos
utilizando cifras.
</p>

<div class="example">

<p>
Si escuchamos <strong>treinta y cinco</strong>, escribimos:
</p>

<div class="operation">
\(35\)
</div>

<p>
Si escuchamos <strong>ciento veinte</strong>, escribimos:
</p>

<div class="operation">
\(120\)
</div>

<p>
Si escuchamos <strong>trescientos cuarenta y dos</strong>, escribimos:
</p>

<div class="operation">
\(342\)
</div>

</div>

<div class="practice">

<strong>Relaciona:</strong>

<p>
Doscientos cinco → \(205\)
</p>

<p>
Cuatrocientos treinta → \(430\)
</p>

<p>
Setecientos doce → \(712\)
</p>

</div>

</section>


<!-- SUBTEMA 3 -->

<section class="section">

<h2>3. Centenas, decenas y unidades</h2>

<p>
La posición de una cifra nos ayuda a comprender cuánto vale
dentro de un número.
</p>

<p>
Observa:
</p>

<div class="operation">
\(352\)
</div>

<table class="place-table">

<tr>
<th>Centenas</th>
<th>Decenas</th>
<th>Unidades</th>
</tr>

<tr>
<td>\(3\)</td>
<td>\(5\)</td>
<td>\(2\)</td>
</tr>

</table>

<p>
El número \(352\) tiene:
</p>

<ul>
<li>\(3\) centenas;</li>
<li>\(5\) decenas;</li>
<li>\(2\) unidades.</li>
</ul>

<div class="example">

<p>
Esto significa:
</p>

<div class="operation">
\(300+50+2=352\)
</div>

</div>


<div class="practice">

<strong>Observa el número \(624\)</strong>

<table class="place-table">

<tr>
<th>Centenas</th>
<th>Decenas</th>
<th>Unidades</th>
</tr>

<tr>
<td>\(6\)</td>
<td>\(2\)</td>
<td>\(4\)</td>
</tr>

</table>

<p>
Tiene \(6\) centenas, \(2\) decenas y \(4\) unidades.
</p>

</div>

</section>


<!-- SUBTEMA 4 -->

<section class="section">

<h2>4. Agrupaciones de diez</h2>

<p>
Cuando tenemos muchos objetos podemos agruparlos para
contarlos de manera más sencilla.
</p>

<div class="important">

<p>
Cada grupo de \(10\) unidades forma
<strong>una decena</strong>.
</p>

<div class="operation">
\(10\) unidades \(=\) \(1\) decena
</div>

</div>


<div class="example">

<p>
Observa estas barras:
</p>

<div class="blocks">

<div class="ten">\(10\)</div>
<div class="ten">\(10\)</div>
<div class="ten">\(10\)</div>

</div>

<p>
Tenemos \(3\) grupos de \(10\).
</p>

<div class="operation">
\(10+10+10=30\)
</div>

<p>
Por lo tanto:
</p>

<p>
\(3\) decenas \(=\) \(30\) unidades.
</p>

</div>


<div class="practice">

<p>
¿Cuántas unidades representan \(5\) decenas?
</p>

<div class="operation">
\(5\times10=50\)
</div>

<p>
\(5\) decenas representan \(50\) unidades.
</p>

</div>

</section>


<!-- SUBTEMA 5 -->

<section class="section">

<h2>5. Agrupaciones de cien</h2>

<p>
Cuando reunimos \(10\) decenas obtenemos una cantidad todavía mayor.
</p>

<div class="important">

<div class="operation">
\(10\) decenas \(=\) \(100\) unidades
</div>

<p>
A este grupo de \(100\) unidades lo llamamos
<strong>una centena</strong>.
</p>

</div>


<div class="example">

<p>
Este bloque representa una centena:
</p>

<div class="blocks">

<div class="hundred">
\(100\)
</div>

</div>

<p>
Una centena representa:
</p>

<div class="operation">
\(100\) unidades
</div>

<p>
y también:
</p>

<div class="operation">
\(10\) decenas
</div>

</div>


<h3>Más de una centena</h3>

<p>
Podemos tener varias centenas.
</p>

<div class="number-row">

<div class="number-box">\(100\)</div>
<div class="number-box">\(200\)</div>
<div class="number-box">\(300\)</div>
<div class="number-box">\(400\)</div>
<div class="number-box">\(500\)</div>

</div>

<div class="example">

<p>
Si tenemos \(3\) centenas:
</p>

<div class="operation">
\(100+100+100=300\)
</div>

<p>
Entonces \(3\) centenas representan \(300\).
</p>

</div>


<div class="practice">

<p>
¿Cuánto representan \(4\) centenas?
</p>

<div class="operation">
\(4\times100=400\)
</div>

<p>
Representan \(400\) unidades.
</p>

</div>

</section>


<!-- INTEGRACIÓN -->

<section class="section">

<h2>Juntamos centenas, decenas y unidades</h2>

<p>
Ahora podemos utilizar lo aprendido para representar un número completo.
</p>

<div class="example">

<p>
Queremos representar:
</p>

<div class="operation">
\(243\)
</div>

<p>
Necesitamos:
</p>

<ul>
<li>\(2\) centenas;</li>
<li>\(4\) decenas;</li>
<li>\(3\) unidades.</li>
</ul>

<div class="operation">
\(200+40+3=243\)
</div>

</div>


<div class="important">

<strong>Observa la relación:</strong>

<p>
\(10\) unidades \(=\) \(1\) decena.
</p>

<p>
\(10\) decenas \(=\) \(1\) centena.
</p>

<p>
\(100\) unidades \(=\) \(1\) centena.
</p>

</div>

</section>


<!-- RETOS -->

<section class="challenge">

<h2>Practiquemos lo aprendido</h2>


<div class="question">

<h3>Reto 1</h3>

<p>
¿Cómo se lee el número \(125\)?
</p>

<div class="answer">
Ciento veinticinco.
</div>

</div>


<div class="question">

<h3>Reto 2</h3>

<p>
Escribe con cifras:
<strong>trescientos cuarenta y dos</strong>.
</p>

<div class="answer">
\(342\)
</div>

</div>


<div class="question">

<h3>Reto 3</h3>

<p>
¿Cuántas centenas, decenas y unidades tiene \(471\)?
</p>

<div class="answer">
\(4\) centenas, \(7\) decenas y \(1\) unidad.
</div>

</div>


<div class="question">

<h3>Reto 4</h3>

<p>
¿Cuántas unidades forman \(6\) decenas?
</p>

<div class="answer">
\(60\) unidades.
</div>

</div>


<div class="question">

<h3>Reto 5</h3>

<p>
¿Cuántas unidades forman \(3\) centenas?
</p>

<div class="answer">
\(300\) unidades.
</div>

</div>


<div class="question">

<h3>Reto 6</h3>

<p>
¿Qué número formamos con \(5\) centenas,
\(2\) decenas y \(6\) unidades?
</p>

<div class="answer">
\(526\)
</div>

</div>

</section>


<!-- RESUMEN -->

<section class="summary">

<h2>Recuerda</h2>

<ul>

<li>
Podemos leer y escribir números cada vez mayores.
</li>

<li>
Las cifras pueden ocupar el lugar de centenas, decenas o unidades.
</li>

<li>
\(10\) unidades forman \(1\) decena.
</li>

<li>
\(10\) decenas forman \(1\) centena.
</li>

<li>
\(1\) centena representa \(100\) unidades.
</li>

<li>
La posición de una cifra nos ayuda a conocer su valor.
</li>

<li>
Podemos utilizar bloques y agrupaciones para representar números.
</li>

</ul>

</section>


<div class="closing">
¡Excelente! Ya puedes leer, escribir y representar números utilizando centenas, decenas y unidades.
</div>


</main>
</div>

</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(448,38,674,'video','Lectura, Escritura y Agrupación hasta el 1,000','<!-- etl-google-cloud-matematicas:media-plan:64 -->
<p>Vídeo expositivo que muestra la lectura y escritura de números hasta 1,000, identificando la posición de centenas, decenas y unidades mediante agrupaciones de diez y de cien. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(449,39,675,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:33:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P2-032 | Construimos y descomponemos números</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px 15px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px #7832321a}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px 35px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.header h1{color:#7A3E44;font-size:38px;margin:15px 0}.header p{color:#784B50}.content{padding:40px 45px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED;border:2px solid #E8B6BB}.important{background:#F9DDE0;border-left:6px solid #D98991}.section{margin:42px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0;padding-bottom:8px}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:16px;border-radius:15px;font-size:27px;font-weight:bold;margin:16px 0}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;font-size:21px;margin:35px}
</style>
</head>
<body>
<div class="lesson">

<header class="header">
<div class="code">Ari-P2-032 · Segundo grado de primaria</div>
<h1>Construimos y descomponemos números</h1>
<p>Descubre cómo se forman los números y cómo podemos separarlos en centenas, decenas y unidades.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>Aprenderás a componer y descomponer números, utilizar notación desarrollada, reconocer números anteriores, posteriores e intermedios y completar secuencias.</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>Comprenderás cómo están formados los números y utilizarás su estructura para leerlos, escribirlos y ubicarlos correctamente.</p>
</section>

<section class="section">
<h2>1. Composición de números</h2>
<p>Componer significa formar un número utilizando centenas, decenas y unidades.</p>
<div class="example">
<p>Tenemos \(3\) centenas, \(4\) decenas y \(6\) unidades:</p>
<div class="operation">\(300+40+6=346\)</div>
</div>
</section>

<section class="section">
<h2>2. Descomposición aditiva</h2>
<p>Descomponer significa separar un número de acuerdo con el valor de cada una de sus cifras.</p>
<div class="operation">\(582=500+80+2\)</div>
<div class="practice"><p>Descompón \(731\).</p><strong>\(731=700+30+1\)</strong></div>
</section>

<section class="section">
<h2>3. Notación desarrollada</h2>
<p>La notación desarrollada muestra cuánto vale cada cifra.</p>
<div class="operation">\(409=400+0+9\)</div>
<div class="important"><p>El \(0\) indica que en \(409\) no hay decenas.</p></div>
</section>

<section class="section">
<h2>4. Número anterior y posterior</h2>
<p>El número anterior aparece justo antes y el posterior justo después.</p>
<div class="example">
<div class="operation">\(248,\ 249,\ 250\)</div>
<p>Anterior a \(249\): \(248\). Posterior a \(249\): \(250\).</p>
</div>
</section>

<section class="section">
<h2>5. Números intermedios</h2>
<p>Son los números que se encuentran entre dos cantidades.</p>
<div class="example">
<p>Entre \(320\) y \(324\) encontramos:</p>
<div class="operation">\(321,\ 322,\ 323\)</div>
</div>
</section>

<section class="section">
<h2>6. Secuencias numéricas</h2>
<p>Una secuencia coloca números siguiendo un orden o una regla.</p>
<div class="operation">\(150,\ 151,\ 152,\ 153,\ 154\)</div>
<div class="practice">
<p>Completa: \(296,\ 297,\ \_\_,\ 299\).</p>
<strong>Falta \(298\).</strong>
</div>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Podemos componer números con centenas, decenas y unidades.</li>
<li>También podemos descomponerlos.</li>
<li>La notación desarrollada muestra el valor de cada cifra.</li>
<li>Cada número tiene anterior y posterior.</li>
<li>Podemos encontrar números intermedios.</li>
<li>Las secuencias siguen un orden.</li>
</ul>
</section>

<div class="closing">¡Excelente! Ya puedes construir y descomponer números.</div>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(450,39,675,'video','Composición, Descomposición y Secuencias hasta el 1,000','<!-- etl-google-cloud-matematicas:media-plan:65 -->
<p>Vídeo didáctico que explica la composición, descomposición aditiva y notación desarrollada de números, identificando el número anterior, posterior e intermedios en secuencias. 6-11</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(451,40,676,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:34:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P2-033 | Comparamos y ordenamos números</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{color:#8A555B;font-weight:bold;margin-top:15px}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:34px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Ari-P2-033 · Segundo grado</div><div class="topic">Tema: Comparación y orden</div><h1>Comparamos y ordenamos números</h1><p>Decide qué números son mayores, menores o iguales.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Compararás centenas, decenas y unidades y aprenderás a ordenar y aproximar números.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Podrás comparar cantidades y ubicarlas correctamente.</p></section>

<section class="section"><h2>1. Comparación por centenas</h2><div class="operation">\(534>421\)</div></section>
<section class="section"><h2>2. Comparación por decenas</h2><div class="operation">\(472>451\)</div></section>
<section class="section"><h2>3. Comparación por unidades</h2><div class="operation">\(386>382\)</div></section>
<section class="section"><h2>4. Signos \(>\), \(<\) y \(=\)</h2><div class="example"><p>\(650>620\)</p><p>\(315<351\)</p><p>\(408=408\)</p></div></section>
<section class="section"><h2>5. Orden ascendente</h2><div class="operation">\(125,\ 240,\ 318,\ 500\)</div></section>
<section class="section"><h2>6. Orden descendente</h2><div class="operation">\(900,\ 720,\ 410,\ 205\)</div></section>
<section class="section"><h2>7. Ubicación en la recta numérica</h2><div class="operation">\(100\rightarrow200\rightarrow300\rightarrow400\)</div></section>
<section class="section"><h2>8. Aproximación a decenas</h2><div class="example"><p>\(43\approx40\)</p><p>\(48\approx50\)</p></div></section>

<section class="practice"><h2>Practiquemos</h2><p>Ordena \(342,\ 125,\ 500,\ 278\).</p><p><strong>\(125,\ 278,\ 342,\ 500\)</strong></p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Compara centenas primero.</li><li>Después observa decenas y unidades.</li><li>Los números pueden ordenarse de menor a mayor o de mayor a menor.</li></ul></section>
<div class="closing">¡Ya puedes comparar y ordenar números!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(452,40,676,'video','Comparación, Orden y Recta Numérica hasta el 1,000','<!-- etl-google-cloud-matematicas:media-plan:66 -->
<p>Vídeo expositivo sobre la comparación de números por centenas, decenas y unidades usando signos (&gt;, &lt;, =), el orden ascendente/descendente, ubicación en la recta y aproximación a decenas. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(453,41,677,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:35:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P2-034 | Sumamos números</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.important{background:#F9DDE0;border-left:6px solid #D98991}.section{margin:35px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">

<header class="header"><div class="code">Ari-P2-034 · Segundo grado</div><div class="topic">Tema: Suma de dos y tres cifras</div><h1>Sumamos números de dos y tres cifras</h1><p>Aprende a organizar y resolver sumas.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás suma horizontal, vertical, alineación de cifras y sumas con y sin transformación.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Resolverás sumas respetando el valor posicional.</p></section>

<section class="section"><h2>1. Suma horizontal</h2><div class="operation">\(125+213=338\)</div></section>
<section class="section"><h2>2. Suma vertical</h2><div class="example"><pre style="font-size:23px;text-align:center"> 125
+213
----
 338</pre></div></section>
<section class="section"><h2>3. Alineación de unidades</h2><p>Unidades debajo de unidades, decenas debajo de decenas y centenas debajo de centenas.</p></section>
<section class="section"><h2>4. Sumas sin transformación</h2><div class="operation">\(243+325=568\)</div></section>
<section class="section"><h2>5. Sumas con transformación</h2><div class="example"><p>\(8+7=15\): dejamos \(5\) unidades y transformamos \(10\) unidades en una decena.</p><div class="operation">\(28+17=45\)</div></div></section>

<section class="practice"><h2>Practiquemos</h2><p>\(136+242=\ ?\)</p><p><strong>\(378\)</strong></p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Organiza correctamente las cifras.</li><li>Podemos transformar \(10\) unidades en una decena.</li></ul></section>
<div class="closing">¡Excelente! Ya puedes sumar números de varias cifras.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(454,41,677,'video','Sumas Horizontales, Verticales y Sin Transformación','<!-- etl-google-cloud-matematicas:media-plan:67 -->
<p>Vídeo expositivo que enseña la alineación de unidades en sumas horizontales y verticales de dos y tres cifras sin transformación. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(455,42,678,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:36:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P2-035 | Estrategias de suma</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{color:#8A555B;font-weight:bold;margin-top:15px}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:35px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Ari-P2-035 · Segundo grado</div><div class="topic">Tema: Suma de dos y tres cifras</div><h1>Agrupamos, estimamos y comprobamos sumas</h1><p>Utiliza estrategias para resolver y revisar sumas.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás agrupamiento, sumas con varios sumandos, estimación y comprobación.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Resolverás sumas utilizando agrupaciones y estrategias de revisión.</p></section>
<section class="section"><h2>1. Agrupamiento de \(10\) unidades</h2><div class="operation">\(10U=1D\)</div></section>
<section class="section"><h2>2. Agrupamiento de \(10\) decenas</h2><div class="operation">\(10D=1C\)</div></section>
<section class="section"><h2>3. Sumas con varios sumandos</h2><div class="operation">\(120+45+30=195\)</div></section>
<section class="section"><h2>4. Estimación</h2><div class="example"><p>\(247+351\approx200+400\approx600\)</p></div></section>
<section class="section"><h2>5. Comprobación</h2><p>Repite el cálculo o compara el resultado con una estimación.</p></section>
<section class="practice"><h2>Practiquemos</h2><p>\(245+130=375\).</p><p>¿Es razonable? Sí.</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Agrupa cuando llegues a \(10\).</li><li>Estima antes de calcular.</li><li>Comprueba el resultado.</li></ul></section>
<div class="closing">¡Muy bien! Ya puedes revisar tus sumas.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(456,42,678,'video','Sumas Con Transformación, Varios Sumandos y Estimación','<!-- etl-google-cloud-matematicas:media-plan:68 -->
<p>Vídeo didáctico sobre cómo realizar sumas con transformación reagrupando unidades y decenas, sumando varios sumandos, estimando y comprobando el resultado. 6-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(457,43,679,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:37:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P2-036 | Restamos números</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{color:#8A555B;font-weight:bold;margin-top:15px}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:33px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P2-036 · Segundo grado</div><div class="topic">Tema: Resta de dos y tres cifras</div><h1>Restamos números de dos y tres cifras</h1><p>Aprende a disminuir cantidades utilizando el valor posicional.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Resolverás restas con transformaciones, desagrupamiento, ceros, comprobación y estimación.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Resolverás y comprobarás restas de varias cifras.</p></section>
<section class="section"><h2>1. Restas sin transformación</h2><div class="operation">\(568-245=323\)</div></section>
<section class="section"><h2>2. Restas con transformación</h2><div class="operation">\(52-28=24\)</div></section>
<section class="section"><h2>3. Desagrupamiento de decenas</h2><div class="operation">\(1D=10U\)</div></section>
<section class="section"><h2>4. Desagrupamiento de centenas</h2><div class="operation">\(1C=10D\)</div></section>
<section class="section"><h2>5. Restas con ceros</h2><div class="operation">\(300-125=175\)</div></section>
<section class="section"><h2>6. Comprobación mediante suma</h2><div class="example"><p>\(83-35=48\)</p><p>\(48+35=83\)</p></div></section>
<section class="section"><h2>7. Estimación de diferencias</h2><div class="operation">\(397-205\approx400-200=200\)</div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Podemos desagrupar.</li><li>La suma comprueba una resta.</li><li>La estimación ayuda a revisar.</li></ul></section>
<div class="closing">¡Ya puedes resolver restas de varias cifras!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(458,43,679,'video','Resta de Dos y Tres Cifras con y sin Transformación','<!-- etl-google-cloud-matematicas:media-plan:69 -->
<p>Vídeo expositivo que muestra la resta con y sin transformación desagrupando decenas y centenas, operando con ceros, estimando diferencias y comprobando mediante suma. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(459,44,680,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:38:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P2-037 | Cálculo mental</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{color:#8A555B;font-weight:bold;margin-top:15px}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:30px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Ari-P2-037 · Segundo grado</div><div class="topic">Tema: Cálculo mental</div><h1>Desarrollamos el cálculo mental</h1><p>Encuentra resultados utilizando estrategias sencillas.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Practicarás decenas completas, dobles, mitades, complementos, descomposición y compensación.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Resolverás cálculos sin escribir todos los pasos.</p></section>
<section class="section"><h2>1. Sumas de decenas completas</h2><div class="operation">\(20+30=50\)</div></section>
<section class="section"><h2>2. Restas de decenas completas</h2><div class="operation">\(80-30=50\)</div></section>
<section class="section"><h2>3. Dobles</h2><div class="operation">\(8+8=16\)</div></section>
<section class="section"><h2>4. Mitades</h2><div class="operation">\(\text{Mitad de }20=10\)</div></section>
<section class="section"><h2>5. Complementos de \(10\)</h2><div class="operation">\(7+3=10\)</div></section>
<section class="section"><h2>6. Complementos de \(100\)</h2><div class="operation">\(70+30=100\)</div></section>
<section class="section"><h2>7. Descomposición de números</h2><div class="operation">\(36+20=30+20+6=56\)</div></section>
<section class="section"><h2>8. Compensación sencilla</h2><div class="example"><p>\(29+12\): piensa \(30+12=42\), después \(42-1=41\).</p></div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Utiliza relaciones que ya conoces.</li><li>Descompón números cuando sea útil.</li><li>La práctica mejora el cálculo mental.</li></ul></section>
<div class="closing">¡Excelente! Sigue practicando tu cálculo mental.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(460,44,680,'video','Estrategias de Cálculo Mental Additivo','<!-- etl-google-cloud-matematicas:media-plan:70 -->
<p>Vídeo didáctico para resolver mentalmente sumas y restas de decenas completas, dobles, mitades, complementos a 10 y 100, descomposición y compensación sencilla. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(461,45,681,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:39:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Ari-P2-038 | Problemas aditivos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{color:#8A555B;font-weight:bold;margin-top:15px}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:30px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Ari-P2-038 · Segundo grado</div><div class="topic">Tema: Problemas aditivos</div><h1>Resolvemos problemas aditivos</h1><p>Utiliza suma y resta en situaciones cotidianas.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Resolverás problemas de juntar, agregar, quitar, comparar, completar, cambio, dinero y dos operaciones.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Elegirás la operación correcta para resolver cada situación.</p></section>
<section class="section"><h2>1. Juntar</h2><div class="operation">\(18+12=30\)</div></section>
<section class="section"><h2>2. Agregar</h2><div class="operation">\(25+8=33\)</div></section>
<section class="section"><h2>3. Quitar</h2><div class="operation">\(40-13=27\)</div></section>
<section class="section"><h2>4. Comparar</h2><div class="operation">\(32-25=7\)</div></section>
<section class="section"><h2>5. Completar</h2><div class="operation">\(38+\square=50\)</div><p>\(\square=12\)</p></section>
<section class="section"><h2>6. Cambio</h2><div class="operation">\(60-48=12\)</div></section>
<section class="section"><h2>7. Problemas con dinero</h2><div class="operation">\(50-32=18\text{ pesos}\)</div></section>
<section class="section"><h2>8. Problemas con dos operaciones</h2><div class="example"><p>Había \(20\) lápices, agregamos \(10\) y usamos \(8\).</p><div class="operation">\(20+10-8=22\)</div></div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Lee con atención.</li><li>Identifica qué ocurre.</li><li>Selecciona suma o resta.</li></ul></section>
<div class="closing">¡Ya puedes resolver problemas aditivos!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(462,45,681,'video','Problemas Aditivos Directos y de Dos Operaciones','<!-- etl-google-cloud-matematicas:media-plan:71 -->
<p>Vídeo expositivo sobre la resolución de problemas de juntar, agregar, quitar, comparar, completar, cambio, compras con dinero y situaciones que requieren dos operaciones. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(463,46,682,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:40:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Ari-P2-039 | Grupos iguales</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{color:#8A555B;font-weight:bold;margin-top:15px}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:28px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Ari-P2-039 · Segundo grado</div><div class="topic">Tema: Grupos iguales</div><h1>Comprendemos la multiplicación con grupos iguales</h1><p>Representa cantidades repetidas mediante multiplicación.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás grupos iguales, sumas repetidas, arreglos, dobles, triples, factores y producto.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Relacionarás la suma repetida con la multiplicación.</p></section>
<section class="section"><h2>1. Agrupar cantidades</h2><p>\(3\) grupos de \(2\) forman \(6\).</p></section>
<section class="section"><h2>2. Sumas repetidas</h2><div class="operation">\(2+2+2=6\)</div></section>
<section class="section"><h2>3. Conteo por grupos</h2><div class="operation">\(3,\ 6,\ 9,\ 12\)</div></section>
<section class="section"><h2>4. Filas y columnas</h2><p>Dos filas de \(4\) objetos forman \(8\).</p></section>
<section class="section"><h2>5. Arreglos rectangulares</h2><div class="operation">\(3\times4=12\)</div></section>
<section class="section"><h2>6. Dobles</h2><div class="operation">\(2\times6=12\)</div></section>
<section class="section"><h2>7. Triples</h2><div class="operation">\(3\times4=12\)</div></section>
<section class="section"><h2>8. Relación entre suma y multiplicación</h2><div class="operation">\(5+5+5=3\times5=15\)</div></section>
<section class="section"><h2>9. Signo de multiplicación</h2><p>Utilizamos \(\times\).</p></section>
<section class="section"><h2>10. Factores y producto</h2><div class="operation">\(3\times5=15\)</div><p>\(3\) y \(5\) son factores; \(15\) es el producto.</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Multiplicar representa grupos iguales.</li><li>Los factores forman un producto.</li></ul></section>
<div class="closing">¡Muy bien! Ya comprendes la multiplicación inicial.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(464,46,682,'video','Concepto de Multiplicación y Arreglos Rectangulares','<!-- etl-google-cloud-matematicas:media-plan:72 -->
<p>Vídeo expositivo que introduce la multiplicación mediante agrupaciones, sumas repetidas, filas y columnas en arreglos rectangulares, dobles, triples y los términos factor y producto. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(465,47,683,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:41:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Ari-P2-040 | Tablas iniciales</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:30px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Ari-P2-040 · Segundo grado</div><div class="topic">Tema: Tablas iniciales</div><h1>Aprendemos las primeras tablas de multiplicar</h1><p>Descubre patrones en las tablas del \(1\), \(2\), \(5\) y \(10\).</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Practicarás tablas iniciales, patrones, multiplicaciones faltantes y sumas repetidas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Utilizarás patrones para calcular productos.</p></section>
<section class="section"><h2>1. Tabla del \(1\)</h2><div class="operation">\(1\times1=1,\ 1\times2=2,\ 1\times3=3\)</div></section>
<section class="section"><h2>2. Tabla del \(2\)</h2><div class="operation">\(2,\ 4,\ 6,\ 8,\ 10\)</div></section>
<section class="section"><h2>3. Tabla del \(5\)</h2><div class="operation">\(5,\ 10,\ 15,\ 20,\ 25\)</div></section>
<section class="section"><h2>4. Tabla del \(10\)</h2><div class="operation">\(10,\ 20,\ 30,\ 40,\ 50\)</div></section>
<section class="section"><h2>5. Patrones en las tablas</h2><p>La tabla del \(5\) termina en \(0\) o \(5\).</p></section>
<section class="section"><h2>6. Multiplicaciones faltantes</h2><div class="operation">\(5\times\square=20\)</div><p>\(\square=4\)</p></section>
<section class="section"><h2>7. Cálculo mediante sumas repetidas</h2><div class="operation">\(4\times2=2+2+2+2=8\)</div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Las tablas siguen patrones.</li><li>Las sumas repetidas ayudan a comprenderlas.</li></ul></section>
<div class="closing">¡Sigue practicando tus primeras tablas!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(466,47,683,'video','Tablas de Multiplicar Iniciales (1, 2, 5, 10)','<!-- etl-google-cloud-matematicas:media-plan:73 -->
<p>Vídeo didáctico que presenta el desarrollo y patrones en las tablas del 1, 2, 5 y 10, resolviendo productos faltantes con apoyo de sumas repetidas. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(467,48,684,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:42:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Ari-P2-041</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:30px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Ari-P2-041 · Segundo grado</div><div class="topic">Tema: Problemas de multiplicación</div><h1>Resolvemos problemas de multiplicación</h1><p>Utiliza grupos iguales en situaciones cotidianas.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Resolverás problemas de grupos iguales, cantidades repetidas, filas, columnas, precios, dobles y triples.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Reconocerás cuándo utilizar una multiplicación.</p></section>
<section class="section"><h2>1. Grupos iguales</h2><div class="operation">\(4\times3=12\)</div></section>
<section class="section"><h2>2. Cantidades repetidas</h2><div class="operation">\(5+5+5=3\times5=15\)</div></section>
<section class="section"><h2>3. Filas y columnas</h2><div class="operation">\(3\times4=12\)</div></section>
<section class="section"><h2>4. Precio de varios objetos iguales</h2><div class="example"><p>\(4\) lápices de \(5\) pesos.</p><div class="operation">\(4\times5=20\)</div></div></section>
<section class="section"><h2>5. Dobles y triples</h2><p>Doble de \(7=14\). Triple de \(5=15\).</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Identifica cuántos grupos hay.</li><li>Observa la cantidad de cada grupo.</li></ul></section>
<div class="closing">¡Ya puedes resolver problemas de multiplicación!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(468,48,684,'video','Problemas Multiplicativos Iniciales','<!-- etl-google-cloud-matematicas:media-plan:74 -->
<p>Vídeo expositivo sobre cómo resolver problemas que involucran grupos iguales, cantidades repetidas, arreglos en filas/columnas, precios de productos y dobles/triples. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(469,49,685,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:43:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Ari-P2-042</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:26px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Ari-P2-042 · Segundo grado</div><div class="topic">Tema: Reparto equitativo</div><h1>Aprendemos a repartir en partes iguales</h1><p>Distribuye cantidades de manera equitativa.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás reparto, grupos iguales, sobrantes, mitad, tercera y cuarta parte.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Resolverás repartos y comprenderás su relación con la multiplicación.</p></section>
<section class="section"><h2>1. Repartir objetos</h2><p>Todos reciben la misma cantidad.</p></section>
<section class="section"><h2>2. Formar grupos iguales</h2><p>\(12\) fichas pueden formar \(3\) grupos de \(4\).</p></section>
<section class="section"><h2>3. Cantidad por grupo</h2><div class="operation">\(12\div3=4\)</div></section>
<section class="section"><h2>4. Número de grupos</h2><div class="operation">\(12\div3=4\text{ grupos}\)</div></section>
<section class="section"><h2>5. Repartos exactos</h2><div class="operation">\(10\div2=5\)</div></section>
<section class="section"><h2>6. Repartos con sobrantes</h2><p>\(11\) entre \(2\): reciben \(5\) y sobra \(1\).</p></section>
<section class="section"><h2>7. Mitad</h2><div class="operation">\(\text{Mitad de }10=5\)</div></section>
<section class="section"><h2>8. Tercera parte</h2><div class="operation">\(\text{Tercera parte de }12=4\)</div></section>
<section class="section"><h2>9. Cuarta parte</h2><div class="operation">\(\text{Cuarta parte de }12=3\)</div></section>
<section class="section"><h2>10. Relación entre multiplicación y división</h2><div class="example"><p>\(3\times4=12\)</p><p>\(12\div3=4\)</p></div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Repartir significa formar grupos iguales.</li><li>Puede haber sobrantes.</li></ul></section>
<div class="closing">¡Excelente! Ya puedes realizar repartos sencillos.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(470,49,685,'video','Reparto Equitativo y Fracciones Básicas','<!-- etl-google-cloud-matematicas:media-plan:75 -->
<p>Vídeo expositivo que muestra cómo repartir objetos en grupos iguales, identificar repartos exactos y con sobrantes, e introduce la mitad, tercera y cuarta parte. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(471,50,686,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:44:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Ari-P2-043</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:30px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Ari-P2-043 · Segundo grado</div><div class="topic">Tema: Problemas de reparto</div><h1>Resolvemos problemas de reparto</h1><p>Utiliza repartos en situaciones cotidianas.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Resolverás repartos entre personas, equipos, cajas y situaciones con sobrantes.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Interpretarás repartos y agrupamientos.</p></section>
<section class="section"><h2>1. Repartir entre personas</h2><div class="operation">\(15\div3=5\)</div></section>
<section class="section"><h2>2. Formar equipos</h2><div class="operation">\(20\div5=4\)</div></section>
<section class="section"><h2>3. Guardar objetos en cajas</h2><div class="operation">\(18\div6=3\)</div></section>
<section class="section"><h2>4. Determinar cuántos grupos se forman</h2><div class="operation">\(24\div4=6\)</div></section>
<section class="section"><h2>5. Interpretar objetos sobrantes</h2><p>Con \(13\) fichas en grupos de \(4\), formamos \(3\) grupos y sobra \(1\).</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Identifica el total.</li><li>Determina cómo se agrupa.</li><li>Observa si sobran elementos.</li></ul></section>
<div class="closing">¡Ya puedes resolver problemas de reparto!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(472,50,686,'video','Problemas de Reparto e Interpretación de Sobrantes','<!-- etl-google-cloud-matematicas:media-plan:76 -->
<p>Vídeo didáctico que explica cómo resolver problemas de repartir entre personas, formar equipos, guardar objetos en cajas e interpretar el significado de lo que sobra. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(473,51,732,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:45:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Pat-P2-044</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:26px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Pat-P2-044 · Segundo grado</div><div class="topic">Tema: Patrones y sucesiones</div><h1>Descubrimos patrones y sucesiones</h1><p>Encuentra la regla que siguen números y figuras.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás secuencias, reglas, términos faltantes y patrones.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Continuarás sucesiones identificando su regla.</p></section>
<section class="section"><h2>1. Secuencias de \(2\) en \(2\)</h2><div class="operation">\(2,4,6,8,10\)</div></section>
<section class="section"><h2>2. Secuencias de \(3\) en \(3\)</h2><div class="operation">\(3,6,9,12,15\)</div></section>
<section class="section"><h2>3. Secuencias de \(5\) en \(5\)</h2><div class="operation">\(5,10,15,20,25\)</div></section>
<section class="section"><h2>4. Secuencias de \(10\) en \(10\)</h2><div class="operation">\(10,20,30,40,50\)</div></section>
<section class="section"><h2>5. Secuencias ascendentes</h2><div class="operation">\(100,110,120,130\)</div></section>
<section class="section"><h2>6. Secuencias descendentes</h2><div class="operation">\(50,45,40,35\)</div></section>
<section class="section"><h2>7. Identificación de reglas</h2><p>En \(4,8,12,16\), la regla es sumar \(4\).</p></section>
<section class="section"><h2>8. Términos faltantes</h2><div class="operation">\(6,9,\square,15\)</div><p>\(\square=12\)</p></section>
<section class="section"><h2>9. Patrones en tablas de multiplicar</h2><div class="operation">\(5,10,15,20,\ldots\)</div></section>
<section class="section"><h2>10. Patrones con figuras</h2><div class="example"><p>● ▲ ▲ ● ▲ ▲ ● ▲ ▲</p></div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Busca qué cambia.</li><li>Encuentra la regla.</li><li>Utilízala para continuar.</li></ul></section>
<div class="closing">¡Excelente! Ya reconoces patrones y sucesiones.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(474,51,732,'video','Patrones, Secuencias y Sucesiones Numéricas','<!-- etl-google-cloud-matematicas:media-plan:77 -->
<p>Vídeo expositivo que explica secuencias de 2 en 2, 3 en 3, 5 en 5 y 10 en 10 (ascendentes y descendentes), identificando reglas, términos faltantes y patrones visuales/numéricos. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(475,52,733,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:46:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Pat-P2-045</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:28px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Pat-P2-045 · Segundo grado</div><div class="topic">Tema: Igualdad y operaciones inversas</div><h1>Comprendemos igualdad y operaciones inversas</h1><p>Descubre cómo diferentes operaciones se relacionan.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás igualdades equivalentes, operaciones inversas y valores desconocidos.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Utilizarás relaciones entre operaciones para encontrar números faltantes.</p></section>
<section class="section"><h2>1. Igualdades equivalentes</h2><div class="operation">\(6+4=7+3\)</div></section>
<section class="section"><h2>2. Suma y resta como operaciones inversas</h2><div class="example"><p>\(8+5=13\)</p><p>\(13-5=8\)</p></div></section>
<section class="section"><h2>3. Multiplicación y reparto</h2><div class="example"><p>\(4\times3=12\)</p><p>\(12\div3=4\)</p></div></section>
<section class="section"><h2>4. Sumando desconocido</h2><div class="operation">\(27+\square=40\)</div><p>\(\square=13\)</p></section>
<section class="section"><h2>5. Sustraendo desconocido</h2><div class="operation">\(30-\square=18\)</div><p>\(\square=12\)</p></section>
<section class="section"><h2>6. Factor desconocido sencillo</h2><div class="operation">\(5\times\square=25\)</div><p>\(\square=5\)</p></section>
<section class="section"><h2>7. Uso de cuadros</h2><p>El cuadro representa un número desconocido.</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Las operaciones pueden relacionarse.</li><li>Podemos buscar cantidades desconocidas.</li></ul></section>
<div class="closing">¡Muy bien! Ya comprendes las operaciones inversas.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(476,52,733,'video','Igualdad y Operaciones Inversas','<!-- etl-google-cloud-matematicas:media-plan:78 -->
<p>Vídeo didáctico sobre igualdades equivalentes, la relación inversa entre suma/resta y multiplicación/reparto, y cómo hallar sumandos, sustraendos y factores desconocidos. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(477,53,741,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:47:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Geo-P2-046</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.section{margin:24px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.shape{text-align:center;background:#FFF0F1;color:#B6626C;font-size:45px;padding:15px;border-radius:14px}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Geo-P2-046 · Segundo grado</div><div class="topic">Tema: Figuras planas</div><h1>Exploramos las figuras planas</h1><p>Reconoce figuras observando sus características.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás figuras planas, lados, vértices y formas de clasificarlas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Compararás figuras según sus características.</p></section>
<section class="section"><h2>1. Triángulos</h2><div class="shape">△</div><p>\(3\) lados.</p></section>
<section class="section"><h2>2. Cuadrados</h2><div class="shape">□</div><p>\(4\) lados.</p></section>
<section class="section"><h2>3. Rectángulos</h2><div class="shape">▭</div></section>
<section class="section"><h2>4. Círculos</h2><div class="shape">○</div></section>
<section class="section"><h2>5. Pentágonos</h2><p>\(5\) lados.</p></section>
<section class="section"><h2>6. Hexágonos</h2><p>\(6\) lados.</p></section>
<section class="section"><h2>7. Lados</h2><p>Forman el contorno de muchas figuras.</p></section>
<section class="section"><h2>8. Vértices</h2><p>Son los puntos donde se unen lados.</p></section>
<section class="section"><h2>9. Figuras abiertas y cerradas</h2><p>Una figura cerrada tiene el contorno completo.</p></section>
<section class="section"><h2>10. Figuras con lados rectos y curvos</h2><p>Observa la forma del contorno.</p></section>
<section class="section"><h2>11. Composición y descomposición</h2><p>Podemos unir o separar figuras.</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Observa lados y vértices.</li><li>Compara el contorno.</li></ul></section>
<div class="closing">¡Ya puedes reconocer diferentes figuras planas!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(478,53,741,'video','Figuras Planas: Propiedades y Clasificación','<!-- etl-google-cloud-matematicas:media-plan:79 -->
<p>Vídeo expositivo que muestra las características de triángulos, cuadrados, rectángulos, círculos, pentágonos y hexágonos, identificando lados, vértices, bordes y composición de figuras. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(479,54,742,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:48:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Geo-P2-047</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.section{margin:30px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.visual{text-align:center;background:#FFF0F1;color:#B6626C;padding:18px;border-radius:15px;font-size:35px}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Geo-P2-047 · Segundo grado</div><div class="topic">Tema: Líneas y trayectorias</div><h1>Reconocemos líneas y trayectorias</h1><p>Identifica líneas y describe recorridos.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás líneas rectas, curvas, quebradas, segmentos, trayectos, giros y puntos de referencia.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Describirás recorridos utilizando diferentes referencias.</p></section>
<section class="section"><h2>1. Línea recta</h2><div class="visual">──────────</div></section>
<section class="section"><h2>2. Línea curva</h2><div class="visual">〰〰〰〰</div></section>
<section class="section"><h2>3. Línea quebrada</h2><div class="visual">╱╲╱╲╱╲</div></section>
<section class="section"><h2>4. Segmentos</h2><div class="visual">●──────●</div></section>
<section class="section"><h2>5. Trayectos</h2><p>Un trayecto es el recorrido entre dos lugares.</p></section>
<section class="section"><h2>6. Giros</h2><div class="visual">← ↑ → ↓</div></section>
<section class="section"><h2>7. Uso de puntos de referencia</h2><p>Ejemplo: “gira después del parque”.</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Existen diferentes tipos de líneas.</li><li>Los puntos de referencia nos ayudan a orientarnos.</li></ul></section>
<div class="closing">¡Muy bien! Ya puedes describir trayectos.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(480,54,742,'video','Tipos de Líneas y Trayectorias','<!-- etl-google-cloud-matematicas:media-plan:80 -->
<p>Vídeo didáctico que explica las características de líneas rectas, curvas, quebradas y segmentos, así como el seguimiento de trayectos y giros con puntos de referencia. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(481,55,743,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:49:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Geo-P2-048</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.section{margin:25px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.shape{text-align:center;font-size:48px;background:#FFF0F1;padding:15px;border-radius:14px}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Geo-P2-048 · Segundo grado</div><div class="topic">Tema: Cuerpos geométricos</div><h1>Conocemos los cuerpos geométricos</h1><p>Observa las formas tridimensionales que nos rodean.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Reconocerás diferentes cuerpos y sus superficies.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Compararás cuerpos geométricos por su forma.</p></section>
<section class="section"><h2>1. Cubo</h2><div class="shape">🧊</div></section>
<section class="section"><h2>2. Prisma rectangular</h2><div class="shape">📦</div></section>
<section class="section"><h2>3. Prisma triangular</h2><p>Tiene bases triangulares.</p></section>
<section class="section"><h2>4. Pirámide</h2><p>Sus caras laterales se unen en un vértice.</p></section>
<section class="section"><h2>5. Cilindro</h2><div class="shape">🥫</div></section>
<section class="section"><h2>6. Cono</h2><div class="shape">🍦</div></section>
<section class="section"><h2>7. Esfera</h2><div class="shape">⚽</div></section>
<section class="section"><h2>8. Caras</h2><p>Son las superficies que forman un cuerpo.</p></section>
<section class="section"><h2>9. Superficies planas y curvas</h2><p>Algunos cuerpos tienen una o ambas.</p></section>
<section class="section"><h2>10. Apilamiento de cuerpos</h2><p>Las superficies planas facilitan el apilamiento.</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Los cuerpos ocupan espacio.</li><li>Pueden tener superficies planas o curvas.</li></ul></section>
<div class="closing">¡Ya puedes reconocer cuerpos geométricos!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(482,55,743,'video','Cuerpos Geométricos y sus Propiedades','<!-- etl-google-cloud-matematicas:media-plan:81 -->
<p>Vídeo expositivo que identifica cubos, prismas, pirámides, cilindros, conos y esferas, analizando sus caras, superficies planas o curvas y su capacidad de apilamiento. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(483,56,764,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:50:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Med-P2-049</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.important{background:#F9DDE0;border-left:6px solid #D98991}.section{margin:29px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Med-P2-049 · Segundo grado</div><div class="topic">Tema: Longitud</div><h1>Medimos longitudes</h1><p>Utiliza centímetros y metros para medir.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás centímetros, metros, instrumentos, estimación y comparación.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Seleccionarás unidades e instrumentos para medir.</p></section>
<section class="section"><h2>1. Centímetro</h2><p>Se representa con \(\text{cm}\).</p></section>
<section class="section"><h2>2. Metro</h2><p>Se representa con \(\text{m}\).</p></section>
<section class="section"><h2>3. Uso de regla</h2><p>Inicia la medición desde el \(0\).</p></section>
<section class="section"><h2>4. Uso de cinta métrica</h2><p>Permite medir distancias mayores.</p></section>
<section class="section"><h2>5. Estimación</h2><p>Primero podemos hacer una aproximación.</p></section>
<section class="section"><h2>6. Comparación de medidas</h2><div class="operation">\(18\text{ cm}>14\text{ cm}\)</div></section>
<section class="section"><h2>7. Relación entre centímetros y metros</h2><div class="important"><div class="operation">\(100\text{ cm}=1\text{ m}\)</div></div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Utiliza la unidad adecuada.</li><li>La regla y cinta métrica permiten medir.</li></ul></section>
<div class="closing">¡Excelente! Ya puedes medir longitudes.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(484,56,764,'video','Medición de Longitudes: Centímetro y Metro','<!-- etl-google-cloud-matematicas:media-plan:82 -->
<p>Vídeo expositivo sobre el uso de la regla y la cinta métrica para medir en centímetros y metros, estimando, comparando medidas y relacionando ambas unidades. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(485,57,765,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:51:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Med-P2-050</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.section{margin:30px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Med-P2-050 · Segundo grado</div><div class="topic">Tema: Masa</div><h1>Comparamos y medimos masas</h1><p>Conoce unidades para describir cuánto pesa un objeto.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás gramo, kilogramo, medio kilogramo, balanza y comparación.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Compararás masas utilizando diferentes unidades.</p></section>
<section class="section"><h2>1. Gramo como introducción</h2><p>Se representa como \(\text{g}\).</p></section>
<section class="section"><h2>2. Kilogramo</h2><p>Se representa como \(\text{kg}\).</p></section>
<section class="section"><h2>3. Medio kilogramo</h2><div class="operation">\(\tfrac12\text{ kg}\)</div></section>
<section class="section"><h2>4. Uso de balanza</h2><p>Permite comparar masas.</p></section>
<section class="section"><h2>5. Comparación de masas</h2><div class="operation">\(2\text{ kg}>1\text{ kg}\)</div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Existen diferentes unidades de masa.</li><li>La balanza ayuda a comparar.</li></ul></section>
<div class="closing">¡Ya puedes comparar masas!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(486,57,765,'video','Medición de Masa: Gramo y Kilogramo','<!-- etl-google-cloud-matematicas:media-plan:83 -->
<p>Vídeo didáctico que introduce el gramo, kilogramo y medio kilogramo, mostrando la comparación de masas y el uso práctico de la balanza. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(487,58,766,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:52:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Med-P2-051</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.section{margin:30px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Med-P2-051 · Segundo grado</div><div class="topic">Tema: Capacidad</div><h1>Medimos la capacidad</h1><p>Descubre cuánto puede contener un recipiente.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás litro, medio litro, comparación y estimación.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Compararás recipientes mediante su capacidad.</p></section>
<section class="section"><h2>1. Litro</h2><p>Se representa con \(\text{L}\).</p></section>
<section class="section"><h2>2. Medio litro</h2><div class="operation">\(\tfrac12\text{ L}\)</div></section>
<section class="section"><h2>3. Comparación de recipientes</h2><div class="operation">\(2\text{ L}>1\text{ L}\)</div></section>
<section class="section"><h2>4. Estimación de capacidad</h2><p>Antes de medir podemos realizar una aproximación.</p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>El litro mide capacidad.</li><li>Podemos comparar y estimar.</li></ul></section>
<div class="closing">¡Muy bien! Ya puedes comparar capacidades.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(488,58,766,'video','Medición de Capacidad: Litro y Medio Litro','<!-- etl-google-cloud-matematicas:media-plan:84 -->
<p>Vídeo expositivo que explica el litro y medio litro mediante la estimación y comparación de contenedores de distintas capacidades. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(489,59,767,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:53:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Med-P2-052</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.section{margin:28px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Med-P2-052 · Segundo grado</div><div class="topic">Tema: Tiempo</div><h1>Leemos y organizamos el tiempo</h1><p>Aprende a interpretar horarios y duraciones.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás hora en punto, media hora, cuarto de hora, relojes, calendario y duración.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Interpretarás diferentes formas de representar el tiempo.</p></section>
<section class="section"><h2>1. Hora en punto</h2><div class="operation">\(4{:}00\)</div></section>
<section class="section"><h2>2. Media hora</h2><div class="operation">\(4{:}30\)</div><p>\(30\) minutos.</p></section>
<section class="section"><h2>3. Cuarto de hora</h2><div class="operation">\(15\text{ minutos}\)</div></section>
<section class="section"><h2>4. Reloj analógico</h2><p>Utiliza manecillas.</p></section>
<section class="section"><h2>5. Reloj digital</h2><div class="operation">\(08{:}30\)</div></section>
<section class="section"><h2>6. Calendario</h2><p>Organiza días, semanas y meses.</p></section>
<section class="section"><h2>7. Duración de actividades</h2><div class="example"><p>De \(9{:}00\) a \(10{:}00\) transcurre \(1\) hora.</p></div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>\(30\) minutos son media hora.</li><li>\(15\) minutos son un cuarto de hora.</li></ul></section>
<div class="closing">¡Ya puedes interpretar diferentes horarios!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(490,59,767,'video','El Tiempo: Reloj y Calendario','<!-- etl-google-cloud-matematicas:media-plan:85 -->
<p>Vídeo didáctico que enseña a leer la hora en punto, media hora y cuarto de hora en relojes analógicos y digitales, calcular la duración de actividades y usar el calendario. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(491,60,768,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:54:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Med-P2-053</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.section{margin:29px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.operation{text-align:center;background:#FFF0F1;color:#81454C;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Med-P2-053 · Segundo grado</div><div class="topic">Tema: Dinero</div><h1>Utilizamos monedas, billetes y precios</h1><p>Aprende a formar cantidades y resolver compras.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Reconocerás monedas y billetes, equivalencias, cantidades, precios, cambios y formas de pagar.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Utilizarás operaciones sencillas en situaciones con dinero.</p></section>
<section class="section"><h2>1. Monedas y billetes</h2><p>Tienen diferentes valores.</p></section>
<section class="section"><h2>2. Equivalencias</h2><div class="operation">\(5+5=10\)</div></section>
<section class="section"><h2>3. Formación de cantidades</h2><div class="operation">\(10+5+2=17\text{ pesos}\)</div></section>
<section class="section"><h2>4. Suma de precios</h2><div class="operation">\(12+8=20\text{ pesos}\)</div></section>
<section class="section"><h2>5. Cálculo del cambio</h2><div class="operation">\(50-37=13\text{ pesos}\)</div></section>
<section class="section"><h2>6. Diferentes maneras de pagar</h2><div class="example"><p>\(20=10+10\)</p><p>\(20=10+5+5\)</p></div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Una cantidad puede formarse de distintas maneras.</li><li>Sumamos precios y restamos para calcular cambio.</li></ul></section>
<div class="closing">¡Excelente! Ya puedes resolver situaciones con dinero.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(492,60,768,'video','Uso del Dinero: Monedas y Billetes','<!-- etl-google-cloud-matematicas:media-plan:86 -->
<p>Vídeo expositivo sobre el reconocimiento de monedas y billetes, sus equivalencias, la formación de cantidades, suma de precios, cálculo del cambio y formas de pago. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(493,61,782,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:55:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Est-P2-054</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.section{margin:25px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.table{width:100%;border-collapse:collapse}.table th{background:#E9A1A8;padding:12px}.table td{border:1px solid #EAC3C7;padding:12px;text-align:center}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Est-P2-054 · Segundo grado</div><div class="topic">Tema: Estadística</div><h1>Organizamos e interpretamos datos</h1><p>Reúne y representa información.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás encuestas, registros, tablas, pictogramas, gráficas y comparación de datos.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Organizarás información para comprenderla mejor.</p></section>
<section class="section"><h2>1. Encuestas sencillas</h2><p>Ejemplo: ¿Cuál es tu fruta favorita?</p></section>
<section class="section"><h2>2. Registro mediante marcas</h2><p>Manzana: ||||</p><p>Plátano: |||</p></section>
<section class="section"><h2>3. Tablas</h2><table class="table"><tr><th>Fruta</th><th>Cantidad</th></tr><tr><td>Manzana</td><td>\(4\)</td></tr><tr><td>Plátano</td><td>\(3\)</td></tr></table></section>
<section class="section"><h2>4. Pictogramas</h2><p>🍎🍎🍎🍎 representa \(4\).</p></section>
<section class="section"><h2>5. Gráficas de barras sencillas</h2><p>Cada barra representa una cantidad.</p></section>
<section class="section"><h2>6. Categoría más frecuente</h2><p>Es la que aparece más veces.</p></section>
<section class="section"><h2>7. Categoría menos frecuente</h2><p>Es la que aparece menos veces.</p></section>
<section class="section"><h2>8. Comparación de cantidades</h2><p>Podemos determinar cuánto más o menos aparece una categoría.</p></section>
<section class="section"><h2>9. Elaboración de preguntas sobre una gráfica</h2><div class="practice"><p>¿Cuál tiene más?</p><p>¿Cuál tiene menos?</p><p>¿Cuántos datos hay en total?</p></div></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Los datos pueden organizarse.</li><li>Las gráficas ayudan a interpretarlos.</li></ul></section>
<div class="closing">¡Ya puedes organizar e interpretar datos!</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(494,61,782,'video','Recolección, Organización y Gráficas de Datos','<!-- etl-google-cloud-matematicas:media-plan:87 -->
<p>Vídeo expositivo que muestra cómo realizar encuestas sencillas, registrar datos con marcas en tablas, elaborar pictogramas y gráficas de barras para identificar frecuencias y responder preguntas. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(495,62,789,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:56:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0"><title>Pro-P2-055</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#FFF5F5;color:#3E454A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#FADADD,#F3B9BE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffb3;padding:7px 17px;border-radius:30px;color:#8A454B;font-weight:bold}.topic{margin-top:15px;color:#8A555B;font-weight:bold}.header h1{color:#7A3E44}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#FFF0F1;border-left:6px solid #E9A1A8}.objective{background:#FFF8F8;border:2px solid #F0C7CB}.example{background:#FFF5F5;border:2px solid #EFC8CB}.practice{background:#FDEBED}.important{background:#F9DDE0;border-left:6px solid #D98991}.section{margin:27px 0}.section h2{color:#8A454B;border-bottom:3px solid #F2CDD0}.table{width:100%;border-collapse:collapse}.table th{background:#E9A1A8;padding:12px}.table td{border:1px solid #EAC3C7;padding:12px;text-align:center}.summary{background:#E9A1A8;color:#542D32;padding:30px;border-radius:20px}.closing{text-align:center;color:#8A454B;font-weight:bold;margin:35px}
</style></head><body><div class="lesson">
<header class="header"><div class="code">Pro-P2-055 · Segundo grado</div><div class="topic">Tema: Probabilidad</div><h1>Exploramos lo posible y lo probable</h1><p>Descubre que algunos resultados son más posibles que otros.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás eventos seguros, posibles, imposibles, muy probables y poco probables y realizarás experimentos sencillos.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Compararás posibilidades y registrarás resultados.</p></section>
<section class="section"><h2>1. Seguro</h2><div class="example"><p>Si una bolsa solo contiene fichas azules, sacar una azul es seguro.</p></div></section>
<section class="section"><h2>2. Posible</h2><p>Puede ocurrir.</p></section>
<section class="section"><h2>3. Imposible</h2><p>No puede ocurrir bajo las condiciones indicadas.</p></section>
<section class="section"><h2>4. Muy probable</h2><p>Tiene muchas posibilidades de ocurrir.</p></section>
<section class="section"><h2>5. Poco probable</h2><p>Tiene pocas posibilidades.</p></section>
<section class="section"><h2>6. Experimentos con monedas</h2><p>Podemos lanzar una moneda y observar el resultado.</p></section>
<section class="section"><h2>7. Experimentos con ruletas sencillas</h2><p>La ruleta produce resultados al azar.</p></section>
<section class="section"><h2>8. Registro de resultados</h2><table class="table"><tr><th>Resultado</th><th>Veces</th></tr><tr><td>Cara</td><td>\(6\)</td></tr><tr><td>Cruz</td><td>\(4\)</td></tr></table></section>
<section class="section"><h2>9. Comparación entre predicción y resultado</h2><p>Comparamos lo que pensamos que ocurriría con lo que realmente ocurrió.</p></section>
<section class="practice"><h2>Practiquemos</h2><p>Una bolsa tiene \(8\) fichas rojas y \(2\) azules. ¿Qué color es más probable?</p><p><strong>Rojo.</strong></p></section>
<section class="summary"><h2>Recuerda</h2><ul><li>Los eventos pueden tener diferentes posibilidades.</li><li>Los experimentos producen resultados que podemos registrar.</li></ul></section>
<div class="closing">¡Excelente! Ya conoces conceptos iniciales de probabilidad.</div>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(496,62,789,'video','Nociones de Probabilidad y Experimentos Sencillos','<!-- etl-google-cloud-matematicas:media-plan:88 -->
<p>Vídeo didáctico que introduce la escala de probabilidad (seguro, posible, imposible, muy/poco probable) analizando experimentos con monedas y ruletas para comparar predicciones y resultados. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(497,63,687,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:57:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-056 | Conocemos los números hasta 10,000</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-056 · Tercer grado de primaria</div>
<div class="topic">Tema: Números hasta 10,000</div>
<h1>Conocemos los números hasta 10,000</h1>
<p>Aprende a leer, escribir y reconocer números grandes.</p>
</header>
<main class="content">
<section class="description">
<h2>Descripción del contenido</h2>
<p>Trabajarás la lectura, escritura y valor posicional de números de hasta \(10{,}000\).</p>
</section>
<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>Identificarás unidades, decenas, centenas y unidades de millar.</p>
</section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Lectura de números hasta \(10{,}000\).</li>
<li>Escritura con cifra y con letra.</li>
<li>Valor posicional.</li>
<li>Unidades de millar.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(3{,}482=3{,}000+400+80+2\)</div>
<p>El número tiene \(3\) unidades de millar, \(4\) centenas, \(8\) decenas y \(2\) unidades.</p>
</section>
<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>La posición de cada cifra cambia su valor.</li>
<li>Después de centenas siguen las unidades de millar.</li>
</ul>
</section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(498,63,687,'video','Números de 4 Cifras','<!-- etl-google-cloud-matematicas:media-plan:89 -->
<p>Vídeo expositivo que introduce los números de cuatro cifras, la unidad de millar, su lectura y escritura, así como su composición y descomposición. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(499,64,688,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:58:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-057 | Componemos y descomponemos números</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-057 · Tercer grado de primaria</div>
<div class="topic">Tema: Composición y descomposición</div>
<h1>Componemos y descomponemos números</h1>
<p>Forma números y sepáralos según su valor posicional.</p>
</header>
<main class="content">
<section class="description">
<h2>Descripción del contenido</h2>
<p>Trabajarás composición, descomposición aditiva y notación desarrollada.</p>
</section>
<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>Formarás números a partir de millares, centenas, decenas y unidades.</p>
</section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Composición de números.</li>
<li>Descomposición aditiva.</li>
<li>Notación desarrollada.</li>
<li>Uso del cero en distintas posiciones.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(5{,}203=5{,}000+200+0+3\)</div>
<p>El cero indica que no hay decenas.</p>
</section>
<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Descomponer es separar un número según el valor de sus cifras.</li>
<li>Componer es formar un número a partir de cantidades.</li>
</ul>
</section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(500,64,688,'video','Cálculos con 4 Cifras','<!-- etl-google-cloud-matematicas:media-plan:90 -->
<p>Vídeo didáctico sobre el valor posicional, orden ascendente/descendente, comparación de cantidades, ubicación en la recta numérica, redondeo a decenas/centenas y estimación. 5-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(501,65,689,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:59:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-058 | Comparamos, ordenamos y ubicamos números</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-058 · Tercer grado de primaria</div>
<div class="topic">Tema: Comparación y orden</div>
<h1>Comparamos, ordenamos y ubicamos números</h1>
<p>Decide qué números son mayores o menores y colócalos en orden.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Compararás, ordenarás y ubicarás números en recta numérica.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Usarás los signos de comparación y el orden ascendente y descendente.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Signos \(>\), \(<\) y \(=\).</li>
<li>Orden ascendente y descendente.</li>
<li>Comparación por millares, centenas, decenas y unidades.</li>
<li>Ubicación en recta numérica.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(4{,}326 > 4{,}289\)</div>
<p>Se comparan primero los millares y después centenas, decenas y unidades.</p>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Compara de izquierda a derecha.</li><li>Ordenar es colocar números siguiendo una secuencia.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(502,65,689,'video','Suma y Resta de Tres y Cuatro Cifras','<!-- etl-google-cloud-matematicas:media-plan:91 -->
<p>Vídeo expositivo que explica el algoritmo para resolver operaciones aditivas de tres y cuatro cifras mediante transformaciones sucesivas. 1-2</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(503,66,690,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:60:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-059 | Sumamos con centenas y millares</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-059 · Tercer grado de primaria</div>
<div class="topic">Tema: Suma</div>
<h1>Sumamos con centenas y millares</h1>
<p>Aprende a sumar cantidades mayores de forma organizada.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Resolverás sumas con y sin transformación de hasta cuatro cifras.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Alinearás correctamente las cifras y usarás reagrupación cuando sea necesario.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Suma horizontal.</li>
<li>Suma vertical.</li>
<li>Transformación de unidades, decenas y centenas.</li>
<li>Comprobación de resultados.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(2{,}435+1{,}287=3{,}722\)</div>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Las cifras deben ir alineadas.</li><li>Si juntas \(10\) unidades, puedes transformarlas en \(1\) decena.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(504,66,690,'video','Tips de Suma y Resta de Tres y Cuatro Cifras','<!-- etl-google-cloud-matematicas:media-plan:92 -->
<p>Vídeo didáctico con estrategias para sumas con varios sumandos, restas con ceros, cálculo mental, estimación, comprobación y problemas con dos operaciones, dinero y medidas. 3-9</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(505,67,691,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:61:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-060 | Restamos con centenas y millares</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-060 · Tercer grado de primaria</div>
<div class="topic">Tema: Resta</div>
<h1>Restamos con centenas y millares</h1>
<p>Aprende a quitar cantidades mayores de manera ordenada.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Resolverás restas con y sin transformación de hasta cuatro cifras.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Desagruparás unidades, decenas o centenas cuando sea necesario.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Resta vertical.</li>
<li>Desagrupación.</li>
<li>Restas con ceros.</li>
<li>Comprobación mediante suma.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(4{,}052-1{,}786=2{,}266\)</div>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Si no alcanza una cifra, debes pedir prestado.</li><li>La suma puede servir para comprobar la resta.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(506,67,691,'video','Tablas de Multiplicar','<!-- etl-google-cloud-matematicas:media-plan:93 -->
<p>Vídeo expositivo que aborda el dominio de las tablas del 2 al 10, reconociendo patrones, la relación entre tablas, dobles/mitades, productos faltantes y cálculo mental. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(507,68,692,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:62:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-061 | Usamos cálculo mental y estimación</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-061 · Tercer grado de primaria</div>
<div class="topic">Tema: Cálculo mental y estimación</div>
<h1>Usamos cálculo mental y estimación</h1>
<p>Aprende a pensar resultados aproximados y rápidos.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Utilizarás redondeo, complementos y descomposición para calcular.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Resolverás cálculos sin hacer siempre la operación completa.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Redondeo a decenas y centenas.</li>
<li>Estimación de resultados.</li>
<li>Complementos de \(10\), \(100\) y \(1{,}000\).</li>
<li>Descomposición mental.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(398+201\approx400+200=600\)</div>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Estimar ayuda a revisar si un resultado es razonable.</li><li>El cálculo mental se fortalece con práctica.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(508,68,692,'video','Producto por Una Cifra','<!-- etl-google-cloud-matematicas:media-plan:94 -->
<p>Vídeo didáctico que enseña el algoritmo para multiplicar números de dos y tres cifras por una cifra mediante productos parciales. 1-3</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(509,69,693,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:63:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-062 | Resolvemos problemas aditivos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-062 · Tercer grado de primaria</div>
<div class="topic">Tema: Problemas aditivos</div>
<h1>Resolvemos problemas aditivos</h1>
<p>Usa suma y resta para resolver situaciones reales.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Resolverás problemas donde se juntan, quitan, comparan o completan cantidades.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Identificarás la operación adecuada según el problema.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Problemas de juntar.</li>
<li>Problemas de quitar.</li>
<li>Problemas de comparar.</li>
<li>Problemas de completar.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(1{,}250+875=2{,}125\)</div>
<p>Si un grupo tiene \(1{,}250\) libros y otro \(875\), juntos tienen \(2{,}125\).</p>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Primero comprende la situación.</li><li>Después elige la operación correcta.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(510,69,693,'video','Casos Especiales de Multiplicación','<!-- etl-google-cloud-matematicas:media-plan:95 -->
<p>Vídeo expositivo que explica la propiedad distributiva, la multiplicación por 10 y por 100, y técnicas para la estimación del producto. 4-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(511,70,694,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:64:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-063 | Multiplicamos por una cifra</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-063 · Tercer grado de primaria</div>
<div class="topic">Tema: Multiplicación</div>
<h1>Multiplicamos por una cifra</h1>
<p>Aprende a multiplicar cantidades mayores.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás multiplicación con arreglos, sumas repetidas y algoritmo vertical.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Resolverás multiplicaciones de dos y tres cifras por una cifra.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Multiplicación como suma repetida.</li>
<li>Arreglos rectangulares.</li>
<li>Multiplicación vertical.</li>
<li>Transformación en multiplicación.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(243\times3=729\)</div>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Multiplicar es sumar varias veces la misma cantidad.</li><li>La práctica con tablas ayuda mucho.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(512,70,694,'video','Problemas de Producto','<!-- etl-google-cloud-matematicas:media-plan:96 -->
<p>Vídeo didáctico sobre la resolución de problemas de grupos iguales, comparación multiplicativa, precio por cantidad, arreglos rectangulares, combinaciones y áreas. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(513,71,695,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:65:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-064 | Fortalecemos las tablas de multiplicar</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-064 · Tercer grado de primaria</div>
<div class="topic">Tema: Tablas de multiplicar</div>
<h1>Fortalecemos las tablas de multiplicar</h1>
<p>Descubre patrones y mejora tu rapidez al multiplicar.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Reforzarás las tablas y usarás productos conocidos para resolver otros.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Identificarás patrones y resolverás multiplicaciones con mayor fluidez.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Tablas del \(2\) al \(10\).</li>
<li>Patrones en las tablas.</li>
<li>Dobles, triples y mitades.</li>
<li>Productos faltantes.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(6\times4=24\)</div>
<p>Si sabes \(3\times4=12\), entonces el doble es \(24\).</p>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Las tablas tienen patrones.</li><li>Un producto conocido puede ayudarte a encontrar otro.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(514,71,695,'video','Introducción a la División','<!-- etl-google-cloud-matematicas:media-plan:97 -->
<p>Vídeo expositivo que explica el concepto de división mediante reparto, agrupamiento, la diferencia entre división exacta y con residuo, y su relación con las tablas. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(515,72,696,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:66:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-065 | Dividimos en partes iguales</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-065 · Tercer grado de primaria</div>
<div class="topic">Tema: División</div>
<h1>Dividimos en partes iguales</h1>
<p>Aprende a repartir y agrupar cantidades.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Comprenderás la división como reparto y agrupamiento.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Relacionarás división con multiplicación.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Reparto equitativo.</li>
<li>Agrupamiento.</li>
<li>Cociente exacto.</li>
<li>Relación entre multiplicación y división.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(24\div6=4\)</div>
<p>Si repartes \(24\) objetos en \(6\) grupos iguales, en cada grupo hay \(4\).</p>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Dividir es repartir o agrupar.</li><li>La multiplicación puede ayudarte a comprobar.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(516,72,696,'video','Algoritmo y Problemas de División','<!-- etl-google-cloud-matematicas:media-plan:98 -->
<p>Vídeo didáctico que muestra la división con dividendo de dos cifras y divisor de una cifra, identificando cociente, residuo, comprobación y resolución de problemas. 6-12</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(517,73,697,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:67:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-066 | Resolvemos problemas de multiplicación y división</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-066 · Tercer grado de primaria</div>
<div class="topic">Tema: Problemas multiplicativos</div>
<h1>Resolvemos problemas de multiplicación y división</h1>
<p>Usa multiplicación y división en situaciones reales.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Resolverás problemas relacionados con grupos iguales, arreglos y repartos.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Distinguirás cuándo conviene multiplicar y cuándo dividir.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Problemas de grupos iguales.</li>
<li>Problemas de arreglos rectangulares.</li>
<li>Problemas de reparto.</li>
<li>Problemas de agrupamiento.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(8\times6=48\)</div>
<p>Si hay \(8\) cajas con \(6\) lápices, hay \(48\) lápices en total.</p>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Observa si se repite una cantidad o si se reparte.</li><li>Eso te ayuda a elegir la operación.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(518,73,697,'video','Concepto de Fracción','<!-- etl-google-cloud-matematicas:media-plan:99 -->
<p>Vídeo expositivo que introduce las partes del entero (unidad), la división en partes iguales y la función del numerador y denominador. 1-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(519,74,698,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:68:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-067 | Conocemos las fracciones</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-067 · Tercer grado de primaria</div>
<div class="topic">Tema: Fracciones</div>
<h1>Conocemos las fracciones</h1>
<p>Descubre cómo representar partes de un entero.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás qué es una fracción y cómo se representa.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Identificarás numerador, denominador y partes de un todo.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Fracción como parte de un entero.</li>
<li>Fracción como parte de una colección.</li>
<li>Numerador y denominador.</li>
<li>Medios, tercios, cuartos y octavos.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(\frac{3}{4}\)</div>
<p>El denominador indica en cuántas partes iguales se divide el entero y el numerador cuántas partes se toman.</p>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Las partes deben ser iguales.</li><li>El numerador va arriba y el denominador abajo.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(520,74,698,'video','Casos Particulares de Fracciones','<!-- etl-google-cloud-matematicas:media-plan:100 -->
<p>Vídeo didáctico que explica el significado y la representación visual de medios, tercios, cuartos, sextos y octavos. 5-9</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(521,75,699,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:69:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-068 | Comparamos y ubicamos fracciones</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:24px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:22px;overflow:hidden;box-shadow:0 8px 24px rgba(80,120,70,.12)}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:40px;text-align:center}.code{display:inline-block;background:rgba(255,255,255,.75);padding:7px 16px;border-radius:25px;color:#4D7344;font-weight:bold}.topic{margin-top:12px;color:#5B8353;font-weight:bold}.header h1{margin:10px 0;color:#45693E}.content{padding:36px}.description,.objective,.example,.summary{padding:20px;border-radius:16px;margin:18px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.summary{background:#BDE5AE;color:#2F4B2A}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}.operation{text-align:center;background:#EEF9E8;padding:14px;border-radius:12px;font-size:26px;font-weight:bold;color:#45693E}
</style>
</head>
<body>
<div class="lesson">
<header class="header">
<div class="code">Ari-P3-068 · Tercer grado de primaria</div>
<div class="topic">Tema: Fracciones</div>
<h1>Comparamos y ubicamos fracciones</h1>
<p>Observa cuál fracción es mayor o menor.</p>
</header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Compararás fracciones sencillas y las ubicarás en rectas numéricas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Reconocerás equivalencias sencillas y representaciones de fracciones.</p></section>
<section class="section">
<h2>Contenido</h2>
<ul>
<li>Comparación de fracciones con mismo denominador.</li>
<li>Representación gráfica.</li>
<li>Recta numérica con fracciones.</li>
<li>Fracciones equivalentes sencillas.</li>
</ul>
</section>
<section class="example">
<h2>Ejemplo</h2>
<div class="operation">\(\frac{3}{8} > \frac{2}{8}\)</div>
<p>Cuando el denominador es igual, la fracción con mayor numerador es mayor.</p>
</section>
<section class="summary"><h2>Recuerda</h2><ul><li>Comparar fracciones es más fácil si tienen el mismo denominador.</li><li>Una fracción también puede ubicarse en la recta numérica.</li></ul></section>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(522,75,699,'video','Interpretación de Fracciones','<!-- etl-google-cloud-matematicas:media-plan:101 -->
<p>Vídeo expositivo que muestra cómo representar e interpretar fracciones de una figura, de una colección de objetos y como resultado de un reparto. 10-12</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(523,76,700,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:70:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P3-069 | Representamos y comparamos fracciones</title>
<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,Helvetica,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(70,110,60,.12)}
.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px 35px;text-align:center}
.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}
.topic{margin-top:15px;color:#5B8353;font-weight:bold}
.header h1{color:#45693E;font-size:38px;margin:8px 0 12px}
.header p{color:#52734B;font-size:18px}
.content{padding:40px 45px}
.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.description{background:#F2FBEA;border-left:6px solid #9DCD7A}
.objective{background:#FBFFF8;border:2px solid #D4E9C8}
.example{background:#F7FFF4;border:2px solid #D0E8C7}
.practice{background:#ECF8E6;border:2px solid #C6DFBA}
.important{background:#E0F2D7;border-left:6px solid #8EBB72}
.section{margin:38px 0}
.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB;padding-bottom:8px}
.operation{text-align:center;background:#EEF9E8;color:#45693E;padding:16px;border-radius:15px;font-size:27px;font-weight:bold;margin:15px 0}
.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
.closing{text-align:center;color:#4D7344;font-size:21px;font-weight:bold;margin:35px}
</style>
</head>
<body>
<div class="lesson">

<header class="header">
<div class="code">Ari-P3-069 · Tercer grado de primaria</div>
<div class="topic">Tema: Fracciones iniciales — Representación y comparación</div>
<h1>Representamos y comparamos fracciones</h1>
<p>Descubre diferentes formas de representar, ubicar y comparar fracciones.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>Aprenderás a representar fracciones mediante barras, círculos, rectángulos, conjuntos y rectas numéricas. También compararás fracciones y reconocerás equivalencias sencillas.</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>Podrás representar una misma fracción de diferentes maneras y determinar cuál de dos fracciones es mayor, menor o equivalente.</p>
</section>

<section class="section">
<h2>1. Barras</h2>
<p>Una barra puede dividirse en partes iguales para representar una fracción.</p>
<div class="example">
<p>Si una barra se divide en \(4\) partes iguales y tomamos \(3\):</p>
<div class="operation">\(\frac{3}{4}\)</div>
</div>
</section>

<section class="section">
<h2>2. Círculos</h2>
<p>También podemos dividir un círculo en partes iguales.</p>
<div class="example">
<p>La mitad de un círculo representa:</p>
<div class="operation">\(\frac{1}{2}\)</div>
</div>
</section>

<section class="section">
<h2>3. Rectángulos</h2>
<p>Los rectángulos pueden dividirse en regiones iguales para representar fracciones.</p>
<div class="operation">\(\frac{2}{6}\)</div>
</section>

<section class="section">
<h2>4. Conjuntos</h2>
<p>Una fracción también puede representar una parte de una colección.</p>
<div class="example">
<p>Si \(3\) de \(8\) pelotas son verdes:</p>
<div class="operation">\(\frac{3}{8}\)</div>
</div>
</section>

<section class="section">
<h2>5. Recta numérica</h2>
<p>Las fracciones pueden ubicarse entre números enteros.</p>
<div class="operation">\(0\quad \frac14\quad \frac24\quad \frac34\quad1\)</div>
</section>

<section class="section">
<h2>6. Fracciones con igual denominador</h2>
<p>Cuando dos fracciones tienen el mismo denominador, podemos comparar sus numeradores.</p>
<div class="operation">\(\frac{5}{8}>\frac{3}{8}\)</div>
</section>

<section class="section">
<h2>7. Comparación con la unidad</h2>
<div class="example">
<p>\(\frac{3}{4}\) es menor que \(1\).</p>
<p>\(\frac{4}{4}=1\).</p>
</div>
</section>

<section class="section">
<h2>8. Fracciones equivalentes sencillas</h2>
<p>Dos fracciones pueden representar la misma cantidad.</p>
<div class="operation">\(\frac12=\frac24\)</div>
</section>

<section class="practice">
<h2>Practiquemos</h2>
<p>¿Cuál es mayor: \(\frac{2}{6}\) o \(\frac{5}{6}\)?</p>
<p><strong>\(\frac{5}{6}\)</strong></p>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Las fracciones pueden representarse de diferentes maneras.</li>
<li>Podemos ubicarlas en la recta numérica.</li>
<li>Si tienen igual denominador, comparamos los numeradores.</li>
<li>Algunas fracciones diferentes representan la misma cantidad.</li>
</ul>
</section>

<div class="closing">¡Excelente! Ya puedes representar y comparar fracciones.</div>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(524,76,700,'video','Representación y Comparación de Fracciones','<!-- etl-google-cloud-matematicas:media-plan:102 -->
<p>Vídeo didáctico que enseña a representar fracciones en barras, círculos, rectángulos, conjuntos y la recta numérica, comparándolas con igual denominador, con la unidad y hallando equivalencias. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(525,77,734,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:71:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pat-P3-070 | Descubrimos sucesiones y reglas</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:white;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.section{margin:32px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.operation{text-align:center;background:#EEF9E8;color:#45693E;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header">
<div class="code">Pat-P3-070 · Tercer grado de primaria</div>
<div class="topic">Tema: Patrones — Sucesiones, parte 1</div>
<h1>Descubrimos sucesiones y reglas</h1>
<p>Observa cómo cambian los números y descubre la regla.</p>
</header>

<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás sucesiones ascendentes y descendentes, reglas aditivas y multiplicativas, términos faltantes, patrones en figuras e igualdades equivalentes.</p></section>

<section class="objective"><h2>¿Qué aprenderás?</h2><p>Identificarás la regla de una sucesión para continuarla o encontrar valores faltantes.</p></section>

<section class="section"><h2>1. Sucesiones ascendentes</h2><div class="operation">\(100,\ 150,\ 200,\ 250,\ 300\)</div></section>

<section class="section"><h2>2. Sucesiones descendentes</h2><div class="operation">\(500,\ 450,\ 400,\ 350,\ 300\)</div></section>

<section class="section"><h2>3. Reglas aditivas</h2><p>Podemos formar una sucesión sumando siempre la misma cantidad.</p><div class="operation">\(5,\ 10,\ 15,\ 20,\ldots\)</div></section>

<section class="section"><h2>4. Reglas multiplicativas sencillas</h2><p>Algunas sucesiones se forman multiplicando.</p><div class="operation">\(2,\ 4,\ 8,\ 16,\ldots\)</div></section>

<section class="section"><h2>5. Términos faltantes</h2><div class="operation">\(20,\ 30,\ \square,\ 50\)</div><p>Falta \(40\).</p></section>

<section class="section"><h2>6. Patrones en figuras</h2><div class="example"><p>● ▲ ■ ● ▲ ■ ● ▲ ■</p><p>La unidad que se repite es ● ▲ ■.</p></div></section>

<section class="section"><h2>7. Igualdades equivalentes</h2><div class="operation">\(8+4=6+6\)</div><p>Ambos lados tienen el mismo valor: \(12\).</p></section>

<section class="practice"><h2>Practiquemos</h2><p>Completa: \(12,\ 18,\ 24,\ \square,\ 36\).</p><p><strong>\(30\)</strong></p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Toda sucesión sigue una regla.</li><li>La regla puede sumar, restar o multiplicar.</li><li>Los patrones también pueden aparecer en figuras.</li></ul></section>

</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(526,77,734,'video','Sucesiones Numéricas y Reglas','<!-- etl-google-cloud-matematicas:media-plan:103 -->
<p>Vídeo expositivo sobre sucesiones ascendentes y descendentes con reglas aditivas y multiplicativas sencillas, hallando términos faltantes e identificando patrones visuales. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(527,78,735,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:72:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pat-P3-071 | Encontramos valores desconocidos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.section{margin:34px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.operation{text-align:center;background:#EEF9E8;color:#45693E;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.table{width:100%;border-collapse:collapse}.table th{background:#BDE5AE;padding:12px}.table td{border:1px solid #CAE0BF;padding:12px;text-align:center}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header">
<div class="code">Pat-P3-071 · Tercer grado de primaria</div>
<div class="topic">Tema: Patrones — Sucesiones, parte 2</div>
<h1>Encontramos valores desconocidos y usamos tablas</h1>
<p>Descubre números faltantes aplicando reglas.</p>
</header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás factor desconocido, divisor desconocido, tablas de entrada y salida y reglas con cantidades fijas.</p></section>

<section class="objective"><h2>¿Qué aprenderás?</h2><p>Utilizarás operaciones conocidas para encontrar valores que faltan.</p></section>

<section class="section"><h2>8. Factor desconocido</h2><div class="operation">\(6\times\square=42\)</div><p>\(\square=7\).</p></section>

<section class="section"><h2>9. Divisor desconocido</h2><div class="operation">\(24\div\square=6\)</div><p>\(\square=4\).</p></section>

<section class="section"><h2>10. Tablas de entrada y salida</h2>
<table class="table">
<tr><th>Entrada</th><th>Regla</th><th>Salida</th></tr>
<tr><td>\(2\)</td><td>\(+3\)</td><td>\(5\)</td></tr>
<tr><td>\(5\)</td><td>\(+3\)</td><td>\(8\)</td></tr>
<tr><td>\(10\)</td><td>\(+3\)</td><td>\(13\)</td></tr>
</table>
</section>

<section class="section"><h2>11. Sumar una cantidad fija</h2><div class="operation">\(10\rightarrow15\rightarrow20\rightarrow25\)</div><p>La regla es sumar \(5\).</p></section>

<section class="section"><h2>12. Multiplicar por una cantidad fija</h2><div class="operation">\(2\rightarrow6,\quad4\rightarrow12,\quad5\rightarrow15\)</div><p>La regla es multiplicar por \(3\).</p></section>

<section class="practice"><h2>Practiquemos</h2><p>Si la regla es multiplicar por \(4\), ¿qué salida corresponde a \(7\)?</p><p><strong>\(28\)</strong></p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Podemos encontrar factores y divisores desconocidos.</li><li>Las tablas muestran relaciones entre cantidades.</li><li>Una misma regla debe aplicarse a todas las entradas.</li></ul></section>

</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(528,78,735,'video','Sucesiones, Valores Desconocidos y Tablas','<!-- etl-google-cloud-matematicas:media-plan:104 -->
<p>Vídeo didáctico que explica las igualdades equivalentes, el cálculo de factores y divisores desconocidos, y el uso de tablas de entrada/salida (sumar o multiplicar por una cantidad fija). 8-12</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(529,79,744,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:73:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P3-072 | Líneas y ángulos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:white;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.section{margin:30px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.visual{text-align:center;background:#EEF9E8;color:#45693E;padding:20px;border-radius:15px;font-size:34px}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Geo-P3-072 · Tercer grado de primaria</div><div class="topic">Tema: Líneas y ángulos</div><h1>Reconocemos líneas y ángulos</h1><p>Observa cómo se relacionan las líneas y cómo forman ángulos.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás segmentos, líneas paralelas, perpendiculares y secantes y diferentes formas iniciales de ángulos.</p></section>

<section class="objective"><h2>¿Qué aprenderás?</h2><p>Identificarás relaciones entre líneas y reconocerás un ángulo recto.</p></section>

<section class="section"><h2>1. Segmentos</h2><div class="visual">●────────●</div></section>
<section class="section"><h2>2. Líneas paralelas</h2><div class="visual">────────<br>────────</div><p>No se cruzan.</p></section>
<section class="section"><h2>3. Líneas perpendiculares</h2><div class="visual">┼</div><p>Se cruzan formando ángulos rectos.</p></section>
<section class="section"><h2>4. Líneas secantes</h2><div class="visual">✕</div><p>Son líneas que se cruzan.</p></section>
<section class="section"><h2>5. Introducción al ángulo</h2><p>Un ángulo se forma cuando dos semirrectas parten de un mismo punto.</p></section>
<section class="section"><h2>6. Ángulo recto</h2><div class="visual">∟</div><p>Podemos observarlo en las esquinas de un cuadrado.</p></section>
<section class="section"><h2>7. Ángulo mayor o menor que un ángulo recto</h2><p>Podemos comparar la abertura de un ángulo con la de un ángulo recto.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Las líneas pueden ser paralelas, perpendiculares o secantes.</li><li>Un ángulo recto sirve como referencia para comparar otros ángulos.</li></ul></section>

</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(530,79,744,'video','Líneas y Ángulos','<!-- etl-google-cloud-matematicas:media-plan:105 -->
<p>Vídeo expositivo que identifica segmentos, líneas paralelas, perpendiculares y secantes, así como la introducción al ángulo recto, mayor y menor a un recto. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(531,80,745,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:74:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P3-073 | Triángulos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:white;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.section{margin:28px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.visual{text-align:center;background:#EEF9E8;padding:20px;border-radius:15px;font-size:60px;color:#4D7344}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Geo-P3-073 · Tercer grado de primaria</div><div class="topic">Tema: Triángulos</div><h1>Conocemos y clasificamos triángulos</h1><p>Descubre diferentes tipos de triángulos.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Analizarás lados, vértices y ángulos y clasificarás diferentes triángulos.</p></section>

<section class="objective"><h2>¿Qué aprenderás?</h2><p>Distinguirás triángulos de acuerdo con la longitud de sus lados.</p></section>

<section class="section"><h2>1. Lados</h2><p>Todo triángulo tiene \(3\) lados.</p></section>
<section class="section"><h2>2. Vértices</h2><p>Todo triángulo tiene \(3\) vértices.</p></section>
<section class="section"><h2>3. Ángulos</h2><p>Todo triángulo tiene \(3\) ángulos.</p></section>
<section class="section"><h2>4. Triángulo equilátero</h2><div class="visual">△</div><p>Tiene sus \(3\) lados de la misma longitud.</p></section>
<section class="section"><h2>5. Triángulo isósceles</h2><p>Tiene \(2\) lados de la misma longitud.</p></section>
<section class="section"><h2>6. Triángulo escaleno</h2><p>Sus \(3\) lados tienen longitudes diferentes.</p></section>
<section class="section"><h2>7. Construcción de triángulos</h2><p>Podemos construir triángulos utilizando regla, segmentos o materiales manipulables.</p></section>
<section class="section"><h2>8. Base y altura como introducción</h2><p>Podemos elegir uno de los lados como base y observar la distancia hacia el vértice opuesto.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Todo triángulo tiene \(3\) lados, \(3\) vértices y \(3\) ángulos.</li><li>Según sus lados puede ser equilátero, isósceles o escaleno.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(532,80,745,'video','Triángulos: Clasificación y Construcción','<!-- etl-google-cloud-matematicas:media-plan:106 -->
<p>Vídeo didáctico que analiza lados, vértices y ángulos para clasificar triángulos (equilátero, isósceles, escaleno), su construcción y noción de base y altura. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(533,81,746,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:75:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P3-074 | Simetría</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:white;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.section{margin:30px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.visual{text-align:center;background:#EEF9E8;padding:20px;border-radius:15px;font-size:42px}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Geo-P3-074 · Tercer grado de primaria</div><div class="topic">Tema: Simetría</div><h1>Exploramos la simetría</h1><p>Descubre figuras cuyas partes pueden reflejarse.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Reconocerás figuras simétricas, ejes de simetría y representaciones en cuadrículas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Identificarás cuándo dos partes de una figura corresponden como en un espejo.</p></section>

<section class="section"><h2>1. Figuras simétricas</h2><p>Una figura es simétrica cuando puede dividirse en partes que coinciden al reflejarse.</p></section>
<section class="section"><h2>2. Eje de simetría</h2><div class="visual">◀ │ ▶</div><p>El eje divide la figura en partes correspondientes.</p></section>
<section class="section"><h2>3. Completar figuras</h2><p>Podemos dibujar la parte faltante observando su reflejo respecto del eje.</p></section>
<section class="section"><h2>4. Simetría en cuadrícula</h2><p>La cuadrícula permite contar espacios para reproducir correctamente la figura.</p></section>
<section class="section"><h2>5. Identificación de objetos simétricos</h2><p>Podemos encontrar simetría en hojas, mariposas, algunas ventanas y diferentes diseños.</p></section>

<section class="practice"><h2>Practiquemos</h2><p>Observa un objeto de tu entorno e intenta identificar si tiene un eje de simetría.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>El eje de simetría funciona como una línea de reflexión.</li><li>Una figura puede tener uno o varios ejes.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(534,81,746,'video','Simetría','<!-- etl-google-cloud-matematicas:media-plan:107 -->
<p>Vídeo expositivo que muestra la identificación de figuras y objetos simétricos, el trazado del eje de simetría y cómo completar figuras en una cuadrícula. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(535,82,747,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:76:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P3-075 | Cuerpos geométricos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.section{margin:26px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.shape{text-align:center;background:#EEF9E8;padding:18px;border-radius:15px;font-size:48px}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Geo-P3-075 · Tercer grado de primaria</div><div class="topic">Tema: Cuerpos geométricos</div><h1>Conocemos los cuerpos geométricos</h1><p>Analiza los elementos que forman diferentes cuerpos.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás cubo, prismas, pirámides, cilindro, cono y esfera, además de caras, aristas, vértices y bases.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Identificarás las características principales de diferentes cuerpos geométricos.</p></section>

<section class="section"><h2>1. Cubo</h2><div class="shape">🧊</div></section>
<section class="section"><h2>2. Prismas</h2><p>Tienen dos bases iguales y caras laterales.</p></section>
<section class="section"><h2>3. Pirámides</h2><p>Tienen una base y caras laterales que llegan a un vértice.</p></section>
<section class="section"><h2>4. Cilindro</h2><div class="shape">🥫</div></section>
<section class="section"><h2>5. Cono</h2><div class="shape">🍦</div></section>
<section class="section"><h2>6. Esfera</h2><div class="shape">⚽</div></section>
<section class="section"><h2>7. Caras</h2><p>Son superficies que forman un cuerpo.</p></section>
<section class="section"><h2>8. Aristas</h2><p>Son líneas donde se encuentran dos caras.</p></section>
<section class="section"><h2>9. Vértices</h2><p>Son puntos donde se encuentran varias aristas.</p></section>
<section class="section"><h2>10. Bases</h2><p>Son caras que sirven como referencia para describir ciertos cuerpos.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Podemos clasificar cuerpos por su forma.</li><li>Caras, aristas, vértices y bases ayudan a describirlos.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(536,82,747,'video','Cuerpos Geométricos y sus Elementos','<!-- etl-google-cloud-matematicas:media-plan:108 -->
<p>Vídeo didáctico sobre las características del cubo, prismas, pirámides, cilindro, cono y esfera, identificando caras, aristas, vértices y bases. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(537,83,769,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:77:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P3-076 | Longitud, masa y capacidad</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.important{background:#E0F2D7;border-left:6px solid #8EBB72}.section{margin:24px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.operation{text-align:center;background:#EEF9E8;color:#45693E;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Med-P3-076 · Tercer grado de primaria</div><div class="topic">Tema: Longitud, masa y capacidad</div><h1>Medimos longitud, masa y capacidad</h1><p>Selecciona la unidad adecuada para cada medición.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás unidades para medir longitud, masa y capacidad y realizarás conversiones sencillas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Seleccionarás unidades según el objeto o cantidad que necesites medir.</p></section>

<section class="section"><h2>1. Milímetro como introducción</h2><p>El milímetro \(\text{mm}\) sirve para longitudes muy pequeñas.</p></section>
<section class="section"><h2>2. Centímetro</h2><p>Se representa como \(\text{cm}\).</p></section>
<section class="section"><h2>3. Metro</h2><p>Se representa como \(\text{m}\).</p></section>
<section class="section"><h2>4. Kilómetro</h2><p>El kilómetro \(\text{km}\) sirve para medir distancias grandes.</p></section>
<section class="section"><h2>5. Gramo</h2><p>El gramo \(\text{g}\) se utiliza para masas pequeñas.</p></section>
<section class="section"><h2>6. Kilogramo</h2><div class="operation">\(1\text{ kg}=1000\text{ g}\)</div></section>
<section class="section"><h2>7. Litro</h2><p>El litro \(\text{L}\) mide capacidad.</p></section>
<section class="section"><h2>8. Medio litro</h2><div class="operation">\(\frac12\text{ L}\)</div></section>
<section class="section"><h2>9. Selección de unidades</h2><p>Una carretera puede medirse en kilómetros; un lápiz en centímetros.</p></section>
<section class="section"><h2>10. Estimación</h2><p>Podemos anticipar aproximadamente una medida antes de comprobarla.</p></section>
<section class="section"><h2>11. Conversiones sencillas</h2><div class="important"><div class="operation">\(100\text{ cm}=1\text{ m}\)</div><div class="operation">\(1000\text{ g}=1\text{ kg}\)</div></div></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Selecciona la unidad según lo que quieres medir.</li><li>Podemos convertir algunas unidades relacionadas.</li></ul></section>

</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(538,83,769,'video','Longitud, Masa y Capacidad','<!-- etl-google-cloud-matematicas:media-plan:109 -->
<p>Vídeo expositivo sobre la selección de unidades (mm, cm, m, km, g, kg, L, medio litro), la estimación de medidas y la realización de conversiones sencillas. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(539,84,770,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:78:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P3-077 | Tiempo</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:white;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.section{margin:26px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.operation{text-align:center;background:#EEF9E8;color:#45693E;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Med-P3-077 · Tercer grado de primaria</div><div class="topic">Tema: Tiempo</div><h1>Medimos y organizamos el tiempo</h1><p>Aprende a interpretar horarios y calcular duraciones.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás horas, minutos, segundos, duración, hora inicial, hora final y calendario.</p></section>

<section class="objective"><h2>¿Qué aprenderás?</h2><p>Resolverás situaciones relacionadas con horarios y duración.</p></section>

<section class="section"><h2>1. Horas</h2><div class="operation">\(1\text{ hora}=60\text{ minutos}\)</div></section>
<section class="section"><h2>2. Minutos</h2><p>Los minutos permiten medir intervalos menores que una hora.</p></section>
<section class="section"><h2>3. Segundos</h2><div class="operation">\(1\text{ minuto}=60\text{ segundos}\)</div></section>
<section class="section"><h2>4. Cuarto de hora</h2><div class="operation">\(15\text{ minutos}\)</div></section>
<section class="section"><h2>5. Media hora</h2><div class="operation">\(30\text{ minutos}\)</div></section>
<section class="section"><h2>6. Duración</h2><p>Indica cuánto tiempo transcurre entre el inicio y el final de una actividad.</p></section>
<section class="section"><h2>7. Hora inicial</h2><p>Es el momento en que comienza una actividad.</p></section>
<section class="section"><h2>8. Hora final</h2><div class="example"><p>Una actividad empieza a las \(8{:}00\) y dura \(2\) horas.</p><div class="operation">Hora final: \(10{:}00\)</div></div></section>
<section class="section"><h2>9. Uso de calendario</h2><p>El calendario permite organizar días, semanas y meses.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Una hora tiene \(60\) minutos.</li><li>Un minuto tiene \(60\) segundos.</li><li>Podemos calcular duración, hora inicial y hora final.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(540,84,770,'video','El Tiempo: Reloj, Duración y Calendario','<!-- etl-google-cloud-matematicas:media-plan:110 -->
<p>Vídeo didáctico sobre la lectura de horas, minutos, segundos, cuartos/medias horas, cálculo de la duración entre hora inicial y final, y el uso del calendario. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(541,85,771,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:79:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P3-078 | Perímetro</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:white;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.section{margin:28px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.operation{text-align:center;background:#EEF9E8;color:#45693E;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Med-P3-078 · Tercer grado de primaria</div><div class="topic">Tema: Perímetro</div><h1>Calculamos perímetros</h1><p>Mide el contorno de diferentes figuras.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás qué es el perímetro y cómo obtenerlo sumando las longitudes de los lados.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Calcularás el perímetro de diferentes figuras.</p></section>

<section class="section"><h2>1. Contorno</h2><p>El perímetro corresponde a la longitud alrededor de una figura.</p></section>
<section class="section"><h2>2. Medición de lados</h2><p>Primero necesitamos conocer cuánto mide cada lado.</p></section>
<section class="section"><h2>3. Suma de longitudes</h2><div class="operation">\(P=4+6+4+6=20\text{ cm}\)</div></section>
<section class="section"><h2>4. Perímetro de triángulos</h2><div class="operation">\(5+6+7=18\text{ cm}\)</div></section>
<section class="section"><h2>5. Perímetro de cuadrados</h2><div class="operation">\(5+5+5+5=20\text{ cm}\)</div></section>
<section class="section"><h2>6. Perímetro de rectángulos</h2><div class="operation">\(8+4+8+4=24\text{ cm}\)</div></section>
<section class="section"><h2>7. Perímetro de figuras irregulares</h2><p>También sumamos todos los lados, aunque tengan longitudes diferentes.</p></section>

<section class="practice"><h2>Practiquemos</h2><p>Un triángulo tiene lados de \(4\), \(5\) y \(6\) cm. ¿Cuál es su perímetro?</p><p><strong>\(15\text{ cm}\)</strong></p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>El perímetro mide el contorno.</li><li>Se obtiene sumando las longitudes de todos los lados.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(542,85,771,'video','Perímetro','<!-- etl-google-cloud-matematicas:media-plan:111 -->
<p>Vídeo expositivo que explica el perímetro como el contorno de una figura, calculándolo mediante la suma de lados en triángulos, cuadrados, rectángulos y polígonos irregulares. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(543,86,772,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:80:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P3-079 | Área inicial</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.important{background:#E0F2D7;border-left:6px solid #8EBB72}.section{margin:28px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.operation{text-align:center;background:#EEF9E8;color:#45693E;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Med-P3-079 · Tercer grado de primaria</div><div class="topic">Tema: Área inicial</div><h1>Descubrimos el área</h1><p>Aprende a medir cuánto espacio ocupa una superficie.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás superficie, recubrimiento, unidades cuadradas, conteo de cuadrados y la diferencia inicial entre área y perímetro.</p></section>

<section class="objective"><h2>¿Qué aprenderás?</h2><p>Compararás superficies mediante unidades cuadradas.</p></section>

<section class="section"><h2>1. Superficie</h2><p>La superficie es la región que ocupa una figura.</p></section>
<section class="section"><h2>2. Recubrimiento</h2><p>Podemos cubrir una superficie con piezas iguales para medirla.</p></section>
<section class="section"><h2>3. Unidades cuadradas</h2><p>Usamos cuadrados del mismo tamaño como unidades.</p></section>
<section class="section"><h2>4. Conteo de cuadrados</h2><div class="example"><p>Una figura cubierta por \(12\) cuadrados tiene un área de \(12\) unidades cuadradas.</p></div></section>
<section class="section"><h2>5. Comparación de superficies</h2><div class="operation">\(15\text{ unidades}^2>10\text{ unidades}^2\)</div></section>
<section class="section"><h2>6. Diferencia inicial entre perímetro y área</h2><div class="important"><p><strong>Perímetro:</strong> mide alrededor.</p><p><strong>Área:</strong> mide la superficie interior.</p></div></section>

<section class="summary"><h2>Recuerda</h2><ul><li>El área mide una superficie.</li><li>Podemos medirla utilizando unidades cuadradas.</li><li>Área y perímetro representan medidas diferentes.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(544,86,772,'video','Área Inicial','<!-- etl-google-cloud-matematicas:media-plan:112 -->
<p>Vídeo didáctico que introduce la noción de superficie, el recubrimiento con unidades cuadradas, el conteo de cuadros, la comparación de superficies y la diferencia inicial con el perímetro. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(545,87,783,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:81:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Est-P3-080 | Introducción a la estadística</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:white;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.section{margin:25px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.table{width:100%;border-collapse:collapse}.table th{background:#BDE5AE;padding:12px}.table td{border:1px solid #CAE0BF;padding:12px;text-align:center}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Est-P3-080 · Tercer grado de primaria</div><div class="topic">Tema: Introducción a la estadística</div><h1>Organizamos e interpretamos datos</h1><p>Recolecta información, organízala y descubre qué nos dice.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás a formular preguntas, realizar encuestas, organizar información y representarla mediante tablas y gráficas.</p></section>

<section class="objective"><h2>¿Qué aprenderás?</h2><p>Recolectarás, representarás y compararás datos.</p></section>

<section class="section"><h2>1. Formulación de preguntas</h2><p>Una investigación puede comenzar con una pregunta clara.</p></section>
<section class="section"><h2>2. Encuestas</h2><p>Las encuestas permiten reunir respuestas de varias personas.</p></section>
<section class="section"><h2>3. Tablas de frecuencia</h2>
<table class="table"><tr><th>Actividad</th><th>Frecuencia</th></tr><tr><td>Leer</td><td>\(8\)</td></tr><tr><td>Dibujar</td><td>\(5\)</td></tr><tr><td>Jugar</td><td>\(10\)</td></tr></table>
</section>
<section class="section"><h2>4. Marcas de conteo</h2><p>Las marcas permiten registrar rápidamente cuántas veces aparece un dato.</p></section>
<section class="section"><h2>5. Pictogramas con escala</h2><p>Un símbolo puede representar más de una unidad.</p><div class="example"><p>Si ⭐ representa \(2\) alumnos, ⭐⭐⭐ representa \(6\) alumnos.</p></div></section>
<section class="section"><h2>6. Gráficas de barras</h2><p>Las barras permiten comparar visualmente las frecuencias.</p></section>
<section class="section"><h2>7. Lectura de ejes</h2><p>Los ejes muestran las categorías y cantidades representadas.</p></section>
<section class="section"><h2>8. Comparación de datos</h2><p>Podemos identificar cuál cantidad es mayor, menor o igual.</p></section>
<section class="section"><h2>9. Dato más frecuente</h2><p>Es el dato que aparece el mayor número de veces.</p></section>
<section class="section"><h2>10. Introducción a la moda</h2><p>La moda es el dato o categoría que aparece con mayor frecuencia.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Las encuestas permiten recopilar datos.</li><li>Tablas, pictogramas y gráficas permiten representarlos.</li><li>La moda corresponde al dato más frecuente.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(546,87,783,'video','Introducción a la Estadística','<!-- etl-google-cloud-matematicas:media-plan:113 -->
<p>Vídeo expositivo que enseña a formular preguntas, realizar encuestas, registrar datos en tablas de frecuencia con marcas, interpretar pictogramas con escala, gráficas de barras e identificar la moda. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(547,88,790,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:82:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pro-P3-081 | Probabilidad</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F6FFF2;color:#33443A;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DDF3C7,#BDE5AE);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#4D7344;font-weight:bold}.topic{margin-top:15px;color:#5B8353;font-weight:bold}.header h1{color:#45693E}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#F2FBEA;border-left:6px solid #9DCD7A}.objective{background:#FBFFF8;border:2px solid #D4E9C8}.example{background:#F7FFF4;border:2px solid #D0E8C7}.practice{background:#ECF8E6}.important{background:#E0F2D7;border-left:6px solid #8EBB72}.section{margin:25px 0}.section h2{color:#4D7344;border-bottom:3px solid #D8EFCB}.operation{text-align:center;background:#EEF9E8;color:#45693E;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.table{width:100%;border-collapse:collapse}.table th{background:#BDE5AE;padding:12px}.table td{border:1px solid #CAE0BF;padding:12px;text-align:center}.summary{background:#BDE5AE;color:#2F4B2A;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">

<header class="header"><div class="code">Pro-P3-081 · Tercer grado de primaria</div><div class="topic">Tema: Probabilidad</div><h1>Exploramos la probabilidad</h1><p>Experimenta con el azar y compara los resultados.</p></header>

<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás sobre azar, eventos y experimentos con monedas, dados y ruletas.</p></section>

<section class="objective"><h2>¿Qué aprenderás?</h2><p>Reconocerás diferentes resultados posibles y compararás las veces que ocurre cada uno.</p></section>

<section class="section"><h2>1. Azar</h2><p>El azar aparece cuando no podemos saber con seguridad qué resultado ocurrirá.</p></section>
<section class="section"><h2>2. Evento seguro</h2><p>Es un resultado que necesariamente ocurrirá bajo determinadas condiciones.</p></section>
<section class="section"><h2>3. Evento posible</h2><p>Puede ocurrir, pero no es seguro.</p></section>
<section class="section"><h2>4. Evento imposible</h2><p>No puede ocurrir bajo las condiciones establecidas.</p></section>

<section class="section"><h2>5. Lanzamiento de monedas</h2><p>Una moneda puede producir dos resultados principales.</p><div class="operation">Cara / Cruz</div></section>

<section class="section"><h2>6. Lanzamiento de dados</h2><p>Un dado convencional puede mostrar:</p><div class="operation">\(1,\ 2,\ 3,\ 4,\ 5,\ 6\)</div></section>

<section class="section"><h2>7. Ruletas</h2><p>Una ruleta puede dividirse en diferentes regiones que representan posibles resultados.</p></section>

<section class="section"><h2>8. Registro de resultados</h2>
<table class="table">
<tr><th>Resultado</th><th>Frecuencia</th></tr>
<tr><td>Cara</td><td>\(7\)</td></tr>
<tr><td>Cruz</td><td>\(5\)</td></tr>
</table>
</section>

<section class="section"><h2>9. Resultados posibles</h2><p>Antes de realizar un experimento podemos identificar cuáles son todos sus resultados posibles.</p></section>

<section class="section"><h2>10. Comparación de frecuencias</h2><p>Después del experimento podemos comparar qué resultado apareció más o menos veces.</p></section>

<section class="practice"><h2>Practiquemos</h2><p>¿Es posible obtener \(7\) al lanzar un dado convencional de seis caras?</p><p><strong>No. Es imposible.</strong></p></section>

<section class="summary"><h2>Recuerda</h2>
<ul>
<li>El azar produce resultados que no conocemos de antemano.</li>
<li>Los eventos pueden ser seguros, posibles o imposibles.</li>
<li>Podemos registrar y comparar los resultados de un experimento.</li>
</ul>
</section>

</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(548,88,790,'video','Nociones de Probabilidad y Azar','<!-- etl-google-cloud-matematicas:media-plan:114 -->
<p>Vídeo didáctico que explora situaciones de azar clasificando eventos en seguros, posibles e imposibles mediante experimentos con monedas, dados y ruletas para registrar e comparar resultados. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(549,89,701,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:83:5 -->
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-082 | Conocemos los números de cinco cifras</title>
<style>
*{box-sizing:border-box}
body{margin:0;padding:25px 15px;font-family:Arial,Helvetica,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}
.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden;box-shadow:0 8px 28px rgba(60,100,140,.12)}
.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px 35px;text-align:center}
.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}
.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D;font-size:38px;margin:8px 0}.header p{color:#4D7088}
.content{padding:40px 45px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}
.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}
.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF;border:2px solid #BBDCF1}.important{background:#DDEFFF;border-left:6px solid #68A6D0}
.section{margin:35px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8;padding-bottom:8px}
.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:16px;border-radius:15px;font-size:27px;font-weight:bold;margin:16px 0}
.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}.closing{text-align:center;color:#37698C;font-size:21px;font-weight:bold;margin:35px}
</style>
</head>
<body>
<div class="lesson">

<header class="header">
<div class="code">Ari-P4-082 · Cuarto grado de primaria</div>
<div class="topic">Tema: Numeración — Números de cinco cifras</div>
<h1>Conocemos los números de cinco cifras</h1>
<p>Aprende a leer, escribir, comparar y organizar números cada vez mayores.</p>
</header>

<main class="content">

<section class="description">
<h2>Descripción del contenido</h2>
<p>Conocerás los números de cinco cifras, su valor posicional, composición, descomposición, comparación, orden, redondeo y estimación.</p>
</section>

<section class="objective">
<h2>¿Qué aprenderás?</h2>
<p>Podrás interpretar y utilizar números que incluyen decenas de millar.</p>
</section>

<section class="section">
<h2>1. Números de cinco cifras</h2>
<p>Los números de cinco cifras se encuentran desde \(10{,}000\) hasta \(99{,}999\).</p>
<div class="operation">\(34{,}582\)</div>
</section>

<section class="section">
<h2>2. Decenas de millar</h2>
<div class="important"><p>\(10\) unidades de millar forman \(1\) decena de millar.</p><div class="operation">\(10{,}000\)</div></div>
</section>

<section class="section">
<h2>3. Lectura y escritura</h2>
<div class="example"><p>\(24{,}315\) se lee <strong>veinticuatro mil trescientos quince</strong>.</p></div>
</section>

<section class="section">
<h2>4. Valor posicional</h2>
<div class="operation">\(42{,}638=40{,}000+2{,}000+600+30+8\)</div>
</section>

<section class="section">
<h2>5. Composición y descomposición</h2>
<div class="example"><p>\(50{,}000+4{,}000+300+20+7\)</p><div class="operation">\(54{,}327\)</div></div>
</section>

<section class="section">
<h2>6. Comparación</h2>
<div class="operation">\(45{,}210>43{,}999\)</div>
</section>

<section class="section">
<h2>7. Orden</h2>
<p>Orden ascendente:</p>
<div class="operation">\(12{,}300,\ 18{,}450,\ 27{,}100,\ 35{,}800\)</div>
</section>

<section class="section">
<h2>8. Recta numérica</h2>
<div class="operation">\(10{,}000\rightarrow20{,}000\rightarrow30{,}000\rightarrow40{,}000\)</div>
</section>

<section class="section">
<h2>9. Redondeo</h2>
<div class="example"><p>A la centena más cercana:</p><div class="operation">\(4{,}742\approx4{,}700\)</div></div>
</section>

<section class="section">
<h2>10. Estimación</h2>
<div class="operation">\(19{,}850\approx20{,}000\)</div>
</section>

<section class="practice">
<h2>Practiquemos</h2>
<p>Descompón \(63{,}428\).</p>
<p><strong>\(60{,}000+3{,}000+400+20+8\)</strong></p>
</section>

<section class="summary">
<h2>Recuerda</h2>
<ul>
<li>Los números de cinco cifras incluyen decenas de millar.</li>
<li>Cada cifra tiene un valor según su posición.</li>
<li>Podemos comparar, ordenar, redondear y estimar cantidades.</li>
</ul>
</section>

<div class="closing">¡Excelente! Ya puedes trabajar con números de cinco cifras.</div>
</main>
</div>
</body>
</html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(550,89,701,'video','Números de 5 Cifras','<!-- etl-google-cloud-matematicas:media-plan:115 -->
<p>Vídeo expositivo que explica el uso de las decenas de millar, lectura y escritura de números de 5 cifras, valor posicional, descomposición, comparación, orden, recta numérica, redondeo y estimación. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(551,90,702,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:84:5 -->
<!DOCTYPE html>
<html lang="es">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-083 | Suma y resta</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:35px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:16px;border-radius:15px;font-size:27px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-083 · Cuarto grado</div><div class="topic">Tema: Operaciones con naturales — Suma y resta</div><h1>Sumamos y restamos números grandes</h1><p>Resuelve operaciones con cantidades de varias cifras.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Resolverás sumas y restas de números grandes utilizando algoritmos organizados.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Aplicarás suma y resta respetando unidades, decenas, centenas y millares.</p></section>

<section class="section"><h2>1. Suma de números grandes</h2>
<div class="example"><p>Coloca las cifras de acuerdo con su posición.</p><div class="operation">\(23{,}475+14{,}328=37{,}803\)</div></div>
</section>

<section class="section"><h2>2. Resta de números grandes</h2>
<div class="example"><div class="operation">\(45{,}620-18{,}375=27{,}245\)</div><p>Cuando una cifra no alcanza, desagrupamos desde la posición siguiente.</p></div>
</section>

<section class="practice"><h2>Practiquemos</h2><p>\(36{,}425+12{,}310=\ ?\)</p><p><strong>\(48{,}735\)</strong></p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Alinea correctamente cada posición.</li><li>Utiliza transformaciones cuando sea necesario.</li><li>Comprueba que tu resultado sea razonable.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(552,90,702,'video','Suma y Resta con Números Grandes','<!-- etl-google-cloud-matematicas:media-plan:116 -->
<p>Vídeo expositivo que muestra los algoritmos para resolver sumas y restas con números de varias cifras. 1-2</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(553,91,703,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:85:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-084 | Multiplicación</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:35px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:16px;border-radius:15px;font-size:27px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-084 · Cuarto grado</div><div class="topic">Tema: Operaciones con naturales — Multiplicación</div><h1>Multiplicamos por una y dos cifras</h1><p>Amplía tus estrategias para multiplicar cantidades mayores.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás multiplicaciones por una cifra y por dos cifras.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Organizarás productos parciales para obtener el resultado final.</p></section>

<section class="section"><h2>3. Multiplicación por una cifra</h2>
<div class="operation">\(2{,}346\times4=9{,}384\)</div>
<p>Multiplicamos cada posición comenzando por las unidades.</p>
</section>

<section class="section"><h2>4. Multiplicación por dos cifras</h2>
<div class="example">
<p>Para calcular \(125\times23\):</p>
<div class="operation">\(125\times3=375\)</div>
<div class="operation">\(125\times20=2{,}500\)</div>
<div class="operation">\(375+2{,}500=2{,}875\)</div>
</div>
</section>

<section class="practice"><h2>Practiquemos</h2><p>\(214\times12=\ ?\)</p><p><strong>\(2{,}568\)</strong></p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Multiplica respetando el valor posicional.</li><li>En una multiplicación por dos cifras se obtienen productos parciales.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(554,91,703,'video','Multiplicación de Una y Dos Cifras','<!-- etl-google-cloud-matematicas:media-plan:117 -->
<p>Vídeo didáctico sobre los pasos del algoritmo para multiplicar por una y dos cifras. 3-4</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(555,92,704,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:86:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-085 | División</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:35px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:16px;border-radius:15px;font-size:27px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-085 · Cuarto grado</div><div class="topic">Tema: Operaciones con naturales — División</div><h1>Aprendemos a dividir</h1><p>Reparte cantidades e interpreta los residuos.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Resolverás divisiones entre una cifra y divisiones con residuo.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Obtendrás cocientes y reconocerás cantidades sobrantes.</p></section>

<section class="section"><h2>5. División entre una cifra</h2>
<div class="operation">\(864\div4=216\)</div>
</section>

<section class="section"><h2>6. División con residuo</h2>
<div class="example"><p>Repartimos \(29\) elementos en \(4\) grupos.</p><div class="operation">\(29\div4=7\) y sobra \(1\)</div></div>
<div class="important"><p>El residuo debe ser menor que el divisor.</p></div>
</section>

<section class="practice"><h2>Practiquemos</h2><p>\(37\div5=\ ?\)</p><p><strong>Cociente \(7\) y residuo \(2\).</strong></p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>La división puede ser exacta o tener residuo.</li><li>El residuo representa lo que queda sin repartir.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(556,92,704,'video','División entre Una Cifra y Residuo','<!-- etl-google-cloud-matematicas:media-plan:118 -->
<p>Vídeo expositivo que explica el proceso de la división entre una cifra e interpretación del residuo. 5-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(557,93,705,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:87:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-086 | Estrategias de cálculo</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:31px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:16px;border-radius:15px;font-size:27px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-086 · Cuarto grado</div><div class="topic">Tema: Operaciones con naturales — Cálculo mental</div><h1>Aplicamos estrategias de cálculo</h1><p>Elige estrategias para calcular, estimar y resolver problemas.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás algoritmos convencionales, cálculo mental, estimación, varias operaciones y paréntesis.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Seleccionarás estrategias diferentes según la operación y el problema.</p></section>

<section class="section"><h2>7. Algoritmos convencionales</h2><p>Son procedimientos ordenados para realizar operaciones.</p></section>

<section class="section"><h2>8. Cálculo mental</h2>
<div class="operation">\(250+350=600\)</div>
<p>Utilizamos relaciones numéricas conocidas sin escribir todo el algoritmo.</p>
</section>

<section class="section"><h2>9. Estimación</h2>
<div class="operation">\(3{,}982+2{,}051\approx4{,}000+2{,}000=6{,}000\)</div>
</section>

<section class="section"><h2>10. Problemas de varias operaciones</h2>
<div class="example"><p>Tenemos \(5\) cajas de \(12\) lápices y regalamos \(8\).</p><div class="operation">\(5\times12-8=52\)</div></div>
</section>

<section class="section"><h2>11. Jerarquía básica con paréntesis como introducción</h2>
<div class="important"><p>Los paréntesis indican qué operación realizaremos primero.</p></div>
<div class="operation">\((8+2)\times3=30\)</div>
</section>

<section class="summary"><h2>Recuerda</h2><ul><li>No todos los cálculos necesitan la misma estrategia.</li><li>La estimación permite revisar resultados.</li><li>Los paréntesis indican una prioridad.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(558,93,705,'video','Estrategias de Cálculo, Estimación y Jerarquía','<!-- etl-google-cloud-matematicas:media-plan:119 -->
<p>Vídeo didáctico sobre algoritmos convencionales, cálculo mental, estimación, resolución de problemas de varias operaciones e introducción a la jerarquía básica con paréntesis. 7-11</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(559,94,706,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:88:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-087 | Múltiplos y divisores</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:28px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-087 · Cuarto grado</div><div class="topic">Tema: Múltiplos y divisores</div><h1>Comprendemos múltiplos y divisores</h1><p>Descubre relaciones especiales entre los números naturales.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás múltiplos, divisores, pares, impares, criterios sencillos y múltiplos comunes.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Reconocerás cuándo un número puede obtenerse multiplicando o dividiendo exactamente.</p></section>

<section class="section"><h2>1. Múltiplos</h2><div class="operation">\(5,\ 10,\ 15,\ 20,\ 25,\ldots\)</div><p>Son múltiplos de \(5\).</p></section>
<section class="section"><h2>2. Divisores</h2><p>Los divisores de \(12\) incluyen \(1,2,3,4,6,12\).</p></section>
<section class="section"><h2>3. Números pares</h2><p>Son divisibles entre \(2\).</p></section>
<section class="section"><h2>4. Números impares</h2><p>No son divisibles exactamente entre \(2\).</p></section>
<section class="section"><h2>5. Múltiplos de \(2\), \(5\) y \(10\)</h2><div class="example"><p>De \(2\): \(2,4,6,8,\ldots\)</p><p>De \(5\): \(5,10,15,\ldots\)</p><p>De \(10\): \(10,20,30,\ldots\)</p></div></section>
<section class="section"><h2>6. Divisores de números pequeños</h2><div class="operation">\(15\div3=5\)</div><p>Por eso \(3\) es divisor de \(15\).</p></section>
<section class="section"><h2>7. Relación entre multiplicación y divisibilidad</h2><div class="operation">\(4\times6=24\)</div><p>Entonces \(4\) y \(6\) son divisores de \(24\).</p></section>
<section class="section"><h2>8. Múltiplos comunes sencillos</h2><p>Múltiplos de \(2\): \(2,4,6,8,10,12\).</p><p>Múltiplos de \(3\): \(3,6,9,12\).</p><p>Algunos comunes son \(6\) y \(12\).</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Los múltiplos se obtienen multiplicando.</li><li>Los divisores permiten una división exacta.</li><li>Un número puede ser múltiplo común de varios números.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(560,94,706,'video','Múltiplos y Divisores','<!-- etl-google-cloud-matematicas:media-plan:120 -->
<p>Vídeo expositivo que aborda los conceptos de múltiplos, divisores, números pares e impares, criterios de divisibilidad ($2, 5, 10$), divisores pequeños y múltiplos comunes. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(561,95,707,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:89:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-088 | Tipos de fracciones</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:30px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:28px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-088 · Cuarto grado</div><div class="topic">Tema: Fracciones — Tipos y representaciones</div><h1>Reconocemos tipos de fracciones</h1><p>Descubre que las fracciones pueden representar cantidades menores, iguales o mayores que una unidad.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Conocerás fracciones propias, impropias y aparentes, números mixtos y fracciones mayores que uno.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Clasificarás fracciones según la relación entre numerador y denominador.</p></section>

<section class="section"><h2>1. Fracciones propias</h2><div class="operation">\(\frac{3}{5}\)</div><p>El numerador es menor que el denominador.</p></section>
<section class="section"><h2>2. Fracciones impropias</h2><div class="operation">\(\frac{7}{4}\)</div><p>El numerador es mayor que el denominador.</p></section>
<section class="section"><h2>3. Fracciones aparentes</h2><div class="operation">\(\frac{8}{4}=2\)</div><p>Representan un número entero.</p></section>
<section class="section"><h2>4. Números mixtos como introducción</h2><div class="operation">\(1\frac{3}{4}\)</div><p>Combina una parte entera y una fracción.</p></section>
<section class="section"><h2>5. Fracciones en la recta</h2><div class="operation">\(0\quad\frac12\quad1\quad\frac32\quad2\)</div></section>
<section class="section"><h2>6. Fracciones mayores que uno</h2><div class="operation">\(\frac{6}{5}>1\)</div></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Una fracción propia es menor que \(1\).</li><li>Una fracción impropia puede ser mayor que \(1\).</li><li>Las fracciones también pueden representar números enteros.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(562,95,707,'video','Tipos de Fracciones y Representación','<!-- etl-google-cloud-matematicas:media-plan:121 -->
<p>Vídeo expositivo que presenta fracciones propias, impropias, aparentes, números mixtos, representación en la recta y valores mayores a la unidad. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(563,96,708,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:90:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-089 | Equivalencia y comparación</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:28px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:28px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-089 · Cuarto grado</div><div class="topic">Tema: Fracciones — Equivalencia y comparación</div><h1>Comparamos fracciones equivalentes</h1><p>Encuentra diferentes formas de representar la misma cantidad.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás equivalencia, ampliación, simplificación, comparación y orden de fracciones.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Reconocerás cuándo dos fracciones representan la misma cantidad y podrás compararlas.</p></section>

<section class="section"><h2>1. Fracciones equivalentes</h2><div class="operation">\(\frac12=\frac24=\frac36\)</div></section>
<section class="section"><h2>2. Ampliación</h2><div class="operation">\(\frac23=\frac{2\times2}{3\times2}=\frac46\)</div></section>
<section class="section"><h2>3. Simplificación sencilla</h2><div class="operation">\(\frac48=\frac12\)</div></section>
<section class="section"><h2>4. Igual denominador</h2><div class="operation">\(\frac58>\frac38\)</div></section>
<section class="section"><h2>5. Igual numerador</h2><div class="operation">\(\frac23>\frac25\)</div><p>Con el mismo numerador, dividir en menos partes produce partes mayores.</p></section>
<section class="section"><h2>6. Comparación con la unidad</h2><div class="example"><p>\(\frac34<1\)</p><p>\(\frac54>1\)</p></div></section>
<section class="section"><h2>7. Orden de fracciones</h2><div class="operation">\(\frac14<\frac24<\frac34<\frac44\)</div></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Las fracciones equivalentes tienen el mismo valor.</li><li>Podemos ampliar o simplificar sin cambiar su valor.</li><li>Las fracciones también pueden ordenarse.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(564,96,708,'video','Equivalencia y Comparación de Fracciones','<!-- etl-google-cloud-matematicas:media-plan:122 -->
<p>Vídeo didáctico que explica cómo obtener fracciones equivalentes por ampliación/simplificación y comparar/ordenar fracciones con igual denominador o numerador. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(565,97,709,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:91:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-090 | Suma y resta de fracciones</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:30px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:28px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-090 · Cuarto grado</div><div class="topic">Tema: Fracciones — Suma y resta</div><h1>Sumamos y restamos fracciones</h1><p>Combina y separa partes de una unidad.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Resolverás operaciones y problemas utilizando fracciones sencillas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Sumarás y restarás fracciones y calcularás una fracción de una cantidad.</p></section>

<section class="section"><h2>1. Igual denominador</h2>
<div class="operation">\(\frac25+\frac15=\frac35\)</div>
<div class="operation">\(\frac57-\frac27=\frac37\)</div>
</section>

<section class="section"><h2>2. Denominadores relacionados</h2>
<div class="example"><p>Sabemos que \(\frac12=\frac24\).</p><div class="operation">\(\frac12+\frac14=\frac24+\frac14=\frac34\)</div></div>
</section>

<section class="section"><h2>3. Uso de representaciones</h2><p>Podemos utilizar barras, círculos o rectángulos divididos en partes iguales para visualizar una operación.</p></section>

<section class="section"><h2>4. Problemas con fracciones</h2>
<div class="example"><p>Ana recorrió \(\frac38\) de una ruta por la mañana y \(\frac28\) por la tarde.</p><div class="operation">\(\frac38+\frac28=\frac58\)</div></div>
</section>

<section class="section"><h2>5. Fracción de una cantidad</h2>
<div class="example"><p>Calcula \(\frac34\) de \(20\).</p><div class="operation">\(20\div4=5\)</div><div class="operation">\(5\times3=15\)</div></div>
</section>

<section class="summary"><h2>Recuerda</h2><ul><li>Con igual denominador operamos los numeradores.</li><li>Las representaciones ayudan a comprender las operaciones.</li><li>Una fracción también puede aplicarse a una cantidad.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(566,97,709,'video','Suma, Resta y Fracción de una Cantidad','<!-- etl-google-cloud-matematicas:media-plan:123 -->
<p>Vídeo expositivo sobre la suma y resta de fracciones con igual o relacionado denominador, resolución de problemas y cálculo de la fracción de una cantidad. 1-5</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(567,98,710,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:92:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ari-P4-091 | Números decimales</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:26px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ari-P4-091 · Cuarto grado</div><div class="topic">Tema: Números decimales iniciales</div><h1>Conocemos los números decimales</h1><p>Representa cantidades menores que una unidad mediante décimos y centésimos.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás las partes de un decimal y aprenderás a leerlo, escribirlo, compararlo y utilizarlo.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Relacionarás decimales con fracciones, dinero y operaciones sencillas.</p></section>

<section class="section"><h2>1. Décimos</h2><div class="operation">\(\frac{1}{10}=0.1\)</div></section>
<section class="section"><h2>2. Centésimos</h2><div class="operation">\(\frac{1}{100}=0.01\)</div></section>
<section class="section"><h2>3. Parte entera</h2><p>En \(4.27\), el \(4\) corresponde a la parte entera.</p></section>
<section class="section"><h2>4. Parte decimal</h2><p>En \(4.27\), \(27\) representa la parte decimal.</p></section>
<section class="section"><h2>5. Punto decimal</h2><p>Separa la parte entera de la parte decimal.</p></section>
<section class="section"><h2>6. Lectura</h2><div class="example"><p>\(3.5\): tres enteros y cinco décimos.</p></div></section>
<section class="section"><h2>7. Escritura</h2><p>Dos enteros y treinta y cinco centésimos:</p><div class="operation">\(2.35\)</div></section>
<section class="section"><h2>8. Relación con fracciones</h2><div class="operation">\(0.5=\frac{5}{10}=\frac12\)</div></section>
<section class="section"><h2>9. Relación con dinero</h2><p>Los centavos permiten observar centésimos de una unidad monetaria.</p><div class="operation">\(\$12.50\)</div></section>
<section class="section"><h2>10. Comparación</h2><div class="operation">\(2.8>2.5\)</div></section>
<section class="section"><h2>11. Orden</h2><div class="operation">\(1.2<1.5<1.9\)</div></section>
<section class="section"><h2>12. Suma y resta sencilla</h2><div class="example"><p>\(2.5+1.3=3.8\)</p><p>\(4.7-2.1=2.6\)</p></div></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Los decimales representan partes de una unidad.</li><li>Décimos y centésimos ocupan posiciones diferentes.</li><li>También podemos comparar y operar decimales sencillos.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(568,98,710,'video','Números Decimales Iniciales','<!-- etl-google-cloud-matematicas:media-plan:124 -->
<p>Vídeo didáctico que introduce décimos y centésimos, parte entera y decimal, punto decimal, lectura, escritura, relación con dinero/fracciones, comparación, orden, suma y resta. 1-12</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(569,99,795,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:93:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pre-P4-092 | Sucesiones</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:25px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.table{width:100%;border-collapse:collapse}.table th{background:#B9DCF5;padding:12px}.table td{border:1px solid #C4DFEF;padding:12px;text-align:center}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Pre-P4-092 · Cuarto grado</div><div class="topic">Tema: Preálgebra — Sucesiones</div><h1>Descubrimos sucesiones y relaciones</h1><p>Encuentra reglas y cantidades desconocidas.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás sucesiones, reglas, términos desconocidos, letras y relaciones entre cantidades.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Representarás reglas sencillas mediante números, palabras, tablas y letras.</p></section>

<section class="section"><h2>1. Sucesiones aditivas</h2><div class="operation">\(5,\ 10,\ 15,\ 20,\ldots\)</div></section>
<section class="section"><h2>2. Sucesiones multiplicativas</h2><div class="operation">\(3,\ 6,\ 12,\ 24,\ldots\)</div></section>
<section class="section"><h2>3. Reglas de formación</h2><p>La regla explica cómo obtener cada término.</p></section>
<section class="section"><h2>4. Posiciones y términos</h2><p>En \(5,10,15,20\), el tercer término es \(15\).</p></section>
<section class="section"><h2>5. Igualdades equivalentes</h2><div class="operation">\(8+7=10+5\)</div></section>
<section class="section"><h2>6. Término desconocido</h2><div class="operation">\(\square+8=20\)</div><p>\(\square=12\).</p></section>
<section class="section"><h2>7. Factor desconocido</h2><div class="operation">\(7\times\square=42\)</div><p>\(\square=6\).</p></section>
<section class="section"><h2>8. Uso inicial de letras</h2><div class="operation">\(x+5=12\)</div><p>La letra puede representar una cantidad desconocida.</p></section>
<section class="section"><h2>9. Tablas de entrada y salida</h2>
<table class="table"><tr><th>Entrada</th><th>Regla</th><th>Salida</th></tr><tr><td>\(2\)</td><td>\(\times3\)</td><td>\(6\)</td></tr><tr><td>\(4\)</td><td>\(\times3\)</td><td>\(12\)</td></tr></table>
</section>
<section class="section"><h2>10. Relaciones entre dos cantidades</h2><p>Si cada caja tiene \(4\) lápices, el número de lápices depende del número de cajas.</p></section>
<section class="section"><h2>11. Expresión de reglas con palabras</h2><p>Ejemplo: “multiplica el número de entrada por \(3\)”.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Las sucesiones tienen reglas.</li><li>Las letras pueden representar valores desconocidos.</li><li>Las relaciones pueden expresarse con tablas o palabras.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(570,99,795,'video','Sucesiones y Variación','<!-- etl-google-cloud-matematicas:media-plan:125 -->
<p>Vídeo expositivo que analiza sucesiones aditivas y multiplicativas, reglas de formación, términos desconocidos, uso inicial de letras, tablas de entrada/salida y relaciones entre cantidades. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(571,100,748,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:94:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P4-093 | Ángulos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:27px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.visual{text-align:center;font-size:42px;background:#EAF6FF;border-radius:15px;padding:18px}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Geo-P4-093 · Cuarto grado</div><div class="topic">Tema: Ángulos</div><h1>Medimos y construimos ángulos</h1><p>Clasifica y mide diferentes aberturas.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Conocerás tipos de ángulos, grados y uso del transportador.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Clasificarás, medirás, construirás y estimarás ángulos.</p></section>

<section class="section"><h2>1. Ángulo agudo</h2><p>Mide menos de \(90^\circ\).</p></section>
<section class="section"><h2>2. Ángulo recto</h2><div class="visual">∟</div><div class="operation">\(90^\circ\)</div></section>
<section class="section"><h2>3. Ángulo obtuso</h2><p>Mide más de \(90^\circ\) y menos de \(180^\circ\).</p></section>
<section class="section"><h2>4. Ángulo llano</h2><div class="operation">\(180^\circ\)</div></section>
<section class="section"><h2>5. Grado</h2><p>El grado \((^\circ)\) es una unidad para medir ángulos.</p></section>
<section class="section"><h2>6. Uso del transportador</h2><p>Colocamos su centro sobre el vértice y alineamos uno de los lados con \(0^\circ\).</p></section>
<section class="section"><h2>7. Medición</h2><div class="operation">\(45^\circ,\ 90^\circ,\ 120^\circ\)</div></section>
<section class="section"><h2>8. Construcción</h2><p>Podemos utilizar transportador y regla para dibujar un ángulo de una medida determinada.</p></section>
<section class="section"><h2>9. Estimación de ángulos</h2><p>Utiliza \(90^\circ\) como referencia para decidir si un ángulo parece menor o mayor.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Los ángulos se miden en grados.</li><li>El transportador sirve para medir y construir.</li><li>Podemos clasificarlos según su abertura.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(572,100,748,'video','Medición y Clasificación de Ángulos','<!-- etl-google-cloud-matematicas:media-plan:126 -->
<p>Vídeo expositivo que muestra la clasificación de ángulos (agudo, recto, obtuso, llano), el concepto de grado, el uso del transportador para medir, construir y estimar ángulos. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(573,101,749,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:95:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P4-094 | Triángulos y cuadriláteros</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.section{margin:23px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.visual{text-align:center;font-size:45px;background:#EAF6FF;border-radius:15px;padding:16px}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Geo-P4-094 · Cuarto grado</div><div class="topic">Tema: Triángulos y cuadriláteros</div><h1>Clasificamos triángulos y cuadriláteros</h1><p>Analiza lados, ángulos y otras características de las figuras.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Clasificarás triángulos y conocerás diferentes cuadriláteros y sus características.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Distinguirás figuras mediante lados, ángulos, paralelismo, diagonales y simetría.</p></section>

<section class="section"><h2>1. Clasificación de triángulos por lados</h2><p>Equilátero, isósceles y escaleno.</p></section>
<section class="section"><h2>2. Clasificación de triángulos por ángulos</h2><p>Podemos clasificarlos según los tipos de ángulos que presentan.</p></section>
<section class="section"><h2>3. Cuadrado</h2><div class="visual">□</div><p>Tiene \(4\) lados iguales.</p></section>
<section class="section"><h2>4. Rectángulo</h2><div class="visual">▭</div></section>
<section class="section"><h2>5. Rombo</h2><p>Tiene \(4\) lados iguales.</p></section>
<section class="section"><h2>6. Romboide</h2><p>Sus lados opuestos son paralelos e iguales.</p></section>
<section class="section"><h2>7. Trapecio</h2><p>Presenta un par de lados paralelos.</p></section>
<section class="section"><h2>8. Trapezoide</h2><p>No presenta lados paralelos.</p></section>
<section class="section"><h2>9. Lados paralelos</h2><p>Mantienen siempre la misma distancia.</p></section>
<section class="section"><h2>10. Lados perpendiculares</h2><p>Se encuentran formando ángulos rectos.</p></section>
<section class="section"><h2>11. Diagonales</h2><p>Unen vértices no consecutivos.</p></section>
<section class="section"><h2>12. Ejes de simetría</h2><p>Dividen algunas figuras en partes que se corresponden.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Podemos clasificar figuras usando diferentes características.</li><li>Paralelismo, perpendicularidad y simetría ayudan a distinguirlas.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(574,101,749,'video','Triángulos y Cuadriláteros','<!-- etl-google-cloud-matematicas:media-plan:127 -->
<p>Vídeo didáctico sobre la clasificación de triángulos por sus lados y ángulos, y las propiedades de los cuadriláteros (cuadrado, rectángulo, rombo, romboide, trapecio), lados paralelos/perpendiculares, diagonales y ejes de simetría. 1-12</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(575,102,750,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:96:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P4-095 | Círculo y circunferencia</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:30px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.visual{text-align:center;font-size:65px;background:#EAF6FF;border-radius:15px;padding:18px}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Geo-P4-095 · Cuarto grado</div><div class="topic">Tema: Círculo y circunferencia inicial</div><h1>Conocemos el círculo y la circunferencia</h1><p>Descubre sus partes y aprende a construirlos.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Distinguirás círculo y circunferencia y reconocerás centro, radio y diámetro.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Identificarás sus elementos y utilizarás el compás.</p></section>

<section class="section"><h2>1. Diferencia entre círculo y circunferencia</h2><div class="visual">○ ●</div><p>La circunferencia corresponde al borde; el círculo incluye la región interior.</p></section>
<section class="section"><h2>2. Centro</h2><p>Es el punto ubicado a la misma distancia de todos los puntos de la circunferencia.</p></section>
<section class="section"><h2>3. Radio</h2><p>Une el centro con un punto de la circunferencia.</p></section>
<section class="section"><h2>4. Diámetro</h2><p>Pasa por el centro y une dos puntos de la circunferencia.</p></section>
<section class="section"><h2>5. Uso del compás</h2><p>El compás permite trazar circunferencias y conservar una misma distancia al centro.</p></section>
<section class="section"><h2>6. Relación entre radio y diámetro</h2><div class="important"><div class="operation">\(d=2r\)</div><p>El diámetro mide el doble del radio.</p></div></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Círculo y circunferencia no significan exactamente lo mismo.</li><li>El diámetro equivale a dos radios.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(576,102,750,'video','Círculo y Circunferencia Inicial','<!-- etl-google-cloud-matematicas:media-plan:128 -->
<p>Vídeo expositivo sobre la diferencia entre círculo y circunferencia, identificando centro, radio, diámetro, uso del compás y la relación entre radio y diámetro. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(577,103,751,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:97:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Geo-P4-096 | Cuerpos geométricos</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.section{margin:28px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Geo-P4-096 · Cuarto grado</div><div class="topic">Tema: Cuerpos geométricos</div><h1>Analizamos los cuerpos geométricos</h1><p>Reconoce sus elementos y observa cómo pueden desplegarse.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Analizarás prismas, pirámides, bases, caras, aristas, vértices y desarrollos planos.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Clasificarás cuerpos mediante sus características.</p></section>

<section class="section"><h2>1. Prismas</h2><p>Tienen dos bases iguales y paralelas.</p></section>
<section class="section"><h2>2. Pirámides</h2><p>Tienen una base y caras laterales que convergen en un vértice.</p></section>
<section class="section"><h2>3. Clasificación por la base</h2><p>Podemos hablar de prisma triangular, prisma rectangular, pirámide cuadrangular, entre otros.</p></section>
<section class="section"><h2>4. Caras</h2><p>Son las superficies planas del cuerpo.</p></section>
<section class="section"><h2>5. Aristas</h2><p>Son segmentos donde se encuentran dos caras.</p></section>
<section class="section"><h2>6. Vértices</h2><p>Son puntos donde se encuentran varias aristas.</p></section>
<section class="section"><h2>7. Desarrollos planos sencillos</h2><p>Al desplegar las caras de algunos cuerpos obtenemos una figura plana que puede volver a doblarse.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Prismas y pirámides pueden clasificarse por sus bases.</li><li>Caras, aristas y vértices permiten describir los cuerpos.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(578,103,751,'video','Cuerpos Geométricos y Desarrollos Planos','<!-- etl-google-cloud-matematicas:media-plan:129 -->
<p>Vídeo didáctico que clasifica prismas y pirámides por su base, identificando caras, aristas, vértices y sus desarrollos planos sencillos. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(579,104,773,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:98:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P4-097 | Conversiones</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:28px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Med-P4-097 · Cuarto grado</div><div class="topic">Tema: Conversiones</div><h1>Convertimos unidades de medida</h1><p>Expresa una misma medida utilizando diferentes unidades.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Relacionarás unidades de longitud, masa y capacidad y realizarás conversiones sencillas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Utilizarás multiplicación o división para cambiar de una unidad a otra.</p></section>

<section class="section"><h2>1. Milímetros, centímetros y metros</h2><div class="operation">\(10\text{ mm}=1\text{ cm}\)</div><div class="operation">\(100\text{ cm}=1\text{ m}\)</div></section>
<section class="section"><h2>2. Metros y kilómetros</h2><div class="operation">\(1000\text{ m}=1\text{ km}\)</div></section>
<section class="section"><h2>3. Gramos y kilogramos</h2><div class="operation">\(1000\text{ g}=1\text{ kg}\)</div></section>
<section class="section"><h2>4. Mililitros y litros</h2><div class="operation">\(1000\text{ mL}=1\text{ L}\)</div></section>
<section class="section"><h2>5. Conversión mediante multiplicación</h2><div class="example"><p>\(3\text{ m}\) a centímetros:</p><div class="operation">\(3\times100=300\text{ cm}\)</div></div></section>
<section class="section"><h2>6. Conversión mediante división</h2><div class="example"><p>\(2000\text{ g}\) a kilogramos:</p><div class="operation">\(2000\div1000=2\text{ kg}\)</div></div></section>
<section class="section"><h2>7. Estimación</h2><p>Antes de convertir podemos pensar cuál debería ser aproximadamente el resultado.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Las unidades pueden representar una misma medida en escalas distintas.</li><li>Algunas conversiones requieren multiplicar y otras dividir.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(580,104,773,'video','Conversión de Unidades de Medida','<!-- etl-google-cloud-matematicas:media-plan:130 -->
<p>Vídeo expositivo que enseña a realizar conversiones de longitud (mm, cm, m, km), masa (g, kg) y capacidad (mL, L) multiplicando o dividiendo. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(581,105,774,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:99:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P4-098 | Tiempo</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:28px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Med-P4-098 · Cuarto grado</div><div class="topic">Tema: Tiempo</div><h1>Calculamos tiempos e intervalos</h1><p>Relaciona distintas unidades y resuelve situaciones con horarios.</p></header>
<main class="content">

<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás unidades de tiempo, horarios, duración, intervalos y conversiones.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Calcularás cuánto tiempo transcurre entre diferentes momentos.</p></section>

<section class="section"><h2>1. Segundo, minuto y hora</h2><div class="operation">\(60\text{ s}=1\text{ min}\)</div><div class="operation">\(60\text{ min}=1\text{ h}\)</div></section>
<section class="section"><h2>2. Día, semana, mes y año</h2><div class="example"><p>\(7\) días = \(1\) semana.</p><p>\(12\) meses = \(1\) año.</p></div></section>
<section class="section"><h2>3. Horarios</h2><p>Los horarios organizan actividades según una hora de inicio y final.</p></section>
<section class="section"><h2>4. Duración</h2><div class="operation">\(10{:}00-8{:}30=1\text{ h }30\text{ min}\)</div></section>
<section class="section"><h2>5. Intervalos</h2><p>Un intervalo representa el tiempo comprendido entre dos momentos.</p></section>
<section class="section"><h2>6. Hora inicial y final</h2><div class="example"><p>Una actividad inicia a las \(14{:}00\) y dura \(2\) horas.</p><p>Termina a las \(16{:}00\).</p></div></section>
<section class="section"><h2>7. Conversión de horas a minutos</h2><div class="operation">\(3\text{ h}=3\times60=180\text{ min}\)</div></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Las unidades de tiempo están relacionadas.</li><li>Podemos calcular duración, inicio o final de una actividad.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(582,105,774,'video','Unidades y Cálculo del Tiempo','<!-- etl-google-cloud-matematicas:media-plan:131 -->
<p>Vídeo didáctico sobre equivalencias de tiempo (s, min, h, día, semana, mes, año), lectura de horarios, cálculo de duración e intervalos entre hora inicial y final. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(583,106,775,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:100:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P4-099 | Perímetro</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:28px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Med-P4-099 · Cuarto grado</div><div class="topic">Tema: Perímetro</div><h1>Resolvemos problemas de perímetro</h1><p>Calcula la longitud total alrededor de diferentes figuras.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Calcularás perímetros de diferentes polígonos y encontrarás medidas desconocidas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Utilizarás sumas y fórmulas para resolver situaciones de perímetro.</p></section>

<section class="section"><h2>1. Polígonos</h2><p>Para obtener su perímetro sumamos las longitudes de todos sus lados.</p></section>
<section class="section"><h2>2. Figuras regulares</h2><p>Sus lados tienen una medida común.</p><div class="operation">\(P=5\times6=30\text{ cm}\)</div></section>
<section class="section"><h2>3. Figuras irregulares</h2><p>Sumamos cada uno de los lados aunque tengan diferentes medidas.</p></section>
<section class="section"><h2>4. Lado desconocido</h2><div class="example"><p>Un rectángulo tiene perímetro \(30\text{ cm}\), largo \(10\text{ cm}\) y dos lados cortos iguales.</p><div class="operation">\(30-20=10\)</div><p>Cada lado corto mide \(5\text{ cm}\).</p></div></section>
<section class="section"><h2>5. Fórmulas del cuadrado y rectángulo</h2><div class="operation">\(P_{\text{cuadrado}}=4l\)</div><div class="operation">\(P_{\text{rectángulo}}=2(largo+ancho)\)</div></section>
<section class="section"><h2>6. Problemas</h2><p>Podemos calcular cuánta cerca se necesita para rodear un terreno o cuánto marco necesita una fotografía.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>El perímetro mide el contorno.</li><li>Las fórmulas simplifican algunos cálculos.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(584,106,775,'video','Cálculo de Perímetros','<!-- etl-google-cloud-matematicas:media-plan:132 -->
<p>Vídeo expositivo que enseña a calcular el perímetro en polígonos regulares e irregulares, el hallazgo de lados desconocidos y las fórmulas de cuadrado y rectángulo. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(585,107,776,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:101:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Med-P4-100 | Área</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:27px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:27px;font-weight:bold}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Med-P4-100 · Cuarto grado</div><div class="topic">Tema: Área</div><h1>Calculamos áreas</h1><p>Mide cuánto espacio ocupa una superficie.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás unidades cuadradas, áreas de cuadrados y rectángulos y diferencia entre área y perímetro.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Calcularás y compararás superficies.</p></section>

<section class="section"><h2>1. Unidad cuadrada</h2><p>Utilizamos cuadrados iguales para medir superficies.</p></section>
<section class="section"><h2>2. Centímetro cuadrado</h2><div class="operation">\(\text{cm}^2\)</div></section>
<section class="section"><h2>3. Metro cuadrado</h2><div class="operation">\(\text{m}^2\)</div></section>
<section class="section"><h2>4. Área del cuadrado</h2><div class="operation">\(A=l\times l\)</div><p>Si \(l=5\text{ cm}\): \(A=25\text{ cm}^2\).</p></section>
<section class="section"><h2>5. Área del rectángulo</h2><div class="operation">\(A=base\times altura\)</div><p>\(8\times4=32\text{ cm}^2\).</p></section>
<section class="section"><h2>6. Área de figuras en cuadrícula</h2><p>Contamos las unidades cuadradas cubiertas por la figura.</p></section>
<section class="section"><h2>7. Figuras compuestas sencillas</h2><p>Podemos separar una figura en rectángulos o cuadrados y sumar sus áreas.</p></section>
<section class="section"><h2>8. Diferencia entre área y perímetro</h2><div class="important"><p><strong>Área:</strong> mide superficie.</p><p><strong>Perímetro:</strong> mide contorno.</p></div></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Las áreas se expresan en unidades cuadradas.</li><li>Área y perímetro son conceptos diferentes.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(586,107,776,'video','Unidades Cuadradas y Cálculo de Área','<!-- etl-google-cloud-matematicas:media-plan:133 -->
<p>Vídeo didáctico que aborda el concepto de cm^2 y m^2, fórmulas de área para cuadrado y rectángulo, figuras en cuadrícula, compuestas y la diferencia entre área y perímetro. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(587,108,800,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:102:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Ubi-P4-101 | Ubicación espacial</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:24px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.visual{text-align:center;background:#EAF6FF;border-radius:15px;padding:18px;font-size:33px}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Ubi-P4-101 · Cuarto grado</div><div class="topic">Tema: Ubicación espacial</div><h1>Nos orientamos con croquis y cuadrículas</h1><p>Describe lugares y recorridos utilizando diferentes referencias.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás croquis, recorridos, puntos cardinales y ubicación en cuadrículas.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Interpretarás y comunicarás posiciones y trayectos.</p></section>

<section class="section"><h2>1. Croquis</h2><p>Un croquis es una representación sencilla de un lugar.</p></section>
<section class="section"><h2>2. Puntos de referencia</h2><p>Ayudan a reconocer dónde estamos o hacia dónde debemos dirigirnos.</p></section>
<section class="section"><h2>3. Trayectos</h2><p>Describen un recorrido entre un punto inicial y uno final.</p></section>
<section class="section"><h2>4. Giros</h2><div class="visual">← ↑ → ↓</div></section>
<section class="section"><h2>5. Calles</h2><p>Los nombres y cruces de calles ayudan a localizar lugares en un croquis.</p></section>
<section class="section"><h2>6. Símbolos</h2><p>Un símbolo puede representar una escuela, hospital, parque u otro lugar.</p></section>
<section class="section"><h2>7. Instrucciones de recorrido</h2><div class="example"><p>Avanza dos calles, gira a la derecha y continúa hasta el parque.</p></div></section>
<section class="section"><h2>8. Puntos cardinales</h2><div class="visual">N<br>O&nbsp;&nbsp;&nbsp;E<br>S</div></section>
<section class="section"><h2>9. Cuadrículas</h2><p>Dividen un espacio en celdas para facilitar la ubicación.</p></section>
<section class="section"><h2>10. Filas y columnas</h2><p>Una posición puede identificarse mediante la fila y la columna en la que se encuentra.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Los croquis y cuadrículas ayudan a representar espacios.</li><li>Los puntos de referencia y cardinales ayudan a orientarnos.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(588,108,800,'video','Croquis, Trayectos y Coordenadas','<!-- etl-google-cloud-matematicas:media-plan:134 -->
<p>Vídeo expositivo sobre la interpretación de croquis, puntos de referencia, trayectos, giros, símbolos, puntos cardinales y ubicación en cuadrículas por filas y columnas. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(589,109,784,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:103:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Est-P4-102 | Estadística</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.section{margin:23px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.table{width:100%;border-collapse:collapse}.table th{background:#B9DCF5;padding:12px}.table td{border:1px solid #BEDCED;padding:12px;text-align:center}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Est-P4-102 · Cuarto grado</div><div class="topic">Tema: Estadística</div><h1>Recolectamos, representamos e interpretamos datos</h1><p>Utiliza tablas y gráficas para comprender información.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Aprenderás encuestas, tablas, pictogramas, gráficas, escalas, moda y comparación de datos.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Organizarás información y obtendrás conclusiones a partir de los datos.</p></section>

<section class="section"><h2>1. Encuestas</h2><p>Permiten recolectar información mediante preguntas.</p></section>

<section class="section"><h2>2. Tablas de frecuencia</h2>
<table class="table"><tr><th>Deporte</th><th>Frecuencia</th></tr><tr><td>Fútbol</td><td>\(12\)</td></tr><tr><td>Natación</td><td>\(7\)</td></tr><tr><td>Básquetbol</td><td>\(9\)</td></tr></table>
</section>

<section class="section"><h2>3. Tablas de doble entrada</h2><p>Permiten relacionar dos características en una misma tabla.</p></section>

<section class="section"><h2>4. Pictogramas</h2><p>Representan datos mediante símbolos.</p></section>

<section class="section"><h2>5. Gráficas de barras</h2><p>Las barras permiten comparar rápidamente diferentes cantidades.</p></section>

<section class="section"><h2>6. Escalas</h2><p>Cada espacio de un eje puede representar más de una unidad, por ejemplo \(5\) personas.</p></section>

<section class="section"><h2>7. Moda</h2><p>Es el dato que aparece con mayor frecuencia.</p></section>

<section class="section"><h2>8. Valor mayor</h2><p>Es la cantidad más grande del conjunto observado.</p></section>

<section class="section"><h2>9. Valor menor</h2><p>Es la cantidad más pequeña.</p></section>

<section class="section"><h2>10. Comparación de grupos</h2><p>Podemos determinar diferencias entre dos categorías o grupos.</p></section>

<section class="section"><h2>11. Interpretación de información</h2><p>Utilizamos los datos para responder preguntas y obtener conclusiones.</p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Los datos pueden organizarse de diferentes maneras.</li><li>Las escalas deben interpretarse correctamente.</li><li>La moda representa el dato más frecuente.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(590,109,784,'video','Organización de Datos, Gráficas y Moda','<!-- etl-google-cloud-matematicas:media-plan:135 -->
<p>Vídeo expositivo sobre encuestas, tablas de frecuencia, tablas de doble entrada, pictogramas, gráficas de barras con escalas, identificación de la moda y valores máximo/mínimo. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(591,110,791,'html','Leccion escrita','<!-- etl-google-cloud-matematicas:created:104:5 -->
<!DOCTYPE html>
<html lang="es"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Pro-P4-103 | Probabilidad</title>
<style>
*{box-sizing:border-box}body{margin:0;padding:25px;font-family:Arial,sans-serif;background:#F4FAFF;color:#334653;line-height:1.7}.lesson{max-width:1000px;margin:auto;background:#fff;border-radius:24px;overflow:hidden}.header{background:linear-gradient(135deg,#DCEFFF,#B9DCF5);padding:45px;text-align:center}.code{display:inline-block;background:#ffffffbf;padding:7px 17px;border-radius:30px;color:#37698C;font-weight:bold}.topic{margin-top:15px;color:#527B98;font-weight:bold}.header h1{color:#315F7D}.content{padding:40px}.description,.objective,.example,.practice,.important{padding:22px;border-radius:16px;margin:22px 0}.description{background:#EEF8FF;border-left:6px solid #83BCE2}.objective{background:#FAFDFF;border:2px solid #C9E3F4}.example{background:#F4FAFF;border:2px solid #C7E2F3}.practice{background:#E7F5FF}.important{background:#DDEFFF;border-left:6px solid #68A6D0}.section{margin:24px 0}.section h2{color:#37698C;border-bottom:3px solid #D5EAF8}.operation{text-align:center;background:#EAF6FF;color:#315F7D;padding:15px;border-radius:14px;font-size:26px;font-weight:bold}.table{width:100%;border-collapse:collapse}.table th{background:#B9DCF5;padding:12px}.table td{border:1px solid #BEDCED;padding:12px;text-align:center}.summary{background:#B9DCF5;color:#294E67;padding:30px;border-radius:20px}
</style></head>
<body><div class="lesson">
<header class="header"><div class="code">Pro-P4-103 · Cuarto grado</div><div class="topic">Tema: Probabilidad</div><h1>Experimentamos con la probabilidad</h1><p>Analiza posibles resultados y comprueba tus predicciones.</p></header>
<main class="content">
<section class="description"><h2>Descripción del contenido</h2><p>Trabajarás resultados posibles, diferentes tipos de eventos y experimentos aleatorios.</p></section>
<section class="objective"><h2>¿Qué aprenderás?</h2><p>Predecirás, registrarás y compararás resultados obtenidos al azar.</p></section>

<section class="section"><h2>1. Espacio de resultados posibles</h2><p>Es el conjunto de todos los resultados que pueden ocurrir.</p><div class="example"><p>En un dado:</p><div class="operation">\(\{1,2,3,4,5,6\}\)</div></div></section>

<section class="section"><h2>2. Eventos seguros</h2><p>Ocurren necesariamente bajo las condiciones del experimento.</p></section>

<section class="section"><h2>3. Eventos imposibles</h2><p>No pueden ocurrir.</p></section>

<section class="section"><h2>4. Eventos más o menos probables</h2><p>Podemos comparar cuál resultado tiene mayores posibilidades de aparecer.</p></section>

<section class="section"><h2>5. Monedas</h2><div class="operation">Cara / Cruz</div></section>

<section class="section"><h2>6. Dados</h2><div class="operation">\(1,\ 2,\ 3,\ 4,\ 5,\ 6\)</div></section>

<section class="section"><h2>7. Ruletas</h2><p>Las regiones de una ruleta representan diferentes resultados.</p></section>

<section class="section"><h2>8. Extracción de fichas</h2><div class="example"><p>Si una bolsa tiene \(8\) fichas azules y \(2\) rojas, obtener azul parece más probable.</p></div></section>

<section class="section"><h2>9. Frecuencia experimental</h2>
<table class="table"><tr><th>Resultado</th><th>Veces</th></tr><tr><td>Azul</td><td>\(14\)</td></tr><tr><td>Rojo</td><td>\(6\)</td></tr></table>
</section>

<section class="section"><h2>10. Comparación entre predicción y resultado</h2>
<p>Después de realizar el experimento comparamos lo que pensamos que ocurriría con lo que realmente sucedió.</p>
</section>

<section class="practice"><h2>Practiquemos</h2><p>¿Es posible obtener \(8\) al lanzar un dado convencional?</p><p><strong>No. Es un evento imposible.</strong></p></section>

<section class="summary"><h2>Recuerda</h2><ul><li>Primero identifica todos los resultados posibles.</li><li>Los eventos pueden tener diferente probabilidad.</li><li>La frecuencia experimental indica cuántas veces ocurrió un resultado.</li><li>Una predicción puede diferir del resultado real.</li></ul></section>
</main></div></body></html>',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(592,110,791,'video','Espacio Muestral y Frecuencia Experimental','<!-- etl-google-cloud-matematicas:media-plan:136 -->
<p>Vídeo didáctico que analiza el espacio de resultados en eventos seguros, imposibles y probables mediante experimentos con monedas, dados, ruletas y fichas para comparar resultados. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,2,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(593,111,711,'video','Números de 6 o más Cifras','<!-- etl-google-cloud-matematicas:media-plan:137 -->
<p>Vídeo expositivo que abarca la lectura, escritura y notación desarrollada de números de $6$ o más cifras, valor posicional (millones), comparación, orden y recta numérica. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(594,112,712,'video','Operaciones Combinadas y Jerarquía','<!-- etl-google-cloud-matematicas:media-plan:138 -->
<p>Vídeo expositivo que explica los algoritmos avanzados de suma, resta, multiplicación y división con números grandes, priorización de operaciones y paréntesis. 1-2</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(595,113,713,'video','Estimación y Problemas Multietapa','<!-- etl-google-cloud-matematicas:media-plan:139 -->
<p>Vídeo didáctico enfocado en estrategias de cálculo mental, estimación de resultados y resolución de problemas complejos de varias etapas. 3-8</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(596,114,714,'video','Números Primos, Compuestos y Criterios','<!-- etl-google-cloud-matematicas:media-plan:140 -->
<p>Vídeo expositivo que profundiza en múltiplos y divisores, clasificación de números primos y compuestos, y criterios de divisibilidad (2, 3, 5, 9, 10). 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(597,115,715,'video','Ampliación, Simplificación y Números Mixtos','<!-- etl-google-cloud-matematicas:media-plan:141 -->
<p>Vídeo expositivo sobre la obtención de fracciones equivalentes por ampliación/simplificación, conversión entre fracciones impropias y números mixtos, y orden en la recta. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(598,116,716,'video','Operaciones con Fracciones','<!-- etl-google-cloud-matematicas:media-plan:142 -->
<p>Vídeo didáctico que enseña el algoritmo para sumar y restar fracciones con diferente denominador (mínimo común denominador), productos sencillos y problemas aplicados. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(599,117,717,'video','Concepto, Orden y Operaciones con Decimales','<!-- etl-google-cloud-matematicas:media-plan:143 -->
<p>Vídeo expositivo sobre décimos, centésimos y milésimos, valor posicional, conversión entre decimales y fracciones, comparación, orden, suma, resta y multiplicación por naturales. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(600,118,718,'video','Proporcionalidad Directa y Regla de Tres','<!-- etl-google-cloud-matematicas:media-plan:144 -->
<p>Vídeo didáctico que introduce el concepto de razón, tablas de proporcionalidad directa, constante de proporcionalidad, valor unitario y regla de tres simple. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(601,119,796,'video','Sucesiones y Ecuaciones Sencillas','<!-- etl-google-cloud-matematicas:media-plan:145 -->
<p>Vídeo expositivo que analiza sucesiones con progresión aritmética y geométrica, representación de reglas mediante expresiones con variables y ecuaciones aditivas/multiplicativas simples. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(602,120,752,'video','Ángulos, Triángulos y Cuadriláteros','<!-- etl-google-cloud-matematicas:media-plan:146 -->
<p>Vídeo expositivo sobre la clasificación de ángulos, suma de ángulos internos en triángulos y cuadriláteros, y la construcción de figuras geométricamente exactas. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(603,121,753,'video','El Círculo y la Circunferencia','<!-- etl-google-cloud-matematicas:media-plan:147 -->
<p>Vídeo didáctico que explica los elementos del círculo (radio, diámetro, cuerda, arco) y la introducción al número $\pi$ ($3.1416$) para calcular la longitud de la circunferencia. 1-6</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(604,122,754,'video','Cuerpos Geométricos y Prismas','<!-- etl-google-cloud-matematicas:media-plan:148 -->
<p>Vídeo expositivo sobre la clasificación de prismas y pirámides, trazado de desarrollos planos completos y cálculo del área de sus caras. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(605,123,777,'video','Unidades de Medida y Conversiones','<!-- etl-google-cloud-matematicas:media-plan:149 -->
<p>Vídeo expositivo sobre conversiones entre múltiplos y submúltiplos del metro, gramo y litro, además de la resolución de problemas contextualizados. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(606,124,778,'video','Fórmulas de Perímetro y Área','<!-- etl-google-cloud-matematicas:media-plan:150 -->
<p>Vídeo didáctico que deduce y aplica fórmulas para calcular el área y perímetro de triángulos, paralelogramos, trapecios y polígonos regulares. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(607,125,801,'video','Plano Cartesiano y Coordenadas','<!-- etl-google-cloud-matematicas:media-plan:151 -->
<p>Vídeo expositivo que introduce el primer cuadrante del plano cartesiano, lectura e identificación de coordenadas $(x, y)$, trazado de figuras y trayectos. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(608,126,785,'video','Medidas de Tendencia Central y Gráficas','<!-- etl-google-cloud-matematicas:media-plan:152 -->
<p>Vídeo expositivo sobre la recolección de datos, cálculo de la media (promedio), mediana y moda, además de la interpretación y elaboración de gráficas de barras y líneas. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(609,127,792,'video','Probabilidad Frecuencial y Teórica','<!-- etl-google-cloud-matematicas:media-plan:153 -->
<p>Vídeo didáctico que enseña a calcular la probabilidad teórica en experimentos sencillos, comparar frecuencias observadas con predicciones teóricas y usar la escala decimal/fraccionaria de $0$ a $1$. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(610,128,719,'video','Grandes Números y Operaciones Avanzadas','<!-- etl-google-cloud-matematicas:media-plan:154 -->
<p>Vídeo expositivo sobre lectura, escritura, comparación y operaciones combinadas con números de cualquier cantidad de cifras, aplicando adecuadamente la jerarquía de operaciones. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(611,129,720,'video','Mínimo Común Múltiplo y Máximo Común Divisor','<!-- etl-google-cloud-matematicas:media-plan:155 -->
<p>Vídeo didáctico que enseña la descomposición en factores primos, criterios de divisibilidad completos y la obtención del M.C.D. y m.c.m. para resolver problemas contextualizados. 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(612,130,721,'video','Operaciones Combinadas con Fracciones','<!-- etl-google-cloud-matematicas:media-plan:156 -->
<p>Vídeo expositivo sobre la resolución de suma, resta, multiplicación y división de fracciones y números mixtos, ubicaciones en la recta numérica y simplificación de resultados. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(613,131,722,'video','Algoritmos y Conversión de Decimales','<!-- etl-google-cloud-matematicas:media-plan:157 -->
<p>Vídeo didáctico sobre multiplicación y división con números decimales en dividendo y divisor, conversión entre fracciones y decimales periódicos/finitos. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(614,132,723,'video','Proporcionalidad Directa, Inversa y Porcentajes','<!-- etl-google-cloud-matematicas:media-plan:158 -->
<p>Vídeo expositivo que abarca la resolución de problemas de proporcionalidad directa e inversa, tablas, constante de proporcionalidad, cálculo de porcentajes, descuentos e IVA. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(615,133,724,'video','Sucesiones, Expresiones Algebraicas y Ecuaciones','<!-- etl-google-cloud-matematicas:media-plan:159 -->
<p>Vídeo expositivo sobre patrones en sucesiones complejas, traducción del lenguaje común al lenguaje algebraico, simplificación y solución de ecuaciones de primer grado (x + a = b, ax = b). 1-12</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(616,134,725,'video','Polígonos, Ángulos y Construcciones Geométricas','<!-- etl-google-cloud-matematicas:media-plan:160 -->
<p>Vídeo expositivo sobre la clasificación de polígonos regulares e irregulares, suma de ángulos internos, trazo de diagonales y construcciones con regla y compás. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(617,135,797,'video','La Circunferencia y el Círculo Completo','<!-- etl-google-cloud-matematicas:media-plan:161 -->
<p>Vídeo didáctico sobre el cálculo del perímetro de la circunferencia y el área del círculo mediante el uso del número π (pi), e introducción al área de sectores circulares. 1-7</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(618,136,798,'video','Prismas, Pirámides y Volúmenes Iniciales','<!-- etl-google-cloud-matematicas:media-plan:162 -->
<p>Vídeo expositivo sobre desarrollos planos complejos de cuerpos geométricos, cálculo del área total y la introducción al concepto de volumen con cubos unitarios (cm^3, m^3). 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(619,137,799,'video','Conversión entre Sistemas de Medida','<!-- etl-google-cloud-matematicas:media-plan:163 -->
<p>Vídeo expositivo sobre conversiones avanzadas en el Sistema Métrico Decimal y equivalencias con unidades del Sistema Inglés (pulgada, pie, milla, libra, galón). 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(620,138,755,'video','Fórmulas de Área de Polígonos y Círculos','<!-- etl-google-cloud-matematicas:media-plan:164 -->
<p>Vídeo didáctico para deducción y aplicación de fórmulas de área en figuras compuestas, sombreadas y polígonos irregulares mediante descomposición. 1-9</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(621,139,756,'video','Cálculo del Volumen en Prismas','<!-- etl-google-cloud-matematicas:media-plan:165 -->
<p>Vídeo expositivo que enseña las fórmulas para calcular el volumen de prismas rectos y cilindros, así como la relación entre volumen y capacidad (1L}= 1dm^3). 1-8</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(622,140,757,'video','Plano Cartesiano y Escalas en Mapas','<!-- etl-google-cloud-matematicas:media-plan:166 -->
<p>Vídeo expositivo sobre la localización e interpretación de puntos en los cuatro cuadrantes del plano cartesiano, el cálculo de distancias reales utilizando escalas en mapas y planos. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(623,141,779,'video','Análisis Estadístico y Gráficas Circulares','<!-- etl-google-cloud-matematicas:media-plan:167 -->
<p>Vídeo expositivo que profundiza en las medidas de tendencia central (media, mediana, moda), el rango como medida de dispersión y la lectura, interpretación y elaboración de gráficas circulares o de pastel. 1-11</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(624,142,780,'video','Cálculo Formal de Probabilidad','<!-- etl-google-cloud-matematicas:media-plan:168 -->
<p>Vídeo didáctico que aborda el cálculo formal de la probabilidad de un evento (P = casos favorables \ casos posibles), diagramas de árbol, espacio muestral y la comparación entre probabilidad teórica y frecuencial. 1-10</p>',NULL,0,'generic','Básica',10,NULL,0,1,0,'2026-08-26T22:29:37.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(642,294,726,'presentation','Introducción a la suma','<section style="max-width: 950px; margin: 0 auto; padding: 24px; font-family: Arial, sans-serif; line-height: 1.7; color: #263238;">

  <div style="background: linear-gradient(135deg, #ffcc33, #ff8a65); padding: 28px; border-radius: 22px; text-align: center; color: white; box-shadow: 0 6px 16px rgba(0,0,0,0.18);">
    <h1 style="margin: 0; font-size: 36px;">Suma de números naturales</h1>
    <p style="font-size: 20px; margin-top: 10px;">
      Aprender a juntar cantidades para conocer el total
    </p>
  </div>

  <div style="background: #fff8e1; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #ffb300;">
    <h2 style="color: #ef6c00;">¿Qué son los números naturales?</h2>
    <p>
      Los <strong>números naturales</strong> son los números que usamos para contar objetos, personas, animales o cualquier cantidad.
      Algunos ejemplos de números naturales son:
    </p>

    <p style="font-size: 24px; text-align: center; font-weight: bold; color: #2e7d32;">
      \(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10...\)
    </p>

    <p>
      Estos números aparecen en muchas situaciones de la vida diaria, como cuando contamos lápices, libros, frutas, juguetes o alumnos.
    </p>
  </div>

  <div style="background: #e3f2fd; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #42a5f5;">
    <h2 style="color: #1565c0;">¿Qué es la suma?</h2>
    <p>
      La <strong>suma</strong> es una operación matemática que sirve para <strong>juntar, agregar o reunir cantidades</strong>.
      Cuando sumamos, buscamos saber cuántos elementos hay en total.
    </p>

    <p>
      Por ejemplo, si una persona tiene una cantidad de objetos y después recibe más, puede usar una suma para conocer el total.
    </p>

    <div style="background: white; padding: 18px; border-radius: 16px; text-align: center; margin: 18px 0;">
      <p style="font-size: 34px; margin: 0; color: #1565c0;">
        <strong>\(3 + 2 = 5\)</strong>
      </p>
    </div>

    <p>
      En este caso, se juntan <strong>\(3\)</strong> elementos con <strong>\(2\)</strong> elementos más.
      El total es <strong>\(5\)</strong>.
    </p>
  </div>

  <div style="background: #f3e5f5; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #ab47bc;">
    <h2 style="color: #7b1fa2;">Partes de una suma</h2>
    <p>
      Una suma está formada por diferentes partes. Los números que se van a juntar se llaman
      <strong>sumandos</strong>, y el número que se obtiene al final se llama
      <strong>resultado</strong>, <strong>suma</strong> o <strong>total</strong>.
    </p>

    <div style="background: white; padding: 20px; border-radius: 16px; text-align: center; margin-top: 18px;">
      <p style="font-size: 30px; margin: 0; color: #7b1fa2;">
        <strong>\(4 + 5 = 9\)</strong>
      </p>
    </div>

    <p>
      En esta operación, <strong>\(4\)</strong> y <strong>\(5\)</strong> son los sumandos porque son las cantidades que se juntan.
      El número <strong>\(9\)</strong> es el resultado porque representa el total.
    </p>
  </div>

  <div style="background: #e8f5e9; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #66bb6a;">
    <h2 style="color: #2e7d32;">¿Para qué sirve sumar?</h2>
    <p>
      La suma sirve para conocer el total cuando se unen dos o más cantidades.
      Es una operación muy útil porque se utiliza en la escuela, en la casa y en muchas actividades diarias.
    </p>

    <p>
      Por ejemplo, se puede usar la suma para saber cuántos colores hay en una caja, cuántos libros hay en una biblioteca,
      cuántas frutas hay en una canasta o cuántos alumnos hay en un grupo.
    </p>

    <p>
      Cada vez que se agregan elementos a una cantidad, la suma ayuda a encontrar la nueva cantidad total.
    </p>
  </div>

  <div style="background: #fff3e0; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #ff9800;">
    <h2 style="color: #e65100;">Cómo entender una suma</h2>
    <p>
      Para entender una suma, primero se observan las cantidades que se van a juntar.
      Después se reúnen mentalmente o se cuentan para encontrar el total.
    </p>

    <p>
      Por ejemplo:
    </p>

    <div style="background: white; padding: 18px; border-radius: 16px; text-align: center; margin: 18px 0;">
      <p style="font-size: 32px; margin: 0; color: #e65100;">
        <strong>\(6 + 3 = 9\)</strong>
      </p>
    </div>

    <p>
      Esta suma significa que a una cantidad de <strong>\(6\)</strong> se le agregan <strong>\(3\)</strong> más.
      Al juntar ambas cantidades, se obtiene un total de <strong>\(9\)</strong>.
    </p>
  </div>

  <div style="background: #e1f5fe; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #03a9f4;">
    <h2 style="color: #0277bd;">La suma en la vida diaria</h2>
    <p>
      La suma está presente en muchas acciones cotidianas. Cuando una persona junta monedas, agrega juguetes a una caja
      o cuenta los objetos de dos grupos, está usando la suma.
    </p>

    <p>
      Por ejemplo, si hay <strong>\(7\)</strong> libros en una mesa y se colocan <strong>\(2\)</strong> libros más,
      se puede representar así:
    </p>

    <div style="background: white; padding: 18px; border-radius: 16px; text-align: center; margin: 18px 0;">
      <p style="font-size: 32px; margin: 0; color: #0277bd;">
        <strong>\(7 + 2 = 9\)</strong>
      </p>
    </div>

    <p>
      El resultado indica que ahora hay <strong>\(9\) libros en total</strong>.
    </p>
  </div>

  <div style="background: #fce4ec; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #ec407a;">
    <h2 style="color: #ad1457;">El orden en la suma</h2>
    <p>
      Una característica importante de la suma es que el orden de los sumandos no cambia el resultado.
      Esto significa que se pueden cambiar de lugar los números que se suman y el total seguirá siendo el mismo.
    </p>

    <div style="background: white; padding: 18px; border-radius: 16px; text-align: center; margin: 18px 0;">
      <p style="font-size: 28px; color: #ad1457; margin: 0;">
        <strong>\(3 + 5 = 8\)</strong>
      </p>
      <p style="font-size: 28px; color: #ad1457; margin: 8px 0 0;">
        <strong>\(5 + 3 = 8\)</strong>
      </p>
    </div>

    <p>
      En ambos casos el resultado es <strong>\(8\)</strong>. Aunque los números cambiaron de lugar,
      la cantidad total no cambió.
    </p>
  </div>

  <div style="background: #ede7f6; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #7e57c2;">
    <h2 style="color: #512da8;">Importancia de la suma</h2>
    <p>
      La suma es una de las operaciones matemáticas más importantes, porque ayuda a resolver problemas sencillos
      y a comprender mejor las cantidades.
    </p>

    <p>
      Aprender a sumar permite desarrollar el cálculo mental, mejorar la comprensión de los números
      y prepararse para operaciones matemáticas más avanzadas, como la resta, la multiplicación y la división.
    </p>
  </div>

  <div style="background: linear-gradient(135deg, #66bb6a, #26a69a); padding: 24px; border-radius: 22px; margin-top: 30px; color: white; text-align: center; box-shadow: 0 6px 16px rgba(0,0,0,0.18);">
    <h2 style="margin-top: 0;">Conclusión</h2>
    <p style="font-size: 18px;">
      La suma de números naturales permite juntar cantidades y conocer el total.
      Es una operación básica que se usa constantemente en la vida diaria y ayuda a comprender mejor el mundo de los números.
    </p>
  </div>

</section>',NULL,0,'generic','Básica',10,NULL,8,10,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(643,294,726,'example','Ejemplos resueltos','<section style="max-width: 950px; margin: 0 auto; padding: 24px; font-family: Arial, sans-serif; line-height: 1.7; color: #263238;">

  <div style="background: linear-gradient(135deg, #42a5f5, #7e57c2); padding: 28px; border-radius: 22px; text-align: center; color: white; box-shadow: 0 6px 16px rgba(0,0,0,0.18);">
    <h1 style="margin: 0; font-size: 34px;">Ejemplos resueltos</h1>
    <p style="font-size: 19px; margin-top: 10px;">
      Suma de números naturales paso a paso
    </p>
  </div>

  <!-- EJEMPLO 1 -->
  <div style="background: #fff8e1; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #ffb300;">
    <h2 style="color: #ef6c00;">Ejemplo 1: Carritos</h2>

    <p>
      <strong>Contexto:</strong> Mateo tiene <strong>4 carritos</strong> y su abuela le regala
      <strong>3 carritos más</strong>.
    </p>

    <p>
      Para saber cuántos carritos tiene en total, debemos <strong>juntar</strong> las dos cantidades.
    </p>

    <div style="background: white; padding: 20px; border-radius: 16px; margin: 18px 0; text-align: center;">
      <p style="font-size: 24px; margin: 0;">
        Operación:
      </p>
      <p style="font-size: 34px; margin: 8px 0; color: #ef6c00;">
        <strong>\(4 + 3 = 7\)</strong>
      </p>
    </div>

    <div style="background: #fff3cd; padding: 18px; border-radius: 16px;">
      <h3 style="color: #ef6c00; margin-top: 0;">Procedimiento explicado</h3>

      <p>
        Primero tenemos <strong>4 carritos</strong>.
      </p>

      <p>
        Después agregamos <strong>3 carritos más</strong>.
      </p>

      <p>
        Al contar todos juntos:
      </p>

      <p style="font-size: 26px; text-align: center;">
        \(4 + 3 = 7\)
      </p>
    </div>

    <p>
      <strong>Resultado:</strong> Mateo tiene <strong>7 carritos en total</strong>.
    </p>
  </div>

  <!-- EJEMPLO 2 -->
  <div style="background: #e3f2fd; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #42a5f5;">
    <h2 style="color: #1565c0;">Ejemplo 2: Lápices</h2>

    <p>
      <strong>Contexto:</strong> En una caja hay <strong>12 lápices</strong> y la maestra coloca
      <strong>6 lápices más</strong>.
    </p>

    <p>
      Como se agregan más lápices, usamos una suma.
    </p>

    <div style="background: white; padding: 20px; border-radius: 16px; margin: 18px 0; text-align: center;">
      <p style="font-size: 24px; margin: 0;">
        Operación:
      </p>
      <p style="font-size: 34px; margin: 8px 0; color: #1565c0;">
        <strong>\(12 + 6 = 18\)</strong>
      </p>
    </div>

    <div style="background: #bbdefb; padding: 18px; border-radius: 16px;">
      <h3 style="color: #1565c0; margin-top: 0;">Procedimiento explicado</h3>

      <p>
        Primero ordenamos la suma. El número <strong>12</strong> tiene una decena y dos unidades.
      </p>

      <div style="font-size: 30px; text-align: center; line-height: 1.4; background: white; padding: 15px; border-radius: 12px;">
        \[
        \begin{array}{r}
        \hspace{0.8em}12\hspace{0.8em}\\
        +\hspace{0.8em}6\hspace{0.8em}\\
        \hline
        \hspace{0.8em}18\hspace{0.8em}
        \end{array}
        \]
      </div>

      <p>
        Primero sumamos las unidades:
      </p>

      <p style="font-size: 24px; text-align: center;">
        \(2 + 6 = 8\)
      </p>

      <p>
        Después bajamos la decena del número <strong>12</strong>, que es <strong>1</strong>.
      </p>

      <p>
        Por eso, el resultado es:
      </p>

      <p style="font-size: 26px; text-align: center;">
        \(12 + 6 = 18\)
      </p>
    </div>

    <p>
      <strong>Resultado:</strong> Ahora hay <strong>18 lápices en la caja</strong>.
    </p>
  </div>

  <!-- EJEMPLO 3 -->
  <div style="background: #e8f5e9; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #66bb6a;">
    <h2 style="color: #2e7d32;">Ejemplo 3: Libros</h2>

    <p>
      <strong>Contexto:</strong> En un estante hay <strong>25 libros de cuentos</strong> y
      <strong>14 libros de ciencias</strong>.
    </p>

    <p>
      Para saber cuántos libros hay en total, sumamos las dos cantidades.
    </p>

    <div style="background: white; padding: 20px; border-radius: 16px; margin: 18px 0; text-align: center;">
      <p style="font-size: 24px; margin: 0;">
        Operación:
      </p>
      <p style="font-size: 34px; margin: 8px 0; color: #2e7d32;">
        <strong>\(25 + 14 = 39\)</strong>
      </p>
    </div>

    <div style="background: #c8e6c9; padding: 18px; border-radius: 16px;">
      <h3 style="color: #2e7d32; margin-top: 0;">Procedimiento explicado</h3>

      <p>
        Colocamos las unidades debajo de las unidades y las decenas debajo de las decenas.
      </p>

      <div style="font-size: 30px; text-align: center; line-height: 1.4; background: white; padding: 15px; border-radius: 12px;">
        \[
        \begin{array}{r}
        \hspace{0.8em}25\hspace{0.8em}\\
        +\hspace{0.8em}14\hspace{0.8em}\\
        \hline
        \hspace{0.8em}39\hspace{0.8em}
        \end{array}
        \]
      </div>

      <p>
        Primero sumamos las unidades:
      </p>

      <p style="font-size: 24px; text-align: center;">
        \(5 + 4 = 9\)
      </p>

      <p>
        Después sumamos las decenas:
      </p>

      <p style="font-size: 24px; text-align: center;">
        \(2 + 1 = 3\)
      </p>

      <p>
        Juntamos las decenas y las unidades:
      </p>

      <p style="font-size: 26px; text-align: center;">
        \(25 + 14 = 39\)
      </p>
    </div>

    <p>
      <strong>Resultado:</strong> En el estante hay <strong>39 libros en total</strong>.
    </p>
  </div>

  <!-- EJEMPLO 4 -->
  <div style="background: #f3e5f5; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #ab47bc;">
    <h2 style="color: #7b1fa2;">Ejemplo 4: Alumnos</h2>

    <p>
      <strong>Contexto:</strong> En un grupo hay <strong>18 niñas</strong> y <strong>16 niños</strong>.
    </p>

    <p>
      Para saber cuántos alumnos hay en total, sumamos niñas y niños.
    </p>

    <div style="background: white; padding: 20px; border-radius: 16px; margin: 18px 0; text-align: center;">
      <p style="font-size: 24px; margin: 0;">
        Operación:
      </p>
      <p style="font-size: 34px; margin: 8px 0; color: #7b1fa2;">
        <strong>\(18 + 16 = 34\)</strong>
      </p>
    </div>

    <div style="background: #e1bee7; padding: 18px; border-radius: 16px;">
      <h3 style="color: #7b1fa2; margin-top: 0;">Procedimiento explicado</h3>

      <p>
        Primero ordenamos la suma en forma vertical.
      </p>

      <div style="font-size: 30px; text-align: center; line-height: 1.4; background: white; padding: 15px; border-radius: 12px;">
        \[
        \begin{array}{r}
        \hspace{0.8em}1\hspace{0.8em}\\[-0.2em]
        \hspace{0.8em}18\hspace{0.8em}\\
        +\hspace{0.8em}16\hspace{0.8em}\\
        \hline
        \hspace{0.8em}34\hspace{0.8em}
        \end{array}
        \]
      </div>

      <p>
        Primero sumamos las unidades:
      </p>

      <p style="font-size: 24px; text-align: center;">
        \(8 + 6 = 14\)
      </p>

      <p>
        Como <strong>14</strong> tiene dos cifras, escribimos el <strong>4</strong> en las unidades
        y llevamos <strong>1</strong> a las decenas.
      </p>

      <p>
        Después sumamos las decenas:
      </p>

      <p style="font-size: 24px; text-align: center;">
        \(1 + 1 + 1 = 3\)
      </p>

      <p>
        El resultado final es:
      </p>

      <p style="font-size: 26px; text-align: center;">
        \(18 + 16 = 34\)
      </p>
    </div>

    <p>
      <strong>Resultado:</strong> En el grupo hay <strong>34 alumnos en total</strong>.
    </p>
  </div>

  <!-- EJEMPLO 5 -->
  <div style="background: #fff3e0; padding: 22px; border-radius: 18px; margin-top: 25px; border-left: 8px solid #ff9800;">
    <h2 style="color: #e65100;">Ejemplo 5: Manzanas</h2>

    <p>
      <strong>Contexto:</strong> En una canasta hay <strong>36 manzanas</strong> y después agregan
      <strong>27 manzanas más</strong>.
    </p>

    <p>
      Para saber cuántas manzanas hay en total, sumamos las manzanas que había con las que se agregaron.
    </p>

    <div style="background: white; padding: 20px; border-radius: 16px; margin: 18px 0; text-align: center;">
      <p style="font-size: 24px; margin: 0;">
        Operación:
      </p>
      <p style="font-size: 34px; margin: 8px 0; color: #e65100;">
        <strong>\(36 + 27 = 63\)</strong>
      </p>
    </div>

    <div style="background: #ffe0b2; padding: 18px; border-radius: 16px;">
      <h3 style="color: #e65100; margin-top: 0;">Procedimiento explicado</h3>

      <p>
        Primero ordenamos la suma en forma vertical.
      </p>

      <div style="font-size: 30px; text-align: center; line-height: 1.4; background: white; padding: 15px; border-radius: 12px;">
        \[
        \begin{array}{r}
        \hspace{0.8em}1\hspace{0.8em}\\[-0.2em]
        \hspace{0.8em}36\hspace{0.8em}\\
        +\hspace{0.8em}27\hspace{0.8em}\\
        \hline
        \hspace{0.8em}63\hspace{0.8em}
        \end{array}
        \]
      </div>

      <p>
        Primero sumamos las unidades:
      </p>

      <p style="font-size: 24px; text-align: center;">
        \(6 + 7 = 13\)
      </p>

      <p>
        Como <strong>13</strong> tiene dos cifras, escribimos el <strong>3</strong> en las unidades
        y llevamos <strong>1</strong> a las decenas.
      </p>

      <p>
        Después sumamos las decenas:
      </p>

      <p style="font-size: 24px; text-align: center;">
        \(3 + 2 + 1 = 6\)
      </p>

      <p>
        El resultado final es:
      </p>

      <p style="font-size: 26px; text-align: center;">
        \(36 + 27 = 63\)
      </p>
    </div>

    <p>
      <strong>Resultado:</strong> Hay <strong>63 manzanas en total</strong>.
    </p>
  </div>

  <div style="background: linear-gradient(135deg, #66bb6a, #26a69a); padding: 24px; border-radius: 22px; margin-top: 30px; color: white; text-align: center; box-shadow: 0 6px 16px rgba(0,0,0,0.18);">
    <h2 style="margin-top: 0;">Idea principal</h2>
    <p style="font-size: 18px;">
      Para sumar números naturales, primero se juntan las cantidades.
      Cuando los números tienen varias cifras, se suman primero las unidades,
      luego las decenas y después las centenas si las hay.
    </p>
  </div>

</section>',NULL,0,'generic','Básica',10,NULL,10,40,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(644,294,981,'activity','Actividad práctica','','crea suma básicas con contexto',1,'generic','Básica',10,NULL,8,50,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(645,294,1236,'evaluation','Evaluación final','','crea suma básicas con contexto',1,'generic','Básica',10,NULL,4,60,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(646,295,727,'example','Ejercicios de práctica','<h3>Aplica lo aprendido</h3>
<p>Resuelve cada ejercicio usando las técnicas de los minis anteriores:</p>
<ol>
  <li>3/8 + 5/8 = 8/8 = <strong>1</strong></li>
  <li>1/4 + 2/3 = 3/12 + 8/12 = <strong>11/12</strong></li>
  <li>2&#189; + 1&#188; = 3 + 3/4 = <strong>3&#190;</strong></li>
  <li>1/2 + 1/4 + 1/8 = 4/8 + 2/8 + 1/8 = <strong>7/8</strong></li>
</ol>
<h3>Problema aplicado</h3>
<p>Una receta requiere 1/3 de taza de aceite y 2/5 de taza de leche. ¿Cuánto líquido hay en total?</p>
<p class="formula-highlight">1/3 + 2/5 = 5/15 + 6/15 = 11/15 de taza</p>',NULL,0,'generic','Básica',10,NULL,10,3,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(647,295,1237,'evaluation','Evaluación final','<h3>Evaluación: Suma de fracciones</h3>
<p>Demuestra lo que aprendiste completando esta evaluación:</p>
<h3>Ejercicio 1 (2 pts)</h3>
<p>Calcula: 3/5 + 1/5</p>
<p>Respuesta: <strong>4/5</strong></p>
<h3>Ejercicio 2 (3 pts)</h3>
<p>Calcula: 2/3 + 1/4</p>
<p>Respuesta: <strong>11/12</strong></p>
<h3>Ejercicio 3 (5 pts)</h3>
<p>Un recipiente tiene 2/5 de litro de agua y se le agregan 3/8 de litro más. ¿Cuánto hay en total?</p>
<p class="formula-highlight">2/5 + 3/8 = 16/40 + 15/40 = 31/40 litros</p>',NULL,1,'generic','Básica',10,NULL,4,5,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(648,295,727,'presentation','Introducción a la suma de fracciones','
  <header style="
    position: relative;
    overflow: hidden;
    padding: 48px 30px;
    border-radius: 26px;
    text-align: center;
    color: #ffffff;
    background: linear-gradient(135deg, #512da8, #7e57c2, #00897b);
    box-shadow: 0 10px 28px rgba(69, 39, 160, 0.28);
  ">



<div style="
  position: absolute;
  width: 130px;
  height: 130px;
  bottom: -65px;
  left: -35px;
  border-radius: 50%;
  background: rgba(255,255,255,0.11);
"></div>

<div style="position: relative; z-index: 2;">


  </div>

  <h1 style="
    margin: 0;
    font-size: 44px;
    line-height: 1.2;
  ">
    Suma de fracciones
  </h1>

  <p style="
    max-width: 760px;
    margin: 16px auto 0;
    font-size: 20px;
  ">
    Aprende qué son las fracciones, cuáles son sus partes y cómo sumarlas
    cuando tienen denominadores iguales o diferentes.
  </p>

  <div style="
    display: inline-block;
    margin-top: 24px;
    padding: 15px 30px;
    border-radius: 18px;
    background: #ffffff;
    color: #512da8;
    font-size: 28px;
    font-weight: bold;
    box-shadow: 0 6px 16px rgba(0,0,0,0.18);
  ">
    \(\frac{1}{2}+\frac{1}{4}=\frac{3}{4}\)
  </div>

</div>


  </header>

  <!-- OBJETIVO -->

  <section style="
    margin-top: 28px;
    padding: 24px;
    border-radius: 20px;
    background: linear-gradient(135deg, #fff8e1, #fffde7);
    border-left: 8px solid #ffb300;
    box-shadow: 0 5px 16px rgba(0,0,0,0.08);
  ">

<h2 style="
  margin-top: 0;
  color: #ef6c00;
  font-size: 28px;
">
  Objetivo de la lección
</h2>

<p style="margin-bottom: 0; font-size: 17px;">
  Comprender qué representa una fracción, reconocer el numerador y el
  denominador, identificar fracciones equivalentes y aprender el
  procedimiento correcto para sumar fracciones.
</p>

  </section>

  <!-- CONCEPTO DE FRACCIÓN -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: #ffffff;
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<div style="
  display: inline-block;
  padding: 7px 16px;
  border-radius: 20px;
  background: #ede7f6;
  color: #512da8;
  font-weight: bold;
">
  Concepto fundamental
</div>

<h2 style="
  color: #512da8;
  font-size: 30px;
">
  ¿Qué es una fracción?
</h2>

<p>
  Una <strong>fracción</strong> representa una o varias partes de un
  entero que fue dividido en partes iguales.
</p>

<p>
  Utilizamos fracciones cuando dividimos una pizza, compartimos una
  cantidad, medimos ingredientes, calculamos tiempo o representamos una
  parte de una colección.
</p>

<div style="
  max-width: 500px;
  margin: 24px auto;
  padding: 24px;
  border-radius: 20px;
  text-align: center;
  background: linear-gradient(135deg, #ede7f6, #e0f2f1);
  border: 2px dashed #7e57c2;
">

  <p style="margin-top: 0;">
    Una fracción se representa así:
  </p>

  <div style="
    font-size: 40px;
    color: #4527a0;
    font-weight: bold;
  ">
    \[
      \frac{a}{b}
    \]
  </div>

</div>

<p>
  El número que se encuentra arriba se llama
  <strong style="color: #d84315;">numerador</strong>.
  El número que se encuentra abajo se llama
  <strong style="color: #1565c0;">denominador</strong>.
</p>

  </section>

  <!-- PARTES DE UNA FRACCIÓN -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #e3f2fd, #f3e5f5);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #3949ab;
  font-size: 30px;
">
  Partes de una fracción
</h2>

<div style="
  max-width: 430px;
  margin: 22px auto;
  padding: 26px;
  border-radius: 20px;
  text-align: center;
  background: #ffffff;
  box-shadow: 0 5px 14px rgba(0,0,0,0.10);
">

  <div style="font-size: 42px; color: #4527a0;">
    \[
      \frac{3}{5}
    \]
  </div>

  <p>
    <strong style="color: #d84315;">\(3\) es el numerador.</strong>
  </p>

  <p>
    <strong style="color: #1565c0;">\(5\) es el denominador.</strong>
  </p>

</div>

<div style="
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 20px;
">

  <article style="
    padding: 22px;
    border-radius: 18px;
    background: #fff3e0;
    border-top: 6px solid #fb8c00;
  ">

    <h3 style="margin-top: 0; color: #e65100;">
      Numerador
    </h3>

    <p>
      Indica cuántas partes se están tomando o considerando.
    </p>

    <div style="
      padding: 14px;
      border-radius: 13px;
      text-align: center;
      background: #ffffff;
    ">
      En \(\frac{4}{7}\), se toman \(4\) partes.
    </div>

  </article>

  <article style="
    padding: 22px;
    border-radius: 18px;
    background: #e3f2fd;
    border-top: 6px solid #1e88e5;
  ">

    <h3 style="margin-top: 0; color: #0d47a1;">
      Denominador
    </h3>

    <p>
      Indica en cuántas partes iguales se dividió el entero.
    </p>

    <div style="
      padding: 14px;
      border-radius: 13px;
      text-align: center;
      background: #ffffff;
    ">
      En \(\frac{4}{7}\), el entero se dividió en \(7\) partes.
    </div>

  </article>

</div>

<div style="
  margin-top: 22px;
  padding: 17px;
  border-radius: 14px;
  background: #ffebee;
  border-left: 6px solid #e53935;
">
  <strong>Importante:</strong> el denominador nunca puede ser \(0\),
  porque no es posible dividir una cantidad entre cero.
</div>


  </section>

  <!-- REPRESENTACIÓN VISUAL -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: #ffffff;
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">


<h2 style="
  margin-top: 0;
  color: #00897b;
  font-size: 30px;
">
  ¿Cómo se interpreta una fracción?
</h2>

<p>
  Imaginemos una barra de chocolate dividida en seis partes iguales.
  Si se toman dos partes, la cantidad se representa como:
</p>

<div style="
  max-width: 380px;
  margin: 22px auto;
  padding: 20px;
  border-radius: 18px;
  text-align: center;
  background: #e0f2f1;
  color: #00695c;
  font-size: 34px;
">
  \[
    \frac{2}{6}
  \]
</div>

<div style="
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  gap: 7px;
  max-width: 650px;
  margin: 25px auto;
">

  <div style="height: 78px; border-radius: 10px; background: #7e57c2;"></div>
  <div style="height: 78px; border-radius: 10px; background: #7e57c2;"></div>
  <div style="height: 78px; border-radius: 10px; background: #d1c4e9;"></div>
  <div style="height: 78px; border-radius: 10px; background: #d1c4e9;"></div>
  <div style="height: 78px; border-radius: 10px; background: #d1c4e9;"></div>
  <div style="height: 78px; border-radius: 10px; background: #d1c4e9;"></div>

</div>

<p>
  La fracción \(\frac{2}{6}\) indica que el entero fue dividido en
  \(6\) partes iguales y se tomaron \(2\) de ellas.
</p>

<div style="
  padding: 17px;
  border-radius: 14px;
  background: #fff8e1;
  border-left: 6px solid #f9a825;
">
  Para formar una fracción correctamente, las partes deben ser del mismo
  tamaño.
</div>


  </section>

  <!-- TIPOS DE FRACCIONES -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #f3e5f5, #e8eaf6);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #6a1b9a;
  font-size: 30px;
">
  Tipos de fracciones
</h2>

<div style="
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
">

  <article style="
    padding: 22px;
    border-radius: 18px;
    background: #ffffff;
    border-bottom: 6px solid #43a047;
  ">

    <h3 style="margin-top: 0; color: #2e7d32;">
      Fracciones propias
    </h3>

    <p>
      El numerador es menor que el denominador. Representan una cantidad
      menor que un entero.
    </p>

    <div style="text-align: center; font-size: 24px;">
      \[
        \frac{2}{5},
        \qquad
        \frac{3}{7},
        \qquad
        \frac{5}{8}
      \]
    </div>

  </article>

  <article style="
    padding: 22px;
    border-radius: 18px;
    background: #ffffff;
    border-bottom: 6px solid #ef6c00;
  ">

    <h3 style="margin-top: 0; color: #e65100;">
      Fracciones impropias
    </h3>

    <p>
      El numerador es mayor o igual que el denominador. Representan una
      cantidad igual o mayor que un entero.
    </p>

    <div style="text-align: center; font-size: 24px;">
      \[
        \frac{7}{4},
        \qquad
        \frac{9}{5},
        \qquad
        \frac{6}{6}
      \]
    </div>

  </article>

  <article style="
    padding: 22px;
    border-radius: 18px;
    background: #ffffff;
    border-bottom: 6px solid #1e88e5;
  ">

    <h3 style="margin-top: 0; color: #1565c0;">
      Números mixtos
    </h3>

    <p>
      Están formados por un número entero y una fracción propia.
    </p>

    <div style="text-align: center; font-size: 25px;">
      \[
        1\frac{2}{3}
      \]
    </div>

  </article>

</div>

  </section>

  <!-- FRACCIONES EQUIVALENTES -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #fff3e0, #fffde7);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #ef6c00;
  font-size: 30px;
">
  Fracciones equivalentes
</h2>

<p>
  Las fracciones equivalentes se escriben con números diferentes, pero
  representan exactamente la misma cantidad.
</p>

<div style="
  max-width: 650px;
  margin: 22px auto;
  padding: 22px;
  border-radius: 18px;
  text-align: center;
  background: #ffffff;
  color: #e65100;
  font-size: 28px;
">
  \[
    \frac{1}{2}
    =
    \frac{2}{4}
    =
    \frac{3}{6}
  \]
</div>

<p>
  Para crear una fracción equivalente se multiplica o divide el numerador
  y el denominador por el mismo número.
</p>

<div style="
  padding: 20px;
  border-radius: 16px;
  background: #ffffff;
  border: 2px dashed #fb8c00;
">

  <p style="margin-top: 0;">
    Multiplicamos el numerador y el denominador de \(\frac{2}{3}\)
    por \(2\):
  </p>

  \[
    \frac{2}{3}
    =
    \frac{2\times2}{3\times2}
    =
    \frac{4}{6}
  \]

</div>
```

  </section>

  <!-- SUMAR FRACCIONES -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: #ffffff;
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">


<h2 style="
  margin-top: 0;
  color: #00897b;
  font-size: 30px;
">
  ¿Qué significa sumar fracciones?
</h2>

<p>
  Sumar fracciones significa juntar varias partes para obtener una
  cantidad total.
</p>

<p>
  Por ejemplo, una persona bebe \(\frac{2}{8}\) de una botella por la
  mañana y \(\frac{3}{8}\) por la tarde.
</p>

<div style="
  max-width: 620px;
  margin: 22px auto;
  padding: 24px;
  border-radius: 20px;
  text-align: center;
  background: linear-gradient(135deg, #e0f7fa, #e8f5e9);
  border: 2px solid #26a69a;
  color: #00695c;
  font-size: 29px;
">
  \[
    \frac{2}{8}+\frac{3}{8}=\frac{5}{8}
  \]
</div>

<p>
  En total, la persona bebió \(\frac{5}{8}\) de la botella.
</p>

  </section>

  <!-- MISMO DENOMINADOR -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #e8f5e9, #e0f2f1);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<div style="
  display: inline-block;
  padding: 7px 16px;
  border-radius: 20px;
  background: #2e7d32;
  color: #ffffff;
  font-weight: bold;
">
  Caso 1
</div>

<h2 style="
  color: #1b5e20;
  font-size: 30px;
">
  Suma con el mismo denominador
</h2>

<p>
  Cuando las fracciones tienen el mismo denominador, las partes tienen
  el mismo tamaño.
</p>

<div style="
  padding: 20px;
  border-radius: 18px;
  text-align: center;
  background: #ffffff;
  border: 2px solid #66bb6a;
  font-size: 27px;
">
  \[
    \frac{a}{c}+\frac{b}{c}
    =
    \frac{a+b}{c}
  \]
</div>

<div style="
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
  gap: 16px;
  margin-top: 22px;
">

  <div style="
    padding: 18px;
    border-radius: 16px;
    background: #ffffff;
    border-top: 5px solid #43a047;
  ">
    <strong>Paso 1</strong>
    <p>Sumar los numeradores.</p>
  </div>

  <div style="
    padding: 18px;
    border-radius: 16px;
    background: #ffffff;
    border-top: 5px solid #26a69a;
  ">
    <strong>Paso 2</strong>
    <p>Conservar el denominador.</p>
  </div>

  <div style="
    padding: 18px;
    border-radius: 16px;
    background: #ffffff;
    border-top: 5px solid #00897b;
  ">
    <strong>Paso 3</strong>
    <p>Simplificar si es posible.</p>
  </div>

</div>

<article style="
  margin-top: 25px;
  padding: 24px;
  border-radius: 18px;
  background: #ffffff;
  border-left: 7px solid #43a047;
">

  <h3 style="margin-top: 0; color: #2e7d32;">
    Ejemplo
  </h3>

  \[
    \frac{2}{7}+\frac{3}{7}
  \]

  <p>Sumamos los numeradores:</p>

  \[
    2+3=5
  \]

  <p>Conservamos el denominador \(7\):</p>

  <div style="
    padding: 17px;
    border-radius: 14px;
    text-align: center;
    background: #e8f5e9;
    color: #1b5e20;
    font-size: 28px;
  ">
    \[
      \boxed{\frac{2}{7}+\frac{3}{7}=\frac{5}{7}}
    \]
  </div>

</article>

<article style="
  margin-top: 22px;
  padding: 24px;
  border-radius: 18px;
  background: #ffffff;
  border-left: 7px solid #00897b;
">

  <h3 style="margin-top: 0; color: #00695c;">
    Ejemplo con simplificación
  </h3>

  \[
    \frac{4}{9}+\frac{2}{9}
    =
    \frac{6}{9}
  \]

  <p>
    Dividimos el numerador y el denominador entre \(3\):
  </p>

  \[
    \frac{6\div3}{9\div3}
    =
    \frac{2}{3}
  \]

  <div style="
    padding: 17px;
    border-radius: 14px;
    text-align: center;
    background: #e0f2f1;
    color: #00695c;
    font-size: 28px;
  ">
    \[
      \boxed{\frac{4}{9}+\frac{2}{9}=\frac{2}{3}}
    \]
  </div>

</article>

  </section>

  <!-- ERROR DE DENOMINADORES -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: #ffebee;
    border: 2px solid #ef9a9a;
    box-shadow: 0 6px 18px rgba(38,50,56,0.08);
  ">

<h2 style="
  margin-top: 0;
  color: #c62828;
  font-size: 30px;
">
  ¿Por qué no se suman los denominadores?
</h2>

<p>Observemos:</p>

\[
  \frac{1}{4}+\frac{2}{4}
\]

<p>
  Una cuarta parte más dos cuartas partes forman tres cuartas partes:
</p>

<div style="
  padding: 17px;
  border-radius: 14px;
  text-align: center;
  background: #ffffff;
  color: #2e7d32;
  font-size: 27px;
">
  \[
    \frac{1}{4}+\frac{2}{4}=\frac{3}{4}
  \]
</div>

<p style="margin-top: 22px;">
  No debemos sumar también los denominadores:
</p>

<div style="
  padding: 17px;
  border-radius: 14px;
  text-align: center;
  background: #ffcdd2;
  color: #b71c1c;
  font-size: 26px;
">
  \[
    \frac{1}{4}+\frac{2}{4}
    \neq
    \frac{3}{8}
  \]
</div>

<p>
  El denominador indica el tamaño de las partes. El entero continúa
  dividido en cuatro partes, por eso el denominador sigue siendo \(4\).
</p>

  </section>

  <!-- DIFERENTE DENOMINADOR -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #e3f2fd, #ede7f6);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<div style="
  display: inline-block;
  padding: 7px 16px;
  border-radius: 20px;
  background: #3949ab;
  color: #ffffff;
  font-weight: bold;
">
  Caso 2
</div>

<h2 style="
  color: #303f9f;
  font-size: 30px;
">
  Suma con diferente denominador
</h2>

<p>
  Cuando los denominadores son diferentes, las partes tienen tamaños
  diferentes.
</p>

<div style="
  max-width: 480px;
  margin: 22px auto;
  padding: 20px;
  border-radius: 18px;
  text-align: center;
  background: #ffffff;
  color: #4527a0;
  font-size: 30px;
">
  \[
    \frac{1}{2}+\frac{1}{3}
  \]
</div>

<p>
  Una mitad y un tercio no tienen el mismo tamaño. Antes de sumarlas,
  debemos convertirlas en fracciones equivalentes con el mismo
  denominador.
</p>

  </section>

  <!-- DENOMINADOR COMÚN -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: #ffffff;
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #7b1fa2;
  font-size: 30px;
">
  El denominador común
</h2>

<p>
  Un denominador común es un número que es múltiplo de los denominadores
  de las fracciones.
</p>

<p>Para resolver:</p>

\[
  \frac{1}{2}+\frac{1}{3}
\]

<div style="
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 18px;
  margin-top: 20px;
">

  <div style="
    padding: 20px;
    border-radius: 16px;
    background: #e3f2fd;
  ">
    <strong style="color: #1565c0;">Múltiplos de \(2\)</strong>
    <p style="font-size: 20px;">
      \(2,\ 4,\ 6,\ 8,\ 10,\ldots\)
    </p>
  </div>

  <div style="
    padding: 20px;
    border-radius: 16px;
    background: #f3e5f5;
  ">
    <strong style="color: #7b1fa2;">Múltiplos de \(3\)</strong>
    <p style="font-size: 20px;">
      \(3,\ 6,\ 9,\ 12,\ldots\)
    </p>
  </div>

</div>

<div style="
  margin-top: 22px;
  padding: 19px;
  border-radius: 15px;
  text-align: center;
  background: #fff8e1;
  border: 2px solid #ffb300;
">

  El primer múltiplo común es \(6\).

  \[
    \operatorname{mcm}(2,3)=6
  \]

</div>

  </section>

  <!-- PROCEDIMIENTO -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #fff8e1, #fce4ec);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #ad1457;
  font-size: 30px;
">
  Procedimiento para denominadores diferentes
</h2>

<div style="
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
  gap: 16px;
">

  <div style="padding: 18px; border-radius: 15px; background: #ffffff;">
    <strong style="color: #c2185b;">Paso 1.</strong>
    Encontrar el mínimo común múltiplo de los denominadores.
  </div>

  <div style="padding: 18px; border-radius: 15px; background: #ffffff;">
    <strong style="color: #c2185b;">Paso 2.</strong>
    Crear fracciones equivalentes con el mismo denominador.
  </div>

  <div style="padding: 18px; border-radius: 15px; background: #ffffff;">
    <strong style="color: #c2185b;">Paso 3.</strong>
    Sumar los numeradores.
  </div>

  <div style="padding: 18px; border-radius: 15px; background: #ffffff;">
    <strong style="color: #c2185b;">Paso 4.</strong>
    Conservar el denominador común.
  </div>

  <div style="padding: 18px; border-radius: 15px; background: #ffffff;">
    <strong style="color: #c2185b;">Paso 5.</strong>
    Simplificar el resultado.
  </div>

</div>

  </section>

  <!-- EJEMPLO PASO A PASO -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: #ffffff;
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #3949ab;
  font-size: 30px;
">
  Ejemplo paso a paso
</h2>

<div style="
  padding: 18px;
  border-radius: 16px;
  text-align: center;
  background: #e8eaf6;
  font-size: 30px;
">
  \[
    \frac{1}{2}+\frac{1}{3}
  \]
</div>

<div style="
  margin-top: 20px;
  padding: 20px;
  border-radius: 16px;
  background: #e3f2fd;
  border-left: 6px solid #1e88e5;
">

  <h3 style="margin-top: 0; color: #0d47a1;">
    Paso 1. Encontrar el denominador común
  </h3>

  \[
    \operatorname{mcm}(2,3)=6
  \]

</div>

<div style="
  margin-top: 18px;
  padding: 20px;
  border-radius: 16px;
  background: #f3e5f5;
  border-left: 6px solid #8e24aa;
">

  <h3 style="margin-top: 0; color: #6a1b9a;">
    Paso 2. Convertir las fracciones
  </h3>

  <p>
    Para transformar \(\frac{1}{2}\) en sextos, multiplicamos por \(3\):
  </p>

  \[
    \frac{1}{2}
    =
    \frac{1\times3}{2\times3}
    =
    \frac{3}{6}
  \]

  <p>
    Para transformar \(\frac{1}{3}\) en sextos, multiplicamos por \(2\):
  </p>

  \[
    \frac{1}{3}
    =
    \frac{1\times2}{3\times2}
    =
    \frac{2}{6}
  \]

</div>

<div style="
  margin-top: 18px;
  padding: 20px;
  border-radius: 16px;
  background: #e8f5e9;
  border-left: 6px solid #43a047;
">

  <h3 style="margin-top: 0; color: #2e7d32;">
    Paso 3. Sumar
  </h3>

  \[
    \frac{3}{6}+\frac{2}{6}
    =
    \frac{5}{6}
  \]

</div>

<div style="
  margin-top: 20px;
  padding: 22px;
  border-radius: 18px;
  text-align: center;
  color: #ffffff;
  background: linear-gradient(135deg, #43a047, #00897b);
  font-size: 30px;
  box-shadow: 0 6px 16px rgba(0,105,92,0.20);
">
  \[
    \boxed{\frac{1}{2}+\frac{1}{3}=\frac{5}{6}}
  \]
</div>
```

  </section>

  <!-- SEGUNDO EJEMPLO -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #ede7f6, #e3f2fd);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #512da8;
  font-size: 30px;
">
  Segundo ejemplo
</h2>

\[
  \frac{2}{3}+\frac{1}{4}
\]

<p>
  El mínimo común múltiplo de \(3\) y \(4\) es \(12\):
</p>

\[
  \operatorname{mcm}(3,4)=12
\]

<p>Transformamos las fracciones:</p>

\[
  \frac{2}{3}
  =
  \frac{2\times4}{3\times4}
  =
  \frac{8}{12}
\]

\[
  \frac{1}{4}
  =
  \frac{1\times3}{4\times3}
  =
  \frac{3}{12}
\]

<p>Sumamos:</p>

\[
  \frac{8}{12}+\frac{3}{12}
  =
  \frac{11}{12}
\]

<div style="
  margin-top: 20px;
  padding: 20px;
  border-radius: 16px;
  text-align: center;
  background: #ffffff;
  border: 2px solid #7e57c2;
  color: #4527a0;
  font-size: 29px;
">
  \[
    \boxed{\frac{2}{3}+\frac{1}{4}=\frac{11}{12}}
  \]
</div>

  </section>

  <!-- MULTIPLICACIÓN CRUZADA -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: #ffffff;
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #ef6c00;
  font-size: 30px;
">
  Método de multiplicación cruzada
</h2>

<p>
  También es posible sumar fracciones con diferente denominador mediante
  la multiplicación cruzada:
</p>

<div style="
  padding: 22px;
  border-radius: 18px;
  text-align: center;
  background: #fff3e0;
  border: 2px dashed #fb8c00;
  font-size: 27px;
">
  \[
    \frac{a}{b}+\frac{c}{d}
    =
    \frac{a\cdot d+c\cdot b}{b\cdot d}
  \]
</div>

<h3 style="color: #e65100; margin-top: 26px;">
  Ejemplo
</h3>

\[
  \frac{2}{3}+\frac{1}{4}
\]

<p>Multiplicamos en forma cruzada:</p>

\[
  2\times4=8
\]

\[
  1\times3=3
\]

<p>Sumamos los resultados:</p>

\[
  8+3=11
\]

<p>Multiplicamos los denominadores:</p>

\[
  3\times4=12
\]

<div style="
  padding: 18px;
  border-radius: 15px;
  text-align: center;
  background: #e8f5e9;
  color: #2e7d32;
  font-size: 28px;
">
  \[
    \boxed{\frac{2}{3}+\frac{1}{4}=\frac{11}{12}}
  \]
</div>

  </section>

  <!-- SIMPLIFICACIÓN -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #e0f7fa, #e8f5e9);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #00796b;
  font-size: 30px;
">
  Simplificación de fracciones
</h2>

<p>
  Simplificar significa escribir una fracción utilizando números más
  pequeños sin cambiar su valor.
</p>

<p>Por ejemplo:</p>

\[
  \frac{8}{12}
\]

<p>
  El numerador y el denominador pueden dividirse entre \(4\):
</p>

\[
  \frac{8\div4}{12\div4}
  =
  \frac{2}{3}
\]

<div style="
  padding: 18px;
  border-radius: 15px;
  text-align: center;
  background: #ffffff;
  border: 2px solid #26a69a;
  color: #00695c;
  font-size: 28px;
">
  \[
    \boxed{\frac{8}{12}=\frac{2}{3}}
  \]
</div>

  </section>

  <!-- RESULTADO IMPROPIO -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #fff3e0, #fce4ec);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #d84315;
  font-size: 30px;
">
  Cuando el resultado es una fracción impropia
</h2>

\[
  \frac{4}{5}+\frac{3}{5}
  =
  \frac{7}{5}
\]

<p>
  La fracción \(\frac{7}{5}\) es impropia porque el numerador es mayor
  que el denominador.
</p>

<p>Dividimos \(7\) entre \(5\):</p>

\[
  7\div5=1
\]

<p>
  El cociente es \(1\) y el residuo es \(2\):
</p>

\[
  \frac{7}{5}
  =
  1\frac{2}{5}
\]

<div style="
  padding: 18px;
  border-radius: 15px;
  text-align: center;
  color: #ffffff;
  background: linear-gradient(135deg, #ef6c00, #ec407a);
  font-size: 29px;
">
  \[
    \boxed{\frac{4}{5}+\frac{3}{5}=1\frac{2}{5}}
  \]
</div>

  </section>

  <!-- EJEMPLOS COTIDIANOS -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: linear-gradient(135deg, #e3f2fd, #e0f7fa);
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #0277bd;
  font-size: 30px;
">
  Ejemplos en situaciones cotidianas
</h2>

<article style="
  margin-top: 22px;
  padding: 24px;
  border-radius: 18px;
  background: #ffffff;
  border-left: 7px solid #ff7043;
">

  <h3 style="margin-top: 0; color: #d84315;">
    Ejemplo 1. Una pizza
  </h3>

  <p>
    Ana comió \(\frac{2}{8}\) de una pizza y Luis comió
    \(\frac{3}{8}\). ¿Qué parte comieron entre los dos?
  </p>

  \[
    \frac{2}{8}+\frac{3}{8}
    =
    \frac{5}{8}
  \]

  <div style="
    padding: 15px;
    border-radius: 13px;
    text-align: center;
    background: #fff3e0;
    color: #d84315;
    font-size: 26px;
  ">
    \[
      \boxed{\frac{5}{8}\text{ de la pizza}}
    \]
  </div>

</article>

<article style="
  margin-top: 22px;
  padding: 24px;
  border-radius: 18px;
  background: #ffffff;
  border-left: 7px solid #29b6f6;
">

  <h3 style="margin-top: 0; color: #0277bd;">
    Ejemplo 2. Una botella de agua
  </h3>

  <p>
    Carlos bebió \(\frac{1}{3}\) de una botella por la mañana y
    \(\frac{1}{6}\) por la tarde.
  </p>

  \[
    \frac{1}{3}
    =
    \frac{2}{6}
  \]

  \[
    \frac{2}{6}+\frac{1}{6}
    =
    \frac{3}{6}
    =
    \frac{1}{2}
  \]

  <div style="
    padding: 15px;
    border-radius: 13px;
    text-align: center;
    background: #e1f5fe;
    color: #0277bd;
    font-size: 26px;
  ">
    \[
      \boxed{\frac{1}{2}\text{ de la botella}}
    \]
  </div>

</article>

<article style="
  margin-top: 22px;
  padding: 24px;
  border-radius: 18px;
  background: #ffffff;
  border-left: 7px solid #ab47bc;
">

  <h3 style="margin-top: 0; color: #7b1fa2;">
    Ejemplo 3. Tiempo de estudio
  </h3>

  <p>
    Sofía estudió \(\frac{3}{4}\) de hora de Matemáticas y
    \(\frac{1}{2}\) de hora de Ciencias.
  </p>

  \[
    \frac{1}{2}
    =
    \frac{2}{4}
  \]

  \[
    \frac{3}{4}+\frac{2}{4}
    =
    \frac{5}{4}
    =
    1\frac{1}{4}
  \]

  <div style="
    padding: 15px;
    border-radius: 13px;
    text-align: center;
    background: #f3e5f5;
    color: #7b1fa2;
    font-size: 26px;
  ">
    \[
      \boxed{1\frac{1}{4}\text{ horas}}
    \]
  </div>

</article>

<article style="
  margin-top: 22px;
  padding: 24px;
  border-radius: 18px;
  background: #ffffff;
  border-left: 7px solid #ffb300;
">

  <h3 style="margin-top: 0; color: #ef6c00;">
    Ejemplo 4. Una receta
  </h3>

  <p>
    Para preparar un pastel se utilizaron \(\frac{2}{3}\) de taza de
    leche y después se agregó \(\frac{1}{4}\) de taza.
  </p>

  \[
    \frac{2}{3}
    =
    \frac{8}{12}
  \]

  \[
    \frac{1}{4}
    =
    \frac{3}{12}
  \]

  \[
    \frac{8}{12}+\frac{3}{12}
    =
    \frac{11}{12}
  \]

  <div style="
    padding: 15px;
    border-radius: 13px;
    text-align: center;
    background: #fff8e1;
    color: #ef6c00;
    font-size: 26px;
  ">
    \[
      \boxed{\frac{11}{12}\text{ de taza}}
    \]
  </div>

</article>

  </section>

  <!-- ERRORES COMUNES -->

  <section style="
    margin-top: 28px;
    padding: 28px;
    border-radius: 22px;
    background: #ffebee;
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #c62828;
  font-size: 30px;
">
  Errores comunes
</h2>

<article style="
  padding: 20px;
  border-radius: 16px;
  background: #ffffff;
  border-left: 7px solid #e53935;
">

  <h3 style="margin-top: 0; color: #c62828;">
    Sumar numeradores y denominadores
  </h3>

  <p><strong>Incorrecto:</strong></p>

  \[
    \frac{1}{3}+\frac{1}{4}
    \neq
    \frac{2}{7}
  \]

  <p><strong>Correcto:</strong></p>

  \[
    \frac{1}{3}
    =
    \frac{4}{12}
  \]

  \[
    \frac{1}{4}
    =
    \frac{3}{12}
  \]

  \[
    \frac{4}{12}+\frac{3}{12}
    =
    \frac{7}{12}
  \]

</article>

<article style="
  margin-top: 18px;
  padding: 20px;
  border-radius: 16px;
  background: #ffffff;
  border-left: 7px solid #fb8c00;
">

  <h3 style="margin-top: 0; color: #e65100;">
    Cambiar solamente el denominador
  </h3>

  <p>Esto es incorrecto:</p>

  \[
    \frac{1}{2}
    \neq
    \frac{1}{6}
  \]

  <p>
    Se debe multiplicar el numerador y el denominador por el mismo número:
  </p>

  \[
    \frac{1}{2}
    =
    \frac{1\times3}{2\times3}
    =
    \frac{3}{6}
  \]

</article>

<article style="
  margin-top: 18px;
  padding: 20px;
  border-radius: 16px;
  background: #ffffff;
  border-left: 7px solid #3949ab;
">

  <h3 style="margin-top: 0; color: #303f9f;">
    No simplificar el resultado
  </h3>

  \[
    \frac{2}{8}+\frac{4}{8}
    =
    \frac{6}{8}
  \]

  <p>La fracción debe simplificarse:</p>

  \[
    \frac{6}{8}
    =
    \frac{3}{4}
  \]

</article>

  </section>

  <!-- RESUMEN -->

  <section style="
    margin-top: 28px;
    padding: 30px;
    border-radius: 24px;
    color: #ffffff;
    background: linear-gradient(135deg, #3949ab, #7b1fa2);
    box-shadow: 0 8px 22px rgba(69,39,160,0.24);
  ">

<h2 style="
  margin-top: 0;
  text-align: center;
  color: #ffffff;
  font-size: 32px;
">
  Resumen del procedimiento
</h2>

<div style="
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 20px;
  margin-top: 24px;
">

  <article style="
    padding: 22px;
    border-radius: 18px;
    background: rgba(255,255,255,0.14);
    border: 1px solid rgba(255,255,255,0.25);
  ">

    <h3 style="margin-top: 0; color: #ffffff;">
      Denominadores iguales
    </h3>

    <p>
      1. Sumar los numeradores.<br>
      2. Conservar el denominador.<br>
      3. Simplificar el resultado.
    </p>

    \[
      \frac{3}{10}+\frac{4}{10}
      =
      \frac{7}{10}
    \]

  </article>

  <article style="
    padding: 22px;
    border-radius: 18px;
    background: rgba(255,255,255,0.14);
    border: 1px solid rgba(255,255,255,0.25);
  ">

    <h3 style="margin-top: 0; color: #ffffff;">
      Denominadores diferentes
    </h3>

    <p>
      1. Encontrar un denominador común.<br>
      2. Crear fracciones equivalentes.<br>
      3. Sumar los numeradores.<br>
      4. Simplificar el resultado.
    </p>

    \[
      \frac{1}{3}+\frac{1}{4}
      =
      \frac{4}{12}+\frac{3}{12}
      =
      \frac{7}{12}
    \]

  </article>

</div>

  </section>

  <!-- CONCLUSIÓN -->

  <section style="
    margin-top: 28px;
    padding: 30px;
    border-radius: 22px;
    text-align: center;
    background: linear-gradient(135deg, #fff8e1, #e8f5e9);
    border: 2px solid #66bb6a;
    box-shadow: 0 6px 18px rgba(38,50,56,0.09);
  ">

<h2 style="
  margin-top: 0;
  color: #2e7d32;
  font-size: 31px;
">
  Conclusión
</h2>

<p style="font-size: 18px;">
  Las fracciones representan partes iguales de un entero. Para sumarlas
  correctamente debemos observar primero sus denominadores.
</p>

<p style="font-size: 18px;">
  Si los denominadores son iguales, sumamos los numeradores. Si son
  diferentes, debemos encontrar un denominador común y construir
  fracciones equivalentes.
</p>

<div style="
  max-width: 650px;
  margin: 24px auto 0;
  padding: 20px;
  border-radius: 18px;
  background: #ffffff;
  color: #2e7d32;
  font-size: 25px;
  font-weight: bold;
  box-shadow: 0 5px 14px rgba(0,0,0,0.08);
">
  Primero igualamos las partes \newline y después las sumamos.
</div>


  </section>

</section>


',NULL,0,'generic','Básica',10,NULL,12,1,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(649,295,727,'video','Video de apoyo','<p>Observa el siguiente video para aprender a sumar fracciones paso a paso, desde el caso más sencillo hasta fracciones mixtas.</p>
<div class="video-embed-box">
  <span class="play-icon">&#9654;</span>
  <div>
    <strong>Suma de fracciones — Paso a paso</strong>
    <small>Duración aproximada: 8 minutos</small>
  </div>
</div>
<h3>Temas que cubre el video</h3>
<ul>
  <li>Suma de fracciones con el mismo denominador</li>
  <li>Cómo calcular el mínimo común múltiplo</li>
  <li>Suma con denominadores diferentes</li>
  <li>Suma de fracciones mixtas</li>
  <li>Problemas aplicados con fracciones en la vida real</li>
</ul>',NULL,0,'generic','Básica',10,NULL,8,2,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(650,295,982,'activity','Actividad práctica','<p>Aplica lo que has aprendido resolviendo estos ejercicios sobre suma de fracciones:</p>
<h3>Ejercicio 1 — Mismo denominador</h3>
<p>Calcula: <strong>3/7 + 2/7 = ?</strong></p>
<p><em>Respuesta: <strong>5/7</strong></em></p>
<h3>Ejercicio 2 — Diferente denominador</h3>
<p>Calcula: <strong>1/4 + 1/3 = ?</strong></p>
<p><em>Respuesta: m.c.m.(4,3) = 12 &nbsp;→&nbsp; 3/12 + 4/12 = <strong>7/12</strong></em></p>
<h3>Ejercicio 3 — Fracción mixta</h3>
<p>Calcula: <strong>1½ + 2⅓ = ?</strong></p>
<p><em>Respuesta: Enteros 1+2=3 · ½+⅓ = 3/6+2/6 = 5/6 → <strong>3 5/6</strong></em></p>
<h3>Reto extra</h3>
<p>¿Cuánto es 1/2 + 1/3 + 1/4?</p>
<p><em>Respuesta: m.c.m.=12 → 6/12 + 4/12 + 3/12 = 13/12 = <strong>1 1/12</strong></em></p>',NULL,1,'generic','Básica',10,NULL,10,4,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(651,296,804,'presentation','Introducción','<section class="leccion-ecuaciones-lineales" style="font-family: Arial, sans-serif; max-width: 1050px; margin: 0 auto; padding: 24px; line-height: 1.7; color: #1f2937;">

  <div style="display: flex; flex-wrap: wrap; align-items: center; gap: 28px; background: linear-gradient(135deg, #dbeafe, #fef9c3); border-radius: 26px; padding: 30px; margin-bottom: 32px; box-shadow: 0 8px 22px rgba(0,0,0,0.10);">

<div style="flex: 1 1 420px;">
  <p style="display: inline-block; background: #1e3a8a; color: #ffffff; padding: 8px 16px; border-radius: 999px; font-size: 14px; font-weight: bold; margin: 0 0 14px;">
    Tema de Matemáticas
  </p>

  <h1 style="font-size: 38px; color: #0f172a; margin: 0 0 14px; line-height: 1.2;">
    Resolver ecuaciones paso a paso
  </h1>

  <p style="font-size: 18px; color: #334155; margin-bottom: 18px;">
    En esta lección aprenderás a reconocer, resolver y comprobar ecuaciones donde existe un valor desconocido representado por la letra \(x\).
  </p>

  <div style="background: #ffffff; border: 2px dashed #38bdf8; border-radius: 18px; padding: 18px; text-align: center; max-width: 320px;">
    <span style="font-size: 34px; font-weight: bold; color: #1e3a8a;">
      \(ax + b = c\)
    </span>
  </div>
</div>

<div style="flex: 0 1 360px; text-align: center;">
  <div style="background: #ffffff; border-radius: 24px; padding: 34px 24px; box-shadow: 0 8px 22px rgba(0,0,0,0.14); border: 2px solid #dbeafe;">
    <p style="margin: 0 0 14px; font-size: 18px; font-weight: bold; color: #2563eb;">
      Objetivo de la lección
    </p>

    <h2 style="margin: 0; font-size: 34px; line-height: 1.15; color: #1e3a8a;">
      Encuentra el valor desconocido
    </h2>

    <div style="margin: 22px auto 0; background: #eff6ff; border: 2px dashed #38bdf8; border-radius: 18px; padding: 16px; max-width: 260px;">
      <span style="font-size: 32px; font-weight: bold; color: #0f172a;">
        \(x = \ ?\)
      </span>
    </div>
  </div>
</div>

  </div>

  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 18px; margin-bottom: 32px;">

<div style="background: #eff6ff; border-radius: 18px; padding: 22px; border: 1px solid #bfdbfe;">
  <h3 style="color: #1d4ed8; margin-top: 0; font-size: 22px;">
    ¿Qué aprenderás?
  </h3>
  <p style="margin-bottom: 0;">
    Aprenderás a resolver ecuaciones lineales usando un procedimiento claro y ordenado.
  </p>
</div>

<div style="background: #f0fdf4; border-radius: 18px; padding: 22px; border: 1px solid #bbf7d0;">
  <h3 style="color: #15803d; margin-top: 0; font-size: 22px;">
    Meta principal
  </h3>
  <p style="margin-bottom: 0;">
    El objetivo será despejar la \(x\) para encontrar el valor desconocido.
  </p>
</div>

<div style="background: #fff7ed; border-radius: 18px; padding: 22px; border: 1px solid #fed7aa;">
  <h3 style="color: #c2410c; margin-top: 0; font-size: 22px;">
    Idea clave
  </h3>
  <p style="margin-bottom: 0;">
    Cada operación debe conservar la igualdad entre ambos lados de la ecuación.
  </p>
</div>
```

  </div>

  <div style="background: #ffffff; border-radius: 22px; padding: 28px; margin-bottom: 28px; border: 1px solid #e5e7eb; box-shadow: 0 6px 18px rgba(0,0,0,0.07);">
    <h2 style="color: #1e3a8a; font-size: 30px; margin-top: 0;">
      1. ¿Qué es una ecuación lineal de una variable?
    </h2>

<p>
  Las ecuaciones lineales de una variable son una parte fundamental del álgebra, ya que permiten representar situaciones en las que existe un valor desconocido. Ese valor se expresa comúnmente con una letra, como \(x\), y el propósito de la ecuación es encontrar cuánto vale.
</p>

<p>
  Una ecuación lineal de una variable se caracteriza porque la incógnita aparece elevada a la primera potencia. Esto significa que la variable no está al cuadrado, al cubo ni dentro de raíces u otras operaciones más complejas.
</p>

<div style="background: #f8fafc; border-left: 6px solid #38bdf8; border-radius: 16px; padding: 20px; margin-top: 20px;">
  <p style="margin: 0;">
    En esta lección trabajaremos principalmente con ecuaciones de la forma:
  </p>

  <div style="text-align: center; margin-top: 16px;">
    <span style="display: inline-block; background: #ffffff; border: 2px dashed #38bdf8; border-radius: 16px; padding: 16px 34px; font-size: 34px; font-weight: bold; color: #1e3a8a;">
      \(ax + b = c\)
    </span>
  </div>
</div>

  </div>

  <div style="background: #f0fdfa; border-radius: 22px; padding: 28px; margin-bottom: 28px; border: 1px solid #99f6e4;">
    <h2 style="color: #0f766e; font-size: 30px; margin-top: 0;">
      2. ¿Qué significa \(  \bm{ ax + b = c} \) ?
    </h2>

<p>
  En la expresión \(ax + b = c\), cada parte tiene una función específica. Conocer estas partes ayuda a entender mejor el procedimiento.
</p>

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(210px, 1fr)); gap: 16px; margin-top: 22px;">

  <div style="background: #ffffff; border-radius: 18px; padding: 20px; border: 1px solid #ccfbf1;">
    <h3 style="color: #0f766e; font-size: 28px; margin: 0 0 8px;">
      \(  \bm{ x } \)
    </h3>
    <p style="margin-bottom: 0;">
      Representa el valor desconocido que se desea encontrar.
    </p>
  </div>

  <div style="background: #ffffff; border-radius: 18px; padding: 20px; border: 1px solid #ccfbf1;">
    <h3 style="color: #0f766e; font-size: 28px; margin: 0 0 8px;">
      \(  \bm{ a } \)
    </h3>
    <p style="margin-bottom: 0;">
      Es el número que multiplica a la variable. Se llama <strong>coeficiente</strong>.
    </p>
  </div>

  <div style="background: #ffffff; border-radius: 18px; padding: 20px; border: 1px solid #ccfbf1;">
    <h3 style="color: #0f766e; font-size: 28px; margin: 0 0 8px;">
      \(  \bm{ b } \)
    </h3>
    <p style="margin-bottom: 0;">
      Es el número que se suma o se resta junto a la variable.
    </p>
  </div>

  <div style="background: #ffffff; border-radius: 18px; padding: 20px; border: 1px solid #ccfbf1;">
    <h3 style="color: #0f766e; font-size: 28px; margin: 0 0 8px;">
      \(  \bm{ c } \)
    </h3>
    <p style="margin-bottom: 0;">
      Es el resultado que se encuentra al otro lado de la igualdad.
    </p>
  </div>

</div>

<p style="margin-top: 22px; margin-bottom: 0;">
  Por lo tanto, una ecuación de la forma <span style="color: red;">  \(  \bm{ ax + b = c} \) </span> indica que una expresión con una variable tiene el mismo valor que una cantidad determinada.
</p>

  </div>

  <div style="background: #fff7ed; border-radius: 22px; padding: 28px; margin-bottom: 28px; border: 1px solid #fed7aa;">
    <h2 style="color: #c2410c; font-size: 30px; margin-top: 0;">
      3. Objetivo al resolver una ecuación
    </h2>

<p>
  Resolver una ecuación significa encontrar el valor de la variable que hace verdadera la igualdad.
</p>

<div style="background: #ffffff; border-radius: 18px; padding: 22px; border-left: 6px solid #f97316;">
  <p style="font-size: 20px; margin: 0;">
    El objetivo principal es dejar la \(  \bm{ x } \) sola. A este proceso se le llama <strong>despejar la variable</strong>.
  </p>
</div>

<p style="margin-top: 20px;">
  Despejar no significa adivinar el resultado, sino transformar la ecuación paso a paso hasta conocer el valor de la incógnita.
</p>

  </div>

  <div style="background: #ffffff; border-radius: 22px; padding: 28px; margin-bottom: 28px; border: 1px solid #e5e7eb; box-shadow: 0 6px 18px rgba(0,0,0,0.07);">
    <h2 style="color: #7c3aed; font-size: 30px; margin-top: 0;">
      4. Transformaciones equivalentes
    </h2>

<p>
  Para resolver una ecuación se utilizan <strong>transformaciones equivalentes</strong>. Esto quiere decir que se pueden realizar operaciones en la ecuación siempre que se conserve la igualdad.
</p>

<p>
  Las operaciones que se aplican deben mantener el mismo valor en ambos lados de la ecuación. De esta manera, aunque la forma de la ecuación cambie, su solución seguirá siendo la misma.
</p>

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(160px, 1fr)); gap: 14px; margin-top: 22px; text-align: center;">

  <div style="background: #f5f3ff; border-radius: 16px; padding: 18px; font-size: 20px; font-weight: bold; color: #5b21b6;">
    Sumar
  </div>

  <div style="background: #f5f3ff; border-radius: 16px; padding: 18px; font-size: 20px; font-weight: bold; color: #5b21b6;">
    Restar
  </div>

  <div style="background: #f5f3ff; border-radius: 16px; padding: 18px; font-size: 20px; font-weight: bold; color: #5b21b6;">
    Multiplicar
  </div>

  <div style="background: #f5f3ff; border-radius: 16px; padding: 18px; font-size: 20px; font-weight: bold; color: #5b21b6;">
    Dividir
  </div>

</div>

<p style="margin-top: 22px; margin-bottom: 0;">
  Estas operaciones se utilizan de manera estratégica para separar la variable de los números que la acompañan.
</p>

  </div>

  <div style="background: #eff6ff; border-radius: 22px; padding: 28px; margin-bottom: 28px; border: 1px solid #bfdbfe;">
    <h2 style="color: #1d4ed8; font-size: 30px; margin-top: 0;">
      5. Procedimiento general
    </h2>

<p>
  Para resolver una ecuación de la forma \(ax + b = c\), se sigue un proceso ordenado:
</p>

<div style="display: grid; gap: 18px; margin-top: 22px;">

  <div style="background: #ffffff; border-radius: 18px; padding: 22px; border-left: 7px solid #2563eb;">
    <h3 style="color: #1d4ed8; margin-top: 0;">
      Paso 1: Identificar la ecuación
    </h3>
    <div style="text-align: center; font-size: 50px; font-weight: bold; color: #1e3a8a;">
      \(ax + b = c\)
    </div>
  </div>

  <div style="background: #ffffff; border-radius: 18px; padding: 22px; border-left: 7px solid #2563eb;">
    <h3 style="color: #1d4ed8; margin-top: 0;">
      Paso 2: Separar el término con x
    </h3>
    <p>
      Primero se elimina el número que se suma o se resta junto a la variable.
    </p>
    <div style="text-align: center; font-size: 50px; font-weight: bold; color: #1e3a8a;">
      \(ax = c - b\)
    </div>
  </div>

  <div style="background: #ffffff; border-radius: 18px; padding: 22px; border-left: 7px solid #2563eb;">
    <h3 style="color: #1d4ed8; margin-top: 0;">
      Paso 3: Despejar la variable
    </h3>
    <p>
      Después se elimina el número que multiplica a la variable dividiendo entre el coeficiente.
    </p>
    <div style="text-align: center; font-size: 50px; font-weight: bold; color: #1e3a8a;">
      \( x = \frac{(c-b)}{a} \)
    </div>
  </div>

</div>

  </div>

  <div style="background: #fef2f2; border-radius: 22px; padding: 28px; margin-bottom: 28px; border: 1px solid #fecaca;">
    <h2 style="color: #b91c1c; font-size: 30px; margin-top: 0;">
      6. Cuidado con los signos
    </h2>

<p>
  Los signos son muy importantes al resolver ecuaciones. Un signo positivo o negativo puede cambiar completamente el resultado.
</p>

<p>
  Cuando se transforma una ecuación, se debe revisar con cuidado si un número está sumando, restando, multiplicando o dividiendo. Cada operación debe tratarse correctamente para conservar la igualdad.
</p>

<div style="background: #ffffff; border-radius: 18px; padding: 20px; border-left: 6px solid #ef4444;">
  <p style="margin: 0;">
    Un error común es cambiar números de lugar sin respetar la operación correspondiente. Por eso es mejor pensar en operaciones equivalentes y no solo en “mover” números.
  </p>
</div>

  </div>

  <div style="background: #ecfdf5; border-radius: 22px; padding: 28px; margin-bottom: 28px; border: 1px solid #bbf7d0;">
    <h2 style="color: #15803d; font-size: 30px; margin-top: 0;">
      7. Comprobación de la solución
    </h2>

<p>
  Después de encontrar el valor de <strong>x</strong>, es necesario comprobar la respuesta.
</p>

<p>
  Comprobar significa sustituir el valor encontrado en la ecuación original. Si al hacerlo ambos lados de la igualdad tienen el mismo valor, entonces la solución es correcta.
</p>

<div style="background: #ffffff; border-radius: 18px; padding: 20px; border-left: 6px solid #22c55e;">
  <p style="margin: 0;">
    La comprobación permite verificar el procedimiento y detectar posibles errores de cálculo o de signos.
  </p>
</div>

  </div>

  <div style="background: #ffffff; border-radius: 22px; padding: 28px; margin-bottom: 28px; border: 1px solid #e5e7eb; box-shadow: 0 6px 18px rgba(0,0,0,0.07);">
    <h2 style="color: #9333ea; font-size: 30px; margin-top: 0;">
      8. Errores comunes
    </h2>

<p>
  Al resolver ecuaciones lineales de una variable, algunos errores frecuentes son:
</p>

<div style="display: grid; gap: 12px; margin-top: 18px;">

  <div style="background: #faf5ff; border-radius: 14px; padding: 16px; border-left: 5px solid #9333ea;">
    Confundir el coeficiente con el término independiente.
  </div>

  <div style="background: #faf5ff; border-radius: 14px; padding: 16px; border-left: 5px solid #9333ea;">
    Olvidar aplicar una operación de forma equivalente.
  </div>

  <div style="background: #faf5ff; border-radius: 14px; padding: 16px; border-left: 5px solid #9333ea;">
    Cambiar signos sin revisar la operación original.
  </div>

  <div style="background: #faf5ff; border-radius: 14px; padding: 16px; border-left: 5px solid #9333ea;">
    Dividir incorrectamente entre el coeficiente.
  </div>

  <div style="background: #faf5ff; border-radius: 14px; padding: 16px; border-left: 5px solid #9333ea;">
    No comprobar el resultado al finalizar.
  </div>

</div>

<p style="margin-top: 20px; margin-bottom: 0;">
  Evitar estos errores ayuda a resolver ecuaciones con mayor seguridad y precisión.
</p>

  </div>

  <div style="background: linear-gradient(135deg, #dbeafe, #dcfce7); border-radius: 24px; padding: 30px; text-align: center; box-shadow: 0 6px 18px rgba(0,0,0,0.08);">
    <h2 style="color: #1e3a8a; font-size: 32px; margin-top: 0;">
      Conclusión
    </h2>

<p>
  Las ecuaciones lineales de una variable permiten encontrar valores desconocidos mediante un procedimiento ordenado. En la forma \(  \bm{ ax + b = c } \), la variable se despeja separando primero el término que se suma o se resta y después eliminando el coeficiente que multiplica a la incógnita.
</p>

<p>
  Resolver ecuaciones no consiste solamente en obtener un resultado, sino en comprender cómo se transforma una igualdad paso a paso hasta encontrar el valor que la hace verdadera.
</p>

<p style="font-size: 19px; font-weight: bold; color: #14532d; margin-bottom: 0;">
  Dominar este procedimiento será una base importante para resolver problemas algebraicos más avanzados.
</p>

  </div>

</section>
',NULL,0,'generic','Básica',10,NULL,15,10,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(652,296,NULL,'activity','Actividad','<iframe allow="fullscreen; autoplay; allow-top-navigation-by-user-activation" allowfullscreen width="795" height="690" frameborder="0" src="https://es.educaplay.com/juego/29615598-ecuaciones_de_una_variable.html"></iframe>
<p>
</p>
Instrucción de la actividad
<p></p>

Resuelve los siguientes ejercicios de ecuaciones lineales de una variable en la forma ax + b = c. Lee con atención cada planteamiento, identifica la ecuación correspondiente y despeja la x utilizando operaciones contrarias.

Recuerda seguir el procedimiento paso a paso','ejercicios para resolver ecuaciones lineales de una variable en su forma general: ax + b = c con coeficientes naturales y solución entera.',1,'generic','Básica',10,NULL,0,30,1,'2026-08-27T01:21:12.000Z','2026-08-27T01:21:12.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(653,296,804,'video','Video complementario','<section class="video-leccion-ecuaciones">
  <p>
    Observa el siguiente video para reforzar el tema de ecuaciones lineales de una variable.
  </p>

  <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; border-radius: 16px;">
    <iframe 
      src="https://www.youtube.com/embed/28eEPh-BfE0?si=JLPSSWAD7MFfJgMqG" 
      title="Video de apoyo: Ecuaciones lineales de una variable"
      style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0;"
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
      allowfullscreen>
    </iframe>
  </div>

</section>
',NULL,0,'generic','Básica',10,NULL,5,50,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(654,296,804,'example','Nuevos ejemplos','<section class="ejemplos-ecuaciones-lineales" style="font-family: Arial, sans-serif; max-width: 1050px; margin: 0 auto; padding: 24px; color: #1f2937; line-height: 1.7;">

  <div style="background: linear-gradient(135deg, #dbeafe, #fef3c7); border-radius: 24px; padding: 32px; text-align: center; margin-bottom: 34px; box-shadow: 0 6px 18px rgba(0,0,0,0.08);">
    <h2 style="font-size: 34px; color: #1e3a8a; margin: 0 0 12px;">
      Ejemplos resueltos
    </h2>
    <p style="font-size: 18px; color: #334155; margin: 0;">
      Observa cómo se resuelven ecuaciones lineales de una variable usando contexto, procedimiento y explicación final.
    </p>
  </div>

  <article class="ejemplo" style="background: #ffffff; border-radius: 22px; padding: 28px; margin-bottom: 30px; border: 1px solid #e5e7eb; box-shadow: 0 6px 18px rgba(0,0,0,0.07);">


<h3 style="font-size: 28px; color: #1e3a8a; margin-top: 0;">
  Ejemplo 1: Compra de libretas
</h3>

<div style="background: #eff6ff; border-left: 6px solid #2563eb; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #1d4ed8; margin-top: 0;">Contexto</h4>
  <p style="margin-bottom: 0;">
    Sofía compró varias libretas del mismo precio. Además, pagó <strong>$10</strong> por una pluma. En total gastó <strong>$70</strong>. Cada libreta cuesta <strong>$15</strong>. Queremos saber cuántas libretas compró.
  </p>
</div>

<div style="background: #f8fafc; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #0f172a; margin-top: 0;">Planteamiento</h4>
  <p>
    La cantidad de libretas se representa con la letra <strong>x</strong>.
  </p>

  <div style="background: #ffffff; border: 2px dashed #38bdf8; border-radius: 16px; padding: 18px; text-align: center;">
    <strong style="font-size: 30px; color: #1e40af;">\(15x + 10 = 70\)</strong>
  </div>

  <p style="margin-bottom: 0; margin-top: 16px;">
    Donde <strong>15x</strong> representa el costo de las libretas, <strong>10</strong> representa el costo de la pluma y <strong>70</strong> representa el total pagado.
  </p>
</div>

<div style="background: #f0fdf4; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #15803d; margin-top: 0;">Procedimiento paso a paso</h4>

  <div style="display: grid; gap: 14px;">
    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 1:</strong> Identificamos el número que está sumando junto a la variable.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(15x + 10 = 70\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 2:</strong> Como el <strong>10</strong> está sumando, usamos la operación contraria: restar.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(15x = 70 - 10\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 3:</strong> Resolvemos la resta.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(15x = 60\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 4:</strong> Como el <strong>15</strong> multiplica a la variable, dividimos entre 15.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \( x = \frac{60}{15} \)
      </div>
    </div>

    <div style="background: #dcfce7; border-radius: 14px; padding: 18px; text-align: center;">
      <strong style="font-size: 30px; color: #14532d;">\(x = 4\)</strong>
    </div>
  </div>
</div>

<div style="background: #fff7ed; border-left: 6px solid #f97316; border-radius: 16px; padding: 20px;">
  <h4 style="font-size: 22px; color: #c2410c; margin-top: 0;">Explicación final</h4>
  <p style="margin-bottom: 0;">
    Sofía compró <strong>4 libretas</strong>. Primero se separó el costo de la pluma y después se dividió el dinero restante entre el precio de cada libreta.
  </p>
</div>

  </article>

  <article class="ejemplo" style="background: #ffffff; border-radius: 22px; padding: 28px; margin-bottom: 30px; border: 1px solid #e5e7eb; box-shadow: 0 6px 18px rgba(0,0,0,0.07);">

<h3 style="font-size: 28px; color: #1e3a8a; margin-top: 0;">
  Ejemplo 2: Preguntas correctas en un concurso
</h3>

<div style="background: #eff6ff; border-left: 6px solid #2563eb; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #1d4ed8; margin-top: 0;">Contexto</h4>
  <p style="margin-bottom: 0;">
    En un concurso, cada respuesta correcta vale <strong>6 puntos</strong>. Además, todos los participantes reciben <strong>8 puntos</strong> por iniciar el juego. Daniel obtuvo <strong>44 puntos</strong> en total. Queremos saber cuántas respuestas correctas tuvo.
  </p>
</div>

<div style="background: #f8fafc; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #0f172a; margin-top: 0;">Planteamiento</h4>
  <p>
    La cantidad de respuestas correctas se representa con <strong>x</strong>.
  </p>

  <div style="background: #ffffff; border: 2px dashed #38bdf8; border-radius: 16px; padding: 18px; text-align: center;">
    <strong style="font-size: 30px; color: #1e40af;">\(6x + 8 = 44\)</strong>
  </div>

  <p style="margin-bottom: 0; margin-top: 16px;">
    Donde <strong>6x</strong> representa los puntos por respuestas correctas, <strong>8</strong> representa los puntos iniciales y <strong>44</strong> representa el puntaje total.
  </p>
</div>

<div style="background: #f0fdf4; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #15803d; margin-top: 0;">Procedimiento paso a paso</h4>

  <div style="display: grid; gap: 14px;">
    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 1:</strong> Identificamos el número que se suma a los puntos de las respuestas correctas.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(6x + 8 = 44\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 2:</strong> Como el <strong>8</strong> está sumando, restamos 8.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(6x = 44 - 8\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 3:</strong> Resolvemos la resta.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(6x = 36\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 4:</strong> Dividimos entre 6 para encontrar el valor de x.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \( x = \frac{36}{6} \)
      </div>
    </div>

    <div style="background: #dcfce7; border-radius: 14px; padding: 18px; text-align: center;">
      <strong style="font-size: 30px; color: #14532d;">\(x = 6\)</strong>
    </div>
  </div>
</div>

<div style="background: #fff7ed; border-left: 6px solid #f97316; border-radius: 16px; padding: 20px;">
  <h4 style="font-size: 22px; color: #c2410c; margin-top: 0;">Explicación final</h4>
  <p style="margin-bottom: 0;">
    Daniel tuvo <strong>6 respuestas correctas</strong>. La ecuación permitió quitar primero los puntos iniciales y después calcular cuántas respuestas correctas formaban el puntaje restante.
  </p>
</div>

  </article>

  <article class="ejemplo" style="background: #ffffff; border-radius: 22px; padding: 28px; margin-bottom: 30px; border: 1px solid #e5e7eb; box-shadow: 0 6px 18px rgba(0,0,0,0.07);">

<h3 style="font-size: 28px; color: #1e3a8a; margin-top: 0;">
  Ejemplo 3: Ahorro para comprar un regalo
</h3>

<div style="background: #eff6ff; border-left: 6px solid #2563eb; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #1d4ed8; margin-top: 0;">Contexto</h4>
  <p style="margin-bottom: 0;">
    Camila ya tenía <strong>$25</strong> ahorrados. Después comenzó a guardar <strong>$30</strong> cada semana. Al final juntó <strong>$175</strong>. Queremos saber durante cuántas semanas ahorró.
  </p>
</div>

<div style="background: #f8fafc; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #0f172a; margin-top: 0;">Planteamiento</h4>
  <p>
    La cantidad de semanas se representa con <strong>x</strong>.
  </p>

  <div style="background: #ffffff; border: 2px dashed #38bdf8; border-radius: 16px; padding: 18px; text-align: center;">
    <strong style="font-size: 30px; color: #1e40af;">\(30x + 25 = 175\)</strong>
  </div>

  <p style="margin-bottom: 0; margin-top: 16px;">
    Donde <strong>30x</strong> representa el ahorro semanal acumulado, <strong>25</strong> representa el dinero que ya tenía y <strong>175</strong> representa el total ahorrado.
  </p>
</div>

<div style="background: #f0fdf4; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #15803d; margin-top: 0;">Procedimiento paso a paso</h4>

  <div style="display: grid; gap: 14px;">
    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 1:</strong> Identificamos el dinero que Camila ya tenía.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">\(
        30x + 25 = 175\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 2:</strong> Como el <strong>25</strong> está sumando, restamos 25.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">\(
        30x = 175 - 25\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 3:</strong> Resolvemos la resta.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">\(
        30x = 150\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 4:</strong> Dividimos entre 30 para encontrar el número de semanas.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \( x = \frac{150}{30} \)
      </div>
    </div>

    <div style="background: #dcfce7; border-radius: 14px; padding: 18px; text-align: center;">
      <strong style="font-size: 30px; color: #14532d;">\(x = 5\)</strong>
    </div>
  </div>
</div>

<div style="background: #fff7ed; border-left: 6px solid #f97316; border-radius: 16px; padding: 20px;">
  <h4 style="font-size: 22px; color: #c2410c; margin-top: 0;">Explicación final</h4>
  <p style="margin-bottom: 0;">
    Camila ahorró durante <strong>5 semanas</strong>. Primero se separó el dinero inicial y después se dividió el ahorro restante entre la cantidad que guardaba cada semana.
  </p>
</div>

  </article>

  <article class="ejemplo" style="background: #ffffff; border-radius: 22px; padding: 28px; margin-bottom: 30px; border: 1px solid #e5e7eb; box-shadow: 0 6px 18px rgba(0,0,0,0.07);">

<h3 style="font-size: 28px; color: #1e3a8a; margin-top: 0;">
  Ejemplo 4: Paquetes de botellas
</h3>

<div style="background: #eff6ff; border-left: 6px solid #2563eb; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #1d4ed8; margin-top: 0;">Contexto</h4>
  <p style="margin-bottom: 0;">
    En una reunión se compraron varios paquetes de botellas de agua. Cada paquete trae <strong>12 botellas</strong>. Además, ya había <strong>6 botellas</strong> sueltas. En total se reunieron <strong>54 botellas</strong>. Queremos saber cuántos paquetes se compraron.
  </p>
</div>

<div style="background: #f8fafc; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #0f172a; margin-top: 0;">Planteamiento</h4>
  <p>
    La cantidad de paquetes se representa con <strong>x</strong>.
  </p>

  <div style="background: #ffffff; border: 2px dashed #38bdf8; border-radius: 16px; padding: 18px; text-align: center;">
    <strong style="font-size: 30px; color: #1e40af;">\(12x + 6 = 54\)</strong>
  </div>

  <p style="margin-bottom: 0; margin-top: 16px;">
    Donde <strong>12x</strong> representa las botellas en paquetes, <strong>6</strong> representa las botellas sueltas y <strong>54</strong> representa el total de botellas.
  </p>
</div>

<div style="background: #f0fdf4; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #15803d; margin-top: 0;">Procedimiento paso a paso</h4>

  <div style="display: grid; gap: 14px;">
    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 1:</strong> Identificamos las botellas sueltas.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(12x + 6 = 54\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 2:</strong> Como el <strong>6</strong> está sumando, restamos 6.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(12x = 54 - 6\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 3:</strong> Resolvemos la resta.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(12x = 48\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 4:</strong> Dividimos entre 12 para saber cuántos paquetes se compraron.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
       \( x = \frac{48}{12} \)
      </div>
    </div>

    <div style="background: #dcfce7; border-radius: 14px; padding: 18px; text-align: center;">
      <strong style="font-size: 30px; color: #14532d;">\(x = 4\)</strong>
    </div>
  </div>
</div>

<div style="background: #fff7ed; border-left: 6px solid #f97316; border-radius: 16px; padding: 20px;">
  <h4 style="font-size: 22px; color: #c2410c; margin-top: 0;">Explicación final</h4>
  <p style="margin-bottom: 0;">
    Se compraron <strong>4 paquetes</strong> de botellas. La ecuación permitió diferenciar las botellas sueltas de las botellas que venían en paquetes.
  </p>
</div>

  </article>

  <article class="ejemplo" style="background: #ffffff; border-radius: 22px; padding: 28px; margin-bottom: 30px; border: 1px solid #e5e7eb; box-shadow: 0 6px 18px rgba(0,0,0,0.07);">

<h3 style="font-size: 28px; color: #1e3a8a; margin-top: 0;">
  Ejemplo 5: Problema con resta
</h3>

<div style="background: #eff6ff; border-left: 6px solid #2563eb; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #1d4ed8; margin-top: 0;">Contexto</h4>
  <p style="margin-bottom: 0;">
    Un estudiante tenía varias bolsas con la misma cantidad de dulces. Regaló <strong>7 dulces</strong> y le quedaron <strong>53 dulces</strong>. Cada bolsa contenía <strong>15 dulces</strong>. Queremos saber cuántas bolsas tenía al inicio.
  </p>
</div>

<div style="background: #f8fafc; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #0f172a; margin-top: 0;">Planteamiento</h4>
  <p>
    La cantidad de bolsas se representa con <strong>x</strong>.
  </p>

  <div style="background: #ffffff; border: 2px dashed #38bdf8; border-radius: 16px; padding: 18px; text-align: center;">
    <strong style="font-size: 30px; color: #1e40af;">\(15x - 7 = 53\)</strong>
  </div>

  <p style="margin-bottom: 0; margin-top: 16px;">
    Donde <strong>15x</strong> representa los dulces que había en las bolsas, <strong>-7</strong> representa los dulces que regaló y <strong>53</strong> representa los dulces que quedaron.
  </p>
</div>

<div style="background: #f0fdf4; border-radius: 16px; padding: 20px; margin-bottom: 22px;">
  <h4 style="font-size: 22px; color: #15803d; margin-top: 0;">Procedimiento paso a paso</h4>

  <div style="display: grid; gap: 14px;">
    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 1:</strong> Identificamos el número que está restando.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(15x - 7 = 53\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 2:</strong> Como el <strong>7</strong> está restando, usamos la operación contraria: sumar.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(15x = 53 + 7\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 3:</strong> Resolvemos la suma.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \(15x = 60\)
      </div>
    </div>

    <div style="background: #ffffff; border-radius: 14px; padding: 16px; border-left: 5px solid #22c55e;">
      <strong>Paso 4:</strong> Dividimos entre 15 para conocer cuántas bolsas tenía al inicio.
      <div style="text-align: center; margin-top: 10px; font-size: 24px; font-weight: bold; color: #166534;">
        \( x = \frac{60}{15} \)
      </div>
    </div>

    <div style="background: #dcfce7; border-radius: 14px; padding: 18px; text-align: center;">
      <strong style="font-size: 30px; color: #14532d;">\(x = 4\)</strong>
    </div>
  </div>
</div>

<div style="background: #fff7ed; border-left: 6px solid #f97316; border-radius: 16px; padding: 20px;">
  <h4 style="font-size: 22px; color: #c2410c; margin-top: 0;">Explicación final</h4>
  <p style="margin-bottom: 0;">
    El estudiante tenía <strong>4 bolsas</strong> al inicio. Como había regalado 7 dulces, se sumaron de nuevo para conocer cuántos dulces tenía originalmente en las bolsas.
  </p>
</div>

  </article>

</section>
',NULL,0,'generic','Básica',10,NULL,0,70,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(655,296,651,'pptx','Presentación','/api/learning/uploads/cabsa-ecuaciones-lineales.pptx',NULL,0,'generic','Básica',10,7,0,80,1,'2026-08-27T01:21:12.000Z','2026-08-27T01:21:12.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(656,296,804,'video','Video-lección','<iframe width="560" height="315" src="https://www.youtube.com/embed/W1F22Rtp8_o?si=rDWAnmODS--JqhMI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>',NULL,0,'generic','Básica',10,NULL,0,20,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(657,296,1314,'evaluation','Nueva evaluación','','ejercicios para resolver ecuaciones lineales de una variable en su forma general: ax + b = c con coeficientes naturales y solución entera.',1,'generic','Básica',10,NULL,0,100,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(658,294,726,'pptx','Presentación de apoyo','/api/learning/uploads/cabsa-suma-numeros-naturales.pptx',NULL,0,'generic','Básica',10,6,0,70,1,'2026-08-27T01:21:12.000Z','2026-08-27T21:00:24.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(659,8,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(660,9,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(661,10,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(662,11,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(663,12,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(664,13,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(665,14,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(666,15,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(667,16,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(668,17,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(669,18,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(670,19,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(671,20,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(672,21,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(673,22,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(674,38,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(675,39,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(676,40,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(677,41,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(678,42,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(679,43,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(680,44,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(681,45,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(682,46,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(683,47,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(684,48,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(685,49,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(686,50,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(687,63,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(688,64,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(689,65,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(690,66,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(691,67,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(692,68,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(693,69,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(694,70,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(695,71,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(696,72,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(697,73,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(698,74,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(699,75,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(700,76,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(701,89,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(702,90,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(703,91,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(704,92,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(705,93,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(706,94,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(707,95,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(708,96,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(709,97,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(710,98,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(711,111,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(712,112,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(713,113,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(714,114,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(715,115,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(716,116,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(717,117,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(718,118,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(719,128,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(720,129,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(721,130,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(722,131,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(723,132,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(724,133,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(725,134,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(726,294,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(727,295,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(728,23,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(729,24,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(730,25,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(731,26,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(732,51,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(733,52,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(734,77,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(735,78,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(736,27,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(737,28,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(738,29,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(739,30,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(740,31,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(741,53,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(742,54,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(743,55,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(744,79,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(745,80,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(746,81,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(747,82,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(748,100,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(749,101,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(750,102,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(751,103,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(752,120,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(753,121,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(754,122,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(755,138,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(756,139,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(757,140,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(758,32,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(759,33,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(760,34,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(761,35,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(762,36,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(763,37,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(764,56,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(765,57,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(766,58,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(767,59,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(768,60,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(769,83,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(770,84,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(771,85,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(772,86,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(773,104,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(774,105,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(775,106,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(776,107,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(777,123,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(778,124,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(779,141,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(780,142,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(781,143,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(782,61,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(783,87,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(784,109,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(785,126,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(786,146,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(787,147,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(788,148,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(789,62,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(790,88,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(791,110,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(792,127,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(793,149,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(794,150,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(795,99,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(796,119,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(797,135,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(798,136,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(799,137,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(800,108,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(801,125,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(802,144,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(803,145,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(804,296,NULL,'presentation','Lecciones','',NULL,0,'generic','Básica',10,NULL,0,1,1,'2026-08-27T21:00:24.000Z','2026-08-28T00:30:13.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(914,8,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(915,9,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(916,10,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(917,11,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(918,12,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(919,13,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(920,14,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(921,15,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(922,16,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(923,17,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(924,18,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(925,19,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(926,20,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(927,21,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(928,22,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(929,38,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(930,39,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(931,40,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(932,41,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(933,42,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(934,43,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(935,44,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(936,45,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(937,46,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(938,47,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(939,48,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(940,49,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(941,50,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(942,63,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(943,64,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(944,65,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(945,66,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(946,67,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(947,68,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(948,69,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(949,70,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(950,71,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(951,72,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(952,73,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(953,74,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(954,75,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(955,76,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(956,89,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(957,90,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(958,91,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(959,92,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(960,93,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(961,94,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(962,95,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(963,96,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(964,97,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(965,98,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(966,111,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(967,112,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(968,113,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(969,114,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(970,115,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(971,116,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(972,117,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(973,118,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(974,128,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(975,129,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(976,130,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(977,131,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(978,132,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(979,133,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(980,134,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(981,294,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(982,295,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(983,23,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(984,24,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(985,25,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(986,26,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(987,51,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(988,52,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(989,77,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(990,78,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(991,27,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(992,28,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(993,29,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(994,30,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(995,31,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(996,53,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(997,54,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(998,55,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(999,79,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1000,80,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1001,81,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1002,82,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1003,100,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1004,101,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1005,102,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1006,103,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1007,120,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1008,121,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1009,122,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1010,138,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1011,139,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1012,140,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1013,32,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1014,33,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1015,34,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1016,35,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1017,36,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1018,37,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1019,56,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1020,57,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1021,58,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1022,59,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1023,60,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1024,83,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1025,84,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1026,85,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1027,86,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1028,104,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1029,105,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1030,106,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1031,107,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1032,123,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1033,124,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1034,141,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1035,142,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1036,143,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1037,61,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1038,87,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1039,109,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1040,126,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1041,146,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1042,147,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1043,148,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1044,62,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1045,88,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1046,110,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1047,127,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1048,149,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1049,150,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1050,99,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1051,119,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1052,135,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1053,136,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1054,137,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1055,108,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1056,125,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1057,144,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1058,145,NULL,'activity','Actividad','',NULL,1,'generic','Básica',10,NULL,0,2,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1169,8,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1170,9,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1171,10,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1172,11,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1173,12,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1174,13,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1175,14,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1176,15,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1177,16,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1178,17,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1179,18,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1180,19,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1181,20,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1182,21,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1183,22,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1184,38,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1185,39,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1186,40,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1187,41,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1188,42,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1189,43,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1190,44,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1191,45,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1192,46,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1193,47,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1194,48,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1195,49,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1196,50,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1197,63,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1198,64,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1199,65,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1200,66,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1201,67,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1202,68,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1203,69,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1204,70,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1205,71,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1206,72,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1207,73,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1208,74,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1209,75,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1210,76,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1211,89,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1212,90,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1213,91,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1214,92,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1215,93,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1216,94,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1217,95,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1218,96,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1219,97,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1220,98,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1221,111,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1222,112,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1223,113,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1224,114,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1225,115,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1226,116,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1227,117,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1228,118,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1229,128,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1230,129,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1231,130,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1232,131,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1233,132,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1234,133,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1235,134,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1236,294,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1237,295,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1238,23,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1239,24,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1240,25,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1241,26,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1242,51,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1243,52,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1244,77,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1245,78,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1246,27,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1247,28,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1248,29,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1249,30,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1250,31,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1251,53,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1252,54,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1253,55,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1254,79,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1255,80,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1256,81,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1257,82,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1258,100,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1259,101,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1260,102,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1261,103,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1262,120,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1263,121,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1264,122,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1265,138,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1266,139,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1267,140,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1268,32,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1269,33,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1270,34,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1271,35,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1272,36,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1273,37,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1274,56,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1275,57,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1276,58,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1277,59,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1278,60,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1279,83,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1280,84,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1281,85,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1282,86,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1283,104,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1284,105,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1285,106,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1286,107,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1287,123,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1288,124,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1289,141,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1290,142,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1291,143,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1292,61,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1293,87,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1294,109,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1295,126,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1296,146,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1297,147,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1298,148,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1299,62,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1300,88,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1301,110,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1302,127,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1303,149,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1304,150,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1305,99,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1306,119,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1307,135,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1308,136,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1309,137,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1310,108,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1311,125,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1312,144,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1313,145,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
INSERT INTO "aprendizaje_secciones_leccion" VALUES(1314,296,NULL,'evaluation','Evaluación','',NULL,1,'generic','Básica',10,NULL,0,3,1,'2026-08-27T21:00:24.000Z','2026-08-27T21:04:08.000Z');
CREATE TABLE "practica_ejercicios" ("id", "section_id", "json_data", "ai_model", "generated_at", "updated_at");
INSERT INTO "practica_ejercicios" VALUES(1,11,'{"exercise_type":"vertical_addition","ejercicios":[{"id":1,"ejercicio":"Resuelve la suma vertical","resultado":"8","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[3,5],"llevadas":[""]},{"id":2,"ejercicio":"Resuelve la suma vertical","resultado":"9","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[7,2],"llevadas":[""]},{"id":3,"ejercicio":"Resuelve la suma vertical","resultado":"10","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[4,6],"llevadas":[""]},{"id":4,"ejercicio":"Resuelve la suma vertical","resultado":"9","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[8,1],"llevadas":[""]},{"id":5,"ejercicio":"Resuelve la suma vertical","resultado":"11","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[2,9],"llevadas":[""]},{"id":6,"ejercicio":"Resuelve la suma vertical","resultado":"8","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[5,3],"llevadas":[""]},{"id":7,"ejercicio":"Resuelve la suma vertical","resultado":"10","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[6,4],"llevadas":[""]},{"id":8,"ejercicio":"Resuelve la suma vertical","resultado":"8","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[1,7],"llevadas":[""]},{"id":9,"ejercicio":"Resuelve la suma vertical","resultado":"11","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[9,2],"llevadas":[""]},{"id":10,"ejercicio":"Resuelve la suma vertical","resultado":"11","tipo":"operacion_vertical","operacion":"suma","simbolo":"+","operandos":[3,8],"llevadas":[""]}]}','gpt-4.1-nano','2026-07-08T23:15:48.000Z','2026-07-08T23:15:48.000Z');
INSERT INTO "practica_ejercicios" VALUES(2,39,'{"ejercicios":[{"id":1,"ejercicio":"Resuelve la ecuación 3x + 4 = 10.","resultado":"2"},{"id":2,"ejercicio":"Encuentra x en la ecuación 5x + 3 = 13.","resultado":"2"},{"id":3,"ejercicio":"Determina x si 2x + 5 = 11.","resultado":"3"},{"id":4,"ejercicio":"Halla x en la ecuación 4x + 2 = 10.","resultado":"2"},{"id":5,"ejercicio":"Resuelve para x: 6x + 1 = 19.","resultado":"3"},{"id":6,"ejercicio":"Calcula x en la ecuación 7x + 3 = 24.","resultado":"3"},{"id":7,"ejercicio":"Encuentra x si 8x + 4 = 20.","resultado":"2"},{"id":8,"ejercicio":"Determina x en la ecuación 9x + 2 = 20.","resultado":"2"},{"id":9,"ejercicio":"Resuelve la ecuación 2x + 7 = 15.","resultado":"4"},{"id":10,"ejercicio":"Halla x en la ecuación 3x + 6 = 15.","resultado":"3"}]}','gpt-4.1-nano','2026-07-02T23:32:09.000Z','2026-07-02T23:32:09.000Z');
INSERT INTO "practica_ejercicios" VALUES(20,80,'{"ejercicios":[{"id":1,"ejercicio":"Resuelve la ecuación: 3x + 2 = 8","resultado":"2"},{"id":2,"ejercicio":"Encuentra x en la ecuación: 5x - 4 = 6","resultado":"2"},{"id":3,"ejercicio":"Determina el valor de x: 2x + 7 = 13","resultado":"3"},{"id":4,"ejercicio":"Resuelve para x: 4x - 9 = 7","resultado":"4"},{"id":5,"ejercicio":"Encuentra la solución de: x + 5 = 10","resultado":"5"},{"id":6,"ejercicio":"Calcula x en: 6x - 3 = 9","resultado":"2"},{"id":7,"ejercicio":"Resuelve la ecuación: 7x + 2 = 16","resultado":"2"},{"id":8,"ejercicio":"Encuentra x: 3x - 5 = 4","resultado":"3"},{"id":9,"ejercicio":"Determina el valor de x: 8x + 1 = 25","resultado":"3"},{"id":10,"ejercicio":"Resuelve para x: 2x + 6 = 12","resultado":"3"}]}','deepseek-r1:32b','2026-07-04T06:13:47.000Z','2026-07-04T06:13:47.000Z');
CREATE TABLE preview_metadata (generated_at, source_database);
INSERT INTO "preview_metadata" VALUES('2026-08-28T00:45:14.523Z','academia-matematicas-soa');
COMMIT;