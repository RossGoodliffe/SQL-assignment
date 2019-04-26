/*
CSY2038 Assignment 2

Ross Goodliffe - 16441847


CourseWork Login
CSY2038_285@student/CSY2038_285
*/

--@J:\CSY2038/drop-PR19.sql


--Triggers
DROP TRIGGER trig_date_ck;

--Constraints
--Checks
ALTER TABLE teams
DROP CONSTRAINT ck_team_name;

ALTER TABLE teams
DROP CONSTRAINT ck_team_leader;

ALTER TABLE designers
DROP CONSTRAINT ck_designer_firstname;

ALTER TABLE designers
DROP CONSTRAINT ck_designer_surname;

ALTER TABLE customers
DROP CONSTRAINT ck_customer_firstname;

ALTER TABLE customers
DROP CONSTRAINT ck_customer_surname;

ALTER TABLE designers
DROP CONSTRAINT ck_designer_title;

ALTER TABLE designers
DROP CONSTRAINT ck_available;

ALTER TABLE customers
DROP CONSTRAINT ck_customer_title;

--FK
ALTER TABLE designers
DROP CONSTRAINT fk_d_teams;

ALTER TABLE testimonials
DROP CONSTRAINT fk_t_designers;

ALTER TABLE bookings
DROP CONSTRAINT fk_b_designers;

ALTER TABLE customer_rooms
DROP CONSTRAINT fk_cr_customers;

ALTER TABLE customer_rooms
DROP CONSTRAINT fk_cr_booking;


--PK
ALTER TABLE customers
DROP CONSTRAINT pk_customer_id;

ALTER TABLE customer_rooms
DROP CONSTRAINT pk_room_id;

ALTER TABLE bookings
DROP CONSTRAINT pk_booking_id;

ALTER TABLE testimonials
DROP CONSTRAINT pk_testimonial_id;

ALTER TABLE designers
DROP CONSTRAINT pk_designer_id;

ALTER TABLE teams
DROP CONSTRAINT pk_team_id;



--Tables
DROP TABLE addresses;

DROP TABLE testimonials;

DROP TABLE customer_rooms;

DROP TABLE bookings;

DROP TABLE designers;

DROP TABLE teams;

DROP TABLE customers;


--Types
DROP TYPE address_type;




PURGE RECYCLEBIN;

--Queries to check if everything has been deleted

SELECT * FROM tab;
 
SELECT * FROM user_objects;