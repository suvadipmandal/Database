CREATE OR REPLACE TRIGGER HALUM AFTER INSERT ON X FOR EACH ROW
DECLARE
REGNO1 X.REGNO%TYPE;
NAME1 X.NAME%TYPE;
BEGIN
REGNO1:=:NEW.REGNO;
NAME1:=:NEW.NAME;
INSERT INTO Y VALUES(REGNO1,NAME1,SYSDATE);
END;