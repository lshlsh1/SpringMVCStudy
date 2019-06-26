SELECT USER
FROM DUAL;
--==>>SCOTT

--�� ���� ���̺� ����
DROP TABLE TBL_MEMBERLIST;

--�� �ǽ� ��� ���̺� ����
CREATE TABLE TBL_MEMBERLIST
( MID       NUMBER
, NAME      VARCHAR2(30)
, TELEPHONE VARCHAR2(40)
, CONSTRAINT MEMBERLIST_MID_PK  PRIMARY KEY(MID)
);
--==>>Table TBL_MEMBERLIST��(��) �����Ǿ����ϴ�.

--�� ���� ������ ����
DROP SEQUENCE MEMBERLISTSEQ;
--==>>Sequence MEMBERLISTSEQ��(��) �����Ǿ����ϴ�.

--�� �ǽ� ��� ������ ����
CREATE SEQUENCE MEMBERLISTSEQ
NOCACHE;
--==>>Sequence MEMBERLISTSEQ��(��) �����Ǿ����ϴ�.

--�� ������ �Է�
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE)
VALUES(MEMBERLISTSEQ.NEXTVAL, '�ѽ¿�', '010-9999-9999');
--==>>1 �� ��(��) ���ԵǾ����ϴ�.

--�� Ȯ��
SELECT MID, NAME, TELEPHONE
FROM TBL_MEMBERLIST
ORDER BY MID;


--�� Ŀ��
COMMIT;
--==>>Ŀ�� �Ϸ�

--�� �ο� �� Ȯ��
SELECT COUNT(*) AS COUNT
FROM TBL_MEMBERLIST;
--==>>1

--�� ������ �߰� �Է�
INSERT INTO TBL_MEMBERLIST(MID, NAME, TELEPHONE)
VALUES(MEMBERLISTSEQ.NEXTVAL, '������', '010-8888-8888');
--==>>1 �� ��(��) ���ԵǾ����ϴ�.

--�� Ŀ��
COMMIT;
--==>>Ŀ�� �Ϸ�.

DELETE
FROM TBL_MEMBERLIST
WHERE MID = #{mid };

UPDATE TBL_MEMBERLIST
SET NAME='����', TELEPHONE='010'
WHERE MID = 5;

SELECT *
FROM TBL_MEMBERLIST
WHERE MID = 5;











