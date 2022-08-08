/* #1 */
CREATE TABLE person ( person_id SERIAL PRIMARY KEY, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200));

/* #2 */
-- INSERT INTO person ( name, age, height, city, favorite_color ) VALUES ( 'First Last', 21, 182, 'City', 'Color' );

INSERT INTO person (name, age, height, city, favorite_color) VALUES
  ('Estefania', 25, 165, 'Santa Fe', 'green'),
  ('Kiara', 23, 149.86, 'San Juan' , 'yellow'),
  ('Sol', 2, 60.69, 'Jacksonville', 'red'),
  ('Luna', 3, 60.96, 'Yulee', 'black'),
  ('Dustin', 24, 180.36, 'Colorado Springs', 'green');

/* #3 */
-- Select all the people in the person table by height from tallest to shortest.

SELECT * 
FROM person 
ORDER BY height DESC;

/* #4 */
-- Select all the people in the person table by height from shortest to tallest.

SELECT * 
FROM person 
ORDER BY height ASC;

/* #5 */
-- Select all the people in the person table by age from oldest to youngest.

SELECT * 
FROM person 
ORDER BY age DESC;

/* #6 */
-- Select all the people in the person table older than age 20.

SELECT * 
FROM person 
WHERE age > 20;

/* #7 */
-- Select all the people in the person table that are exactly 18.

SELECT * 
FROM person 
WHERE age = 18;

/* #8 */
-- Select all the people in the person table that are less than 20 and older than 30.

SELECT * 
FROM person 
WHERE age < 20 OR age > 30;

/* #9 */
-- Select all the people in the person table that are not 27 (use not equals).

SELECT * 
FROM person 
WHERE age != 27;

/* #10 */
-- Select all the people in the person table where their favorite color is not red.

SELECT * 
FROM person 
WHERE favorite_color != 'red';

/* #11 */
-- Select all the people in the person table where their favorite color is not red and is not blue.

SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

/* #12 */
-- Select all the people in the person table where their favorite color is orange or green.

SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';

/* #13 */
-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).

SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );

/* #14 */
-- Select all the people in the person table where their favorite color is yellow or purple (use IN).

SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' )