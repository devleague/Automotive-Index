SELECT make_title
FROM car_models
WHERE make_code = 'LAM'
FETCH FIRST 1 ROW ONLY;
--0.976 ms

SELECT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R'
FETCH FIRST 1 ROW ONLY;
--0.945 ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
--5.878 ms

SELECT *
FROM car_models
WHERE year BETWEEN 2010
AND 2015;
--204.107 ms

SELECT *
FROM car_models
WHERE year = 2010;
--64.585 ms
