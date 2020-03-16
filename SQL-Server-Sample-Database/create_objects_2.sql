CREATE TABLE sales.promotions (
    promotion_id INT PRIMARY KEY IDENTITY (1, 1),
    promotion_name VARCHAR (255) NOT NULL,
    discount NUMERIC (3, 2) DEFAULT 0,
    start_date DATE NOT NULL,
    expired_date DATE NOT NULL
);

CREATE TABLE sales.addresses (
    address_id INT IDENTITY PRIMARY KEY,
    street VARCHAR (255) NOT NULL,
    city VARCHAR (50),
    state VARCHAR (25),
    zip_code VARCHAR (5)
);

CREATE TABLE sales.taxes (
 tax_id INT PRIMARY KEY IDENTITY (1, 1),
 state VARCHAR (50) NOT NULL UNIQUE,
 state_tax_rate DEC (3, 2),
 avg_local_tax_rate DEC (3, 2),
 combined_rate AS state_tax_rate + avg_local_tax_rate,
 max_local_tax_rate DEC (3, 2),
 updated_at datetime
);

INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Alabama',0.04,0.05,0.07);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Alaska',0,0.01,0.07);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Arizona',0.05,0.02,0.05);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Arkansas',0.06,0.02,0.05);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('California',0.07,0.01,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Colorado',0.02,0.04,0.08);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Connecticut',0.06,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Delaware',0,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Florida',0.06,0,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Georgia',0.04,0.03,0.04);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Hawaii',0.04,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Idaho',0.06,0,0.03);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Illinois',0.06,0.02,0.04);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Indiana',0.07,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Iowa',0.06,0,0.01);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Kansas',0.06,0.02,0.04);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Kentucky',0.06,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Louisiana',0.05,0.04,0.07);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Maine',0.05,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Maryland',0.06,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Massachusetts',0.06,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Michigan',0.06,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Minnesota',0.06,0,0.01);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Mississippi',0.07,0,0.01);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Missouri',0.04,0.03,0.05);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Montana',0,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Nebraska',0.05,0.01,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Nevada',0.06,0.01,0.01);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('New Hampshire',0,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('New Jersey',0.06,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('New Mexico',0.05,0.02,0.03);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('New York',0.04,0.04,0.04);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('North Carolina',0.04,0.02,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('North Dakota',0.05,0.01,0.03);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Ohio',0.05,0.01,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Oklahoma',0.04,0.04,0.06);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Oregon',0,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Pennsylvania',0.06,0,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Rhode Island',0.07,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('South Carolina',0.06,0.01,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('South Dakota',0.04,0.01,0.04);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Tennessee',0.07,0.02,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Texas',0.06,0.01,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Utah',0.05,0,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Vermont',0.06,0,0.01);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Virginia',0.05,0,0);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Washington',0.06,0.02,0.03);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('West Virginia',0.06,0,0.01);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Wisconsin',0.05,0,0.01);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('Wyoming',0.04,0.01,0.02);
INSERT INTO sales.taxes(state,state_tax_rate,avg_local_tax_rate,max_local_tax_rate) VALUES('D.C.',0.05,0,0);

CREATE TABLE sales.targets
(
    target_id  INT PRIMARY KEY,
    percentage DECIMAL(4, 2)
        NOT NULL DEFAULT 0
);

INSERT INTO
    sales.targets(target_id, percentage)
VALUES
    (1,0.2),
    (2,0.3),
    (3,0.5),
    (4,0.6),
    (5,0.8);
    
CREATE TABLE sales.commissions
(
    staff_id    INT PRIMARY KEY,
    target_id   INT,
    base_amount DECIMAL(10, 2)
        NOT NULL DEFAULT 0,
    commission  DECIMAL(10, 2)
        NOT NULL DEFAULT 0,
    FOREIGN KEY(target_id)
        REFERENCES sales.targets(target_id),
    FOREIGN KEY(staff_id)
        REFERENCES sales.staffs(staff_id),
);

INSERT INTO
    sales.commissions(staff_id, base_amount, target_id)
VALUES
    (1,100000,2),
    (2,120000,1),
    (3,80000,3),
    (4,900000,4),
    (5,950000,5);

CREATE TABLE sales.category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    amount DECIMAL(10 , 2 )
);

INSERT INTO sales.category(category_id, category_name, amount)
VALUES(1,'Children Bicycles',15000),
    (2,'Comfort Bicycles',25000),
    (3,'Cruisers Bicycles',13000),
    (4,'Cyclocross Bicycles',10000);
 