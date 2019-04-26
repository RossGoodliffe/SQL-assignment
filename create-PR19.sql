/*
CSY2038 Assignment 2

Ross Goodliffe - 16441847


CSY2038_285@student/CSY2038_285
*/
--@J:\CSY2038/create-PR19.sql


--------------- TYPES ---------------
CREATE OR REPLACE TYPE address_type AS OBJECT
(
house_name		VARCHAR2(20),
street			VARCHAR2(20),
city			VARCHAR2(20),
postcode		VARCHAR2(9)
);
/

--Creation of table for object address_type
CREATE TABLE addresses OF address_type;


--------------- TABLES ---------------
CREATE TABLE teams
(
team_id     NUMBER(6),
team_name   VARCHAR2(20),
team_size   NUMBER(5),
team_leader VARCHAR2(50)
);


CREATE TABLE designers
(
designer_id     NUMBER(6),
designer_title           VARCHAR2(5),
designer_firstname       VARCHAR2(20),
designer_surname         VARCHAR2(20),
designer_telephone       VARCHAR2(12), --VARCHAR2 used as designer may use +44
designer_email           VARCHAR2(50),
designer_speciality		 VARCHAR2(30),
designer_salary			 NUMBER(8),
available       CHAR, --Either Y or N
team_id         NUMBER(6) -- FK linked to teams table
);



CREATE TABLE testimonials
(
testimonial_id  NUMBER(6),
testimonial_statement   VARCHAR2(150),
statement_by        VARCHAR2(30),
position_held       VARCHAR2(30),
designer_id     NUMBER(6) --FK linked to designers table
);


CREATE TABLE bookings
(
booking_id      NUMBER(6),
booking_date    DATE,
booking_details VARCHAR2(100),
designer_id     NUMBER(6) --FK linked to designers table
);


CREATE TABLE customer_rooms
(
room_id     NUMBER(6),
room_size   VARCHAR2(10),
customer_id NUMBER(6),  --FK linked to customers table
booking_id  NUMBER(6)   --FK linked to bookings table
);


CREATE TABLE customers
(
customer_id     NUMBER(6),
customer_title           VARCHAR2(5),
customer_firstname       VARCHAR2(20),
customer_surname         VARCHAR2(20),
customer_telephone       VARCHAR2(12), --VARCHAR2 used as customer may use +44
address			REF address_type SCOPE IS addresses
);


