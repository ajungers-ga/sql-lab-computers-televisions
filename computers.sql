-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it
DROP TABLE IF EXISTS computers;




-- Create a computers table

-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports

CREATE TABLE computers (
  id SERIAL PRIMARY KEY,
  make TEXT,
  model TEXT,
  cpu_speed DECIMAL, 
  memory_size INTEGER, 
  price DECIMAL, 
  release_date DATE,
  photo_url TEXT,
  storage_amount INTEGER, 
  number_usb_ports INTEGER,
  number_firewire_ports INTEGER,
  number_thunderbolt_ports INTEGER
);





-- Insert 4 computers into the computers table

INSERT INTO computers (
  make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports
) VALUES
('Apple', 'MacBook Pro 16"', 3.2, 32, 2999.99, '2023-11-01', 'https://example.com/macbookpro16.jpg', 1000, 4, 0, 3),
('Apple', 'MacBook Air M2', 3.1, 16, 1249.00, '2022-07-15', 'https://example.com/macbookairm2.jpg', 512, 2, 0, 2),
('Apple', 'MacBook Pro 14"', 3.4, 16, 2499.00, '2023-03-22', 'https://example.com/macbookpro14.jpg', 512, 3, 0, 3),
('Apple', 'MacBook Air M1', 3.0, 8, 999.99, '2021-01-10', 'https://example.com/macbookairm1.jpg', 256, 2, 0, 2);





-- Select all entries from the computers table

SELECT * FROM computers;





-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns

ALTER TABLE computers
DROP COLUMN storage_amount;

ALTER TABLE computers
ADD COLUMN storage_type TEXT,
ADD COLUMN storage_size INTEGER;