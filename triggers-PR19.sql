/*
CSY2038 Assignment 2

Ross Goodliffe - 16441847

*/
--@J:\CSY2038/triggers-PR19.sql


/*
--Records an audit trail for the user
CREATE OR REPLACE TRIGGER trig_create
BEFORE CREATE ON CSY2038.SCHEMA
BEGIN
	INSERT INTO audit_create_table (user_account, date_timestamp)
	VALUES(USER.SYSDATE);
END;
*/

SET SERVEROUTPUT ON

--Checks in booking date is after current date
CREATE OR REPLACE TRIGGER trig_date_ck
BEFORE INSERT OR UPDATE OF booking_date ON bookings
FOR EACH ROW
WHEN (NEW.booking_date < SYSDATE)

BEGIN

RAISE_APPLICATION_ERROR(-20000, 'ERROR - BOOKING_DATE MUST BE AFTER CURRENT DATE');

END trig_date_ck;
/


--Checks that Testimony given isn't blank
CREATE OR REPLACE TRIGGER trig_testimony_ck
BEFORE INSERT OR UPDATE OF testimonial_statement ON testimonials
FOR EACH ROW
WHEN (NEW.testimonial_statement = NULL)

BEGIN

RAISE_APPLICATION_ERROR(-20000, 'Testimony statement cannot be blank');

END trig_testimony_ck;
/

