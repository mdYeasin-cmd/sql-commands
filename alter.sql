-- Active: 1710084127291@@127.0.0.1@5432@ph
SELECT * FROM person2;

ALTER TABLE person2
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

ALTER TABLE person2
    DROP COLUMN email;

ALTER TABLE person2
    RENAME COLUMN age to user_age;

INSERT into person2 values(8, 'Jahid2', 34, 'test@gmail.com');

ALTER TABLE person2
    ALTER COLUMN user_name TYPE VARCHAR(50);

ALTER TABLE person2
    ALTER COLUMN user_age SET NOT NULL;

ALTER TABLE person2
    ALTER COLUMN user_age DROP NOT NULL;

ALTER TABLE person2
    ADD constraint pk_person2_id PRIMARY KEY(id);

ALTER TABLE person2
    DROP constraint pk_person2_id;

ALTER TABLE person2
    ADD constraint uinque_person2_user_age UNIQUE(user_age);

ALTER TABLE person2
    DROP constraint uinque_person2_user_age;

TRUNCATE TABLE person2; -- Remove only table data

DROP TABLE person2; -- Remove table itself