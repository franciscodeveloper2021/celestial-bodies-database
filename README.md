# Celestial Bodies Database

## Overview
This database contains information about celestial bodies such as galaxies, stars, planets, and moons. It is structured to organize data about these celestial objects, including their names, characteristics, and relationships with each other.

## Tables
1. **Galaxy**: Stores information about galaxies.
   - Columns: galaxy_id, name, description, isalive, watchable

2. **Moon**: Contains data about moons orbiting planets.
   - Columns: moon_id, name, planet_id, isalive, watchable

3. **Multiverses**: Stores details about multiverses.
   - Columns: multiverses_id, name, age, numeric, integer

4. **Planet**: Contains information about planets.
   - Columns: planet_id, name, isalive, star_id, watchable

5. **Star**: Stores data about stars.
   - Columns: star_id, name, isalive, galaxy_id, watchable

## Primary Keys
- Each table has a primary key constraint to ensure uniqueness and efficient indexing.
- Primary keys: galaxy_id, moon_id, multiverses_id, planet_id, star_id

## Foreign Key Constraints
- Tables **Moon**, **Planet**, and **Star** have foreign key constraints referencing other tables to establish relationships between celestial bodies.
- Foreign keys: moon_planet_id_fkey (references planet_id in Planet table), planet_star_id_fkey (references star_id in Star table), star_galaxy_id_fkey (references galaxy_id in Galaxy table)

## Unique Constraints
- Unique constraints are applied to ensure the uniqueness of identifiers within each table.
- Unique constraints: unique_id, unique_id_moon, unique_id_multiverses, unique_id_planet, unique_id_star

## Sequences
- Sequences are used to generate unique identifiers for primary keys in each table.

## Sample Data
- Sample data is provided for each table, giving examples of celestial bodies and their attributes.

## Note
- This readme provides an overview of the structure and contents of the Celestial Bodies Database, facilitating understanding and usage of the SQL dump file.
