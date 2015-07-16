# Automotive Index

### DB Indexing Exercise in PostgreSQL

When connecting to your pg database, connect from this project directory.

To run sql statements from an external file, use the `\i [filepath]` command.

## Setting up

1. Create a new postgres user named `indexed_cars_user`
1. Create a new database named `indexed_cars` owned by `indexed_cars_user`
1. Run the provided `scripts/car_models.sql` script on the `indexed_cars` database
1. Run the provided `scripts/car_model_data.sql` script on the `indexed_cars` database **10 times**  
   _there should be **223380** rows in `car_models`_

## Timing Select Statements

Enable timing queries in Postgres by toggling the `\timing` command in the psql shell.

1. Run a query to get a list of all `make_title` values from the `car_models` table where the `make_code` is `'LAM'`, without any duplicate rows, and note the time somewhere. (should have 1 result)
1. Run a query to list all `model_title` values where the `make_code` is `'NISSAN'`, and the `model_code` is `'GT-R'` without any duplicate rows, and note the time somewhere. (should have 1 result)
1. Run a query to list all `make_code`, `model_code`, `model_title`, and year from `car_models` where the `make_code` is `'LAM'`, and note the time somewhere. (should have 1360 rows)
1. Run a query to list all fields from all `car_models` in years between `2010` and `2015`, and note the time somewhere (should have 78840 rows)
1. Run a query to list all fields from all `car_models` in the year of `2010`, and note the time somewhere (should have 13140 rows)

## Indexing

Given the current query requirements, "should get all make_titles", "should get a list of all model_titles by the make_code", etc.  
Create indexes on the columns that would improve query performance.

To add an index:

```
CREATE INDEX [index name]
  ON [table name] ([column name(s) index]);
```

Record your index statements in `indexing.sql`

Write the following statements in `indexing.sql`

1. Create a query to get a list of all `make_title` values from the `car_models` table where the `make_code` is `'LAM'`, without any duplicate rows, and note the time somewhere. (should have 1 result)
1. Create a query to list all `model_title` values where the `make_code` is `'NISSAN'`, and the `model_code` is `'GT-R'` without any duplicate rows, and note the time somewhere. (should have 1 result)
1. Create a query to list all `make_code`, `model_code`, `model_title`, and year from `car_models` where the `make_code` is `'LAM'`, and note the time somewhere. (should have 1360 rows)
1. Create a query to list all fields from all `car_models` in years between `2010` and `2015`, and note the time somewhere (should have 78840 rows)
1. Create a query to list all fields from all `car_models` in the year of `2010`, and note the time somewhere (should have 13140 rows)

Compare the times of the queries before and after the table has been indexes.  

Why are queries #4 and #5 not running faster?

## Indexing on table create

1. Add your recorded indexing statements to the `scripts/car_models.sql`
1. Delete the `car_models` table
1. Run the provided `scripts/car_models.sql` script on the `indexed_cars` database
1. Run the provided `scripts/car_model_data.sql` script on the `indexed_cars` database **10 times**  
   _there should be **223380** rows in `car_models`_
