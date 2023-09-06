-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS professor
(
    p_email VARCHAR(50) NOT NULL,
    p_name VARCHAR(50) NOT NULL,
    office VARCHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY(p_email)
);

CREATE TABLE IF NOT EXISTS student
(
    s-email VARCHAR(50) NOT NULL,
    s-name VARCHAR(50) NOT NULL,
    major VARCHAR(10) NOT NULL,
    PRIMARY KEY(s-email)
);

CREATE TABLE IF NOT EXISTS course
(
    c_number VARCHAR(50) NOT NULL,
    c_name VARCHAR(50) NOT NULL,
    room VARCHAR(10) NOT NULL,
    p_email VARCHAR(50) NOT NULL,
    PRIMARY KEY(c_number)
);

CREATE TABLE IF NOT EXISTS enroll
(
    c_number VARCHAR(50) NOT NULL,
    s-email VARCHAR(50) NOT NULL,
    PRIMARY KEY(c_number, s-email)
);


-- Create FKs
ALTER TABLE professor
    ADD    FOREIGN KEY (p_email)
    REFERENCES course(p_email)
    MATCH SIMPLE
;
    
ALTER TABLE enroll
    ADD    FOREIGN KEY (c_number)
    REFERENCES course(c_number)
    MATCH SIMPLE
;
    
ALTER TABLE enroll
    ADD    FOREIGN KEY (s-email)
    REFERENCES student(s-email)
    MATCH SIMPLE
;
    

-- Create Indexes

