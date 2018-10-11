DROP DATABASE IF EXISTS indexed_cars;
DROP USER IF EXISTS indexed_cars_user;
CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars;

SELECT DISTINCT make_title
FROM car_models
WHERE make_code LIKE 'LAM';

SELECT DISTINCT model_title
FROM car_models
WHERE make_code LIKE 'NISSAN'
AND model_code LIKE 'GT-R';

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code Like 'LAM';

SELECT * 
FROM car_models
WHERE year BETWEEN 2010 AND 2015;

SELECT *
FROM car_models
WHERE year='2010';

CREATE INDEX make
ON car_models(make_title);
SELECT DISTINCT make_title
FROM car_models
WHERE make_code LIKE 'LAM';

CREATE INDEX model 
ON car_models(model_title);
SELECT DISTINCT model_title
FROM car_models
WHERE make_code LIKE 'NISSAN'
AND model_code LIKE 'GT-R';

CREATE INDEX mix
ON car_models(make_code,model_code,model_title,year);
SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code Like 'LAM';

CREATE INDEX allIndexes
ON car_models(year);
SELECT * 
FROM car_models
WHERE year BETWEEN 2010 AND 2015;

CREATE INDEX indexes 
ON car_models(year);
SELECT *
FROM car_models
WHERE year='2010';