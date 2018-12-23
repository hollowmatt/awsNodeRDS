DROP DATABASE IF EXISTS timey;
CREATE DATABASE IF NOT EXISTS timey;
USE timey;

CREATE TABLE users(
	user_id int not null auto_increment primary key,
	user_name varchar(10) not null,
	first_name varchar(40) not null,
	last_name varchar(50) not null
) ENGINE=InnoDB;

CREATE TABLE categories(
	category_id int not null auto_increment primary key,
	category_name varchar(50)
) ENGINE=InnoDB;

CREATE TABLE events(
	event_id int not null auto_increment primary key,
	event_date date not null,
	duration int not null,
	user_id int not null,
	category_id int not null,
	FOREIGN KEY fk_event_cat(category_id)
	REFERENCES categories(category_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
	FOREIGN KEY fk_event_user(user_id)
	REFERENCES users(user_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
) ENGINE=InnoDB;


CREATE TABLE meetings(
	meeting_id int not null auto_increment primary key,
	category_id int not null,
	duration int not null,
	FOREIGN KEY fk_meeting_cat(category_id)
	REFERENCES categories(category_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE participants(
	meeting_id int not null,
	user_id int not null,
	FOREIGN KEY fk_participant_meeting(meeting_id)
	REFERENCES meetings(meeting_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
	FOREIGN KEY fk_participant_user(user_id)
	REFERENCES users(user_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE cost (
	avg_cost float
) ENGINE=InnoDB;
