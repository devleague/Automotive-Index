-- drop user if exists indexed_cars_user;

-- create user indexed_cars_user

-- DROP DATABASE IF EXISTS indexed_cars;



-- CREATE DATABASE indexed_cars;
-- 33ms
select distinct make_title
from car_models
where make_code = 'LAM';
--10ms
select distinct make_title
from car_models
where make_code = 'NISSAN'
and model_code = 'GT-R';
--7ms
select distinct make_title
from car_models
where make_code = 'LAM';
--
---- 22ms
select make_code, model_code, model_title, year
from car_models
where make_code = 'LAM';
-- 137 ms
select *
from car_models
where year between '2010' and '2015';
-- 50 ms
select * 
from car_models
where year=2010;
--7ms
create index IX_make_model on car_models (make_code, model_code);

--3ms
select distinct make_title
from car_models
where make_code = 'LAM';

--3ms
select distinct make_title
from car_models
where make_code = 'NISSAN'
and model_code = 'GT-R';

--2ms
select distinct make_title
from car_models
where make_code = 'LAM';

--5ms
select make_code, model_code, model_title, year
from car_models
where make_code = 'LAM';

--133 ms
select *
from car_models
where year between '2010' and '2015';

--45ms
select * 
from car_models
where year=2010;
