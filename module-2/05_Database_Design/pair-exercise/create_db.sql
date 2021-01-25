SELECT PG_TERMINATE_BACKEND(pid)
FROM pg_stat_activity
WHERE datname = 'animal_hospital';

-- DROP DATABASE animal_hospital;

CREATE DATABASE animal_hospital;