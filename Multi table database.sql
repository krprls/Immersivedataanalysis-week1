CREATE database People;
use People;
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    breed VARCHAR(50),
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);

select * from person inner join 
person_pet on person.id = person_pet.person_id
inner join pet on person_pet.pet_id = pet.id;

insert into person values (1,'Dave','wolf',99);
insert into person values (2, 'Bart', 'Simpson',10);
insert into person values (3, 'Robert','Dunkin', 99);
select * from person;

insert into pet values (10, 'fifi', 'dog', 4, 1);
insert into pet values (11, 'toto', 'dog', 8, 1);
insert into pet values (12, 'cat1', 'cat', 5, 1);
insert into pet values (13, 'cat2', 'cat', 5, 1);
insert into pet values (14, 'cat3', 'cat', 6, 1);
insert into pet values (15, 'cat4', 'cat', 8, 1);
insert into pet values (16, 'cat5', 'cat', 3, 1);
select * from pet;

insert into person_pet values (1,10);
insert into person_pet values (2,11);
insert into person_pet values (2,10);
insert into person_pet values (3,12);
insert into person_pet values (3,13);
insert into person_pet values (3,14);
insert into person_pet values (3,15);
insert into person_pet values (3,16);


CREATE TABLE personWithPet (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER,
    /*adding pet info*/
    id_pet INTEGER,
    name VARCHAR(50),
    breed VARCHAR(50),
    age_pet INTEGER,
    dead INTEGER
);

insert into personwithpet values(1, 'Dave', 'Wolf', 99, 10, 'fifi', 'dog', 4, 1);
insert into personwithpet values(2, 'Dave', 'Wolf', 99, 11, 'toto', 'dog', 8, 1);