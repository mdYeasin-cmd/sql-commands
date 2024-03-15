-- Active: 1710084127291@@127.0.0.1@5432@ph
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
);

-- ON DELETE CASCADE
-- ON DELETE SET NULL
--  ON DELETE SET DEFAULT

ALTER TABLE post
    ALTER COLUMN user_id SET NOT NULL;

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

-- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with a valid user ID
-- Attempting to insert a post without specifying a user ID


-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT

INSERT INTO post(title, user_id) VALUES('test', NULL);

DELETE FROM post WHERE id = 11;

DELETE FROM "user" 
    WHERE id = 4;