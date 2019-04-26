/*
CSY2038 Assignment 2

Ross Goodliffe - 16441847

*/

--@J:\CSY2038/cursor-PR19.sql
SET SERVEROUTPUT ON

DECLARE 
    CURSOR cur_designers IS
        SELECT designer_title, designer_firstname, designer_surname, designer_email, available
        FROM designers;
        
    rec_cur_designers       cur_designers%ROWTYPE;

BEGIN
    OPEN cur_designers;
    FETCH cur_designers INTO rec_cur_designers;
    
    IF rec_cur_designers.available = 'Y' THEN

			DBMS_OUTPUT.PUT_LINE(rec_cur_designers.designer_title ||' ' ||
            rec_cur_designers.designer_firstname || ' ' ||
            rec_cur_designers.designer_surname || ' ' ||
            rec_cur_designers.designer_email);

			CLOSE cur_designers;

    END IF;
END;
/


