/*
 Navicat Premium Data Transfer

 Source Server         : TBP_projekt
 Source Server Type    : PostgreSQL
 Source Server Version : 130001
 Source Host           : localhost:5432
 Source Catalog        : SkladišteKomponenti
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130001
 File Encoding         : 65001

 Date: 24/01/2021 17:29:42
*/


-- ----------------------------
-- Sequence structure for id_evid_auto_ink
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."id_evid_auto_ink";
CREATE SEQUENCE "public"."id_evid_auto_ink" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_karak_auto_ink
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."id_karak_auto_ink";
CREATE SEQUENCE "public"."id_karak_auto_ink" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_komp_auto_ink
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."id_komp_auto_ink";
CREATE SEQUENCE "public"."id_komp_auto_ink" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_nabava_auto_ink
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."id_nabava_auto_ink";
CREATE SEQUENCE "public"."id_nabava_auto_ink" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_narudzb_auto_ink
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."id_narudzb_auto_ink";
CREATE SEQUENCE "public"."id_narudzb_auto_ink" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_proizv_auto_ink
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."id_proizv_auto_ink";
CREATE SEQUENCE "public"."id_proizv_auto_ink" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for id_vrsta_auto_ink
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."id_vrsta_auto_ink";
CREATE SEQUENCE "public"."id_vrsta_auto_ink" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for Evidencija_Skladista
-- ----------------------------
DROP TABLE IF EXISTS "public"."Evidencija_Skladista";
CREATE TABLE "public"."Evidencija_Skladista" (
  "ID_evidencije" int4 NOT NULL DEFAULT nextval('id_evid_auto_ink'::regclass),
  "Datum" timestamp(6) NOT NULL DEFAULT now(),
  "KolicinaPrije" int4 DEFAULT 0,
  "KolicinaNova" int4 NOT NULL,
  "KomponentaID" int4 NOT NULL
)
;

-- ----------------------------
-- Records of Evidencija_Skladista
-- ----------------------------
INSERT INTO "public"."Evidencija_Skladista" VALUES (1, '2021-01-17 13:31:59', 0, 10, 1);
INSERT INTO "public"."Evidencija_Skladista" VALUES (9, '2021-01-20 13:07:50.412962', 5, 5, 2);
INSERT INTO "public"."Evidencija_Skladista" VALUES (10, '2021-01-20 13:08:12.697746', 11, 6, 3);
INSERT INTO "public"."Evidencija_Skladista" VALUES (11, '2021-01-20 13:08:58.367867', 6, 5, 9);
INSERT INTO "public"."Evidencija_Skladista" VALUES (13, '2021-01-20 13:14:31.2693', 0, 5, 10);
INSERT INTO "public"."Evidencija_Skladista" VALUES (14, '2021-01-20 13:15:26.444701', 5, 8, 2);
INSERT INTO "public"."Evidencija_Skladista" VALUES (15, '2021-01-20 13:19:23.435232', 5, 0, 10);
INSERT INTO "public"."Evidencija_Skladista" VALUES (16, '2021-01-20 13:19:46.284858', 0, 6, 10);
INSERT INTO "public"."Evidencija_Skladista" VALUES (18, '2021-01-20 15:12:36.405692', 6, 7, 3);
INSERT INTO "public"."Evidencija_Skladista" VALUES (19, '2021-01-20 15:13:23.184136', 7, 27, 3);
INSERT INTO "public"."Evidencija_Skladista" VALUES (20, '2021-01-20 15:16:40.886118', 10, 10, 4);
INSERT INTO "public"."Evidencija_Skladista" VALUES (21, '2021-01-20 15:17:09.301831', 10, 40, 4);
INSERT INTO "public"."Evidencija_Skladista" VALUES (22, '2021-01-20 17:25:30.685237', 20, 10, 1);
INSERT INTO "public"."Evidencija_Skladista" VALUES (23, '2021-01-20 17:25:42.528421', 0, 10, 11);
INSERT INTO "public"."Evidencija_Skladista" VALUES (24, '2021-01-20 17:25:52.162872', 5, 0, 8);
INSERT INTO "public"."Evidencija_Skladista" VALUES (25, '2021-01-23 21:15:15.769439', 0, 5, 12);
INSERT INTO "public"."Evidencija_Skladista" VALUES (26, '2021-01-23 21:15:26.744033', 5, 6, 12);
INSERT INTO "public"."Evidencija_Skladista" VALUES (27, '2021-01-23 21:15:33.020216', 6, 0, 12);
INSERT INTO "public"."Evidencija_Skladista" VALUES (28, '2021-01-23 21:16:42.305785', 4, 4, 7);
INSERT INTO "public"."Evidencija_Skladista" VALUES (29, '2021-01-23 21:17:02.781735', 4, 14, 7);

