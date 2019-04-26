/*
CSY2038 Assignment 2

Ross Goodliffe - 16441847


CourseWork Login
CSY2038_285@student/CSY2038_285
*/
--@J:\CSY2038/plsql-PR19.sql

SET SERVEROUTPUT ON

DECLARE
--Address Variables
v_a_house_name		VARCHAR2(20);
v_a_street			VARCHAR2(20);
v_a_city			VARCHAR2(20);
v_a_postcode		VARCHAR2(9);


--change ID 
--Customer Variables
v_c_id              NUMBER(6) := 999; -- to ensure that it will still run if insert script it run first
v_c_title           VARCHAR2(5);
v_c_fname           VARCHAR2(20);
v_c_sname           VARCHAR2(20);
v_c_telephone       VARCHAR2(12);

--ADD
--named procedure and function

BEGIN

WHILE (v_c_id  <= 5)  
    LOOP
        v_c_title       := 'MR';
        v_c_fname       := 'FIRSTNAME' || v_c_id;
        v_c_sname       := 'SURNAME' || v_c_id;
        v_c_telephone       := 'TELEPHONE' || v_c_id;
		
		v_a_house_name       := 'HOUSE' || v_c_id;
        v_a_street       := 'STREET' || v_c_id;
        v_a_city       := 'CITY' || v_c_id;
        v_a_postcode       := 'POSTCODE' || v_c_id;
		
		INSERT INTO addresses(house_name, street, city, postcode)
			VALUES(v_a_house_name, v_a_street, v_a_city, v_a_postcode);
        
        INSERT INTO customers(customer_id, customer_title, customer_firstname, customer_surname, customer_telephone)
                       VALUES (v_c_id, v_c_title, v_c_fname, v_c_sname, v_c_telephone);
					   
					   			DBMS_OUTPUT.PUT_LINE(v_c_id ||' ' ||
								v_c_title || ' ' ||
								v_c_fname || ' ' ||
								v_c_sname || ' ' ||
								v_a_house_name || ' ' ||
								v_a_street || ' ' ||
								v_a_city || ' ' ||
								v_a_postcode || ' has been added to customers and addresses table ' 
								);
					   
					   
 
	v_c_id := v_c_id + 1;
    END LOOP;

COMMIT;
END;
/





