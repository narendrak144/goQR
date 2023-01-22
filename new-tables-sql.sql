CREATE TABLE emoji_reactions (
	id serial PRIMARY KEY,
	user_id bigint NOT NULL,
	message_id bigint NOT NULL,
	emoji_unicode VARCHAR ( 25 ) NOT NULL,
	created_on TIMESTAMP NOT NULL
);

ALTER TABLE post_message ADD COLUMN user_id bigint DEFAULT 0;

CREATE TABLE post_message_reactions (
	id serial PRIMARY KEY,
	user_id bigint NOT NULL,
	message_id bigint NOT NULL,
	emoji_unicode VARCHAR ( 25 ) NOT NULL,
	created_on TIMESTAMP NOT NULL
);