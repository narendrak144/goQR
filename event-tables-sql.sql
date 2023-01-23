

--ALTER TABLE post_message ADD COLUMN user_id bigint DEFAULT 0;

CREATE TABLE event_order.event (
	event_id serial PRIMARY KEY,
	event_name VARCHAR ( 100 ) NOT NULL,
	status VARCHAR ( 10 ) NOT NULL,
	description VARCHAR ( 500 ) default NULL,
	start_time TIMESTAMP NOT NULL,
	end_time TIMESTAMP NOT NULL
);

CREATE TABLE event_order.category (
	id serial PRIMARY KEY,
	name VARCHAR ( 100 ) NOT NULL,
	description VARCHAR ( 500 ) default NULL,
	created_on TIMESTAMP NOT NULL,
	event_id bigint default null
);

CREATE TABLE event_order.sub_category (
	id serial PRIMARY KEY,
	name VARCHAR ( 100 ) NOT NULL,
	description VARCHAR ( 500 ) default NULL,
	created_on TIMESTAMP NOT NULL,
	category_id bigint default null
);

CREATE TABLE event_order.menu (
	id serial PRIMARY KEY,
	name VARCHAR ( 100 ) NOT NULL,
	description VARCHAR ( 500 ) default NULL,
	created_on TIMESTAMP NOT NULL,
	sub_category_id bigint default null
);