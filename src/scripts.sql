CREATE TABLE book (
                      name VARCHAR,
                      author_id INTEGER
);

CREATE TABLE author (
                        id SERIAL,
                        name VARCHAR
);

INSERT INTO author (name) VALUES ('Stephen King');
INSERT INTO author (name) VALUES ('Ernest Hemingway');
INSERT INTO author (name) VALUES ('Irwin Shaw');

INSERT INTO book (name, author_id) VALUES ('It', 1);
INSERT INTO book (name, author_id) VALUES ('Misery', 1);
INSERT INTO book (name, author_id) VALUES ('Christine', 1);
INSERT INTO book (name, author_id) VALUES ('Islands in the Stream', 2);
INSERT INTO book (name, author_id) VALUES ('Rich Man, Poor Man', 3);
INSERT INTO book (name, author_id) VALUES ('Nightwork', 3);

SELECT * FROM author;
SELECT * FROM book;

-- List all books by author name
SELECT b.name, a.name FROM book b INNER JOIN author a on a.id = b.author_id WHERE a.name = 'Stephen King';
SELECT b.name, a.name FROM book b INNER JOIN author a on a.id = b.author_id WHERE a.name = 'Ernest Hemingway';
SELECT b.name, a.name FROM book b INNER JOIN author a on a.id = b.author_id WHERE a.name = 'Irwin Shaw';
