-- Active: 1710084127291@@127.0.0.1@5432@ph
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');

-- SELECT email as "Student Email", age FROM students;
SELECT * FROM students ORDER BY dob DESC;

SELECT country from  students ORDER BY country ASC;

SELECT DISTINCT blood_group FROM students;

-- data filtering

-- Select students from the USA
-- Select students with 'A' grade in Physics
-- Select students with a specific blood group ('A+')
-- Select students from the USA or from Australia
-- Select students from the USA or from Australia and the age is 20
-- Select students with a grade of 'A' or 'B' in Math or Physics:

-- Select students older than 20

SELECT * FROM students;

SELECT * FROM students
    WHERE country = 'USA';

SELECT * FROM students
    WHERE grade = 'A' AND course = 'Physics';

SELECT * FROM students
    WHERE blood_group = 'A+';

SELECT * FROM students
    WHERE country = 'USA' OR country = 'Australia';

SELECT * FROM students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

SELECT * FROM students
    WHERE age > 20 AND course = 'History';

/*
    @Scalar functions
 UPPER() Converts a string to uppercase.
 LOWER() Converts a string to lowercase.
 CONCAT() Concatenates two or more strings.
 LENGTH() Returns the number of characters in a string.
 
    @Aggregate functions
 AVG() Calculate the average of a set of values.
 MAX() Returns the max value in a set.
 MIN() Returns the minimum value in a set.
 SUM Calculates the sum of values in a set.
 COUNT() Counts the number of rows in a set.

*/



SELECT * FROM students
    WHERE country <>  'USA'; -- != and <> both are same

SELECT UPPER(first_name), * FROM students;

SELECT concat(first_name, ' ', last_name) FROM students;

SELECT length(first_name) FROM students;

SELECT AVG(age) FROM students;

SELECT MAX(age) from students;

SELECT MIN(age) FROM students;

SELECT SUM(age) FROM students;

SELECT COUNT(*) FROM students;


SELECT max(length(first_name)) from students;

SELECT * FROM students
    WHERE NOT country = 'UK';

-- SELECT NULL = 1;

SELECT * FROM students
    WHERE email = 'john.doe@example.com';

SELECT * FROM students
    WHERE email IS NOT NULL;

SELECT COALESCE(email, 'Email not provided') as "Email", first_name, blood_group FROM students;

SELECT * FROM students 
    WHERE country = 'USA' OR country = 'Canada' OR country = 'UK';

SELECT * FROM students
    WHERE country IN('UK', 'USA', 'Canada');

SELECT * FROM students
    WHERE country NOT IN('UK', 'USA', 'Canada');

SELECT * FROM students
    WHERE age BETWEEN 19 AND 23;

SELECT * FROM students 
    WHERE dob BETWEEN '2000-01-01' AND '2005-01-01' ORDER BY dob;

SELECT * FROM students
    WHERE first_name LIKE 'A%';

SELECT * FROM students
    WHERE first_name LIKE 'a%';

    -- LIKE is case sensitive

SELECT * FROM students
    WHERE first_name LIKE '%am';

SELECT * FROM students
    WHERE first_name LIKE '___a%'


SELECT * FROM students
    WHERE first_name LIKE '___a'

SELECT * FROM students
    WHERE first_name LIKE '___a_'

SELECT * FROM students
    WHERE first_name ILIKE 'a%'

SELECT * FROM students
    LIMIT 5;


SELECT * FROM students
    WHERE country NOT IN('UK', 'USA', 'Canada') LIMIT 5;

SELECT * FROM students LIMIT 5 OFFSET 5;

SELECT * FROM students LIMIT 5 OFFSET 5 * 0;

SELECT * FROM students LIMIT 5 OFFSET 5 * 1;

SELECT * FROM students LIMIT 5 OFFSET 5 * 2;

SELECT * FROM students LIMIT 5 OFFSET 5 * 3;

SELECT * FROM students;

DELETE FROM students
    WHERE grade = 'B';

DELETE FROM students
    WHERE grade = 'C' AND country = 'USA';

SELECT * FROM students
    WHERE country = 'USA';

DELETE FROM students;

UPDATE students
    SET email = 'default@gmail.com', age = 30
    WHERE student_id = 25;
