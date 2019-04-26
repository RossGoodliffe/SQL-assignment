/*
CSY2038 Assignment 2

Ross Goodliffe - 16441847


*/

--@J:\CSY2038/insert-PR19.sql


INSERT INTO addresses
(house_name, street, city, postcode)
VALUES
('HAWTHORNS', 'MAY ROAD', 'TURVEY', 'MK43 8DT')
;

INSERT INTO customers(customer_id, customer_title, customer_firstname, customer_surname, customer_telephone, address)
	SELECT 1, 'MR', 'ROSS', 'GOODLIFFE', '01234881632', REF(a)
	FROM addresses	a
	WHERE house_name = 'HAWTHORNS'
	AND street = 'MAY ROAD';

	
INSERT INTO addresses
(house_name, street, city, postcode)
VALUES
('2', 'BOUVERIE WALK', 'NORTHAMPTON', 'NN1 5SP')
;

INSERT INTO customers(customer_id, customer_title, customer_firstname, customer_surname, customer_telephone, address)
	SELECT 2, 'MR', 'DEV', 'YADAV', '01234881632', REF(a)
	FROM addresses	a
	WHERE house_name = '2'
	AND street = 'BOUVERIE WALK';
	
	
	
	--insert of type
	
	
	

INSERT INTO teams
(team_id, team_name, team_size, team_leader)
VALUES
(1, 'BLUEPRINT', 10, 'TAHIG'); 

INSERT INTO teams
(team_id, team_name, team_size, team_leader)
VALUES
(2, 'YELLOWPRINT', 8, 'ROSS'); 
	
INSERT INTO teams
(team_id, team_name, team_size, team_leader)
VALUES
(3, 'PINKPRINT', 100, 'TASHE'); 
	
	
	
	
INSERT INTO designers
(designer_id, designer_title, designer_firstname, designer_surname, designer_telephone, designer_email, designer_speciality, designer_salary, available, team_id)
VALUES
(1, 'MR', 'TONY', 'SMITH', '01234881632', 'TONY@EMAIL.COM', 'MODERN',27000, 'Y', 1); 
	

INSERT INTO designers
(designer_id, designer_title, designer_firstname, designer_surname, designer_telephone, designer_email, designer_speciality, designer_salary, available, team_id)
VALUES
(2, 'MR', 'DEV', 'YADAV', '01234881632', 'DEV@EMAIL.COM', 'CLASSIC', 40000, 'N', 1); 

INSERT INTO designers
(designer_id, designer_title, designer_firstname, designer_surname, designer_telephone, designer_email, designer_speciality, designer_salary, available, team_id)
VALUES
(3, 'MRS', 'SARAH', 'JANE', '01234881632', 'SARAH@EMAIL.COM', 'RESTORATION', 30000, 'Y', 2); 

INSERT INTO designers
(designer_id, designer_title, designer_firstname, designer_surname, designer_telephone, designer_email, designer_speciality, designer_salary, available, team_id)
VALUES
(4, 'MR', 'MATTY', 'NORBURY', '01234881632', 'MATTY@EMAIL.COM', 'CLASSIC', 19000, 'Y', 2); 

INSERT INTO designers
(designer_id, designer_title, designer_firstname, designer_surname, designer_telephone, designer_email, designer_speciality, designer_salary, available, team_id)
VALUES
(5, 'MR', 'ETHAN', 'GOLDRING', '01234881632', 'ETHAN@EMAIL.COM', 'CLASSIC', 40000, 'N', 2); 


	
INSERT INTO testimonials
(testimonial_id , testimonial_statement, statement_by, position_held, designer_id)
VALUES
(1, 'HE IS GOOD', 'JOHNY', 'HEAD OF DESIGN UON', 2); 	

INSERT INTO testimonials
(testimonial_id , testimonial_statement, statement_by, position_held, designer_id)
VALUES
(2, 'HE IS COOL', 'JOHNY', 'DESIGNER AT GQ', 1); 	

INSERT INTO testimonials
(testimonial_id , testimonial_statement, statement_by, position_held, designer_id)
VALUES
(3, 'SHE IS CLEVER', 'BILL', 'GRAPHIC DESIGNER', 3); 	
	
	
	
	
INSERT INTO bookings
(booking_id, booking_date, booking_details, designer_id)
VALUES
(1, '01-DEC-2018', 'DRAWERS ARE GOING TO BE FIXED', 1); 

INSERT INTO bookings
(booking_id, booking_date, booking_details, designer_id)
VALUES
(2, '28-SEP-2018', 'LEGS TO BE FITTED TO TABLE', 3); 

INSERT INTO bookings
(booking_id, booking_date, booking_details, designer_id)
VALUES
(3, '01-NOV-2018', 'CUBOARD DOOR TO BE FIXED', 2); 




INSERT INTO customer_rooms
(room_id, room_size, customer_id, booking_id)
VALUES
(1, '50 SQ FT', 1, 2); 

INSERT INTO customer_rooms
(room_id, room_size, customer_id, booking_id)
VALUES
(2, '60 SQ FT', 1, 1); 

INSERT INTO customer_rooms
(room_id, room_size, customer_id, booking_id)
VALUES
(3, '80 SQ FT', 2, 3); 



