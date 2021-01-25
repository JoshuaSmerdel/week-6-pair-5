
-- Invoice Data query by pet name "Ivanka"
SELECT pet_name,procedure_name, procedure_cost
FROM pet
JOIN health_history hh ON pet.pet_id = hh.pet_id
join procedures p ON hh.procedure_id = p.procedure_id
join animal_types a ON pet.animal_type_id = a.animal_type_id
where pet_name ilike 'ivanka'
GROUP BY pet_name, procedure_name, procedure_cost;

-- Invoice Data query by pet name "Kirby"
SELECT pet_name,procedure_date, procedure_name, procedure_cost
FROM pet
JOIN health_history hh ON pet.pet_id = hh.pet_id
join procedures p ON hh.procedure_id = p.procedure_id
join animal_types a ON pet.animal_type_id = a.animal_type_id
where pet_name ilike 'kirby'
GROUP BY pet_name, procedure_date, procedure_cost, procedure_name;

-- Invoice Data query by customer "john
SELECT ((first_name, last_name)) as name, procedure_date, procedure_cost, procedure_name
FROM pet
join customer on pet.customer_id = customer.customer_id
JOIN health_history hh ON pet.pet_id = hh.pet_id
join procedures p ON hh.procedure_id = p.procedure_id
join animal_types a ON pet.animal_type_id = a.animal_type_id
where first_name ilike 'john'
GROUP BY first_name, last_name, procedure_date, procedure_cost, procedure_name
order by first_name;

-- Health History Report
select pet.pet_id, pet_name, animal_type, date_of_birth, first_name, last_name, procedure_date, procedure_name
from pet
JOIN animal_types a ON a.animal_type_id = pet.animal_type_id
JOIN customer c ON c.customer_id = pet.customer_id
join procedures p ON a.animal_type_id = p.animal_type_id
join health_history hh ON p.procedure_id = hh.procedure_id
GROUP BY pet.pet_id, animal_type, first_name, last_name, procedure_date, procedure_name
ORDER BY pet_id;

-- Health History Report by Pet Name
select pet.pet_id, pet_name, animal_type,date_of_birth, first_name, last_name, procedure_date, procedure_name
from pet
JOIN animal_types a ON a.animal_type_id = pet.animal_type_id
JOIN customer c ON c.customer_id = pet.customer_id
join procedures p ON a.animal_type_id = p.animal_type_id
join health_history hh ON p.procedure_id = hh.procedure_id
WHERE pet_name ilike 'kirby'
GROUP BY pet.pet_id, animal_type, first_name, last_name, procedure_date, procedure_name
ORDER BY pet_id;

