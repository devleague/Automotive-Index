-- db indexed_cars
DROP TABLE IF EXISTS car_models;

CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
);

CREATE INDEX first_index
ON car_models (make_code, model_code);

CREATE INDEX second_index
ON car_models (make_title, model_title);
