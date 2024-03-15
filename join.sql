-- Active: 1710084127291@@127.0.0.1@5432@ph
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);

INSERT INTO "user"(username) VALUES
    ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

DROP TABLE post;

DROP TABLE "user";

SELECT * FROM "user";

SELECT * FROM post;

SELECT title, username FROM post
    JOIN "user" ON post.user_id = "user".id;

SELECT * FROM post
    JOIN "user" ON post.user_id = "user".id;

SELECT p.id, u.id FROM post p
    JOIN "user" u ON p.user_id = u.id;


SELECT * FROM post as p
    INNER JOIN "user" as u ON p.user_id = u.id;

SELECT * FROM "user"
    INNER JOIN post ON "user".id = post.user_id;

INSERT INTO post(id, title, user_id) 
    VALUES(5, 'This is a test post title', NULL);


SELECT * FROM post as p
    INNER JOIN "user" as u ON p.user_id = u.id;


SELECT * FROM post
    LEFT OUTER JOIN "user" ON post.user_id = "user".id;


SELECT * FROM post
    RIGHT OUTER JOIN "user" ON post.user_id = "user".id;

SELECT * FROM post
    FULL OUTER JOIN "user" ON post.user_id = "user".id;