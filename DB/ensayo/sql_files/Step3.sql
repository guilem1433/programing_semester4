create table person(
  person_id smallint unsigned primary key,
  fname varchar(20),
  lname varchar(20),
  gender char(1),
  birth_date date,
  street varchar(30),
  city varchar(20),
  state varchar(20),
  country varchar(20),
  postal_code varchar(20)
);

create table favorite_food(
  person_id smallint unsigned,
  food varchar(20),
  constraint pk_favorite_food primary key (person_id, food),
    constraint fk_favorite_food_id foreign key (person_id)
                          references person(person_id)
);
