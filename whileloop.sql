SET SERVEROUTPUT ON;
DECLARE
		i NUMBER:=1;                           
		j NUMBER;
		k NUMBER;
BEGIN
		WHILE i<=5 LOOP
			k:=5-i;
			j:=1;
			WHILE k>=0 LOOP
				DBMS_OUTPUT.PUT(',');
				k:=k-1;
			END loop;
			while j<=i LOOP
				DBMS_OUTPUT.PUT('-');
				 IF j < i THEN
					DBMS_OUTPUT.PUT(' '); 
                 END IF;
					j:=j+1;
			END LOOP;
				DBMS_OUTPUT.PUT_LINE(' ');
				i:=i+1;
				
		END LOOP;
END;
/


  
    