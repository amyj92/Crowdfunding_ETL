--------- CATEGORY TABLE ---------

DROP TABLE if exists category CASCADE;

CREATE TABLE category (
    category_id VARCHAR NOT NULL PRIMARY KEY,
    category VARCHAR NOT NULL
);

SELECT *
FROM category;


--------- SUBCATEGORY TABLE ---------

DROP TABLE if exists subcategory CASCADE;

CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);

SELECT *
FROM subcategory;


--------- CONTACTS TABLE ---------

DROP TABLE if exists contacts CASCADE;

CREATE TABLE contacts (
    contact_id int NOT NULL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

SELECT *
FROM contacts;


--------- CAMPAIGN TABLE ---------

DROP TABLE if exists campaign CASCADE;

CREATE TABLE campaign (
    cf_id int NOT NULL PRIMARY KEY,
    contact_id int NOT NULL REFERENCES contacts(contact_id),  -- FK
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count int NOT NULL,
    country VARCHAR(2) NOT NULL,
    currency VARCHAR(3) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR NOT NULL REFERENCES category(category_id),  -- FK
    subcategory_id VARCHAR NOT NULL REFERENCES subcategory(subcategory_id)  -- FK
);

SELECT *
FROM campaign;
