-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it---
DROP TABLE IF EXISTS tv_models;
-----------------------------------------------------------




-- Create a televisions table-------------------------------------

--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url

CREATE TABLE tv_models (
  id SERIAL PRIMARY KEY,
  model_name TEXT,
  screen_size INTEGER, -- in inches
  resolution TEXT,
  price DECIMAL, -- in USD
  release_date DATE,
  photo_url TEXT
);
---------------------------------------------------------------------




-- Insert 4 televisions into the tv_models table------------------------------------------------

INSERT INTO tv_models (
  model_name, screen_size, resolution, price, release_date, photo_url
) VALUES
('LG OLED C2', 55, '4K UHD', 1399.99, '2022-10-15', 'https://example.com/lg-c2.jpg'),
('LG OLED G2', 65, '4K UHD', 2199.99, '2022-11-05', 'https://example.com/lg-g2.jpg'),
('LG QNED90', 75, '4K UHD', 1799.99, '2023-02-10', 'https://example.com/lg-qned90.jpg'),
('LG NanoCell 80', 50, '4K UHD', 799.99, '2023-01-01', 'https://example.com/lg-nanocell80.jpg');
-------------------------------------------------------------------------------------------------




-- Select all entries from the tv_models table---

SELECT * FROM tv_models;
-------------------------------------------------




-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column---------------
--  and add vertical_resolution and horizontal_resolution columns----

-- remove the resolution column
ALTER TABLE tv_models
DROP COLUMN resolution;
----------------------------------------------------------------------




-- adding vertical_resolution and horizontal_resolution columns-------
ALTER TABLE tv_models
ADD COLUMN vertical_resolution INTEGER,
ADD COLUMN horizontal_resolution INTEGER;
----------------------------------------------------------------------




                                    Table "public.tv_models"
        Column         |  Type   | Collation | Nullable |                Default               
-----------------------+---------+-----------+----------+---------------------------------------
 id                    | integer |           | not null | nextval('tv_models_id_seq'::regclass)
 model_name            | text    |           |          |
 screen_size           | integer |           |          |
 price                 | numeric |           |          |
 release_date          | date    |           |          |
 photo_url             | text    |           |          |
 vertical_resolution   | integer |           |          |
: