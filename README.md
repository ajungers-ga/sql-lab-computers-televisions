# Computers & Televisions SQL Lab

## Overview

This project is **Lab 2 of 5** in my SQL Lab series for Unit 4 at General Assembly.  
While Lab 1 ([Carmen Sandiego SQL Lab](https://github.com/ajungers-ga/sql-lab-carmen)) involved solving a narrative mystery using complex queries, this lab focused on building and manipulating structured data models from scratch.

I created two tables — one for computers, one for televisions — and practiced SQL operations such as `CREATE`, `INSERT`, `SELECT`, and `ALTER`. Each table was populated with real product data and then modified to simulate evolving database requirements.

---

### View the SQL Lab series:

- Lab 1 – Find Carmen: https://github.com/ajungers-ga/sql-lab-carmen  
- Lab 2 – Computers & Televisions: https://github.com/ajungers-ga/sql-lab-computers-televisions  
- Lab 3 – Realty: https://github.com/ajungers-ga/sql-lab-realty  
- Lab 4 – NFL: https://github.com/ajungers-ga/sql-lab-nfl  
- Lab 5 – Flights: https://github.com/ajungers-ga/sql-lab-flights  

---

## What I Practiced

- Creating and dropping tables (`CREATE TABLE`, `DROP TABLE IF EXISTS`)
- Inserting structured data with `INSERT INTO`
- Querying data with `SELECT`
- Refactoring schemas using `ALTER TABLE`
- Applying appropriate SQL data types: `TEXT`, `INTEGER`, `DECIMAL`, `DATE`, `SERIAL`
- Running `.sql` files via CLI using `psql electronics -f filename.sql`

---

## File Breakdown

### `computers.sql`
- Created a `computers` table with fields like `cpu_speed`, `memory_size`, and port types
- Inserted 4 modern Apple laptops (MacBook Pro and MacBook Air models)
- Removed the `storage_amount` column and replaced it with `storage_type` and `storage_size` using `ALTER TABLE`

### `televisions.sql`
- Created a `tv_models` table initially including resolution as a text column
- Inserted 4 LG televisions with different sizes and models
- Later refactored the resolution to be more granular with `vertical_resolution` and `horizontal_resolution`

---

## Final Reflections

This lab reinforced my ability to structure relational data and evolve schemas based on changing requirements. Unlike Lab 1, which focused on querying existing data, this lab emphasized **data modeling** and **schema design** — more like what I might encounter in an actual engineering environment.

It also helped solidify muscle memory for working with the Postgres CLI and using SQL fluently from table creation to modification.

---

## Tech Used

- PostgreSQL 16  
- CLI with `psql`  
- SQL syntax: `CREATE`, `DROP`, `INSERT`, `SELECT`, `ALTER`

