/*
CSY2038 Assignment 2

Ross Goodliffe - 16441847


CSY2038_285@student/CSY2038_285
*/
--@J:\CSY2038/alter-PR19.sql

--Primary Keys--

ALTER TABLE teams
ADD CONSTRAINT pk_team_id
PRIMARY KEY (team_id);

ALTER TABLE designers
ADD CONSTRAINT pk_designer_id
PRIMARY KEY (designer_id);

ALTER TABLE testimonials
ADD CONSTRAINT pk_testimonial_id
PRIMARY KEY (testimonial_id);

ALTER TABLE bookings
ADD CONSTRAINT pk_booking_id
PRIMARY KEY (booking_id);

ALTER TABLE customer_rooms
ADD CONSTRAINT pk_room_id
PRIMARY KEY (room_id);

ALTER TABLE customers
ADD CONSTRAINT pk_customer_id
PRIMARY KEY (customer_id);

--Foreign Keys--

ALTER TABLE designers
ADD CONSTRAINT fk_d_teams
FOREIGN KEY (team_id)
REFERENCES teams(team_id);

ALTER TABLE testimonials
ADD CONSTRAINT fk_t_designers
FOREIGN KEY (designer_id)
REFERENCES designers(designer_id);

ALTER TABLE bookings
ADD CONSTRAINT fk_b_designers
FOREIGN KEY (designer_id)
REFERENCES designers(designer_id);

ALTER TABLE customer_rooms
ADD CONSTRAINT fk_cr_customers
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE customer_rooms
ADD CONSTRAINT fk_cr_booking
FOREIGN KEY (booking_id)
REFERENCES bookings(booking_id);


--CHECK--

ALTER TABLE teams
ADD CONSTRAINT ck_team_name
CHECK (team_name = UPPER(team_name));

ALTER TABLE teams
ADD CONSTRAINT ck_team_leader
CHECK (team_leader = UPPER(team_leader));

ALTER TABLE designers
ADD CONSTRAINT ck_designer_firstname
CHECK (designer_firstname = UPPER(designer_firstname));

ALTER TABLE designers
ADD CONSTRAINT ck_designer_surname
CHECK (designer_surname = UPPER(designer_surname));

ALTER TABLE customers
ADD CONSTRAINT ck_customer_firstname
CHECK (customer_firstname = UPPER(customer_firstname));

ALTER TABLE customers
ADD CONSTRAINT ck_customer_surname
CHECK (customer_surname = UPPER(customer_surname));

ALTER TABLE designers
ADD CONSTRAINT ck_designer_title
CHECK (designer_title IN ('MRS', 'MISS', 'MR', 'DR'));

ALTER TABLE designers
ADD CONSTRAINT ck_available
CHECK (available IN ('Y', 'N'));

ALTER TABLE customers
ADD CONSTRAINT ck_customer_title
CHECK (customer_title IN ('MRS', 'MISS', 'MR', 'DR'));