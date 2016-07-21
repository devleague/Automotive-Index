DROP USER IF EXISTS indexed_cars_user;
CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;
CREATE DATABASE indexed_cars
  OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/car_models.sql

\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql

\timing

SELECT make_title
  FROM car_models
  WHERE make_code = 'LAM'
  LIMIT 1;

SELECT model_title
  FROM car_models
  WHERE make_code = 'NISSAN'
    AND model_code = 'GT-R'
  LIMIT 1;