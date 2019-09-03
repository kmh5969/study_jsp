DROP SEQUENCE MDBOARDSEQ;
DROP TABLE MDBOARD;

CREATE SEQUENCE MDBOARDSEQ;

CREATE TABLE MDBOARD(
	SEQ NUMBER PRIMARY KEY,
	WRITER VARCHAR2(500) NOT NULL,
	TITLE VARCHAR2(2000) NOT NULL,
	CONTENT VARCHAR2(4000) NOT NULL,
	REGDATE DATE NOT NULL
);

INSERT INTO MDBOARD
VALUES(MDBOARDSEQ.NEXTVAL, '관리자', 'TEST', '테스트중', SYSDATE);

SELECT SEQ, WRITER, TITLE, CONTENT, REGDATE
FROM MDBOARD
ORDER BY SEQ DESC;