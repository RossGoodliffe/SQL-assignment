/*
CSY2038 Assignment 2

Ross Goodliffe - 16441847

*/
--@J:\CSY2038/queries-PR19.sql

---FINDING DESIGNERS WITH PARTICULAR TESTIMONIAL STATEMENT BY---
SELECT designer_firstname, designer_surname
FROM testimonials
JOIN designers
ON designers.designer_id = testimonials.designer_id
WHERE statement_by = 'JOHNY';


---FINDING DESIGNERS THAT ARE AVAILABLE---
SELECT designer_firstname, designer_surname, available
FROM bookings
JOIN designers
ON designers.designer_id = bookings.designer_id
WHERE available = 'Y';


--FIND DESIGNER WITH 1 OR A DIFFERENT SPECIALITY AND ARE AVALIABLE
SELECT designer_firstname, designer_surname, designer_speciality, available
FROM designers
WHERE designer_speciality = 'RESTORATION'
OR designer_speciality = 'CLASSIC'
AND available = 'Y'
ORDER BY designer_speciality;


--FIND DESIGNERS WITH SALARYS BETWEEN 2 NUMBERS
SELECT designer_firstname, designer_surname, designer_salary
FROM designers
WHERE designer_salary
BETWEEN '15000' AND '30000';


--RETURN ALL DESIGNERS AND THEIR TESTIMONEES
SELECT testimonials.statement_by, designers.designer_firstname, designers.designer_surname
FROM testimonials
RIGHT JOIN designers ON testimonials.testimonial_id = designers.designer_id
ORDER BY testimonials.testimonial_id;


--SELECT ALL CUSTOMER NAMES WITH BOOKING BETWEEN NOW AND CERTAIN DATE
SELECT customers.customer_firstname, customers.customer_surname, bookings.booking_date, bookings.booking_details
FROM ((customer_rooms
INNER JOIN customers ON customer_rooms.customer_id = customers.customer_id)
INNER JOIN bookings ON customer_rooms.booking_id = bookings.booking_id)
WHERE bookings.booking_date
BETWEEN sysdate
AND '01-NOV-2018';

--LIST ALL TEAMS AND THEIR DESIGNERS
SELECT teams.team_id, teams.team_name, teams.team_leader, designers.designer_firstname, designers.designer_surname
FROM teams
LEFT JOIN designers ON teams.team_id = designers.designer_id
ORDER BY teams.team_name;


--Object Query - Selecting all customers who live in TURVEY
SELECT customer_firstname, customer_surname, c.address.house_name, c.address.street, c.address.city. c.address.postcode
FROM customers customer_firstname
WHERE c.address.city = 'TURVEY';






