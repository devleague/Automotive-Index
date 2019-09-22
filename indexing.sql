-- Timing results without indexing
-- 1. SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--    24.002ms
-- 2. SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--    17.373ms
-- 3. SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--    32.352ms
-- 4. SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
--    169.850ms
-- 5. SELECT * FROM car_models WHERE year = 2010;
--    44.759ms

CREATE INDEX idx_make_title_ON_car_models ON car_models (make_title);
CREATE INDEX idx_model_title_ON_car_models ON car_models (model_title);
CREATE INDEX idx_make_code_ON_car_models ON car_models (make_code);
CREATE INDEX idx_model_code_ON_car_models ON car_models (model_code);
CREATE INDEX idx_year_ON_car_models ON car_models (year);

-- Timing results with indexing
-- 1. SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--    3.870ms
-- 2. SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--    2.811ms
-- 3. SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--    5.796ms
-- 4. SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
--    162.601ms
-- 5. SELECT * FROM car_models WHERE year = 2010;
--    32.222ms