CREATE TABLE cities 
(name varchar(50), country varchar(50),population integer,area integer);

INSERT INTO cities (name,country,population,area) values
    ("Delhi","India","2497246","62956287")
    ("Shangai","China","3678554","2369726")
    ("Tokyo","Japan","2468725","246875778");

SELECT * FROM cities;

UPDATE cities SET name="Abu Dhabi" WHERE country="India";

DELETE FROM cities where name="Delhi";
