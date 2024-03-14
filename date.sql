-- Active: 1710084127291@@127.0.0.1@5432@ph
SHOW timezone;

SELECT now();

CREATE TABLE timeZ(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT into timeZ values('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT * FROM timeZ;

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'yyyy/mm/dd');

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT to_char(now(), 'ddd');

SELECT CURRENT_DATE - INTERVAL '1 year 1 month';

SELECT age(CURRENT_DATE, '2000-11-12');

SELECT *, age(CURRENT_DATE, dob) from students;

SELECT extract(month from '2024-01-25'::date);

SELECT 1::boolean;

SELECT '0'::boolean;

SELECT 'y'::boolean;

SELECT 'n'::boolean;