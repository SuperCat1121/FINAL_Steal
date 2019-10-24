DROP TABLE DEP;

CREATE TABLE DEP(
	DEP_NO NUMBER(2) PRIMARY KEY,
	DEP_NAME VARCHAR2(20) NOT NULL CONSTRAINT EMPCHECK UNIQUE
)

INSERT INTO DEP VALUES('00','사장');
INSERT INTO DEP VALUES('01','영업');
INSERT INTO DEP VALUES('02','디자인');
INSERT INTO DEP VALUES('03','개발');
INSERT INTO DEP VALUES('99','미배정');

DROP TABLE EMP;

CREATE TABLE EMP(
	EMP_NO NUMBER(6) PRIMARY KEY,
	EMP_NAME VARCHAR2(30) NOT NULL
);
INSERT INTO EMP VALUES('000000', '조영찬');
INSERT INTO EMP VALUES('010100', '이태식');
INSERT INTO EMP VALUES('010200', '이두영');
INSERT INTO EMP VALUES('010300', '김현호');
INSERT INTO EMP VALUES('020101', '홍준화');
INSERT INTO EMP VALUES('020201', '이이일');
INSERT INTO EMP VALUES('020202', '이이이');
INSERT INTO EMP VALUES('020301', '이삼일');
INSERT INTO EMP VALUES('020302', '이삼이');
INSERT INTO EMP VALUES('020303', '이삼삼');
INSERT INTO EMP VALUES('020304', '이삼사');
INSERT INTO EMP VALUES('020305', '이삼오');

SELECT * FROM EMP;

DROP TABLE MAIN;
DROP SEQUENCE MAINSEQ;

CREATE SEQUENCE MAINSEQ;

CREATE TABLE MAIN(

	MAIN_SEQ NUMBER PRIMARY KEY,

	MAIN_AUTHORITY VARCHAR2(100) NOT NULL,

	MAIN_NAME VARCHAR2(30) NOT NULL,

	MAIN_ID VARCHAR2(30) NOT NULL CONSTRAINT IDCHECK UNIQUE,

	MAIN_PASSWORD VARCHAR2(3000) NOT NULL,

	MAIN_SEX CHAR(1) NOT NULL CONSTRAINT SEXCHECK CHECK (MAIN_SEX IN ('M','F','X')),

	MAIN_PHONENUMBER VARCHAR2(20) NOT NULL,

	MAIN_EMAIL VARCHAR2(30) NOT NULL,

	MAIN_BIRTH NUMBER(6) NOT NULL,
	
	MAIN_EMP NUMBER(6) NOT NULL CONSTRAINT MAINEMPCHECK UNIQUE,
	
	CONSTRAINT EMP_FK FOREIGN KEY(MAIN_EMP) REFERENCES EMP(EMP_NO)
	
);

SELECT * FROM MAIN;

ADMIN == zongyeng pw==1q2w3e4r!
user test '이태식' pw==1q2w3e4r!
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_ADMIN','조영찬','zongyeng','{bcrypt}$2a$10$HQ.AJavpJ4awZecuOOFvnuTz6k5NhqOF.IIC6iynVvT.Q7PYjaZFy','M','010-3495-0424','zongyeng1@naver.com','930424','000000');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이태식','user','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','010100');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이두영','user1','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','010200');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','김현호','user2','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','010300');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','홍준화','user3','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','020101');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이이일','user4','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','020201');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이이이','user5','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','020202');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이삼일','user6','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','020301');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이삼이','user7','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','020302');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이삼삼','user8','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','020303');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이삼사','user9','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','020304');
INSERT INTO MAIN VALUES (MAINSEQ.NEXTVAL,'ROLE_USER','이삼오','user10','{bcrypt}$2a$10$YzO3Qz2u3DDvw0E1alQ39.bWSp688rXGiajU/e3McDRIAORGrqoKe','M','010-3495-0423','zongyeng1@naver.com','930423','020305');
SELECT MAIN_SEQ, MAIN_SECURITY, MAIN_NAME, MAIN_ID, MAIN_PASSWORD, MAIN_SEX, MAIN_PHONENUMBER, MAIN_EMAIL, MAIN_BIRTH, MAIN_EMP FROM MAIN WHERE MAIN_ID = 'zongyeng' AND  MAIN_PASSWORD = '1234';
SELECT * FROM MAIN;

DROP TABLE DOCSETTLE;
DROP SEQUENCE DOCSEQ;

