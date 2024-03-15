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