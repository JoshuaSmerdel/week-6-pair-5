DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS procedures;
DROP TABLE IF EXISTS health_history;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS animal_types;
DROP TABLE IF EXISTS cost_scale;


CREATE TABLE pet
(
    pet_id         serial      NOT NULL,
    pet_name       varchar(20) NOT NULL,
    animal_type_id int         NOT NULL,
    date_of_birth  date        NOT NULL,
    customer_id    int         NOT NULL,
    PRIMARY KEY (pet_id)
);

CREATE TABLE customer
(
    customer_id  serial      NOT NULL,
    first_name   varchar(20) NOT NULL,
    last_name    varchar(30) NOT NULL,
    phone_number bigint      NOT NULL,
    street       varchar(30) NOT NULL,
    city         varchar(25) NOT NULL,
    state        varchar(2)  NOT NULL,
    zip_code     int         NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE TABLE health_history
(
    procedure_id   int  NOT NULL,
    procedure_date date NOT NULL,
    pet_id         int  NOT NULL,
    PRIMARY KEY (procedure_id, procedure_date, pet_id)
);

CREATE TABLE procedures
(
    procedure_id   serial      NOT NULL,
    animal_type_id int         NOT NULL,
    procedure_name VARCHAR(40) NOT NULL,
    procedure_cost dec(6, 2)   NOT NULL,
    PRIMARY KEY (procedure_id)
);

CREATE TABLE animal_types
(
    animal_type_id serial      NOT NULL,
    animal_type    varchar(20) NOT NULL,
    PRIMARY KEY (animal_type_id)
);

ALTER TABLE pet
    ADD CONSTRAINT fk_animal_types_animal_id
        FOREIGN KEY (animal_type_id)
            REFERENCES animal_types (animal_type_id);

ALTER TABLE pet
    ADD CONSTRAINT fk_customer_customer_id
        FOREIGN KEY (customer_id)
            REFERENCES customer (customer_id);

ALTER TABLE health_history
    ADD CONSTRAINT fk_pet_pet_id
        FOREIGN KEY (pet_id)
            REFERENCES pet (pet_id);

ALTER TABLE health_history
    ADD CONSTRAINT fk_procedures_procedure_id
        FOREIGN KEY (procedure_id)
            REFERENCES procedures (procedure_id);

alter table procedures
add constraint fk_animal_type_animal_type_id
FOREIGN KEY (animal_type_id)
REFERENCES animal_types (animal_type_id);



-- DELETE
-- FROM procedures;
-- DELETE
-- FROM procedure_names;
-- DELETE
-- FROM customer;
-- DELETE
-- FROM pet;
-- DELETE
-- FROM animal_types;
-- DELETE
-- FROM health_history;

