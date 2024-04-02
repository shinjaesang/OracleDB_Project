--------------------------------------------------------
--  파일이 생성됨 - 목요일-11월-02-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATEGORIES
--------------------------------------------------------

  CREATE TABLE "C##BLOGPROJECT"."CATEGORIES" 
   (	"ID" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "C##BLOGPROJECT"."COMMENTS" 
   (	"ID" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CONTENT" CLOB, 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"USER_ID" NUMBER, 
	"POST_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table PLACES
--------------------------------------------------------

  CREATE TABLE "C##BLOGPROJECT"."PLACES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(100 BYTE), 
	"DESCRIPTION" CLOB, 
	"LOCATION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("DESCRIPTION") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table POSTS
--------------------------------------------------------

  CREATE TABLE "C##BLOGPROJECT"."POSTS" 
   (	"ID" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"TITLE" VARCHAR2(100 BYTE), 
	"CONTENT" CLOB, 
	"CREATED_AT" TIMESTAMP (6) DEFAULT CURRENT_TIMESTAMP, 
	"USER_ID" NUMBER, 
	"CATEGORY_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table TAGS
--------------------------------------------------------

  CREATE TABLE "C##BLOGPROJECT"."TAGS" 
   (	"ID" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "C##BLOGPROJECT"."USERS" 
   (	"ID" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USERNAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"PASSWORD" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##BLOGPROJECT.CATEGORIES
SET DEFINE OFF;
Insert into C##BLOGPROJECT.CATEGORIES (ID,NAME) values (1,'제주맛집');
Insert into C##BLOGPROJECT.CATEGORIES (ID,NAME) values (2,'제주명소');
Insert into C##BLOGPROJECT.CATEGORIES (ID,NAME) values (3,'제주숙소');
Insert into C##BLOGPROJECT.CATEGORIES (ID,NAME) values (4,'제주레저');
Insert into C##BLOGPROJECT.CATEGORIES (ID,NAME) values (5,'제주여행');
REM INSERTING into C##BLOGPROJECT.COMMENTS
SET DEFINE OFF;
Insert into C##BLOGPROJECT.COMMENTS (ID,CREATED_AT,USER_ID,POST_ID) values (1,to_timestamp('23/11/01 13:12:22.244000000','RR/MM/DD HH24:MI:SSXFF'),1,1);
Insert into C##BLOGPROJECT.COMMENTS (ID,CREATED_AT,USER_ID,POST_ID) values (2,to_timestamp('23/11/01 13:12:22.252000000','RR/MM/DD HH24:MI:SSXFF'),2,2);
Insert into C##BLOGPROJECT.COMMENTS (ID,CREATED_AT,USER_ID,POST_ID) values (3,to_timestamp('23/11/01 13:12:22.259000000','RR/MM/DD HH24:MI:SSXFF'),3,3);
Insert into C##BLOGPROJECT.COMMENTS (ID,CREATED_AT,USER_ID,POST_ID) values (4,to_timestamp('23/11/01 13:12:22.266000000','RR/MM/DD HH24:MI:SSXFF'),4,4);
Insert into C##BLOGPROJECT.COMMENTS (ID,CREATED_AT,USER_ID,POST_ID) values (5,to_timestamp('23/11/01 13:12:22.272000000','RR/MM/DD HH24:MI:SSXFF'),5,5);
REM INSERTING into C##BLOGPROJECT.PLACES
SET DEFINE OFF;
Insert into C##BLOGPROJECT.PLACES (ID,NAME,LOCATION) values (1,'한라산','제주시 한라산로 300');
Insert into C##BLOGPROJECT.PLACES (ID,NAME,LOCATION) values (2,'성산일출봉','서귀포시 성산읍 일출로 284-12');
Insert into C##BLOGPROJECT.PLACES (ID,NAME,LOCATION) values (3,'천지연폭포','서귀포시 천지연로 132');
Insert into C##BLOGPROJECT.PLACES (ID,NAME,LOCATION) values (4,'우도','제주시 우도면');
Insert into C##BLOGPROJECT.PLACES (ID,NAME,LOCATION) values (5,'비자림','제주시 조천읍 비자림로 1');
REM INSERTING into C##BLOGPROJECT.POSTS
SET DEFINE OFF;
Insert into C##BLOGPROJECT.POSTS (ID,TITLE,CREATED_AT,USER_ID,CATEGORY_ID) values (1,'첫 번째 게시물',to_timestamp('23/11/01 10:49:32.593000000','RR/MM/DD HH24:MI:SSXFF'),1,1);
Insert into C##BLOGPROJECT.POSTS (ID,TITLE,CREATED_AT,USER_ID,CATEGORY_ID) values (2,'두 번째 게시물',to_timestamp('23/11/01 10:49:32.597000000','RR/MM/DD HH24:MI:SSXFF'),2,2);
Insert into C##BLOGPROJECT.POSTS (ID,TITLE,CREATED_AT,USER_ID,CATEGORY_ID) values (3,'세 번째 게시물',to_timestamp('23/11/01 10:49:32.601000000','RR/MM/DD HH24:MI:SSXFF'),3,1);
Insert into C##BLOGPROJECT.POSTS (ID,TITLE,CREATED_AT,USER_ID,CATEGORY_ID) values (4,'네 번째 게시물',to_timestamp('23/11/01 10:49:32.604000000','RR/MM/DD HH24:MI:SSXFF'),4,2);
Insert into C##BLOGPROJECT.POSTS (ID,TITLE,CREATED_AT,USER_ID,CATEGORY_ID) values (5,'다섯 번째 게시물',to_timestamp('23/11/01 10:49:32.608000000','RR/MM/DD HH24:MI:SSXFF'),5,1);
REM INSERTING into C##BLOGPROJECT.TAGS
SET DEFINE OFF;
Insert into C##BLOGPROJECT.TAGS (ID,NAME) values (1,'제주도');
Insert into C##BLOGPROJECT.TAGS (ID,NAME) values (2,'한라산');
Insert into C##BLOGPROJECT.TAGS (ID,NAME) values (3,'성산일출봉');
Insert into C##BLOGPROJECT.TAGS (ID,NAME) values (4,'우도');
Insert into C##BLOGPROJECT.TAGS (ID,NAME) values (5,'해녀');
REM INSERTING into C##BLOGPROJECT.USERS
SET DEFINE OFF;
Insert into C##BLOGPROJECT.USERS (ID,USERNAME,EMAIL,PASSWORD) values (1,'apple','apple@example.com','password123');
Insert into C##BLOGPROJECT.USERS (ID,USERNAME,EMAIL,PASSWORD) values (2,'orange','orange@example.com','password456');
Insert into C##BLOGPROJECT.USERS (ID,USERNAME,EMAIL,PASSWORD) values (3,'grape','grape@example.com','password789');
Insert into C##BLOGPROJECT.USERS (ID,USERNAME,EMAIL,PASSWORD) values (4,'strawberry','strawberry@example.com','password385');
Insert into C##BLOGPROJECT.USERS (ID,USERNAME,EMAIL,PASSWORD) values (5,'kiwi','kiwi@example.com','password346');
--------------------------------------------------------
--  Constraints for Table CATEGORIES
--------------------------------------------------------

  ALTER TABLE "C##BLOGPROJECT"."CATEGORIES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."CATEGORIES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."CATEGORIES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PLACES
--------------------------------------------------------

  ALTER TABLE "C##BLOGPROJECT"."PLACES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAGS
--------------------------------------------------------

  ALTER TABLE "C##BLOGPROJECT"."TAGS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."TAGS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "C##BLOGPROJECT"."COMMENTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."COMMENTS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."COMMENTS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."COMMENTS" MODIFY ("POST_ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."COMMENTS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POSTS
--------------------------------------------------------

  ALTER TABLE "C##BLOGPROJECT"."POSTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."POSTS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."POSTS" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."POSTS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."POSTS" MODIFY ("CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."POSTS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "C##BLOGPROJECT"."USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."USERS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."USERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."USERS" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "C##BLOGPROJECT"."USERS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "C##BLOGPROJECT"."COMMENTS" ADD CONSTRAINT "FK_COMMENT_USER" FOREIGN KEY ("USER_ID")
	  REFERENCES "C##BLOGPROJECT"."USERS" ("ID") ENABLE;
  ALTER TABLE "C##BLOGPROJECT"."COMMENTS" ADD CONSTRAINT "FK_COMMENT_POST" FOREIGN KEY ("POST_ID")
	  REFERENCES "C##BLOGPROJECT"."POSTS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSTS
--------------------------------------------------------

  ALTER TABLE "C##BLOGPROJECT"."POSTS" ADD CONSTRAINT "FK_USER" FOREIGN KEY ("USER_ID")
	  REFERENCES "C##BLOGPROJECT"."USERS" ("ID") ENABLE;
  ALTER TABLE "C##BLOGPROJECT"."POSTS" ADD CONSTRAINT "FK_CATEGORY" FOREIGN KEY ("CATEGORY_ID")
	  REFERENCES "C##BLOGPROJECT"."CATEGORIES" ("ID") ENABLE;
