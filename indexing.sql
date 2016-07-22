\pset pager off

DROP USER IF EXISTS indexed_cars_user;
CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;
CREATE DATABASE indexed_cars
  WITH OWNER indexed_cars_user;

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

\echo '\n1st'
SELECT DISTINCT count(make_title)
  FROM car_models
  WHERE make_code = 'LAM';

\echo '\n2nd'
SELECT DISTINCT count(model_title)
  FROM car_models
  WHERE make_code = 'NISSAN'
    AND model_code = 'GT-R';

\echo '\n3rd'
SELECT count(*)
  FROM car_models
  WHERE make_code = 'LAM';

\echo '\n4th'
SELECT count(*)
  FROM car_models
  WHERE year
    BETWEEN 2010 AND 2015;

\echo '\n5th'
SELECT count(*)
  FROM car_models
  WHERE year = 2010;