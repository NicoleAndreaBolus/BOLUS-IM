CREATE DATABASE AUTHORS_PORTAL;

USE AUTHORS_PORTAL;


CREATE TABLE authors(
	author_id INT auto_increment,
    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    alias VARCHAR(100),
    birth_date DATE,
    genre VARCHAR(100),
    published_books INT,
    nationality VARCHAR(80),
    PRIMARY KEY (author_id)
);

show tables;
desc authors;
desc books;
desc publishers;

CREATE TABLE books(
	book_id INT auto_increment,
    author_id INT,
    publisher_id INT,
    date_published DATE,
    author_name VARCHAR(100),
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (publisher_id) REFERENCES publishers(publisher_id)
);

CREATE TABLE publishers(
	publisher_id INT auto_increment,
    publisher_name VARCHAR(100),
    address VARCHAR(100),
    contact_number INT,
    email VARCHAR(100),
    PRIMARY KEY (publisher_id)
);


