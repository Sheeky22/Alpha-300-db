CREATE TABLE users (id SERIAL PRIMARY KEY, username VARCHAR(50));

INSERT INTO users (username) values
    ('sree22'),
    ('jason34');

SELECT * FROM users;

-- CREATE TABLE photos (id SERIAL PRIMARY KEY, url VARCHAR(50) ,user_id INTEGER REFERENCES users(id));

CREATE TABLE photos (id SERIAL PRIMARY KEY, url VARCHAR(50) ,user_id INTEGER REFERENCES users(id) ON DELETE CASCADE);


INSERT INTO photos (url, user_id) VALUES 
    ("photo.jpg",2),
    ("phot2.jpg",1);

SELECT * FROM photos;

SELECT * FROM photos where user_id = 2;

INSERT INTO photos (url, user_id) VALUES 
    ("photo.jpg",NULL);

CREATE TABLE comments(id PRIMARY KEY SERIAL, photo_id INTEGER REFERENCES photos(id),user_id INTEGER REFERENCES users(id));


