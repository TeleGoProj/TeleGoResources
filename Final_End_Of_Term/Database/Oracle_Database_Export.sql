--------------------------------------------------------
--  File created - Thursday-August-13-2020   
--------------------------------------------------------
DROP TABLE "PHONE"."AREA" cascade constraints;
DROP TABLE "PHONE"."BOX" cascade constraints;
DROP TABLE "PHONE"."CABIN" cascade constraints;
DROP TABLE "PHONE"."CITY" cascade constraints;
DROP TABLE "PHONE"."COUNTRY" cascade constraints;
DROP TABLE "PHONE"."FEATURE" cascade constraints;
DROP TABLE "PHONE"."LANDLINE_PHONE" cascade constraints;
DROP TABLE "PHONE"."LOGISTICS" cascade constraints;
DROP TABLE "PHONE"."PHONE_USER" cascade constraints;
DROP TABLE "PHONE"."USER_FEATURE" cascade constraints;
DROP SEQUENCE "PHONE"."AREA_SEQUENCE";
DROP SEQUENCE "PHONE"."BOX_SEQUENCE";
DROP SEQUENCE "PHONE"."CABIN_SEQUENCE";
DROP SEQUENCE "PHONE"."CITY_SEQUENCE";
DROP SEQUENCE "PHONE"."COUNTRY_SEQUENCE";
DROP SEQUENCE "PHONE"."FEATURE_SEQUENCE";
DROP SEQUENCE "PHONE"."LANDLINE_PHONE_SEQUENCE";
DROP SEQUENCE "PHONE"."LOGISTICT_SEQUENCE";
DROP SEQUENCE "PHONE"."PHONE_USER_SEQUENCE";
DROP SEQUENCE "PHONE"."USER_FEAURE_SEQUENCE";
--------------------------------------------------------
--  DDL for Sequence AREA_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."AREA_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BOX_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."BOX_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CABIN_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."CABIN_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CITY_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."CITY_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1060 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COUNTRY_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."COUNTRY_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1040 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FEATURE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."FEATURE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LANDLINE_PHONE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."LANDLINE_PHONE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1020 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGISTICT_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."LOGISTICT_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1000 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PHONE_USER_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."PHONE_USER_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1060 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_FEAURE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "PHONE"."USER_FEAURE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1120 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AREA
--------------------------------------------------------

  CREATE TABLE "PHONE"."AREA" 
   (	"AREA_ID" NUMBER, 
	"AREA_NAME_EN" VARCHAR2(500 BYTE), 
	"AREA_NAME_AR" VARCHAR2(500 BYTE), 
	"CITY_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BOX
--------------------------------------------------------

  CREATE TABLE "PHONE"."BOX" 
   (	"BOX_ID" NUMBER, 
	"BOX_NAME" VARCHAR2(500 BYTE), 
	"CABIN_ID" NUMBER, 
	"LONGITUDE" FLOAT(126), 
	"LATITUDE" FLOAT(126), 
	"STREET_NAME" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CABIN
--------------------------------------------------------

  CREATE TABLE "PHONE"."CABIN" 
   (	"CABIN_ID" NUMBER, 
	"CABIN_NAME" VARCHAR2(500 BYTE), 
	"AREA_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CITY
--------------------------------------------------------

  CREATE TABLE "PHONE"."CITY" 
   (	"CITY_ID" NUMBER, 
	"COUNTRY_ID" NUMBER, 
	"NAME_EN" VARCHAR2(20 BYTE), 
	"NAME_AR" VARCHAR2(500 BYTE), 
	"CODE" VARCHAR2(100 BYTE), 
	"PHONE_CODE" VARCHAR2(5 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COUNTRY
--------------------------------------------------------

  CREATE TABLE "PHONE"."COUNTRY" 
   (	"COUNTRY_ID" NUMBER, 
	"NAME_EN" VARCHAR2(500 BYTE), 
	"NAME_AR" VARCHAR2(500 BYTE), 
	"CODE" VARCHAR2(100 BYTE), 
	"PHONE_CODE" VARCHAR2(5 CHAR) DEFAULT '+20', 
	"UI_STYLE" VARCHAR2(7 CHAR) DEFAULT 'eg'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FEATURE
--------------------------------------------------------

  CREATE TABLE "PHONE"."FEATURE" 
   (	"FEATURE_ID" NUMBER, 
	"NAME" VARCHAR2(500 BYTE), 
	"VALUE" VARCHAR2(500 BYTE), 
	"TYPE" VARCHAR2(500 BYTE), 
	"UI_STYLE" VARCHAR2(100 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LANDLINE_PHONE
--------------------------------------------------------

  CREATE TABLE "PHONE"."LANDLINE_PHONE" 
   (	"LANDLINE_PHONE_ID" NUMBER, 
	"PHONE_NUMBER" NUMBER, 
	"USER_ID" NUMBER, 
	"BOX_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOGISTICS
--------------------------------------------------------

  CREATE TABLE "PHONE"."LOGISTICS" 
   (	"LOGISTICS_ID" NUMBER, 
	"REQUESTER_USER_ID" NUMBER, 
	"DELIVERY_TO_USER_ID" NUMBER, 
	"DELIVERY_TO_AREA_ID" NUMBER, 
	"DELIVERY_TO_STREET" VARCHAR2(500 BYTE), 
	"REQUEST_DATE" DATE, 
	"STATUS" NUMBER, 
	"DELIVERY_COMMENTS" VARCHAR2(500 BYTE), 
	"GOODS_DESCRIPTION" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PHONE_USER
--------------------------------------------------------

  CREATE TABLE "PHONE"."PHONE_USER" 
   (	"USER_ID" NUMBER, 
	"LOGIN_NAME" VARCHAR2(500 BYTE), 
	"LOGIN_PASSWORD" VARCHAR2(500 BYTE), 
	"CREATION_DATE" DATE, 
	"F_NAME" VARCHAR2(500 BYTE), 
	"M_NAME" VARCHAR2(500 BYTE), 
	"L_NAME" VARCHAR2(500 BYTE), 
	"ORGANIZATION_TYPE" NUMBER DEFAULT 1, 
	"EMAIL" VARCHAR2(500 BYTE), 
	"ADDRESS" VARCHAR2(4000 BYTE), 
	"MOBILE_PHONE" VARCHAR2(100 BYTE), 
	"ORGANIZATION_NAME" VARCHAR2(500 BYTE), 
	"USER_STATUS" NUMBER, 
	"USER_TYPE" NUMBER, 
	"IMAGE" BLOB, 
	"ABOUT_ME" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("IMAGE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("ABOUT_ME") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table USER_FEATURE
--------------------------------------------------------

  CREATE TABLE "PHONE"."USER_FEATURE" 
   (	"USER_FEATURE_ID" NUMBER, 
	"USER_ID" NUMBER, 
	"FEATURE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into PHONE.AREA
SET DEFINE OFF;
Insert into PHONE.AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (1,'Maadi','المعادي',1);
Insert into PHONE.AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (2,'Nasr City','مدينة نصر',1);
Insert into PHONE.AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (3,'Gleem','جليم',2);
Insert into PHONE.AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (4,'Asafra','العصافرة',2);
Insert into PHONE.AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (5,'Washington Center','وسط واشنطن',3);
Insert into PHONE.AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (6,'Washington X','واشنطون اكس',3);
Insert into PHONE.AREA (AREA_ID,AREA_NAME_EN,AREA_NAME_AR,CITY_ID) values (7,'Paris_Area_1','باريس الحي الاول',1020);
REM INSERTING into PHONE.BOX
SET DEFINE OFF;
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (1,'454',1,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (2,'4891',1,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (3,'8918',2,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (4,'7812',2,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (5,'0091',3,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (6,'Ko10',4,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (7,'9200',5,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (8,'1234',6,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (9,'2965',6,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (10,'7777',7,null,null,null);
Insert into PHONE.BOX (BOX_ID,BOX_NAME,CABIN_ID,LONGITUDE,LATITUDE,STREET_NAME) values (11,'Paris_Box1',8,null,null,null);
REM INSERTING into PHONE.CABIN
SET DEFINE OFF;
Insert into PHONE.CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (1,'Cabin Maadi 1',1);
Insert into PHONE.CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (2,'Cabin Maadi 2',1);
Insert into PHONE.CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (3,'Cabin Nasr City 1',2);
Insert into PHONE.CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (4,'Cabin Nasr City 2',2);
Insert into PHONE.CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (5,'Cabin Gleem 1',3);
Insert into PHONE.CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (6,'Cabin Asafra 1',4);
Insert into PHONE.CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (7,'Cabin Waishngton 1',5);
Insert into PHONE.CABIN (CABIN_ID,CABIN_NAME,AREA_ID) values (8,'Cabin Paris 1',7);
REM INSERTING into PHONE.CITY
SET DEFINE OFF;
Insert into PHONE.CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (1,1,'Cairo','القاهرة',null,null);
Insert into PHONE.CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (2,1,'Alexandria','الإسكندرية',null,null);
Insert into PHONE.CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (3,2,'New Yourk','نيويورك',null,'01');
Insert into PHONE.CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (4,2,'Washington','واشنطون',null,'02');
Insert into PHONE.CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (1020,4,'Paris','باريس',null,'055');
Insert into PHONE.CITY (CITY_ID,COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE) values (1040,1,'Tanata','طنطا',null,null);
REM INSERTING into PHONE.COUNTRY
SET DEFINE OFF;
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (1,'Egypt','مصر','EG','+20','eg');
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (2,'United States','الولايات المتحدة','USA','+1','us');
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (3,'India','الهند','IN','+91','in');
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (4,'France','فرنسا','FR','+33','fr');
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (5,'Germany','المانيا','GR','+49','de');
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (6,'Russia','روسيا','RU','+20','eg');
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (1000,'United Kingdom','بريطانيا','UK','+44','gb');
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (7,'Mixo','لمكسيك','MX','+99','mx');
Insert into PHONE.COUNTRY (COUNTRY_ID,NAME_EN,NAME_AR,CODE,PHONE_CODE,UI_STYLE) values (1020,'Nigeria','نيجيريا','NG','+234','ng');
REM INSERTING into PHONE.FEATURE
SET DEFINE OFF;
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5001,'photography',null,null,'camera');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5002,'football',null,null,'baseball-ball');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5003,'reading',null,null,'book-reader');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5004,'shopping',null,null,'shopping-cart');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5005,'traveling',null,null,'plane');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5006,'pets',null,null,'cat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5007,'food',null,null,'hamburger');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5008,'fashion',null,null,'tshirt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5009,'fitness',null,null,'dumbbell');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5010,'safari',null,null,'campground');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5011,'tennis',null,null,'table-tennis');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1,'fa-500px',null,null,'fa-500px');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (2,'ccessible-icon',null,null,'ccessible-icon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (3,'ccusoft',null,null,'ccusoft');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (4,'cquisitions-incorporated',null,null,'cquisitions-incorporated');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (5,'d',null,null,'d');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (6,'ddress-book',null,null,'ddress-book');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (7,'ddress-card',null,null,'ddress-card');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (8,'djust',null,null,'djust');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (9,'dn',null,null,'dn');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (10,'dobe',null,null,'dobe');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (11,'dversal',null,null,'dversal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (12,'ffiliatetheme',null,null,'ffiliatetheme');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (13,'ir-freshener',null,null,'ir-freshener');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (14,'irbnb',null,null,'irbnb');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (15,'lgolia',null,null,'lgolia');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (16,'lign-center',null,null,'lign-center');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (17,'lign-justify',null,null,'lign-justify');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (18,'lign-left',null,null,'lign-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (19,'lign-right',null,null,'lign-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (20,'lipay',null,null,'lipay');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (21,'llergies',null,null,'llergies');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (22,'mazon',null,null,'mazon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (23,'mazon-pay',null,null,'mazon-pay');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (24,'mbulance',null,null,'mbulance');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (25,'merican-sign-language-interpreting',null,null,'merican-sign-language-interpreting');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (26,'milia',null,null,'milia');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (27,'nchor',null,null,'nchor');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (28,'ndroid',null,null,'ndroid');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (29,'ngellist',null,null,'ngellist');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (30,'ngle-double-down',null,null,'ngle-double-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (31,'ngle-double-left',null,null,'ngle-double-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (32,'ngle-double-right',null,null,'ngle-double-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (33,'ngle-double-up',null,null,'ngle-double-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (34,'ngle-down',null,null,'ngle-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (35,'ngle-left',null,null,'ngle-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (36,'ngle-right',null,null,'ngle-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (37,'ngle-up',null,null,'ngle-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (38,'ngry',null,null,'ngry');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (39,'ngrycreative',null,null,'ngrycreative');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (40,'ngular',null,null,'ngular');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (41,'nkh',null,null,'nkh');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (42,'pp-store',null,null,'pp-store');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (43,'pp-store-ios',null,null,'pp-store-ios');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (44,'pper',null,null,'pper');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (45,'pple',null,null,'pple');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (46,'pple-alt',null,null,'pple-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (47,'pple-pay',null,null,'pple-pay');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (48,'rchive',null,null,'rchive');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (49,'rchway',null,null,'rchway');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (50,'rrow-alt-circle-down',null,null,'rrow-alt-circle-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (51,'rrow-alt-circle-left',null,null,'rrow-alt-circle-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (52,'rrow-alt-circle-right',null,null,'rrow-alt-circle-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (53,'rrow-alt-circle-up',null,null,'rrow-alt-circle-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (54,'rrow-circle-down',null,null,'rrow-circle-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (55,'rrow-circle-left',null,null,'rrow-circle-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (56,'rrow-circle-right',null,null,'rrow-circle-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (57,'rrow-circle-up',null,null,'rrow-circle-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (58,'rrow-down',null,null,'rrow-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (59,'rrow-left',null,null,'rrow-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (60,'rrow-right',null,null,'rrow-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (61,'rrow-up',null,null,'rrow-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (62,'rrows-alt',null,null,'rrows-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (64,'rrows-alt-v',null,null,'rrows-alt-v');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (67,'sterisk',null,null,'sterisk');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (68,'symmetrik',null,null,'symmetrik');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (69,'t',null,null,'t');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (70,'tlas',null,null,'tlas');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (72,'tom',null,null,'tom');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (75,'utoprefixer',null,null,'utoprefixer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (77,'viato',null,null,'viato');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (82,'ackspace',null,null,'ackspace');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (84,'acon',null,null,'acon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (86,'an',null,null,'an');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (88,'andcamp',null,null,'andcamp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (93,'ath',null,null,'ath');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (94,'attery-empty',null,null,'attery-empty');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (96,'attery-half',null,null,'attery-half');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (99,'attle-net',null,null,'attle-net');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (100,'ed',null,null,'ed');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (101,'eer',null,null,'eer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (102,'ehance',null,null,'ehance');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (104,'ell',null,null,'ell');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (106,'ezier-curve',null,null,'ezier-curve');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (110,'inoculars',null,null,'inoculars');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (113,'itbucket',null,null,'itbucket');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (114,'itcoin',null,null,'itcoin');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (118,'lender',null,null,'lender');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (120,'lind',null,null,'lind');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (121,'log',null,null,'log');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (123,'logger-b',null,null,'logger-b');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (126,'old',null,null,'old');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (127,'olt',null,null,'olt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (129,'one',null,null,'one');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (134,'ook-open',null,null,'ook-open');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (136,'ookmark',null,null,'ookmark');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (138,'owling-ball',null,null,'owling-ball');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (141,'oxes',null,null,'oxes');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (143,'rain',null,null,'rain');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (147,'roadcast-tower',null,null,'roadcast-tower');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (148,'room',null,null,'room');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (149,'rush',null,null,'rush');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (152,'ug',null,null,'ug');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (155,'ullseye',null,null,'ullseye');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (158,'us',null,null,'us');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (159,'us-alt',null,null,'us-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (161,'uysellads',null,null,'uysellads');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (163,'alendar',null,null,'alendar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (166,'alendar-day',null,null,'alendar-day');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (168,'alendar-plus',null,null,'alendar-plus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (170,'alendar-week',null,null,'alendar-week');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (173,'ampground',null,null,'ampground');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (175,'andy-cane',null,null,'andy-cane');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (176,'annabis',null,null,'annabis');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (178,'ar',null,null,'ar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (181,'ar-crash',null,null,'ar-crash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (184,'aret-left',null,null,'aret-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (187,'aret-square-left',null,null,'aret-square-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (189,'aret-square-up',null,null,'aret-square-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (190,'aret-up',null,null,'aret-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (193,'art-plus',null,null,'art-plus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (195,'at',null,null,'at');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (197,'c-amex',null,null,'c-amex');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (198,'c-apple-pay',null,null,'c-apple-pay');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (200,'c-discover',null,null,'c-discover');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (203,'c-paypal',null,null,'c-paypal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (205,'c-visa',null,null,'c-visa');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (207,'entos',null,null,'entos');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (209,'hair',null,null,'hair');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (212,'harging-station',null,null,'harging-station');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (214,'hart-bar',null,null,'hart-bar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (216,'hart-pie',null,null,'hart-pie');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (219,'heck-double',null,null,'heck-double');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (221,'heese',null,null,'heese');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (224,'hess-board',null,null,'hess-board');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (227,'hess-pawn',null,null,'hess-pawn');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (229,'hess-rook',null,null,'hess-rook');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (231,'hevron-circle-left',null,null,'hevron-circle-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (233,'hevron-circle-up',null,null,'hevron-circle-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (236,'hevron-right',null,null,'hevron-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (238,'hild',null,null,'hild');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (239,'hrome',null,null,'hrome');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (241,'hurch',null,null,'hurch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (244,'ity',null,null,'ity');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (246,'lipboard',null,null,'lipboard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (248,'lipboard-list',null,null,'lipboard-list');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (249,'lock',null,null,'lock');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (252,'loud',null,null,'loud');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (254,'loud-meatball',null,null,'loud-meatball');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (256,'loud-moon-rain',null,null,'loud-moon-rain');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (259,'loud-sun',null,null,'loud-sun');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (260,'loud-sun-rain',null,null,'loud-sun-rain');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (262,'loudscale',null,null,'loudscale');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (265,'ocktail',null,null,'ocktail');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (266,'ode',null,null,'ode');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (268,'odepen',null,null,'odepen');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (270,'offee',null,null,'offee');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (274,'columns',null,null,'columns');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (277,'comment-dollar',null,null,'comment-dollar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (280,'comment-slash',null,null,'comment-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (283,'compact-disc',null,null,'compact-disc');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (284,'compass',null,null,'compass');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (287,'concierge-bell',null,null,'concierge-bell');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (288,'confluence',null,null,'confluence');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (290,'contao',null,null,'contao');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (293,'copy',null,null,'copy');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (294,'copyright',null,null,'copyright');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (298,'creative-commons-by',null,null,'creative-commons-by');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (301,'creative-commons-nc-jp',null,null,'creative-commons-nc-jp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (303,'creative-commons-pd',null,null,'creative-commons-pd');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (305,'creative-commons-remix',null,null,'creative-commons-remix');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (308,'creative-commons-sampling-plus',null,null,'creative-commons-sampling-plus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (310,'creative-commons-zero',null,null,'creative-commons-zero');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (311,'credit-card',null,null,'credit-card');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (313,'crop',null,null,'crop');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (315,'cross',null,null,'cross');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (317,'crow',null,null,'crow');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (319,'crutch',null,null,'crutch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (322,'cube',null,null,'cube');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (324,'cut',null,null,'cut');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (326,'d-and-d',null,null,'d-and-d');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (328,'dashcube',null,null,'dashcube');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (330,'deaf',null,null,'deaf');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (332,'democrat',null,null,'democrat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (335,'desktop',null,null,'desktop');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (338,'dharmachakra',null,null,'dharmachakra');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (342,'dice',null,null,'dice');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (344,'dice-d6',null,null,'dice-d6');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (346,'dice-four',null,null,'dice-four');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (349,'dice-three',null,null,'dice-three');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (351,'digg',null,null,'digg');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (354,'directions',null,null,'directions');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (355,'discord',null,null,'discord');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (357,'divide',null,null,'divide');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (358,'dizzy',null,null,'dizzy');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (362,'dog',null,null,'dog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (364,'dolly',null,null,'dolly');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (366,'donate',null,null,'donate');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (367,'door-closed',null,null,'door-closed');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (368,'door-open',null,null,'door-open');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (369,'dot-circle',null,null,'dot-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (370,'dove',null,null,'dove');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (371,'download',null,null,'download');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (372,'draft2digital',null,null,'draft2digital');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (373,'drafting-compass',null,null,'drafting-compass');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (374,'dragon',null,null,'dragon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (375,'draw-polygon',null,null,'draw-polygon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (376,'dribbble',null,null,'dribbble');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (377,'dribbble-square',null,null,'dribbble-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (378,'dropbox',null,null,'dropbox');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (379,'drum',null,null,'drum');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (380,'drum-steelpan',null,null,'drum-steelpan');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (381,'drumstick-bite',null,null,'drumstick-bite');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (382,'drupal',null,null,'drupal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (383,'dumbbell',null,null,'dumbbell');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (384,'dumpster',null,null,'dumpster');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (385,'dumpster-fire',null,null,'dumpster-fire');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (386,'dungeon',null,null,'dungeon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (387,'dyalog',null,null,'dyalog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (388,'earlybirds',null,null,'earlybirds');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (389,'ebay',null,null,'ebay');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (390,'edge',null,null,'edge');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (391,'edit',null,null,'edit');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (392,'egg',null,null,'egg');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (393,'eject',null,null,'eject');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (394,'elementor',null,null,'elementor');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (395,'ellipsis-h',null,null,'ellipsis-h');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (396,'ellipsis-v',null,null,'ellipsis-v');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (397,'ello',null,null,'ello');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (398,'ember',null,null,'ember');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (399,'empire',null,null,'empire');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (400,'envelope',null,null,'envelope');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (401,'envelope-open',null,null,'envelope-open');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (402,'envelope-open-text',null,null,'envelope-open-text');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (403,'envelope-square',null,null,'envelope-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (404,'envira',null,null,'envira');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (405,'equals',null,null,'equals');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (406,'eraser',null,null,'eraser');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (407,'erlang',null,null,'erlang');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (408,'ethereum',null,null,'ethereum');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (409,'ethernet',null,null,'ethernet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (410,'etsy',null,null,'etsy');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (411,'euro-sign',null,null,'euro-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (412,'evernote',null,null,'evernote');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (413,'exchange-alt',null,null,'exchange-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (414,'exclamation',null,null,'exclamation');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (415,'exclamation-circle',null,null,'exclamation-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (416,'exclamation-triangle',null,null,'exclamation-triangle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (417,'expand',null,null,'expand');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (418,'expand-arrows-alt',null,null,'expand-arrows-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (419,'expeditedssl',null,null,'expeditedssl');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (420,'external-link-alt',null,null,'external-link-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (421,'external-link-square-alt',null,null,'external-link-square-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (422,'eye',null,null,'eye');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (423,'eye-dropper',null,null,'eye-dropper');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (424,'eye-slash',null,null,'eye-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (425,'facebook',null,null,'facebook');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (426,'facebook-f',null,null,'facebook-f');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (427,'facebook-messenger',null,null,'facebook-messenger');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (428,'facebook-square',null,null,'facebook-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (429,'fantasy-flight-games',null,null,'fantasy-flight-games');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (431,'fast-forward',null,null,'fast-forward');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (432,'fax',null,null,'fax');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (435,'fedex',null,null,'fedex');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (436,'fedora',null,null,'fedora');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (439,'figma',null,null,'figma');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (440,'file',null,null,'file');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (443,'file-audio',null,null,'file-audio');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (445,'file-contract',null,null,'file-contract');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (448,'file-excel',null,null,'file-excel');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (450,'file-image',null,null,'file-image');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (452,'file-invoice',null,null,'file-invoice');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (454,'file-medical',null,null,'file-medical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (456,'file-pdf',null,null,'file-pdf');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (458,'file-prescription',null,null,'file-prescription');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (460,'file-upload',null,null,'file-upload');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (463,'fill',null,null,'fill');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (465,'film',null,null,'film');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (466,'filter',null,null,'filter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (468,'fire',null,null,'fire');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (471,'firefox',null,null,'firefox');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (472,'first-aid',null,null,'first-aid');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (475,'firstdraft',null,null,'firstdraft');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (476,'fish',null,null,'fish');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (478,'flag',null,null,'flag');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (480,'flag-usa',null,null,'flag-usa');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (481,'flask',null,null,'flask');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (483,'flipboard',null,null,'flipboard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (485,'fly',null,null,'fly');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (488,'folder-open',null,null,'folder-open');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (490,'font',null,null,'font');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (493,'font-awesome-flag',null,null,'font-awesome-flag');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (495,'fonticons',null,null,'fonticons');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (496,'fonticons-fi',null,null,'fonticons-fi');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (498,'fort-awesome',null,null,'fort-awesome');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (500,'forumbee',null,null,'forumbee');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (503,'free-code-camp',null,null,'free-code-camp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (505,'frog',null,null,'frog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (508,'fulcrum',null,null,'fulcrum');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (510,'futbol',null,null,'futbol');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (512,'galactic-senate',null,null,'galactic-senate');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (514,'gas-pump',null,null,'gas-pump');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (516,'gem',null,null,'gem');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (519,'gg',null,null,'gg');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (520,'gg-circle',null,null,'gg-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (523,'gifts',null,null,'gifts');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (526,'github',null,null,'github');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (529,'gitkraken',null,null,'gitkraken');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (530,'gitlab',null,null,'gitlab');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (533,'glass-martini',null,null,'glass-martini');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (535,'glass-whiskey',null,null,'glass-whiskey');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (537,'glide',null,null,'glide');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (541,'globe-americas',null,null,'globe-americas');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (544,'gofore',null,null,'gofore');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (545,'golf-ball',null,null,'golf-ball');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (548,'google',null,null,'google');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (550,'google-play',null,null,'google-play');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (552,'google-plus-g',null,null,'google-plus-g');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (554,'google-wallet',null,null,'google-wallet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (557,'gratipay',null,null,'gratipay');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (558,'grav',null,null,'grav');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (561,'grimace',null,null,'grimace');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (562,'grin',null,null,'grin');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (563,'grin-alt',null,null,'grin-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (566,'grin-hearts',null,null,'grin-hearts');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (568,'grin-squint-tears',null,null,'grin-squint-tears');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (571,'grin-tongue',null,null,'grin-tongue');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (573,'grin-tongue-wink',null,null,'grin-tongue-wink');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (576,'grip-lines',null,null,'grip-lines');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (578,'grip-vertical',null,null,'grip-vertical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (579,'gripfire',null,null,'gripfire');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (581,'guitar',null,null,'guitar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (586,'hackerrank',null,null,'hackerrank');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (587,'hamburger',null,null,'hamburger');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (588,'hammer',null,null,'hammer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (592,'hand-holding-usd',null,null,'hand-holding-usd');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (593,'hand-lizard',null,null,'hand-lizard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (595,'hand-paper',null,null,'hand-paper');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (598,'hand-point-left',null,null,'hand-point-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (600,'hand-point-up',null,null,'hand-point-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (602,'hand-rock',null,null,'hand-rock');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (604,'hand-spock',null,null,'hand-spock');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (605,'hands',null,null,'hands');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (607,'handshake',null,null,'handshake');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (610,'hashtag',null,null,'hashtag');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (612,'haykal',null,null,'haykal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (616,'headphones-alt',null,null,'headphones-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (618,'heart',null,null,'heart');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (620,'heartbeat',null,null,'heartbeat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (623,'hiking',null,null,'hiking');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (624,'hippo',null,null,'hippo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (627,'history',null,null,'history');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (629,'holly-berry',null,null,'holly-berry');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (632,'hornbill',null,null,'hornbill');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (635,'hospital',null,null,'hospital');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (638,'hot-tub',null,null,'hot-tub');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (639,'hotdog',null,null,'hotdog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (640,'hotel',null,null,'hotel');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (644,'hourglass-half',null,null,'hourglass-half');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (646,'house-damage',null,null,'house-damage');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (648,'hryvnia',null,null,'hryvnia');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (651,'i-cursor',null,null,'i-cursor');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (654,'id-badge',null,null,'id-badge');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (657,'igloo',null,null,'igloo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (658,'image',null,null,'image');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (660,'imdb',null,null,'imdb');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (664,'infinity',null,null,'infinity');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (667,'instagram',null,null,'instagram');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (670,'invision',null,null,'invision');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (671,'ioxhost',null,null,'ioxhost');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (672,'italic',null,null,'italic');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (676,'java',null,null,'java');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (677,'jedi',null,null,'jedi');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (679,'jenkins',null,null,'jenkins');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (681,'joget',null,null,'joget');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (685,'js',null,null,'js');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (686,'js-square',null,null,'js-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (688,'kaaba',null,null,'kaaba');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (690,'key',null,null,'key');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (693,'keycdn',null,null,'keycdn');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (696,'kickstarter-k',null,null,'kickstarter-k');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (697,'kiss',null,null,'kiss');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (700,'kiwi-bird',null,null,'kiwi-bird');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (701,'korvue',null,null,'korvue');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (704,'laptop',null,null,'laptop');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (707,'laravel',null,null,'laravel');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (708,'lastfm',null,null,'lastfm');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (710,'laugh',null,null,'laugh');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (711,'laugh-beam',null,null,'laugh-beam');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (714,'layer-group',null,null,'layer-group');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (715,'leaf',null,null,'leaf');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (718,'less',null,null,'less');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (721,'level-down-alt',null,null,'level-down-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (723,'life-ring',null,null,'life-ring');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (725,'line',null,null,'line');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (726,'link',null,null,'link');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (729,'linode',null,null,'linode');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (730,'linux',null,null,'linux');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (732,'list',null,null,'list');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (735,'list-ul',null,null,'list-ul');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (737,'lock',null,null,'lock');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (740,'long-arrow-alt-left',null,null,'long-arrow-alt-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (741,'long-arrow-alt-right',null,null,'long-arrow-alt-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (742,'long-arrow-alt-up',null,null,'long-arrow-alt-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (743,'low-vision',null,null,'low-vision');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (744,'luggage-cart',null,null,'luggage-cart');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (745,'lyft',null,null,'lyft');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (746,'magento',null,null,'magento');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (747,'magic',null,null,'magic');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (748,'magnet',null,null,'magnet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (749,'mail-bulk',null,null,'mail-bulk');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (750,'mailchimp',null,null,'mailchimp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (751,'male',null,null,'male');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (752,'mandalorian',null,null,'mandalorian');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (753,'map',null,null,'map');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (754,'map-marked',null,null,'map-marked');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (755,'map-marked-alt',null,null,'map-marked-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (756,'map-marker',null,null,'map-marker');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (757,'map-marker-alt',null,null,'map-marker-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (758,'map-pin',null,null,'map-pin');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (759,'map-signs',null,null,'map-signs');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (760,'markdown',null,null,'markdown');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (761,'marker',null,null,'marker');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (762,'mars',null,null,'mars');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (763,'mars-double',null,null,'mars-double');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (764,'mars-stroke',null,null,'mars-stroke');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (765,'mars-stroke-h',null,null,'mars-stroke-h');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (766,'mars-stroke-v',null,null,'mars-stroke-v');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (767,'mask',null,null,'mask');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (768,'mastodon',null,null,'mastodon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (769,'maxcdn',null,null,'maxcdn');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (770,'medal',null,null,'medal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (771,'medapps',null,null,'medapps');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (772,'medium',null,null,'medium');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (773,'medium-m',null,null,'medium-m');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (774,'medkit',null,null,'medkit');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (775,'medrt',null,null,'medrt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (776,'meetup',null,null,'meetup');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (777,'megaport',null,null,'megaport');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (778,'meh',null,null,'meh');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (779,'meh-blank',null,null,'meh-blank');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (780,'meh-rolling-eyes',null,null,'meh-rolling-eyes');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (781,'memory',null,null,'memory');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (782,'mendeley',null,null,'mendeley');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (783,'menorah',null,null,'menorah');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (784,'mercury',null,null,'mercury');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (785,'meteor',null,null,'meteor');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (786,'microchip',null,null,'microchip');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (787,'microphone',null,null,'microphone');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (788,'microphone-alt',null,null,'microphone-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (789,'microphone-alt-slash',null,null,'microphone-alt-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (790,'microphone-slash',null,null,'microphone-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (791,'microscope',null,null,'microscope');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (792,'microsoft',null,null,'microsoft');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (793,'minus',null,null,'minus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (794,'minus-circle',null,null,'minus-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (795,'minus-square',null,null,'minus-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (796,'mitten',null,null,'mitten');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (797,'mix',null,null,'mix');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (798,'mixcloud',null,null,'mixcloud');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (799,'mizuni',null,null,'mizuni');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (800,'mobile',null,null,'mobile');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (801,'mobile-alt',null,null,'mobile-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (802,'modx',null,null,'modx');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (803,'monero',null,null,'monero');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (804,'money-bill',null,null,'money-bill');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (805,'money-bill-alt',null,null,'money-bill-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (806,'money-bill-wave',null,null,'money-bill-wave');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (807,'money-bill-wave-alt',null,null,'money-bill-wave-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (809,'money-check-alt',null,null,'money-check-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (811,'moon',null,null,'moon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (813,'mosque',null,null,'mosque');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (815,'mountain',null,null,'mountain');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (817,'mug-hot',null,null,'mug-hot');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (820,'neos',null,null,'neos');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (822,'neuter',null,null,'neuter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (824,'nimblr',null,null,'nimblr');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (826,'node',null,null,'node');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (827,'node-js',null,null,'node-js');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (830,'npm',null,null,'npm');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (831,'ns8',null,null,'ns8');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (833,'object-group',null,null,'object-group');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (835,'odnoklassniki',null,null,'odnoklassniki');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (837,'oil-can',null,null,'oil-can');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (839,'om',null,null,'om');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (840,'opencart',null,null,'opencart');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (841,'openid',null,null,'openid');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (844,'osi',null,null,'osi');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (845,'otter',null,null,'otter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (847,'page4',null,null,'page4');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (849,'pager',null,null,'pager');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (852,'palette',null,null,'palette');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (853,'palfed',null,null,'palfed');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (856,'paperclip',null,null,'paperclip');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (858,'paragraph',null,null,'paragraph');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (860,'passport',null,null,'passport');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (862,'paste',null,null,'paste');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (864,'pause',null,null,'pause');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (866,'paw',null,null,'paw');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (868,'peace',null,null,'peace');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (871,'pen-fancy',null,null,'pen-fancy');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (874,'pencil-alt',null,null,'pencil-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (877,'people-carry',null,null,'people-carry');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (879,'percent',null,null,'percent');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (881,'periscope',null,null,'periscope');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (883,'phabricator',null,null,'phabricator');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (885,'phoenix-squadron',null,null,'phoenix-squadron');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (889,'phone-volume',null,null,'phone-volume');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (890,'php',null,null,'php');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (893,'pied-piper-hat',null,null,'pied-piper-hat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (895,'piggy-bank',null,null,'piggy-bank');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (896,'pills',null,null,'pills');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (900,'pizza-slice',null,null,'pizza-slice');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (901,'place-of-worship',null,null,'place-of-worship');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (905,'play',null,null,'play');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (906,'play-circle',null,null,'play-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (908,'plug',null,null,'plug');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (909,'plus',null,null,'plus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (911,'plus-square',null,null,'plus-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (913,'poll',null,null,'poll');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (917,'poop',null,null,'poop');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (919,'pound-sign',null,null,'pound-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (921,'pray',null,null,'pray');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (923,'prescription',null,null,'prescription');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (926,'print',null,null,'print');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (927,'procedures',null,null,'procedures');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (928,'product-hunt',null,null,'product-hunt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (930,'pushed',null,null,'pushed');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (932,'python',null,null,'python');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (933,'qq',null,null,'qq');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (935,'question',null,null,'question');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (937,'quidditch',null,null,'quidditch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (939,'quora',null,null,'quora');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (942,'quran',null,null,'quran');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (943,'r-project',null,null,'r-project');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (946,'rainbow',null,null,'rainbow');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (947,'random',null,null,'random');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (949,'ravelry',null,null,'ravelry');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (952,'readme',null,null,'readme');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (953,'rebel',null,null,'rebel');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (956,'red-river',null,null,'red-river');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (959,'reddit-square',null,null,'reddit-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (963,'registered',null,null,'registered');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (967,'replyd',null,null,'replyd');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (969,'researchgate',null,null,'researchgate');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (971,'restroom',null,null,'restroom');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (973,'rev',null,null,'rev');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (976,'road',null,null,'road');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (980,'rockrms',null,null,'rockrms');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (981,'route',null,null,'route');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (984,'ruble-sign',null,null,'ruble-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (988,'ruler-vertical',null,null,'ruler-vertical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (989,'running',null,null,'running');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (991,'sad-cry',null,null,'sad-cry');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (993,'safari',null,null,'safari');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (995,'sass',null,null,'sass');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (998,'save',null,null,'save');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (999,'schlix',null,null,'schlix');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1000,'school',null,null,'school');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1002,'scribd',null,null,'scribd');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1005,'search',null,null,'search');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1008,'search-minus',null,null,'search-minus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1009,'search-plus',null,null,'search-plus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1012,'sellcast',null,null,'sellcast');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1014,'server',null,null,'server');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1016,'shapes',null,null,'shapes');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1020,'share-square',null,null,'share-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1021,'shekel-sign',null,null,'shekel-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1023,'ship',null,null,'ship');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1025,'shirtsinbulk',null,null,'shirtsinbulk');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1028,'shopping-basket',null,null,'shopping-basket');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1030,'shopware',null,null,'shopware');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1033,'sign',null,null,'sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1035,'sign-language',null,null,'sign-language');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1037,'signal',null,null,'signal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1039,'sim-card',null,null,'sim-card');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1041,'sistrix',null,null,'sistrix');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1043,'sith',null,null,'sith');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1045,'sketch',null,null,'sketch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1048,'skull',null,null,'skull');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1050,'skyatlas',null,null,'skyatlas');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1051,'skype',null,null,'skype');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1054,'slash',null,null,'slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1055,'sleigh',null,null,'sleigh');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1058,'smile',null,null,'smile');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1060,'smile-wink',null,null,'smile-wink');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1061,'smog',null,null,'smog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1064,'sms',null,null,'sms');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1065,'snapchat',null,null,'snapchat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1068,'snowboarding',null,null,'snowboarding');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1069,'snowflake',null,null,'snowflake');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1072,'socks',null,null,'socks');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1074,'sort',null,null,'sort');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1076,'sort-alpha-up',null,null,'sort-alpha-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1078,'sort-amount-up',null,null,'sort-amount-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1081,'sort-numeric-up',null,null,'sort-numeric-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1082,'sort-up',null,null,'sort-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1085,'spa',null,null,'spa');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1087,'speakap',null,null,'speakap');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1089,'spider',null,null,'spider');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1090,'spinner',null,null,'spinner');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1092,'spotify',null,null,'spotify');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1094,'square',null,null,'square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1097,'squarespace',null,null,'squarespace');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1099,'stack-overflow',null,null,'stack-overflow');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1101,'star',null,null,'star');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1103,'star-half',null,null,'star-half');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1105,'star-of-david',null,null,'star-of-david');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1107,'staylinked',null,null,'staylinked');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1110,'steam-symbol',null,null,'steam-symbol');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1113,'stethoscope',null,null,'stethoscope');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1115,'sticky-note',null,null,'sticky-note');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1116,'stop',null,null,'stop');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1119,'store',null,null,'store');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1121,'strava',null,null,'strava');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1122,'stream',null,null,'stream');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1124,'strikethrough',null,null,'strikethrough');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1125,'stripe',null,null,'stripe');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1126,'stripe-s',null,null,'stripe-s');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1127,'stroopwafel',null,null,'stroopwafel');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1128,'studiovinari',null,null,'studiovinari');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1129,'stumbleupon',null,null,'stumbleupon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1130,'stumbleupon-circle',null,null,'stumbleupon-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1131,'subscript',null,null,'subscript');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1132,'subway',null,null,'subway');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1133,'suitcase',null,null,'suitcase');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1134,'suitcase-rolling',null,null,'suitcase-rolling');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1135,'sun',null,null,'sun');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1136,'superpowers',null,null,'superpowers');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1137,'superscript',null,null,'superscript');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1138,'supple',null,null,'supple');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1139,'surprise',null,null,'surprise');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1140,'suse',null,null,'suse');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1141,'swatchbook',null,null,'swatchbook');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1142,'swimmer',null,null,'swimmer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1143,'swimming-pool',null,null,'swimming-pool');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1144,'symfony',null,null,'symfony');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1145,'synagogue',null,null,'synagogue');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1146,'sync',null,null,'sync');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1147,'sync-alt',null,null,'sync-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1148,'syringe',null,null,'syringe');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1149,'table',null,null,'table');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1150,'table-tennis',null,null,'table-tennis');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1151,'tablet',null,null,'tablet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1152,'tablet-alt',null,null,'tablet-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1153,'tablets',null,null,'tablets');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1154,'tachometer-alt',null,null,'tachometer-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1155,'tag',null,null,'tag');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1156,'tags',null,null,'tags');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1157,'tape',null,null,'tape');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1158,'tasks',null,null,'tasks');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1159,'taxi',null,null,'taxi');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1160,'teamspeak',null,null,'teamspeak');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1161,'teeth',null,null,'teeth');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1162,'teeth-open',null,null,'teeth-open');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1163,'telegram',null,null,'telegram');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1164,'telegram-plane',null,null,'telegram-plane');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1165,'temperature-high',null,null,'temperature-high');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1166,'temperature-low',null,null,'temperature-low');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1167,'tencent-weibo',null,null,'tencent-weibo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1168,'tenge',null,null,'tenge');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1169,'terminal',null,null,'terminal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1170,'text-height',null,null,'text-height');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1171,'text-width',null,null,'text-width');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1172,'th',null,null,'th');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1173,'th-large',null,null,'th-large');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1174,'th-list',null,null,'th-list');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1175,'the-red-yeti',null,null,'the-red-yeti');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1176,'theater-masks',null,null,'theater-masks');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1177,'themeco',null,null,'themeco');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1178,'themeisle',null,null,'themeisle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1179,'thermometer',null,null,'thermometer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1180,'thermometer-empty',null,null,'thermometer-empty');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1181,'thermometer-full',null,null,'thermometer-full');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1182,'thermometer-half',null,null,'thermometer-half');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1183,'thermometer-quarter',null,null,'thermometer-quarter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1184,'thermometer-three-quarters',null,null,'thermometer-three-quarters');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1185,'think-peaks',null,null,'think-peaks');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1186,'thumbs-down',null,null,'thumbs-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1187,'thumbs-up',null,null,'thumbs-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1188,'thumbtack',null,null,'thumbtack');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1189,'ticket-alt',null,null,'ticket-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1190,'times',null,null,'times');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1191,'times-circle',null,null,'times-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1194,'tired',null,null,'tired');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1196,'toggle-on',null,null,'toggle-on');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1199,'toolbox',null,null,'toolbox');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1200,'tools',null,null,'tools');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1204,'tractor',null,null,'tractor');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1206,'trademark',null,null,'trademark');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1208,'train',null,null,'train');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1209,'tram',null,null,'tram');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1211,'transgender-alt',null,null,'transgender-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1215,'trash-restore-alt',null,null,'trash-restore-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1217,'trello',null,null,'trello');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1219,'trophy',null,null,'trophy');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1222,'truck-monster',null,null,'truck-monster');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1225,'tshirt',null,null,'tshirt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1226,'tty',null,null,'tty');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1229,'tv',null,null,'tv');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1230,'twitch',null,null,'twitch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1231,'twitter',null,null,'twitter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1233,'typo3',null,null,'typo3');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1235,'ubuntu',null,null,'ubuntu');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1239,'underline',null,null,'underline');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1240,'undo',null,null,'undo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1243,'universal-access',null,null,'universal-access');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1245,'unlink',null,null,'unlink');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1248,'untappd',null,null,'untappd');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1250,'ups',null,null,'ups');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1251,'usb',null,null,'usb');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1255,'user-astronaut',null,null,'user-astronaut');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1257,'user-circle',null,null,'user-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1260,'user-edit',null,null,'user-edit');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1262,'user-graduate',null,null,'user-graduate');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1265,'user-md',null,null,'user-md');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1267,'user-ninja',null,null,'user-ninja');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1269,'user-plus',null,null,'user-plus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1272,'user-slash',null,null,'user-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1274,'user-tie',null,null,'user-tie');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1276,'users',null,null,'users');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1278,'usps',null,null,'usps');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1281,'utensils',null,null,'utensils');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1282,'vaadin',null,null,'vaadin');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1284,'venus',null,null,'venus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1286,'venus-mars',null,null,'venus-mars');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1288,'viadeo',null,null,'viadeo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1290,'vial',null,null,'vial');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1291,'vials',null,null,'vials');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1295,'vihara',null,null,'vihara');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1296,'vimeo',null,null,'vimeo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1298,'vimeo-v',null,null,'vimeo-v');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1300,'vk',null,null,'vk');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1303,'volume-down',null,null,'volume-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1305,'volume-off',null,null,'volume-off');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1308,'vr-cardboard',null,null,'vr-cardboard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1311,'wallet',null,null,'wallet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1313,'water',null,null,'water');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1315,'waze',null,null,'waze');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1317,'weibo',null,null,'weibo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1320,'weixin',null,null,'weixin');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1321,'whatsapp',null,null,'whatsapp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1323,'wheelchair',null,null,'wheelchair');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1327,'wind',null,null,'wind');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1329,'window-maximize',null,null,'window-maximize');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1331,'window-restore',null,null,'window-restore');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1334,'wine-glass',null,null,'wine-glass');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1336,'wix',null,null,'wix');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1338,'wolf-pack-battalion',null,null,'wolf-pack-battalion');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1340,'wordpress',null,null,'wordpress');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1342,'wpbeginner',null,null,'wpbeginner');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1344,'wpforms',null,null,'wpforms');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1346,'wrench',null,null,'wrench');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1349,'xing',null,null,'xing');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1352,'yahoo',null,null,'yahoo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1353,'yammer',null,null,'yammer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1356,'yarn',null,null,'yarn');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1357,'yelp',null,null,'yelp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1358,'yen-sign',null,null,'yen-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1360,'yoast',null,null,'yoast');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1363,'zhihu',null,null,'zhihu');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (63,'rrows-alt-h',null,null,'rrows-alt-h');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (65,'rtstation',null,null,'rtstation');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (66,'ssistive-listening-systems',null,null,'ssistive-listening-systems');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (71,'tlassian',null,null,'tlassian');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (73,'udible',null,null,'udible');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (74,'udio-description',null,null,'udio-description');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (76,'vianex',null,null,'vianex');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (78,'ward',null,null,'ward');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (79,'ws',null,null,'ws');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (80,'aby',null,null,'aby');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (81,'aby-carriage',null,null,'aby-carriage');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (83,'ackward',null,null,'ackward');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (85,'alance-scale',null,null,'alance-scale');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (87,'and-aid',null,null,'and-aid');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (89,'arcode',null,null,'arcode');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (90,'ars',null,null,'ars');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (91,'aseball-ball',null,null,'aseball-ball');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (92,'asketball-ball',null,null,'asketball-ball');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (95,'attery-full',null,null,'attery-full');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (97,'attery-quarter',null,null,'attery-quarter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (98,'attery-three-quarters',null,null,'attery-three-quarters');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (103,'ehance-square',null,null,'ehance-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (105,'ell-slash',null,null,'ell-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (107,'ible',null,null,'ible');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (108,'icycle',null,null,'icycle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (109,'imobject',null,null,'imobject');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (111,'iohazard',null,null,'iohazard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (112,'irthday-cake',null,null,'irthday-cake');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (115,'ity',null,null,'ity');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (116,'lack-tie',null,null,'lack-tie');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (117,'lackberry',null,null,'lackberry');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (119,'lender-phone',null,null,'lender-phone');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (122,'logger',null,null,'logger');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (124,'luetooth',null,null,'luetooth');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (125,'luetooth-b',null,null,'luetooth-b');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (128,'omb',null,null,'omb');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (130,'ong',null,null,'ong');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (131,'ook',null,null,'ook');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (132,'ook-dead',null,null,'ook-dead');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (133,'ook-medical',null,null,'ook-medical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (135,'ook-reader',null,null,'ook-reader');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (137,'ootstrap',null,null,'ootstrap');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (139,'ox',null,null,'ox');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (140,'ox-open',null,null,'ox-open');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (142,'raille',null,null,'raille');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (144,'read-slice',null,null,'read-slice');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (145,'riefcase',null,null,'riefcase');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (146,'riefcase-medical',null,null,'riefcase-medical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (150,'tc',null,null,'tc');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (151,'uffer',null,null,'uffer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (153,'uilding',null,null,'uilding');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (154,'ullhorn',null,null,'ullhorn');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (156,'urn',null,null,'urn');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (157,'uromobelexperte',null,null,'uromobelexperte');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (160,'usiness-time',null,null,'usiness-time');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (162,'alculator',null,null,'alculator');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (164,'alendar-alt',null,null,'alendar-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (165,'alendar-check',null,null,'alendar-check');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (167,'alendar-minus',null,null,'alendar-minus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (169,'alendar-times',null,null,'alendar-times');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (171,'amera',null,null,'amera');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (172,'amera-retro',null,null,'amera-retro');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (174,'anadian-maple-leaf',null,null,'anadian-maple-leaf');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (177,'apsules',null,null,'apsules');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (179,'ar-alt',null,null,'ar-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (180,'ar-battery',null,null,'ar-battery');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (182,'ar-side',null,null,'ar-side');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (183,'aret-down',null,null,'aret-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (185,'aret-right',null,null,'aret-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (186,'aret-square-down',null,null,'aret-square-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (188,'aret-square-right',null,null,'aret-square-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (191,'arrot',null,null,'arrot');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (192,'art-arrow-down',null,null,'art-arrow-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (194,'ash-register',null,null,'ash-register');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (196,'c-amazon-pay',null,null,'c-amazon-pay');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (199,'c-diners-club',null,null,'c-diners-club');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (201,'c-jcb',null,null,'c-jcb');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (202,'c-mastercard',null,null,'c-mastercard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (204,'c-stripe',null,null,'c-stripe');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (206,'entercode',null,null,'entercode');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (208,'ertificate',null,null,'ertificate');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (210,'halkboard',null,null,'halkboard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (211,'halkboard-teacher',null,null,'halkboard-teacher');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (213,'hart-area',null,null,'hart-area');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (215,'hart-line',null,null,'hart-line');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (217,'heck',null,null,'heck');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (218,'heck-circle',null,null,'heck-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (220,'heck-square',null,null,'heck-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (222,'hess',null,null,'hess');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (223,'hess-bishop',null,null,'hess-bishop');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (225,'hess-king',null,null,'hess-king');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (226,'hess-knight',null,null,'hess-knight');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (228,'hess-queen',null,null,'hess-queen');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (230,'hevron-circle-down',null,null,'hevron-circle-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (232,'hevron-circle-right',null,null,'hevron-circle-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (234,'hevron-down',null,null,'hevron-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (235,'hevron-left',null,null,'hevron-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (237,'hevron-up',null,null,'hevron-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (240,'hromecast',null,null,'hromecast');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (242,'ircle',null,null,'ircle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (243,'ircle-notch',null,null,'ircle-notch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (245,'linic-medical',null,null,'linic-medical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (247,'lipboard-check',null,null,'lipboard-check');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (250,'lone',null,null,'lone');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (251,'losed-captioning',null,null,'losed-captioning');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (253,'loud-download-alt',null,null,'loud-download-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (255,'loud-moon',null,null,'loud-moon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (257,'loud-rain',null,null,'loud-rain');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (258,'loud-showers-heavy',null,null,'loud-showers-heavy');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (261,'loud-upload-alt',null,null,'loud-upload-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (263,'loudsmith',null,null,'loudsmith');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (264,'loudversify',null,null,'loudversify');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (267,'ode-branch',null,null,'ode-branch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (269,'odiepie',null,null,'odiepie');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (271,'cog',null,null,'cog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (272,'cogs',null,null,'cogs');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (273,'coins',null,null,'coins');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (275,'comment',null,null,'comment');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (276,'comment-alt',null,null,'comment-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (278,'comment-dots',null,null,'comment-dots');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (279,'comment-medical',null,null,'comment-medical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (281,'comments',null,null,'comments');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (282,'comments-dollar',null,null,'comments-dollar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (285,'compress',null,null,'compress');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (286,'compress-arrows-alt',null,null,'compress-arrows-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (289,'connectdevelop',null,null,'connectdevelop');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (291,'cookie',null,null,'cookie');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (292,'cookie-bite',null,null,'cookie-bite');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (295,'couch',null,null,'couch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (296,'cpanel',null,null,'cpanel');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (297,'creative-commons',null,null,'creative-commons');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (299,'creative-commons-nc',null,null,'creative-commons-nc');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (300,'creative-commons-nc-eu',null,null,'creative-commons-nc-eu');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (302,'creative-commons-nd',null,null,'creative-commons-nd');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (304,'creative-commons-pd-alt',null,null,'creative-commons-pd-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (306,'creative-commons-sa',null,null,'creative-commons-sa');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (307,'creative-commons-sampling',null,null,'creative-commons-sampling');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (309,'creative-commons-share',null,null,'creative-commons-share');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (312,'critical-role',null,null,'critical-role');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (314,'crop-alt',null,null,'crop-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (316,'crosshairs',null,null,'crosshairs');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (318,'crown',null,null,'crown');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (320,'css3',null,null,'css3');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (321,'css3-alt',null,null,'css3-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (323,'cubes',null,null,'cubes');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (325,'cuttlefish',null,null,'cuttlefish');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (327,'d-and-d-beyond',null,null,'d-and-d-beyond');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (329,'database',null,null,'database');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (331,'delicious',null,null,'delicious');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (333,'deploydog',null,null,'deploydog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (334,'deskpro',null,null,'deskpro');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (336,'dev',null,null,'dev');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (337,'deviantart',null,null,'deviantart');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (339,'dhl',null,null,'dhl');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (340,'diagnoses',null,null,'diagnoses');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (341,'diaspora',null,null,'diaspora');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (343,'dice-d20',null,null,'dice-d20');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (345,'dice-five',null,null,'dice-five');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (347,'dice-one',null,null,'dice-one');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (348,'dice-six',null,null,'dice-six');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (350,'dice-two',null,null,'dice-two');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (352,'digital-ocean',null,null,'digital-ocean');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (353,'digital-tachograph',null,null,'digital-tachograph');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (356,'discourse',null,null,'discourse');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (359,'dna',null,null,'dna');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (360,'dochub',null,null,'dochub');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (361,'docker',null,null,'docker');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (363,'dollar-sign',null,null,'dollar-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (365,'dolly-flatbed',null,null,'dolly-flatbed');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (430,'fast-backward',null,null,'fast-backward');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (433,'feather',null,null,'feather');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (434,'feather-alt',null,null,'feather-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (437,'female',null,null,'female');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (438,'fighter-jet',null,null,'fighter-jet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (441,'file-alt',null,null,'file-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (442,'file-archive',null,null,'file-archive');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (444,'file-code',null,null,'file-code');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (446,'file-csv',null,null,'file-csv');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (447,'file-download',null,null,'file-download');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (449,'file-export',null,null,'file-export');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (451,'file-import',null,null,'file-import');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (453,'file-invoice-dollar',null,null,'file-invoice-dollar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (455,'file-medical-alt',null,null,'file-medical-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (457,'file-powerpoint',null,null,'file-powerpoint');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (459,'file-signature',null,null,'file-signature');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (461,'file-video',null,null,'file-video');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (462,'file-word',null,null,'file-word');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (464,'fill-drip',null,null,'fill-drip');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (467,'fingerprint',null,null,'fingerprint');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (469,'fire-alt',null,null,'fire-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (470,'fire-extinguisher',null,null,'fire-extinguisher');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (473,'first-order',null,null,'first-order');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (474,'first-order-alt',null,null,'first-order-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (477,'fist-raised',null,null,'fist-raised');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (479,'flag-checkered',null,null,'flag-checkered');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (482,'flickr',null,null,'flickr');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (484,'flushed',null,null,'flushed');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (486,'folder',null,null,'folder');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (487,'folder-minus',null,null,'folder-minus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (489,'folder-plus',null,null,'folder-plus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (491,'font-awesome',null,null,'font-awesome');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (492,'font-awesome-alt',null,null,'font-awesome-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (494,'font-awesome-logo-full',null,null,'font-awesome-logo-full');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (497,'football-ball',null,null,'football-ball');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (499,'fort-awesome-alt',null,null,'fort-awesome-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (501,'forward',null,null,'forward');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (502,'foursquare',null,null,'foursquare');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (504,'freebsd',null,null,'freebsd');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (506,'frown',null,null,'frown');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (507,'frown-open',null,null,'frown-open');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (509,'funnel-dollar',null,null,'funnel-dollar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (511,'galactic-republic',null,null,'galactic-republic');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (513,'gamepad',null,null,'gamepad');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (515,'gavel',null,null,'gavel');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (517,'genderless',null,null,'genderless');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (518,'get-pocket',null,null,'get-pocket');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (521,'ghost',null,null,'ghost');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (522,'gift',null,null,'gift');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (524,'git',null,null,'git');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (525,'git-square',null,null,'git-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (527,'github-alt',null,null,'github-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (528,'github-square',null,null,'github-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (531,'gitter',null,null,'gitter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (532,'glass-cheers',null,null,'glass-cheers');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (534,'glass-martini-alt',null,null,'glass-martini-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (536,'glasses',null,null,'glasses');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (538,'glide-g',null,null,'glide-g');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (539,'globe',null,null,'globe');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (540,'globe-africa',null,null,'globe-africa');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (542,'globe-asia',null,null,'globe-asia');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (543,'globe-europe',null,null,'globe-europe');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (546,'goodreads',null,null,'goodreads');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (547,'goodreads-g',null,null,'goodreads-g');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (549,'google-drive',null,null,'google-drive');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (551,'google-plus',null,null,'google-plus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (553,'google-plus-square',null,null,'google-plus-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (555,'gopuram',null,null,'gopuram');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (556,'graduation-cap',null,null,'graduation-cap');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (559,'greater-than',null,null,'greater-than');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (560,'greater-than-equal',null,null,'greater-than-equal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (564,'grin-beam',null,null,'grin-beam');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (565,'grin-beam-sweat',null,null,'grin-beam-sweat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (567,'grin-squint',null,null,'grin-squint');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (569,'grin-stars',null,null,'grin-stars');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (570,'grin-tears',null,null,'grin-tears');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (572,'grin-tongue-squint',null,null,'grin-tongue-squint');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (574,'grin-wink',null,null,'grin-wink');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (575,'grip-horizontal',null,null,'grip-horizontal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (577,'grip-lines-vertical',null,null,'grip-lines-vertical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (580,'grunt',null,null,'grunt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (582,'gulp',null,null,'gulp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (583,'h-square',null,null,'h-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (584,'hacker-news',null,null,'hacker-news');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (585,'hacker-news-square',null,null,'hacker-news-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (589,'hamsa',null,null,'hamsa');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (590,'hand-holding',null,null,'hand-holding');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (591,'hand-holding-heart',null,null,'hand-holding-heart');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (594,'hand-middle-finger',null,null,'hand-middle-finger');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (596,'hand-peace',null,null,'hand-peace');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (597,'hand-point-down',null,null,'hand-point-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (599,'hand-point-right',null,null,'hand-point-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (601,'hand-pointer',null,null,'hand-pointer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (603,'hand-scissors',null,null,'hand-scissors');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (606,'hands-helping',null,null,'hands-helping');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (608,'hanukiah',null,null,'hanukiah');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (609,'hard-hat',null,null,'hard-hat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (611,'hat-wizard',null,null,'hat-wizard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (613,'hdd',null,null,'hdd');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (614,'heading',null,null,'heading');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (615,'headphones',null,null,'headphones');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (617,'headset',null,null,'headset');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (619,'heart-broken',null,null,'heart-broken');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (621,'helicopter',null,null,'helicopter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (622,'highlighter',null,null,'highlighter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (625,'hips',null,null,'hips');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (626,'hire-a-helper',null,null,'hire-a-helper');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (628,'hockey-puck',null,null,'hockey-puck');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (630,'home',null,null,'home');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (631,'hooli',null,null,'hooli');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (633,'horse',null,null,'horse');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (634,'horse-head',null,null,'horse-head');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (636,'hospital-alt',null,null,'hospital-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (637,'hospital-symbol',null,null,'hospital-symbol');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (641,'hotjar',null,null,'hotjar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (642,'hourglass',null,null,'hourglass');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (643,'hourglass-end',null,null,'hourglass-end');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (645,'hourglass-start',null,null,'hourglass-start');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (647,'houzz',null,null,'houzz');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (649,'html5',null,null,'html5');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (650,'hubspot',null,null,'hubspot');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (652,'ice-cream',null,null,'ice-cream');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (653,'icicles',null,null,'icicles');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (655,'id-card',null,null,'id-card');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (656,'id-card-alt',null,null,'id-card-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (659,'images',null,null,'images');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (661,'inbox',null,null,'inbox');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (662,'indent',null,null,'indent');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (663,'industry',null,null,'industry');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (665,'info',null,null,'info');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (666,'info-circle',null,null,'info-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (668,'intercom',null,null,'intercom');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (669,'internet-explorer',null,null,'internet-explorer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (673,'itch-io',null,null,'itch-io');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (674,'itunes',null,null,'itunes');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (675,'itunes-note',null,null,'itunes-note');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (678,'jedi-order',null,null,'jedi-order');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (680,'jira',null,null,'jira');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (682,'joint',null,null,'joint');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (683,'joomla',null,null,'joomla');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (684,'journal-whills',null,null,'journal-whills');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (687,'jsfiddle',null,null,'jsfiddle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (689,'kaggle',null,null,'kaggle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (691,'keybase',null,null,'keybase');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (692,'keyboard',null,null,'keyboard');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (694,'khanda',null,null,'khanda');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (695,'kickstarter',null,null,'kickstarter');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (698,'kiss-beam',null,null,'kiss-beam');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (699,'kiss-wink-heart',null,null,'kiss-wink-heart');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (702,'landmark',null,null,'landmark');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (703,'language',null,null,'language');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (705,'laptop-code',null,null,'laptop-code');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (706,'laptop-medical',null,null,'laptop-medical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (709,'lastfm-square',null,null,'lastfm-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (712,'laugh-squint',null,null,'laugh-squint');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (713,'laugh-wink',null,null,'laugh-wink');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (716,'leanpub',null,null,'leanpub');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (717,'lemon',null,null,'lemon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (719,'less-than',null,null,'less-than');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (720,'less-than-equal',null,null,'less-than-equal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (722,'level-up-alt',null,null,'level-up-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (724,'lightbulb',null,null,'lightbulb');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (727,'linkedin',null,null,'linkedin');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (728,'linkedin-in',null,null,'linkedin-in');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (731,'lira-sign',null,null,'lira-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (733,'list-alt',null,null,'list-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (734,'list-ol',null,null,'list-ol');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (736,'location-arrow',null,null,'location-arrow');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (738,'lock-open',null,null,'lock-open');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (739,'long-arrow-alt-down',null,null,'long-arrow-alt-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (808,'money-check',null,null,'money-check');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (810,'monument',null,null,'monument');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (812,'mortar-pestle',null,null,'mortar-pestle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (814,'motorcycle',null,null,'motorcycle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (816,'mouse-pointer',null,null,'mouse-pointer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (818,'music',null,null,'music');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (819,'napster',null,null,'napster');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (821,'network-wired',null,null,'network-wired');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (823,'newspaper',null,null,'newspaper');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (825,'nintendo-switch',null,null,'nintendo-switch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (828,'not-equal',null,null,'not-equal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (829,'notes-medical',null,null,'notes-medical');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (832,'nutritionix',null,null,'nutritionix');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (834,'object-ungroup',null,null,'object-ungroup');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (836,'odnoklassniki-square',null,null,'odnoklassniki-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (838,'old-republic',null,null,'old-republic');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (842,'opera',null,null,'opera');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (843,'optin-monster',null,null,'optin-monster');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (846,'outdent',null,null,'outdent');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (848,'pagelines',null,null,'pagelines');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (850,'paint-brush',null,null,'paint-brush');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (851,'paint-roller',null,null,'paint-roller');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (854,'pallet',null,null,'pallet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (855,'paper-plane',null,null,'paper-plane');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (857,'parachute-box',null,null,'parachute-box');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (859,'parking',null,null,'parking');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (861,'pastafarianism',null,null,'pastafarianism');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (863,'patreon',null,null,'patreon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (865,'pause-circle',null,null,'pause-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (867,'paypal',null,null,'paypal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (869,'pen',null,null,'pen');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (870,'pen-alt',null,null,'pen-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (872,'pen-nib',null,null,'pen-nib');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (873,'pen-square',null,null,'pen-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (875,'pencil-ruler',null,null,'pencil-ruler');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (876,'penny-arcade',null,null,'penny-arcade');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (878,'pepper-hot',null,null,'pepper-hot');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (880,'percentage',null,null,'percentage');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (882,'person-booth',null,null,'person-booth');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (884,'phoenix-framework',null,null,'phoenix-framework');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (886,'phone',null,null,'phone');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (887,'phone-slash',null,null,'phone-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (888,'phone-square',null,null,'phone-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (891,'pied-piper',null,null,'pied-piper');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (892,'pied-piper-alt',null,null,'pied-piper-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (894,'pied-piper-pp',null,null,'pied-piper-pp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (897,'pinterest',null,null,'pinterest');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (898,'pinterest-p',null,null,'pinterest-p');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (899,'pinterest-square',null,null,'pinterest-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (902,'plane',null,null,'plane');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (903,'plane-arrival',null,null,'plane-arrival');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (904,'plane-departure',null,null,'plane-departure');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (907,'playstation',null,null,'playstation');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (910,'plus-circle',null,null,'plus-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (912,'podcast',null,null,'podcast');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (914,'poll-h',null,null,'poll-h');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (915,'poo',null,null,'poo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (916,'poo-storm',null,null,'poo-storm');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (918,'portrait',null,null,'portrait');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (920,'power-off',null,null,'power-off');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (922,'praying-hands',null,null,'praying-hands');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (924,'prescription-bottle',null,null,'prescription-bottle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (925,'prescription-bottle-alt',null,null,'prescription-bottle-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (929,'project-diagram',null,null,'project-diagram');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (931,'puzzle-piece',null,null,'puzzle-piece');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (934,'qrcode',null,null,'qrcode');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (936,'question-circle',null,null,'question-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (938,'quinscape',null,null,'quinscape');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (940,'quote-left',null,null,'quote-left');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (941,'quote-right',null,null,'quote-right');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (944,'radiation',null,null,'radiation');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (945,'radiation-alt',null,null,'radiation-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (948,'raspberry-pi',null,null,'raspberry-pi');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (950,'react',null,null,'react');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (951,'reacteurope',null,null,'reacteurope');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (954,'receipt',null,null,'receipt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (955,'recycle',null,null,'recycle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (957,'reddit',null,null,'reddit');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (958,'reddit-alien',null,null,'reddit-alien');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (960,'redhat',null,null,'redhat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (961,'redo',null,null,'redo');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (962,'redo-alt',null,null,'redo-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (964,'renren',null,null,'renren');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (965,'reply',null,null,'reply');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (966,'reply-all',null,null,'reply-all');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (968,'republican',null,null,'republican');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (970,'resolving',null,null,'resolving');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (972,'retweet',null,null,'retweet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (974,'ribbon',null,null,'ribbon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (975,'ring',null,null,'ring');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (977,'robot',null,null,'robot');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (978,'rocket',null,null,'rocket');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (979,'rocketchat',null,null,'rocketchat');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (982,'rss',null,null,'rss');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (983,'rss-square',null,null,'rss-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (985,'ruler',null,null,'ruler');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (986,'ruler-combined',null,null,'ruler-combined');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (987,'ruler-horizontal',null,null,'ruler-horizontal');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (990,'rupee-sign',null,null,'rupee-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (992,'sad-tear',null,null,'sad-tear');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (994,'salesforce',null,null,'salesforce');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (996,'satellite',null,null,'satellite');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (997,'satellite-dish',null,null,'satellite-dish');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1001,'screwdriver',null,null,'screwdriver');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1003,'scroll',null,null,'scroll');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1004,'sd-card',null,null,'sd-card');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1006,'search-dollar',null,null,'search-dollar');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1007,'search-location',null,null,'search-location');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1010,'searchengin',null,null,'searchengin');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1011,'seedling',null,null,'seedling');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1013,'sellsy',null,null,'sellsy');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1015,'servicestack',null,null,'servicestack');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1017,'share',null,null,'share');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1018,'share-alt',null,null,'share-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1019,'share-alt-square',null,null,'share-alt-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1022,'shield-alt',null,null,'shield-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1024,'shipping-fast',null,null,'shipping-fast');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1026,'shoe-prints',null,null,'shoe-prints');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1027,'shopping-bag',null,null,'shopping-bag');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1029,'shopping-cart',null,null,'shopping-cart');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1031,'shower',null,null,'shower');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1032,'shuttle-van',null,null,'shuttle-van');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1034,'sign-in-alt',null,null,'sign-in-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1036,'sign-out-alt',null,null,'sign-out-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1038,'signature',null,null,'signature');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1040,'simplybuilt',null,null,'simplybuilt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1042,'sitemap',null,null,'sitemap');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1044,'skating',null,null,'skating');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1046,'skiing',null,null,'skiing');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1047,'skiing-nordic',null,null,'skiing-nordic');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1049,'skull-crossbones',null,null,'skull-crossbones');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1052,'slack',null,null,'slack');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1053,'slack-hash',null,null,'slack-hash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1056,'sliders-h',null,null,'sliders-h');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1057,'slideshare',null,null,'slideshare');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1059,'smile-beam',null,null,'smile-beam');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1062,'smoking',null,null,'smoking');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1063,'smoking-ban',null,null,'smoking-ban');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1066,'snapchat-ghost',null,null,'snapchat-ghost');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1067,'snapchat-square',null,null,'snapchat-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1070,'snowman',null,null,'snowman');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1071,'snowplow',null,null,'snowplow');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1073,'solar-panel',null,null,'solar-panel');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1075,'sort-alpha-down',null,null,'sort-alpha-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1077,'sort-amount-down',null,null,'sort-amount-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1079,'sort-down',null,null,'sort-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1080,'sort-numeric-down',null,null,'sort-numeric-down');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1083,'soundcloud',null,null,'soundcloud');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1084,'sourcetree',null,null,'sourcetree');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1086,'space-shuttle',null,null,'space-shuttle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1088,'speaker-deck',null,null,'speaker-deck');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1091,'splotch',null,null,'splotch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1093,'spray-can',null,null,'spray-can');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1095,'square-full',null,null,'square-full');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1096,'square-root-alt',null,null,'square-root-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1098,'stack-exchange',null,null,'stack-exchange');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1100,'stamp',null,null,'stamp');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1102,'star-and-crescent',null,null,'star-and-crescent');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1104,'star-half-alt',null,null,'star-half-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1106,'star-of-life',null,null,'star-of-life');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1108,'steam',null,null,'steam');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1109,'steam-square',null,null,'steam-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1111,'step-backward',null,null,'step-backward');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1112,'step-forward',null,null,'step-forward');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1114,'sticker-mule',null,null,'sticker-mule');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1117,'stop-circle',null,null,'stop-circle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1118,'stopwatch',null,null,'stopwatch');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1120,'store-alt',null,null,'store-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1123,'street-view',null,null,'street-view');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1192,'tint',null,null,'tint');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1193,'tint-slash',null,null,'tint-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1195,'toggle-off',null,null,'toggle-off');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1197,'toilet',null,null,'toilet');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1198,'toilet-paper',null,null,'toilet-paper');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1201,'tooth',null,null,'tooth');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1202,'torah',null,null,'torah');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1203,'torii-gate',null,null,'torii-gate');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1205,'trade-federation',null,null,'trade-federation');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1207,'traffic-light',null,null,'traffic-light');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1210,'transgender',null,null,'transgender');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1212,'trash',null,null,'trash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1213,'trash-alt',null,null,'trash-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1214,'trash-restore',null,null,'trash-restore');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1216,'tree',null,null,'tree');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1218,'tripadvisor',null,null,'tripadvisor');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1220,'truck',null,null,'truck');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1221,'truck-loading',null,null,'truck-loading');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1223,'truck-moving',null,null,'truck-moving');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1224,'truck-pickup',null,null,'truck-pickup');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1227,'tumblr',null,null,'tumblr');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1228,'tumblr-square',null,null,'tumblr-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1232,'twitter-square',null,null,'twitter-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1234,'uber',null,null,'uber');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1236,'uikit',null,null,'uikit');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1237,'umbrella',null,null,'umbrella');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1238,'umbrella-beach',null,null,'umbrella-beach');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1241,'undo-alt',null,null,'undo-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1242,'uniregistry',null,null,'uniregistry');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1244,'university',null,null,'university');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1246,'unlock',null,null,'unlock');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1247,'unlock-alt',null,null,'unlock-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1249,'upload',null,null,'upload');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1252,'user',null,null,'user');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1253,'user-alt',null,null,'user-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1254,'user-alt-slash',null,null,'user-alt-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1256,'user-check',null,null,'user-check');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1258,'user-clock',null,null,'user-clock');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1259,'user-cog',null,null,'user-cog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1261,'user-friends',null,null,'user-friends');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1263,'user-injured',null,null,'user-injured');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1264,'user-lock',null,null,'user-lock');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1266,'user-minus',null,null,'user-minus');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1268,'user-nurse',null,null,'user-nurse');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1270,'user-secret',null,null,'user-secret');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1271,'user-shield',null,null,'user-shield');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1273,'user-tag',null,null,'user-tag');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1275,'user-times',null,null,'user-times');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1277,'users-cog',null,null,'users-cog');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1279,'ussunnah',null,null,'ussunnah');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1280,'utensil-spoon',null,null,'utensil-spoon');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1283,'vector-square',null,null,'vector-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1285,'venus-double',null,null,'venus-double');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1287,'viacoin',null,null,'viacoin');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1289,'viadeo-square',null,null,'viadeo-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1292,'viber',null,null,'viber');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1293,'video',null,null,'video');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1294,'video-slash',null,null,'video-slash');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1297,'vimeo-square',null,null,'vimeo-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1299,'vine',null,null,'vine');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1301,'vnv',null,null,'vnv');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1302,'volleyball-ball',null,null,'volleyball-ball');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1304,'volume-mute',null,null,'volume-mute');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1306,'volume-up',null,null,'volume-up');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1307,'vote-yea',null,null,'vote-yea');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1309,'vuejs',null,null,'vuejs');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1310,'walking',null,null,'walking');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1312,'warehouse',null,null,'warehouse');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1314,'wave-square',null,null,'wave-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1316,'weebly',null,null,'weebly');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1318,'weight',null,null,'weight');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1319,'weight-hanging',null,null,'weight-hanging');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1322,'whatsapp-square',null,null,'whatsapp-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1324,'whmcs',null,null,'whmcs');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1325,'wifi',null,null,'wifi');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1326,'wikipedia-w',null,null,'wikipedia-w');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1328,'window-close',null,null,'window-close');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1330,'window-minimize',null,null,'window-minimize');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1332,'windows',null,null,'windows');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1333,'wine-bottle',null,null,'wine-bottle');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1335,'wine-glass-alt',null,null,'wine-glass-alt');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1337,'wizards-of-the-coast',null,null,'wizards-of-the-coast');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1339,'won-sign',null,null,'won-sign');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1341,'wordpress-simple',null,null,'wordpress-simple');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1343,'wpexplorer',null,null,'wpexplorer');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1345,'wpressr',null,null,'wpressr');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1347,'x-ray',null,null,'x-ray');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1348,'xbox',null,null,'xbox');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1350,'xing-square',null,null,'xing-square');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1351,'y-combinator',null,null,'y-combinator');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1354,'yandex',null,null,'yandex');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1355,'yandex-international',null,null,'yandex-international');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1359,'yin-yang',null,null,'yin-yang');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1361,'youtube',null,null,'youtube');
Insert into PHONE.FEATURE (FEATURE_ID,NAME,VALUE,TYPE,UI_STYLE) values (1362,'youtube-square',null,null,'youtube-square');
REM INSERTING into PHONE.LANDLINE_PHONE
SET DEFINE OFF;
Insert into PHONE.LANDLINE_PHONE (LANDLINE_PHONE_ID,PHONE_NUMBER,USER_ID,BOX_ID) values (1,50203049,1,1);
Insert into PHONE.LANDLINE_PHONE (LANDLINE_PHONE_ID,PHONE_NUMBER,USER_ID,BOX_ID) values (2,50203050,2,1);
Insert into PHONE.LANDLINE_PHONE (LANDLINE_PHONE_ID,PHONE_NUMBER,USER_ID,BOX_ID) values (1000,1234,1021,null);
Insert into PHONE.LANDLINE_PHONE (LANDLINE_PHONE_ID,PHONE_NUMBER,USER_ID,BOX_ID) values (1001,1234,1022,null);
Insert into PHONE.LANDLINE_PHONE (LANDLINE_PHONE_ID,PHONE_NUMBER,USER_ID,BOX_ID) values (1002,1234,1023,null);
Insert into PHONE.LANDLINE_PHONE (LANDLINE_PHONE_ID,PHONE_NUMBER,USER_ID,BOX_ID) values (1003,1234,1024,null);
REM INSERTING into PHONE.LOGISTICS
SET DEFINE OFF;
REM INSERTING into PHONE.PHONE_USER
SET DEFINE OFF;
Insert into PHONE.PHONE_USER (USER_ID,LOGIN_NAME,LOGIN_PASSWORD,CREATION_DATE,F_NAME,M_NAME,L_NAME,ORGANIZATION_TYPE,EMAIL,ADDRESS,MOBILE_PHONE,ORGANIZATION_NAME,USER_STATUS,USER_TYPE) values (1,'ahmed','12345678',null,'ahmed','adel','sabagh',1,'ahmed@telego.com','home','010611','TeleGo Egypt',1,1);
Insert into PHONE.PHONE_USER (USER_ID,LOGIN_NAME,LOGIN_PASSWORD,CREATION_DATE,F_NAME,M_NAME,L_NAME,ORGANIZATION_TYPE,EMAIL,ADDRESS,MOBILE_PHONE,ORGANIZATION_NAME,USER_STATUS,USER_TYPE) values (2,'Fatma','12345678',null,'koko','gamal','lolo',1,'koko@telego.com','mama home','010611','Housewife',1,1);
Insert into PHONE.PHONE_USER (USER_ID,LOGIN_NAME,LOGIN_PASSWORD,CREATION_DATE,F_NAME,M_NAME,L_NAME,ORGANIZATION_TYPE,EMAIL,ADDRESS,MOBILE_PHONE,ORGANIZATION_NAME,USER_STATUS,USER_TYPE) values (1021,'123','12345678',null,'user_1',null,'user_1',null,'user_1@gmail.com',null,null,null,null,null);
Insert into PHONE.PHONE_USER (USER_ID,LOGIN_NAME,LOGIN_PASSWORD,CREATION_DATE,F_NAME,M_NAME,L_NAME,ORGANIZATION_TYPE,EMAIL,ADDRESS,MOBILE_PHONE,ORGANIZATION_NAME,USER_STATUS,USER_TYPE) values (1022,'123','12345678',null,'user_1',null,'user_1',null,'user_1@gmail.com',null,null,null,null,null);
Insert into PHONE.PHONE_USER (USER_ID,LOGIN_NAME,LOGIN_PASSWORD,CREATION_DATE,F_NAME,M_NAME,L_NAME,ORGANIZATION_TYPE,EMAIL,ADDRESS,MOBILE_PHONE,ORGANIZATION_NAME,USER_STATUS,USER_TYPE) values (1023,'123','12345678',null,'user_1',null,'user_1',null,'user_1@gmail.com',null,null,null,null,null);
Insert into PHONE.PHONE_USER (USER_ID,LOGIN_NAME,LOGIN_PASSWORD,CREATION_DATE,F_NAME,M_NAME,L_NAME,ORGANIZATION_TYPE,EMAIL,ADDRESS,MOBILE_PHONE,ORGANIZATION_NAME,USER_STATUS,USER_TYPE) values (1024,'123','12345678',null,'user_1',null,'user_1',null,'user_1@gmail.com',null,null,null,null,null);
Insert into PHONE.PHONE_USER (USER_ID,LOGIN_NAME,LOGIN_PASSWORD,CREATION_DATE,F_NAME,M_NAME,L_NAME,ORGANIZATION_TYPE,EMAIL,ADDRESS,MOBILE_PHONE,ORGANIZATION_NAME,USER_STATUS,USER_TYPE) values (1040,'ahmed2_user','12345678',null,'ahmed2',null,'sabagh2',null,'ahmed2.sabagh2@gmail.com',null,null,null,null,null);
REM INSERTING into PHONE.USER_FEATURE
SET DEFINE OFF;
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1080,2,5001);
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1081,2,291);
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1100,1,5001);
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1101,1,5002);
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1102,1,787);
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1103,1,1222);
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1104,1,79);
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1105,1,486);
Insert into PHONE.USER_FEATURE (USER_FEATURE_ID,USER_ID,FEATURE_ID) values (1106,1,1221);
--------------------------------------------------------
--  DDL for Index AREA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."AREA_PK" ON "PHONE"."AREA" ("AREA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index BOX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."BOX_PK" ON "PHONE"."BOX" ("BOX_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CABIN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."CABIN_PK" ON "PHONE"."CABIN" ("CABIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index CITY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."CITY_PK" ON "PHONE"."CITY" ("CITY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COUNTRY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."COUNTRY_PK" ON "PHONE"."COUNTRY" ("COUNTRY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FEATURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."FEATURE_PK" ON "PHONE"."FEATURE" ("FEATURE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LANDLINE_PHONE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."LANDLINE_PHONE_PK" ON "PHONE"."LANDLINE_PHONE" ("LANDLINE_PHONE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOGISTICS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."LOGISTICS_PK" ON "PHONE"."LOGISTICS" ("LOGISTICS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PHONE_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."PHONE_USER_PK" ON "PHONE"."PHONE_USER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USER_FEATURE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PHONE"."USER_FEATURE_PK" ON "PHONE"."USER_FEATURE" ("USER_FEATURE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table AREA
--------------------------------------------------------

  ALTER TABLE "PHONE"."AREA" ADD CONSTRAINT "AREA_PK" PRIMARY KEY ("AREA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."AREA" MODIFY ("AREA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOX
--------------------------------------------------------

  ALTER TABLE "PHONE"."BOX" ADD CONSTRAINT "BOX_PK" PRIMARY KEY ("BOX_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."BOX" MODIFY ("BOX_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CABIN
--------------------------------------------------------

  ALTER TABLE "PHONE"."CABIN" ADD CONSTRAINT "CABIN_PK" PRIMARY KEY ("CABIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."CABIN" MODIFY ("CABIN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CITY
--------------------------------------------------------

  ALTER TABLE "PHONE"."CITY" ADD CONSTRAINT "CITY_PK" PRIMARY KEY ("CITY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."CITY" MODIFY ("NAME_EN" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."CITY" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."CITY" MODIFY ("CITY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COUNTRY
--------------------------------------------------------

  ALTER TABLE "PHONE"."COUNTRY" ADD CONSTRAINT "COUNTRY_PK" PRIMARY KEY ("COUNTRY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."COUNTRY" MODIFY ("NAME_AR" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."COUNTRY" MODIFY ("NAME_EN" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."COUNTRY" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FEATURE
--------------------------------------------------------

  ALTER TABLE "PHONE"."FEATURE" ADD CONSTRAINT "FEATURE_PK" PRIMARY KEY ("FEATURE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."FEATURE" MODIFY ("FEATURE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LANDLINE_PHONE
--------------------------------------------------------

  ALTER TABLE "PHONE"."LANDLINE_PHONE" ADD CONSTRAINT "LANDLINE_PHONE_PK" PRIMARY KEY ("LANDLINE_PHONE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."LANDLINE_PHONE" MODIFY ("LANDLINE_PHONE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOGISTICS
--------------------------------------------------------

  ALTER TABLE "PHONE"."LOGISTICS" MODIFY ("LOGISTICS_ID" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."LOGISTICS" ADD CONSTRAINT "LOGISTICS_PK" PRIMARY KEY ("LOGISTICS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHONE_USER
--------------------------------------------------------

  ALTER TABLE "PHONE"."PHONE_USER" ADD CONSTRAINT "PHONE_USER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."PHONE_USER" MODIFY ("LOGIN_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."PHONE_USER" MODIFY ("LOGIN_NAME" NOT NULL ENABLE);
  ALTER TABLE "PHONE"."PHONE_USER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_FEATURE
--------------------------------------------------------

  ALTER TABLE "PHONE"."USER_FEATURE" ADD CONSTRAINT "USER_FEATURE_PK" PRIMARY KEY ("USER_FEATURE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "PHONE"."USER_FEATURE" MODIFY ("USER_FEATURE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table AREA
--------------------------------------------------------

  ALTER TABLE "PHONE"."AREA" ADD CONSTRAINT "AREA_CITY_FK" FOREIGN KEY ("CITY_ID")
	  REFERENCES "PHONE"."CITY" ("CITY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOX
--------------------------------------------------------

  ALTER TABLE "PHONE"."BOX" ADD CONSTRAINT "BOX_CABIN_FK" FOREIGN KEY ("CABIN_ID")
	  REFERENCES "PHONE"."CABIN" ("CABIN_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CABIN
--------------------------------------------------------

  ALTER TABLE "PHONE"."CABIN" ADD CONSTRAINT "CABIN_AREA_FK" FOREIGN KEY ("AREA_ID")
	  REFERENCES "PHONE"."AREA" ("AREA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CITY
--------------------------------------------------------

  ALTER TABLE "PHONE"."CITY" ADD CONSTRAINT "CITY_COUNTRY_FK1" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "PHONE"."COUNTRY" ("COUNTRY_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FEATURE
--------------------------------------------------------

  ALTER TABLE "PHONE"."FEATURE" ADD CONSTRAINT "FEATURE_FEATURE_FK1" FOREIGN KEY ("FEATURE_ID")
	  REFERENCES "PHONE"."FEATURE" ("FEATURE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LANDLINE_PHONE
--------------------------------------------------------

  ALTER TABLE "PHONE"."LANDLINE_PHONE" ADD CONSTRAINT "LAND_PHONE_BOX_FK" FOREIGN KEY ("BOX_ID")
	  REFERENCES "PHONE"."BOX" ("BOX_ID") ENABLE;
  ALTER TABLE "PHONE"."LANDLINE_PHONE" ADD CONSTRAINT "LAND_PHONE_USER_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "PHONE"."PHONE_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOGISTICS
--------------------------------------------------------

  ALTER TABLE "PHONE"."LOGISTICS" ADD CONSTRAINT "LOGISTICS_AREA_FK" FOREIGN KEY ("DELIVERY_TO_AREA_ID")
	  REFERENCES "PHONE"."AREA" ("AREA_ID") ENABLE;
  ALTER TABLE "PHONE"."LOGISTICS" ADD CONSTRAINT "LOGISTICS_USER_FK2" FOREIGN KEY ("REQUESTER_USER_ID")
	  REFERENCES "PHONE"."PHONE_USER" ("USER_ID") ENABLE;
  ALTER TABLE "PHONE"."LOGISTICS" ADD CONSTRAINT "LOGISTICS_USER_FK3" FOREIGN KEY ("DELIVERY_TO_USER_ID")
	  REFERENCES "PHONE"."PHONE_USER" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_FEATURE
--------------------------------------------------------

  ALTER TABLE "PHONE"."USER_FEATURE" ADD CONSTRAINT "USER_FEATURE_FEATURE_FK" FOREIGN KEY ("FEATURE_ID")
	  REFERENCES "PHONE"."FEATURE" ("FEATURE_ID") ENABLE;
  ALTER TABLE "PHONE"."USER_FEATURE" ADD CONSTRAINT "USER_FEATURE_USER_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "PHONE"."PHONE_USER" ("USER_ID") ENABLE;
