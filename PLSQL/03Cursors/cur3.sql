DECLARE
CURSOR CHUNCHO IS SELECT REGNO,NAME,S1,S2,S3 FROM STUDENT;
REGNO1 STUDENT.REGNO%TYPE;
NAME1 STUDENT.NAME%TYPE;
SUB1 STUDENT.S1%TYPE;
SUB2 STUDENT.S2%TYPE;
SUB3 STUDENT.S3%TYPE;
TOT1 STUDENT.TOT%TYPE;
AVGR1 STUDENT.AVGR%TYPE;
GRD1 STUDENT.GRD%TYPE;
BEGIN
OPEN CHUNCHO;
LOOP
FETCH CHUNCHO INTO REGNO1,NAME1,SUB1,SUB2,SUB3;
EXIT WHEN CHUNCHO%NOTFOUND;
TOT1:=SUB1+SUB2+SUB3;
AVGR1:=TOT1/3;
IF AVGR1>=75 THEN
GRD1:='1ST(*)';
END IF;
IF AVGR1>=60 AND AVGR1<75 THEN
GRD1:='1ST';
END IF;
IF AVGR1>=45 AND AVGR1<60 THEN
GRD1:='2ND';
END IF;
IF AVGR1>=34 AND AVGR1<45 THEN
GRD1:='3RD';
END IF;
IF AVGR1<34 THEN
GRD1:='FELUDA';
END IF;
DBMS_OUtPUT.PUT_LINE('RECORD NUMBER: '||CHUNCHO%ROWCOUNT);
DBMS_OUtPUT.PUT_LINE('REGISTRATION NO. : '||REGNO1);
DBMS_OUtPUT.PUT_LINE('NAME :'||NAME1);
DBMS_OUtPUT.PUT_LINE('MARKS OF SUBJECT1 :'||SUB1);
DBMS_OUtPUT.PUT_LINE('MARKS OF SUBJECT2 :'||SUB2);
DBMS_OUtPUT.PUT_LINE('MARKS OF SUBJECT3 :'||SUB3);
DBMS_OUtPUT.PUT_LINE('TOTAL MARKS :'||TOT1);
DBMS_OUtPUT.PUT_LINE('AVG MARKS :'||AVGR1);
DBMS_OUtPUT.PUT_LINE('GRADE OBTAINED :'||GRD1);
DBMS_OUtPUT.PUT_LINE('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
END LOOP;

CLOSE CHUNCHO;
END;