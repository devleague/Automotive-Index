-- db indexed_cars

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