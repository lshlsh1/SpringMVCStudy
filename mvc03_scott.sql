SELECT USER
FROM DUAL;

DESC TBL_MEMBERLIST;

DROP TABLE TBL_MEMBERLIST;

--�� �ǽ� ���̺� ����(TBL_MEMBERLIST)
CREATE TABLE TBL_MEMBERLIST
( MID           NUMBER
, NAME          VARCHAR2(30)
, TELEPHONE     VARCHAR2(50)
, CONSTRAINT MEMBERLIST_MID_PK  PRIMARY KEY(MID)
);

--�� ������ ����(MEMBERLISTSEQ)
CREATE SEQUENCE MEMBERLISTSEQ
NOCACHE;

--�� ���� ������ �Է�
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE)
VALUES(MEMBERLISTSEQ.NEXTVAL, '������', '010-2345-6789');
-->�� �� ����
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE) VALUES(MEMBERLISTSEQ.NEXTVAL, '������', '010-2345-6789')
;
--==>>1 �� ��(��) ���ԵǾ����ϴ�.
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE) VALUES(MEMBERLISTSEQ.NEXTVAL, '�ѽ¿�', '010-1234-5678')
;

COMMIT;

--�� ��� ��ȸ ������ ����
SELECT MID, NAME, TELEPHONE
FROM TBL_MEMBERLIST
ORDER BY MID;
-->�� �� ����
SELECT MID, NAME, TELEPHONE FROM TBL_MEMBERLIST ORDER BY MID
;
--==>>
/*
1	������	010-2345-6789
2	�ѽ¿�	010-1234-5678
*/

--�� �ο� �� ��ȸ ������ ����
SELECT COUNT(*) AS COUNT
FROM TBL_MEMBERLIST;
-->�� �� ����
SELECT COUNT(*) AS COUNT FROM TBL_MEMBERLIST
;
--==>>2

