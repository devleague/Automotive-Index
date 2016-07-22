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

\echo '\nIndex1'
CREATE INDEX makeTitleIndex
  ON car_models (make_code);

\echo '\nIndex2'
CREATE INDEX modelTitleIndex
  ON car_models (make_code, model_code);

\echo '\nIndex3'
CREATE INDEX yearIndex
  ON car_models (year);