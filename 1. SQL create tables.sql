-- Creation of CustomerData table.
CREATE TABLE CustomerData (
    customerID     INT NOT NULL AUTO_INCREMENT,
    first_name     VARCHAR(40),
    last_name      VARCHAR(40),
    postal_code    varchar(12) NOT NULL,
    house_number   VARCHAR(5), #there is no suffix column, so we also allow characters
    date_of_birth  DATE,
    e_mail         VARCHAR(255),
    PRIMARY KEY (customerID)
);


-- Creation of PostalCodes table.
CREATE TABLE PostalCodes (
    postal_code    VARCHAR(12) NOT NULL,
    city           VARCHAR(40),
    street         VARCHAR(40),
    PRIMARY KEY (postal_code)
);


-- Creating the foreign key postal_code in CustomerData.
ALTER TABLE CustomerData
ADD FOREIGN KEY (postal_code) REFERENCES PostalCodes(postal_code);


-- Creation of SubscriptionData table and adding the foreign key reference to customerID.
CREATE TABLE SubscriptionData (
    subscriptionID INT NOT NULL AUTO_INCREMENT,
    customerID     INT NOT NULL,
    plan           VARCHAR(40),
    start_date     DATE,
    PRIMARY KEY (subscriptionID),
    FOREIGN KEY (customerID) REFERENCES CustomerData(customerID),
	CONSTRAINT uq_customerID UNIQUE (customerID)
);


-- Creation of SubscriptionData table.
CREATE TABLE Plans (
    plan           VARCHAR(40) NOT NULL,
    timeframe      INT NOT NULL,
    PRIMARY KEY (plan)
);


-- Creating the foreign key reference of Plan.
ALTER TABLE SubscriptionData
ADD FOREIGN KEY (plan) REFERENCES Plans(plan);


-- Creating the table Film
CREATE TABLE Film (
    filmID               INT NOT NULL AUTO_INCREMENT,
    title                VARCHAR(40),
    genre                VARCHAR(40),  
    director_firstname   VARCHAR(40), 
    director_lastname    VARCHAR(40), 
    length               TIME,
    release_date         DATE,
    price                DECIMAL(13,2), 
    PRIMARY KEY (filmID)
);


-- Creating the table Serie
CREATE TABLE Serie (
    serieID  INT NOT NULL AUTO_INCREMENT,
    title    VARCHAR(40),
    genre    VARCHAR(40),  
    rating   DECIMAL(3,1) CHECK(rating BETWEEN 0 and 10.0), 
    price    DECIMAL(13,2), 
    PRIMARY KEY (serieID)
);


-- Creating the table Actor
CREATE TABLE Actor (
    actorID         INT NOT NULL AUTO_INCREMENT,
    first_name      VARCHAR(40),
    last_name       VARCHAR(40),
    date_of_birth   DATE,
    agency          VARCHAR(40),
    PRIMARY KEY (actorID)
);


-- Creating table R2
CREATE TABLE R2 (
    customerID  INT NOT NULL,
    filmID      INT NOT NULL,
    FOREIGN KEY (customerID) REFERENCES CustomerData(customerID),
    FOREIGN KEY (filmID) REFERENCES Film(filmID),
	CONSTRAINT uq_fk_customeridfilmid UNIQUE (customerID, filmID)
);

-- Creating table R3
CREATE TABLE R3 (
    customerID  INT NOT NULL,
    serieID     INT NOT NULL,
    FOREIGN KEY (customerID) REFERENCES CustomerData(customerID),
    FOREIGN KEY (serieID) REFERENCES Serie(serieID),
	CONSTRAINT uq_fk_customeridserieid UNIQUE (customerID, serieID)
);

-- Creating table R4
CREATE TABLE R4 (
    filmID      INT NOT NULL,
    actorID     INT NOT NULL,
    FOREIGN KEY (filmID) REFERENCES Film(filmID),
    FOREIGN KEY (actorID) REFERENCES Actor(actorID),
	CONSTRAINT uq_fk_filmidactorid UNIQUE (filmID, actorID)
);

-- Creating table R5
CREATE TABLE R5 (
    serieID     INT NOT NULL,
    actorID     INT NOT NULL,
    FOREIGN KEY (serieID) REFERENCES Serie(serieID),
    FOREIGN KEY (actorID) REFERENCES Actor(actorID),
	CONSTRAINT uq_fk_serieidactorid UNIQUE (serieID, actorID)
);