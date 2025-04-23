# Computers & Televisions SQL Lab 

## Overview

This project is **Lab 2 of Unit 4** in my General Assembly software engineering program, continuing our focus on foundational SQL skills.  
While [Lab 1 (Carmen Sandiego SQL Lab)](https://github.com/ajungers-ga/sql-lab-carmen) involved solving a narrative mystery using advanced queries, this lab focused on **building and manipulating structured data models** from scratch.

I created two tables — one for computers, one for televisions — and practiced SQL operations such as `CREATE`, `INSERT`, `SELECT`, and `ALTER`. Each table was populated with real product data and then modified to simulate evolving database requirements.

---

## What I Practiced

- Creating and dropping tables (`CREATE TABLE`, `DROP TABLE IF EXISTS`)
- Inserting structured data with `INSERT INTO`
- Querying data with `SELECT`
- Refactoring schemas using `ALTER TABLE`
- Applying appropriate SQL data types: `TEXT`, `INTEGER`, `DECIMAL`, `DATE`, `SERIAL`
- Running `.sql` files via CLI: `psql electronics -f filename.sql`

---

## File Breakdown

### `computers.sql`
- Created a `computers` table with fields like `cpu_speed`, `memory_size`, and port types
- Inserted 4 modern **Apple laptops** (MacBook Pro and MacBook Air models)
- Removed the `storage_amount` column and replaced it with `storage_type` and `storage_size` using `ALTER TABLE`

### `televisions.sql`
- Created a `tv_models` table initially including `resolution` as a text column
- Inserted 4 **LG televisions** with different sizes and models
- Later refactored the resolution to be more granular with `vertical_resolution` and `horizontal_resolution`

---

## Final Reflections

This lab reinforced my ability to structure relational data and evolve schemas based on changing requirements. Unlike Lab 1, which focused on querying existing data, this lab emphasized **data modeling and updates** — more like what you'd do when building out a real-world application backend.

It also helped me strengthen my muscle memory for Postgres CLI tools and syntax fluency when designing data structures.

---

## Tech Used

- PostgreSQL 16
- CLI with `psql`
- SQL syntax: `CREATE`, `DROP`, `INSERT`, `SELECT`, `ALTER`

