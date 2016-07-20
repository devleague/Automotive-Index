DROP USER IF EXISTS indexed_cars_user;
CREATE USER indexed_cars_user
  WITH
    ENCRYPTED PASSWORD 'stonebreaker'
    LOGIN;

DROP DATABASE IF EXISTS indexed_cars;
CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing
  SELECT DISTINCT
    make_title
    FROM car_models
    WHERE make_code = 'LAM';

\timing
  SELECT DISTINCT
    model_title
    FROM car_models
    WHERE make_code = 'NISSAN'
    AND
    model_code = 'GT-R';

\timing
  SELECT
  make_code,
  model_code,
  model_title,
  year
  FROM car_models
  WHERE make_code = 'LAM';

\timing
  SELECT *
  FROM car_models
  WHERE year 
  BETWEEN 2010
  AND 2015;
