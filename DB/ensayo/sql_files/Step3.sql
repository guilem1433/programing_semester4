#Primary keys.
CREATE TABLE person
(person_id SMALLINT UNSIGNED,
fname VARCHAR(20),
lname VARCHAR(20),
gender enum('M','F'),
birth_date DATE,
street VARCHAR(30),
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20),
postal_code VARCHAR(20),
CONSTRAINT pk_person PRIMARY KEY (person_id)
);

 create table favorite_food(
    person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key (person_id, food)
 );

