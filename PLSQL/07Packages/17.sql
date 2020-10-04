create or replace package global_constants is
	mile_to_km CONSTANT number :=1.6093;
	km_to_mile CONSTANT number :=0.6215;
END;
/

--execute dbms_output.put_line(20 * global_constants.mile_to_km);