CREATE SEQUENCE DOCSEQ;

CREATE TABLE DOCSETTLE (
	DOC_SEQ NUMBER PRIMARY KEY,                -- 문서 번호
	TITLE VARCHAR2(100),                       -- 문서 제목
	WRITER VARCHAR2(100),                      -- 작성자
	CONTENT VARCHAR2(100),                     -- 내용
	DRAFT_DATE VARCHAR2(100) DEFAULT SYSDATE,  -- 기안일
	DEADLINE VARCHAR2(100),                    -- 결재기한
	FSETTLE_DATE VARCHAR2(100),                -- 최종결재일
	COLLABORATOR VARCHAR2(100),                -- 협조자
	SETTLEMENT VARCHAR2(100),                  -- 결재자
	DOC_LOCATION VARCHAR2(1000),               -- 첨부파일 위치
	SETTLE_SEND NUMBER DEFAULT 0               -- 결제 진행 상태
);

SELECT * FROM DOCSETTLE;

DROP SEQUENCE ALERTSEQ;
DROP TABLE ALERT;

CREATE SEQUENCE ALERTSEQ;
CREATE TABLE ALERT (
	ALERT_SEQ NUMBER PRIMARY KEY,
	TITLE VARCHAR2(100),
	WRITER VARCHAR2(100),
	DEADLINE VARCHAR2(100)
);

DELETE FROM ALERT;

SELECT * FROM ALERT;

-- Calendar
--
DROP TABLE CALBOARD;
DROP SEQUENCE CALBOARDSEQ;

CREATE SEQUENCE CALBOARDSEQ;

CREATE TABLE CALBOARD(
	SEQ NUMBER PRIMARY KEY,
	TITLE VARCHAR2(2000) NOT NULL,
	EVENTSTART VARCHAR2(20) NOT NULL,
	EVENTEND VARCHAR2(20) NOT NULL,
	DESCRIPTION VARCHAR2(2000),
	EVENTTYPE VARCHAR2(20),
	BGCOLOR VARCHAR2(20) NOT NULL,
	TEXTCOLOR VARCHAR2(20) NOT NULL,
	ALRAM NUMBER,
	ALLDAY CHAR(1) CHECK (ALLDAY IN ('Y','N'))
);

SELECT * FROM CALBOARD;

-- row_number() over(partition by @ order by)
-- @로 group by 해서 그룹별 rownum을 사용

SELECT *
FROM (SELECT (ROW_NUMBER() OVER(PARTITION BY SUBSTR(EVENTSTART,1,10) ORDER BY EVENTSTART)) RN,
	SEQ,TITLE,EVENTSTART,EVENTEND,DESCRIPTION,EVENTTYPE,BGCOLOR,TEXTCOLOR,ALRAM,ALLDAY 
	FROM CALBOARD
	WHERE SUBSTR(EVENTSTART,0,7)='2019-10')
WHERE RN BETWEEN 1 AND 5;
	
INSERT INTO CALBOARD VALUES(CALBOARDSEQ.NEXTVAL,'회의','2019-10-10 10:00','2019-10-10 11:30','Final Project','카테고리1','#9775fa','#ffffff',0,'N');
INSERT INTO CALBOARD VALUES(CALBOARDSEQ.NEXTVAL,'Meeting','2019-10-11 15:30','2019-10-11 16:30','Final Project','카테고리2','#ffa94d','#ffffff',15,'N');
INSERT INTO CALBOARD VALUES(CALBOARDSEQ.NEXTVAL,'회의','2019-10-12 10:30','2019-10-12 11:30','Final Project','카테고리3','#74c0fc','#ffffff',60,'N');
INSERT INTO CALBOARD VALUES(CALBOARDSEQ.NEXTVAL,'회의','2019-11-12 10:30','2019-11-12 11:30','Final Project','카테고리4','#74c0fc','#ffffff',60,'N');
INSERT INTO CALBOARD VALUES(CALBOARDSEQ.NEXTVAL,'Meeting','2019-10-13 15:30','2019-10-13 16:30','Final Project','카테고리2','#ffa94d','#ffffff',15,'N');

SELECT SEQ,TITLE,EVENTSTART,EVENTEND,DESCRIPTION,EVENTTYPE,BGCOLOR,TEXTCOLOR,ALRAM,ALLDAY
  			FROM CALBOARD
  			WHERE SUBSTR(EVENTSTART,0,7)='2019-10';

