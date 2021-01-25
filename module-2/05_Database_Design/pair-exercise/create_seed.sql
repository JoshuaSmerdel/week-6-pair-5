INSERT INTO animal_types (animal_type)

VALUES ('Dog'),    --1
       ('Cat'),    --2
       ('Bird'),   --3
       ('Lizard'), --4
       ('Gerbil'), --5
       ('Snake'),  --6
       ('Ferret'), --7
       ('Rabbit'); --8

INSERT INTO customer (first_name, last_name, phone_number, street, city, state, zip_code)

VALUES ('John', 'Wayne', 7024446785, '123 Happy Street', 'Lost Wages', 'NV', 89118),        --1
       ('Betty', 'Boop', 2169786464, '999 E.41 St.', 'Cleveland', 'OH', 44103),             --2
       ('Donald', 'Trump', 5554166666, '112233 Impeachment Ave.', 'Mar-Lago', 'FL', 65465), --3
       ('Aesop', 'Rock', 5446987542, '4569 New York Blvd', 'Brooklyn', 'NY', 87452); --4

INSERT INTO pet (pet_name, animal_type_id, date_of_birth, customer_id)

VALUES ('Rover', 1, '2008-01-01', 1), --1
       ('Spot', 1, '2018-05-01', 2),  --2
       ('Kirby', 2, '2017-12-12', 4), --3
       ('Ivanka', 4, '1990-02-02', 3); --4

       INSERT INTO procedures (procedure_name, procedure_cost, animal_type_id)

VALUES ('Rabies Vaccination', 30, 1),      --1
       ('Examine and Treat Wound', 30, 1), --2
       ('Heart Worm Test', 50, 1),         --3
       ('Tetanus Vaccination', 100, 1),    --4
       ('Eye Wash', 50, 1),                --5
       ('Annual Checkup', 40, 1),          --6
       ('Spade and Neuter', 200, 1),       --7
       ('De-worm', 75, 1),
       ('Rabies Vaccination', 24, 2),      --1
       ('Examine and Treat Wound', 24, 2), --2
       ('Heart Worm Test', 45, 2),         --3
       ('Tetanus Vaccination', 90, 2),     --4
       ('Eye Wash', 45, 2),                --5
       ('Annual Checkup', 34, 2),          --6
       ('Spade and Neuter', 180, 2),       --7
       ('De-worm', 68, 2),
       ('Rabies Vaccination', 24, 3),      --1
       ('Examine and Treat Wound', 24, 3), --2
       ('Heart Worm Test', 45, 3),         --3
       ('Tetanus Vaccination', 90, 3),     --4
       ('Eye Wash', 45, 3),                --5
       ('Annual Checkup', 34, 3),          --6
       ('Spade and Neuter', 180, 3),       --7
       ('De-worm', 68, 3),
       ('Rabies Vaccination', 24, 4),      --1
       ('Examine and Treat Wound', 24, 4), --2
       ('Heart Worm Test', 45, 4),         --3
       ('Tetanus Vaccination', 90, 4),     --4
       ('Eye Wash', 45, 4),                --5
       ('Annual Checkup', 34, 4),          --6
       ('Spade and Neuter', 180, 4),       --7
       ('De-worm', 68, 4),
       ('Rabies Vaccination', 24, 5),      --1
       ('Examine and Treat Wound', 24, 5), --2
       ('Heart Worm Test', 45, 5),         --3
       ('Tetanus Vaccination', 90, 5),     --4
       ('Eye Wash', 45, 5),                --5
       ('Annual Checkup', 34, 5),          --6
       ('Spade and Neuter', 180, 5),       --7
       ('De-worm', 68, 5),
       ('Rabies Vaccination', 24, 6),      --1
       ('Examine and Treat Wound', 24, 6), --2
       ('Heart Worm Test', 45, 6),         --3
       ('Tetanus Vaccination', 90, 6),     --4
       ('Eye Wash', 45, 6),                --5
       ('Annual Checkup', 34, 6),          --6
       ('Spade and Neuter', 180, 6),       --7
       ('De-worm', 68, 6),
       ('Rabies Vaccination', 24, 7),      --1
       ('Examine and Treat Wound', 24, 7), --2
       ('Heart Worm Test', 45, 7),         --3
       ('Tetanus Vaccination', 90, 7),     --4
       ('Eye Wash', 45, 7),                --5
       ('Annual Checkup', 34, 7),          --6
       ('Spade and Neuter', 180, 7),       --7
       ('De-worm', 68, 7),
       ('Rabies Vaccination', 24, 8),      --1
       ('Examine and Treat Wound', 24, 8), --2
       ('Heart Worm Test', 45, 8),         --3
       ('Tetanus Vaccination', 90, 8),     --4
       ('Eye Wash', 45, 8),                --5
       ('Annual Checkup', 34, 8),          --6
       ('Spade and Neuter', 180, 8),       --7
       ('De-worm', 68, 8); --8

INSERT INTO health_history (procedure_id, procedure_date, pet_id)

VALUES (1, '2002-01-13', 1),
       (2, '2002-03-27', 1),
       (3, '2002-04-02', 1),
       (9, '2002-01-21', 2),
       (10, '2002-03-10', 2),
       (17, '2018-01-01', 3),
       (18, '2019-01-01', 3),
       (25, '2000-01-22', 4),
       (26, '2009-04-04', 4);




