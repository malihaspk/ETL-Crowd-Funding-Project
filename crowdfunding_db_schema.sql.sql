DROP TABLE "campaign" CASCADE;
DROP TABLE "category" CASCADE;
DROP TABLE "contacts" CASCADE;
DROP TABLE "subcategory" CASCADE;

CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(64)   NOT NULL,
    description varchar(64)   NOT NULL,
    goal numeric(10),
    pledged numeric(10),
    outcome varchar(32)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(10)   NOT NULL,
    currency varchar(10)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date  NOT NULL,
    category_id varchar(10)   NOT NULL,
    subcategory_id varchar(32)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE category (
    category_id varchar(10)   NOT NULL,
    category varchar(64)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar(10)   NOT NULL,
    subcategory varchar(64)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(25)   NOT NULL,
    last_name varchar(25)   NOT NULL,
    email varchar(264)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);


ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);

ALTER TABLE contacts ADD CONSTRAINT fk_contacts_contact_id FOREIGN KEY(contact_id)
REFERENCES campaign (contact_id);

SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