-- ----------------------------
-- Table structure for Karakteristike_Komponente
-- ----------------------------
DROP TABLE IF EXISTS "public"."Karakteristike_Komponente";
CREATE TABLE "public"."Karakteristike_Komponente" (
  "ID_karakteristika" int4 NOT NULL DEFAULT nextval('id_karak_auto_ink'::regclass),
  "God_proizvodnje" date,
  "TDP" varchar(255) COLLATE "pg_catalog"."default",
  "Garancija" varchar(255) COLLATE "pg_catalog"."default",
  "ProizvodniProces" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Karakteristike_Komponente
-- ----------------------------
INSERT INTO "public"."Karakteristike_Komponente" VALUES (1, '2020-12-10', '125', '5', '14nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (2, '2020-11-10', '65', '5', '14nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (3, '2020-06-18', '105', '5', '7nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (4, '2020-12-17', '65', '5', '7nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (5, '2020-12-30', '35', '5', '10nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (6, '2020-11-17', '28', '5', '10nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (7, '2020-10-21', '350', '5', '8nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (8, '2020-11-04', '300', '5', '8nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (9, '2020-11-17', '220', '5', '8nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (10, '2020-09-14', '15', '5', '10nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (11, '2021-01-06', '1000', '10', NULL);
INSERT INTO "public"."Karakteristike_Komponente" VALUES (12, '2021-01-13', '750', '10', NULL);
INSERT INTO "public"."Karakteristike_Komponente" VALUES (13, '2021-01-06', '650', '10', NULL);
INSERT INTO "public"."Karakteristike_Komponente" VALUES (14, '2020-12-29', '500', '10', NULL);
INSERT INTO "public"."Karakteristike_Komponente" VALUES (15, '2021-01-19', '45', '5', '10nm');
INSERT INTO "public"."Karakteristike_Komponente" VALUES (16, '2021-01-20', '250', '5', '28');

-- ----------------------------
-- Table structure for Komponenta
-- ----------------------------
DROP TABLE IF EXISTS "public"."Komponenta";
CREATE TABLE "public"."Komponenta" (
  "ID_komponente" int4 NOT NULL DEFAULT nextval('id_komp_auto_ink'::regclass),
  "Naziv" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "Cijena" money,
  "Kolicina_Narudzbe" int2,
  "Min_kolicina" int2 NOT NULL,
  "VrstaID" int4,
  "ProizvodacID" int4,
  "KarakterisikeID" int4
)
;

-- ----------------------------
-- Records of Komponenta
-- ----------------------------
INSERT INTO "public"."Komponenta" VALUES (1, 'Core i7 10900k', '5.000,00 kn', 5, 2, 1, 1, 1);
INSERT INTO "public"."Komponenta" VALUES (2, 'Core i5 10400', '3.000,00 kn', 10, 5, 1, 1, 2);
INSERT INTO "public"."Komponenta" VALUES (3, 'Core i3 10100', '1.000,00 kn', 20, 10, 1, 1, 2);
INSERT INTO "public"."Komponenta" VALUES (4, 'Pentium G6400', '500,00 kn', 30, 15, 1, 1, 2);
INSERT INTO "public"."Komponenta" VALUES (5, 'Ryzen 9 5900X', '5.500,00 kn', 5, 2, 1, 2, 3);
INSERT INTO "public"."Komponenta" VALUES (6, 'Ryzen 7 5800X', '4.500,00 kn', 5, 2, 1, 2, 3);
INSERT INTO "public"."Komponenta" VALUES (7, 'Ryzen 5 5600X', '3.500,00 kn', 10, 5, 1, 2, 3);
INSERT INTO "public"."Komponenta" VALUES (8, 'RTX 3090', '10.000,00 kn', 2, 1, 2, 3, 7);
INSERT INTO "public"."Komponenta" VALUES (9, 'RTX 3080', '8.000,00 kn', 2, 1, 2, 3, 8);
INSERT INTO "public"."Komponenta" VALUES (10, 'RTX 3070', '5.000,00 kn', 5, 2, 2, 3, 9);
INSERT INTO "public"."Komponenta" VALUES (11, 'RX 6900XT', '10.000,00 kn', 2, 1, 2, 2, 8);
INSERT INTO "public"."Komponenta" VALUES (12, 'RX 6800XT', '7.000,00 kn', 2, 1, 2, 2, 8);
INSERT INTO "public"."Komponenta" VALUES (13, 'RX 5700XT', '4.000,00 kn', 3, 2, 2, 2, 9);
INSERT INTO "public"."Komponenta" VALUES (14, 'Core i5 10600k', '3.500,00 kn', 5, 3, 1, 1, 1);
INSERT INTO "public"."Komponenta" VALUES (15, 'FX 9590', '500,00 kn', 10, 0, 1, 2, 16);
INSERT INTO "public"."Komponenta" VALUES (16, 'FX 8320', '200,00 kn', 5, 2, 1, 2, 16);

-- ----------------------------
-- Table structure for Nabava_Komponenti
-- ----------------------------
DROP TABLE IF EXISTS "public"."Nabava_Komponenti";
CREATE TABLE "public"."Nabava_Komponenti" (
  "ID_nabave" int4 NOT NULL DEFAULT nextval('id_nabava_auto_ink'::regclass),
  "Trenutno_stanje" int4 NOT NULL,
  "Datum_trenutnog_stanja" timestamp(6) NOT NULL DEFAULT now(),
  "Kolicina_za_nabaviti" int2,
  "Datum_Zaprimanja" date,
  "KomponentaID" int4 NOT NULL,
  "Dostavljeno" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Nabava_Komponenti
-- ----------------------------
INSERT INTO "public"."Nabava_Komponenti" VALUES (5, 4, '2021-01-20 12:31:42.107997', 10, NULL, 2, 'true');
INSERT INTO "public"."Nabava_Komponenti" VALUES (1, 10, '2021-01-17 13:34:56', 30, '2021-01-20', 4, 'true');
INSERT INTO "public"."Nabava_Komponenti" VALUES (3, 10, '2021-01-19 19:51:11', 12, NULL, 4, 'true');
INSERT INTO "public"."Nabava_Komponenti" VALUES (4, 10, '2021-01-20 12:30:11.324251', 15, NULL, 3, 'true');
INSERT INTO "public"."Nabava_Komponenti" VALUES (6, 10, '2021-01-20 12:44:45.572168', 10, NULL, 1, 'true');
INSERT INTO "public"."Nabava_Komponenti" VALUES (7, 7, '2021-01-20 15:12:36.405692', 20, NULL, 3, 'true');
INSERT INTO "public"."Nabava_Komponenti" VALUES (8, 10, '2021-01-20 15:16:40.886118', 30, NULL, 4, 'true');
INSERT INTO "public"."Nabava_Komponenti" VALUES (9, 4, '2021-01-23 21:16:42.305785', 10, NULL, 7, 'true');

-- ----------------------------
-- Table structure for Narudzbenica
-- ----------------------------
DROP TABLE IF EXISTS "public"."Narudzbenica";
CREATE TABLE "public"."Narudzbenica" (
  "ID_narudzbenice" int4 NOT NULL DEFAULT nextval('id_narudzb_auto_ink'::regclass),
  "Datum" timestamp(6) DEFAULT now(),
  "Kolicina" varchar(255) COLLATE "pg_catalog"."default",
  "NabavaID" int4,
  "KomponentaID" int4
)
;

-- ----------------------------
-- Records of Narudzbenica
-- ----------------------------

-- ----------------------------
-- Table structure for Proizvodac_Komponente
-- ----------------------------
DROP TABLE IF EXISTS "public"."Proizvodac_Komponente";
CREATE TABLE "public"."Proizvodac_Komponente" (
  "ID_proizvodaca" int4 NOT NULL DEFAULT nextval('id_proizv_auto_ink'::regclass),
  "Naziv" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Proizvodac_Komponente
-- ----------------------------
INSERT INTO "public"."Proizvodac_Komponente" VALUES (1, 'Intel');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (2, 'AMD');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (3, 'NVIDIA');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (4, 'Kingston');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (5, 'Samsung');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (6, 'Micron');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (7, 'Crucial');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (8, 'WD');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (9, 'Seagate');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (10, 'Adata');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (11, 'ASRock');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (12, 'Corsair');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (13, 'Cooler Master');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (14, 'Gigabyte');
INSERT INTO "public"."Proizvodac_Komponente" VALUES (15, 'MSI');

-- ----------------------------
-- Table structure for Stanje_Skladista
-- ----------------------------
DROP TABLE IF EXISTS "public"."Stanje_Skladista";
CREATE TABLE "public"."Stanje_Skladista" (
  "KomponentaID" int4 NOT NULL,
  "Kolicina" int2
)
;

-- ----------------------------
-- Records of Stanje_Skladista
-- ----------------------------
INSERT INTO "public"."Stanje_Skladista" VALUES (6, 5);
INSERT INTO "public"."Stanje_Skladista" VALUES (5, 4);
INSERT INTO "public"."Stanje_Skladista" VALUES (9, 5);
INSERT INTO "public"."Stanje_Skladista" VALUES (2, 8);
INSERT INTO "public"."Stanje_Skladista" VALUES (10, 6);
INSERT INTO "public"."Stanje_Skladista" VALUES (3, 27);
INSERT INTO "public"."Stanje_Skladista" VALUES (4, 40);
INSERT INTO "public"."Stanje_Skladista" VALUES (1, 10);
INSERT INTO "public"."Stanje_Skladista" VALUES (11, 10);
INSERT INTO "public"."Stanje_Skladista" VALUES (7, 14);

-- ----------------------------
-- Table structure for Vrsta_Komponente
-- ----------------------------
DROP TABLE IF EXISTS "public"."Vrsta_Komponente";
CREATE TABLE "public"."Vrsta_Komponente" (
  "ID_vrste" int4 NOT NULL DEFAULT nextval('id_vrsta_auto_ink'::regclass),
  "Naziv" varchar(255) COLLATE "pg_catalog"."default",
  "Opis" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Vrsta_Komponente
-- ----------------------------
INSERT INTO "public"."Vrsta_Komponente" VALUES (2, 'GPU', 'Graficka kartica služi za prikaz slike na monitoru');
INSERT INTO "public"."Vrsta_Komponente" VALUES (1, 'CPU', 'Procesor je mozak računala koji izvršava sve aktivnosti koje mu korisnik daje');
INSERT INTO "public"."Vrsta_Komponente" VALUES (3, 'RAM', 'RAM je memorija koja u sebi drži informacije trenutno potrebne za rad računala');
INSERT INTO "public"."Vrsta_Komponente" VALUES (4, 'PSU', 'Napajanje računala služi za napajanje svake komponente racunala');
INSERT INTO "public"."Vrsta_Komponente" VALUES (5, 'MB', 'Maticna ploca je središnji dio računala koji povezuje sve ostale komponete zajedno u jednu cjelinu');
INSERT INTO "public"."Vrsta_Komponente" VALUES (6, 'HDD', 'Tvrdi disk služi za trajnu pohranu podataka u velikoj količini');
INSERT INTO "public"."Vrsta_Komponente" VALUES (7, 'SSD', 'SSD služi za trajnu pohranu podataka u manjoj kolicini od HDD-a ali vecoj brzini');

-- ----------------------------
-- Function structure for evidentiraj_brisanje
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."evidentiraj_brisanje"();
CREATE OR REPLACE FUNCTION "public"."evidentiraj_brisanje"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
 BEGIN
		INSERT INTO "Evidencija_Skladista"("KolicinaPrije", "KolicinaNova", "KomponentaID")
		VALUES(OLD."Kolicina", 0, OLD."KomponentaID");
		RETURN NEW;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for evidentiraj_promjenu
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."evidentiraj_promjenu"();
CREATE OR REPLACE FUNCTION "public"."evidentiraj_promjenu"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
 BEGIN
		INSERT INTO "Evidencija_Skladista"("KolicinaPrije", "KolicinaNova", "KomponentaID")
		VALUES(OLD."Kolicina", NEW."Kolicina", OLD."KomponentaID");
		RETURN NEW;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for evidentiraj_promjenu_nova_komp
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."evidentiraj_promjenu_nova_komp"();
CREATE OR REPLACE FUNCTION "public"."evidentiraj_promjenu_nova_komp"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
 BEGIN
		INSERT INTO "Evidencija_Skladista"("KolicinaNova", "KomponentaID")
		VALUES(NEW."Kolicina", NEW."KomponentaID");
		RETURN NEW;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for unesi_u_skladiste
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."unesi_u_skladiste"();
CREATE OR REPLACE FUNCTION "public"."unesi_u_skladiste"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
 BEGIN
		UPDATE "Stanje_Skladista"
		SET "Kolicina"	= "Kolicina" + CAST(OLD."Kolicina" AS INTEGER)
		WHERE "KomponentaID" = OLD."KomponentaID";
		RETURN NEW;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for za_nabaviti
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."za_nabaviti"();
CREATE OR REPLACE FUNCTION "public"."za_nabaviti"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
	DECLARE kolZaNabav INTEGER;
	DECLARE minKol INTEGER;
 BEGIN
		SELECT "Komponenta"."Kolicina_Narudzbe" INTO kolZaNabav FROM "Komponenta" WHERE "ID_komponente" = OLD."KomponentaID";
		SELECT "Komponenta"."Min_kolicina" INTO minKol FROM "Komponenta" WHERE "ID_komponente" = OLD."KomponentaID";
		IF(NEW."Kolicina" < minKol) THEN
			INSERT INTO "Nabava_Komponenti"("Trenutno_stanje", "Kolicina_za_nabaviti", "KomponentaID", "Dostavljeno")
			VALUES(NEW."Kolicina", kolZaNabav, OLD."KomponentaID", 'false');
		END IF;
		RETURN NEW;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for zabiljezi_dostavu
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."zabiljezi_dostavu"();
CREATE OR REPLACE FUNCTION "public"."zabiljezi_dostavu"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
 BEGIN
		UPDATE "Nabava_Komponenti"
		SET "Dostavljeno"	= 'true'
		WHERE "ID_nabave" = OLD."NabavaID";
		RETURN NEW;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."id_evid_auto_ink"
OWNED BY "public"."Evidencija_Skladista"."ID_evidencije";
SELECT setval('"public"."id_evid_auto_ink"', 30, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."id_karak_auto_ink"
OWNED BY "public"."Karakteristike_Komponente"."ID_karakteristika";
SELECT setval('"public"."id_karak_auto_ink"', 17, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."id_komp_auto_ink"
OWNED BY "public"."Komponenta"."ID_komponente";
SELECT setval('"public"."id_komp_auto_ink"', 17, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."id_nabava_auto_ink"
OWNED BY "public"."Nabava_Komponenti"."ID_nabave";
SELECT setval('"public"."id_nabava_auto_ink"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."id_narudzb_auto_ink"
OWNED BY "public"."Narudzbenica"."ID_narudzbenice";
SELECT setval('"public"."id_narudzb_auto_ink"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."id_proizv_auto_ink"
OWNED BY "public"."Proizvodac_Komponente"."ID_proizvodaca";
SELECT setval('"public"."id_proizv_auto_ink"', 17, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."id_vrsta_auto_ink"
OWNED BY "public"."Vrsta_Komponente"."ID_vrste";
SELECT setval('"public"."id_vrsta_auto_ink"', 9, true);

-- ----------------------------
-- Primary Key structure for table Evidencija_Skladista
-- ----------------------------
ALTER TABLE "public"."Evidencija_Skladista" ADD CONSTRAINT "Evidencija_Skladista_pkey" PRIMARY KEY ("ID_evidencije");

-- ----------------------------
-- Primary Key structure for table Karakteristike_Komponente
-- ----------------------------
ALTER TABLE "public"."Karakteristike_Komponente" ADD CONSTRAINT "Karakteristike_Komponente_pkey" PRIMARY KEY ("ID_karakteristika");

-- ----------------------------
-- Primary Key structure for table Komponenta
-- ----------------------------
ALTER TABLE "public"."Komponenta" ADD CONSTRAINT "Komponenta_pkey" PRIMARY KEY ("ID_komponente");

-- ----------------------------
-- Primary Key structure for table Nabava_Komponenti
-- ----------------------------
ALTER TABLE "public"."Nabava_Komponenti" ADD CONSTRAINT "Nabava_Komponenti_pkey" PRIMARY KEY ("ID_nabave");

-- ----------------------------
-- Triggers structure for table Narudzbenica
-- ----------------------------
CREATE TRIGGER "zavrsi_dostavu_u_sk" AFTER DELETE ON "public"."Narudzbenica"
FOR EACH ROW
EXECUTE PROCEDURE "public"."unesi_u_skladiste"();
CREATE TRIGGER "zavrsi_nabavu" AFTER DELETE ON "public"."Narudzbenica"
FOR EACH ROW
EXECUTE PROCEDURE "public"."zabiljezi_dostavu"();

-- ----------------------------
-- Primary Key structure for table Narudzbenica
-- ----------------------------
ALTER TABLE "public"."Narudzbenica" ADD CONSTRAINT "Narudzbenica_pkey" PRIMARY KEY ("ID_narudzbenice");

-- ----------------------------
-- Primary Key structure for table Proizvodac_Komponente
-- ----------------------------
ALTER TABLE "public"."Proizvodac_Komponente" ADD CONSTRAINT "Proizvodac_Komponente_pkey" PRIMARY KEY ("ID_proizvodaca");

-- ----------------------------
-- Triggers structure for table Stanje_Skladista
-- ----------------------------
CREATE TRIGGER "evidentiraj" AFTER UPDATE ON "public"."Stanje_Skladista"
FOR EACH ROW
EXECUTE PROCEDURE "public"."evidentiraj_promjenu"();
CREATE TRIGGER "evidentiraj_brisanje_komp" AFTER DELETE ON "public"."Stanje_Skladista"
FOR EACH ROW
EXECUTE PROCEDURE "public"."evidentiraj_brisanje"();
CREATE TRIGGER "evidentiraj_nova_komp" AFTER INSERT ON "public"."Stanje_Skladista"
FOR EACH ROW
EXECUTE PROCEDURE "public"."evidentiraj_promjenu_nova_komp"();
CREATE TRIGGER "nabavi_komp" AFTER UPDATE ON "public"."Stanje_Skladista"
FOR EACH ROW
EXECUTE PROCEDURE "public"."za_nabaviti"();

-- ----------------------------
-- Primary Key structure for table Stanje_Skladista
-- ----------------------------
ALTER TABLE "public"."Stanje_Skladista" ADD CONSTRAINT "Stanje_Skladista_pkey" PRIMARY KEY ("KomponentaID");

-- ----------------------------
-- Uniques structure for table Vrsta_Komponente
-- ----------------------------
ALTER TABLE "public"."Vrsta_Komponente" ADD CONSTRAINT "Jedinstven" UNIQUE ("Naziv");

-- ----------------------------
-- Primary Key structure for table Vrsta_Komponente
-- ----------------------------
ALTER TABLE "public"."Vrsta_Komponente" ADD CONSTRAINT "Vrsta_Komponente_pkey" PRIMARY KEY ("ID_vrste");

-- ----------------------------
-- Foreign Keys structure for table Evidencija_Skladista
-- ----------------------------
ALTER TABLE "public"."Evidencija_Skladista" ADD CONSTRAINT "KomponentaID" FOREIGN KEY ("KomponentaID") REFERENCES "public"."Komponenta" ("ID_komponente") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table Komponenta
-- ----------------------------
ALTER TABLE "public"."Komponenta" ADD CONSTRAINT "KarakteristikeID" FOREIGN KEY ("KarakterisikeID") REFERENCES "public"."Karakteristike_Komponente" ("ID_karakteristika") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Komponenta" ADD CONSTRAINT "ProizvodacID" FOREIGN KEY ("ProizvodacID") REFERENCES "public"."Proizvodac_Komponente" ("ID_proizvodaca") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Komponenta" ADD CONSTRAINT "VrstaID" FOREIGN KEY ("VrstaID") REFERENCES "public"."Vrsta_Komponente" ("ID_vrste") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table Nabava_Komponenti
-- ----------------------------
ALTER TABLE "public"."Nabava_Komponenti" ADD CONSTRAINT "KomponentaID" FOREIGN KEY ("KomponentaID") REFERENCES "public"."Komponenta" ("ID_komponente") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table Narudzbenica
-- ----------------------------
ALTER TABLE "public"."Narudzbenica" ADD CONSTRAINT "KomponentaID" FOREIGN KEY ("KomponentaID") REFERENCES "public"."Komponenta" ("ID_komponente") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."Narudzbenica" ADD CONSTRAINT "NabavaID" FOREIGN KEY ("NabavaID") REFERENCES "public"."Nabava_Komponenti" ("ID_nabave") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table Stanje_Skladista
-- ----------------------------
ALTER TABLE "public"."Stanje_Skladista" ADD CONSTRAINT "KomponentaID" FOREIGN KEY ("KomponentaID") REFERENCES "public"."Komponenta" ("ID_komponente") ON DELETE NO ACTION ON UPDATE NO ACTION;
