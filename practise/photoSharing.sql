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

SELECT comments,username FROM comments JOIN user on users.id=comments.user_id;

SELECT comments, url FROM comments JOIN photos on photos.id = comments.photo_id;

SELECT comments, url FROM comments JOIN photos ON photos.id=comments.photo_id WHERE comments.user_id=photos.user_id; 

SELECT comments, url FROM comments 
JOIN photos ON photos.id=comments.photo_id 
JOIN users ON users.id=comments.user_id AND photos.user_id = users.id; 

SELECT user_id, COUNT(commments) AS NumOfComments FROM comments GROUP BY user_id;

SELECT photo_id, count(*) FROM comments GROUP BY photo_id;

SELect photo_id, count(*) FROM comments where photo_id >3 group by photo_id having count(*) >2; 



