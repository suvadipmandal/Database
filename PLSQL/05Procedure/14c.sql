create or replace procedure format_phone_number(p_phone_no IN OUT varchar2) IS
BEGIN
	p_phone_no := '(' || SUBSTR(p_phone_no,1,3) || ')' ||
			SUBSTR(p_phone_no,4,3) || '-' ||
			SUBSTR(p_phone_no,7);
END;
/

declare
 v_p_no varchar2(15);
begin
 v_p_no := '7679107247';
 format_phone_number(v_p_no);
 dbms_output.put_line(v_p_no);
END;
/