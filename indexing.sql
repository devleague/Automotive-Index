DROP USER IF EXISTS indexed_cars_user;
CREATE USER indexed_cars_user
  WITH
    ENCRYPTED PASSWORD 'stonebreaker'
    LOGIN;

DROP DATABASE IF EXISTS indexed_cars;
CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

\c indexed_cars;

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

  SELECT DISTINCT
    model_title
    FROM car_models
    WHERE make_code = 'NISSAN'
    AND
    model_code = 'GT-R';

  SELECT COUNT(*)
  FROM car_models
  WHERE make_code = 'LAM';

  SELECT COUNT(*)
  FROM car_models
  WHERE year 
  BETWEEN 2010
  AND 2015;

  SELECT COUNT(*)
  FROM car_models
  WHERE year = 2010;

\timing

CREATE INDEX index_make
  ON car_models (
    make_code
    );
CREATE INDEX index_year
  ON car_models (
    year
    );
CREATE INDEX index_model
  ON car_models (
    model_code
    );

\timing
  SELECT DISTINCT
    make_title
    FROM car_models
    WHERE make_code = 'LAM';

  SELECT DISTINCT
    model_title
    FROM car_models
    WHERE make_code = 'NISSAN'
    AND
    model_code = 'GT-R';

  SELECT COUNT(*)
  FROM car_models
  WHERE make_code = 'LAM';

  SELECT COUNT(*)
  FROM car_models
  WHERE year 
  BETWEEN 2010
  AND 2015;

  SELECT COUNT(*)
  FROM car_models
  WHERE year = 2010;
\timing