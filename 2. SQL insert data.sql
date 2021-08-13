-- PostalCodes data
INSERT INTO PostalCodes (postal_code, city, street)
VALUES ('1837EA', 'Hoorn', 'Lepelweg'),
       ('9723GB', 'Groningen', 'Schoenstraat'),
       ('3173PA', 'Amsterdam', 'Kerkstraat'),
       ('8779AE', 'Groningen', 'Woortmanslaan'),
       ('9761WQ', 'Assen', 'Reitdiep'),
       ('6554OL', 'Wageningen', 'Van Royenlaan'),
       ('2232WO', 'Rotterdam', 'Emmastraat'),
       ('9218PE', 'Groningen', 'Helpeerplein'),
       ('9871GB', 'Groningen', 'Van Ketchwich Verschuurlaan'),
       ('7661EE', 'Nieuwegein', 'Olsterveste')
;

-- customerdata
INSERT INTO CustomerData (first_name, last_name, postal_code, house_number, date_of_birth, e_mail)
VALUES ('William', 'Shakespear', '1837EA', '101', '1951-11-28', 'wshakespear@yahoo.com'),
	   ('Andrew', 'Gower', '1837EA', '32', '1961-11-28', 'gower61@gmail.com'),
       ('Laura', 'Nguyen', '9723GB', '1789', '1940-11-28', 'lauranguyen@gmail.com'),
	   ('Casper', 'Spook', '9761WQ', '36C', '1975-11-28', 'caspertspookje@gmail.com'),
	   ('Dennis', 'Zwart', '2232WO', '398', '1999-11-28', 'dennis9991@live.nl'),
	   ('Tom', 'Riddle', '6554OL', '8E', '1992-11-28', 'lordvoldemort@live.nl'),
	   ('Mark', 'Zuckerberg', '9218PE', '33', '1980-11-28', 'mriseeyou@fb.com'),
	   ('Barrack', 'Obama', '7661EE', '2A', '1955-11-28', 'mrstealyogirl@gmail.com'),
	   ('Harry', 'Kuiper', '9723GB', '876', '1940-11-28', 'tonnenmaker@yahoo.nl'),
       ('Lisa', 'Kuiper', '8779AE', '178', '1990-11-28', 'lisa1990@hotmail.com')
;


-- plans
INSERT INTO Plans (plan, timeframe)
VALUES ('Platinum', 730),
       ('Gold', 365),
       ('Silver', 182),
       ('Bronze', 31),
       ('Trial', 7)
;

-- subscriptiondata
#subscriptiondata
INSERT INTO SubscriptionData (customerID, plan, start_date)
VALUES (1, 'Trial', '2020-01-15'),
	   (2, 'Gold', '2019-12-19'),
       (3, 'Gold', '2018-09-01'),
       (4, 'Platinum', '2020-01-20'),
       (5, 'Trial', '2019-01-02'),
       (6, 'Bronze', '2018-11-09'),
       (7, 'Silver', '2015-06-21'),
       (8, 'Platinum', '2019-05-29'),
       (9, 'Platinum', '2019-10-31'),
       (10, 'Bronze', '2020-12-20')
;

-- serie
INSERT INTO Serie (title, genre, rating, price)
VALUES ('Breaking Bad', 'Drama', 9.5, 15.50),
       ('Game of Thrones', 'Drama', 9.3, 20),
       ('Friends', 'Comedy', 9.0, 10),
       ('House of Cards', 'Drama', 8.8, 20),
       ('Stranger Things', 'Adventure', 8.8, 13.50),
       ('Family Guy', 'Comedy', 8.5, 15.50),
       ('Vikings', 'History', 8.0, 7.50),
       ('South Park', 'Comedy', 9.0, 9.50),
       ('Modern Family', 'Comedy', 8.2, 5),
       ('Arrow', 'Action', 8.0, 10),
       ('La Casa De Papel', 'Mystery', 8.5, 4.50)
;

-- actor
INSERT INTO Actor (first_name, last_name, date_of_birth, agency)
VALUES ('Morgan', 'Freeman', '1937-06-01', 'CAA'),
       ('Tim', 'Robbins', '1958-10-16', 'CAA'),
       ('Bradley', 'Cooper', '1975-01-05', 'BWA'),
       ('Leonardo', 'DiCaprio', '1974-11-11', 'CAA'),
       ('Matthew', 'McConaughey', '1969-11-04', 'BWA'),
       ('Bradd', 'Pitt', '1963-12-18', 'CAA'),
       ('Robert', 'De Niro', '1943-08-17', 'BWA'),
       ('Joaquin', 'Phoenix', '1974-10-28', 'CAA'),
       ('Jack', 'Nicholson', '1937-04-22', 'GERSH'),
       ('Shelley', 'Duvall', '1949-07-07', 'GERSH'),
       ('Scatman', 'Crothers', '1910-05-23', 'GERSH'),
	   ('Travis', 'Fimmel', '1979-07-15', 'BWA'),
       ('Sofia', 'Vergara', '1972-07-10', 'BWA'),
       ('Stephen', 'Amell', '1981-05-08', 'BWA'),
       ('Ursula', 'Corbero', '1989-08-11', 'CAA'),
       ('Alvaro', 'Morte', '1975-02-23', 'GERSH'),
       ('Bryan', 'Cranston', '1956-03-07', 'CAA'),
       ('Emilia', 'Clarke', '1986-10-23', 'GERSH'),
       ('Jennifer', 'Aniston', '1969-02-11', 'BWA'),
       ('Kevin', 'Spacey', '1959-07-26', 'GERSH'),
       ('Millie', 'Bobby Brown', '2004-02-19', 'CAA')
;


-- film
INSERT INTO film (title, genre, director_firstname, director_lastname, length, release_date, price)
VALUES ('Shawshank Redemption', 'Drama', 'Frank', 'Darabont', '2:22:00', '1995-03-02', 10.50),
       ('The Place Beyond The Pines', 'Crime', 'Derek', 'Cianfrance', '2:20:00', '2013-04-04', 14.50),
       ('Shutter Island', 'Mystery', 'Martin', 'Scorsese', '2:19:00', '2010-02-16', 16.30),
       ('Interstellar', 'Adventure', 'Christopher', 'Nolan', '2:22:00', '2014-03-02', 18.80),
       ('Se7en', 'Crime', 'David', 'Fincher', '2:08:00', '1995-11-09', 4.60),
       ('Joker', 'Crime', 'Todd', 'Phillips', '2:02:00', '2019-10-02', 7.50),
       ('Gladiator', 'Action', 'Ridley', 'Scott', '2:51:00', '2000-05-18', 7.50),
       ('Django Unchained', 'Drama', 'Quentin', 'Tarantino', '2:45:00', '2013-01-17', 7.95),
       ('Lion King', 'Animation', 'Jon', 'Favreau', '1:58:00', '2019-07-17', 6.75),
       ('The Shining', 'Drama', 'Stanley', 'Kubrick', '2:26:00', '1980-10-30', 6.50),
       ('Needle', 'horror',  'John', 'Soto',  '1:30:00', '2010-10-09', 4.60)
;


-- r2
INSERT INTO r2 (customerID, filmID)
VALUES (1, 1),
       (1, 4),
       (1, 5),
	   (2, 3),
	   (3, 9),
	   (4, 5),
	   (5, 3),
	   (5, 9),
	   (5, 8),
	   (6, 8),
	   (6, 9),
	   (6, 2),
	   (6, 1),
	   (8, 8),
	   (8, 9),
	   (9, 1),
	   (9, 8),
	   (9, 9)
;

-- r3
INSERT INTO r3 (customerID, serieID)
VALUES (2, 4),
       (2, 8),
       (2, 9),
	   (3, 9),
	   (3, 3),
	   (4, 5),
	   (5, 5),
	   (6, 5),
	   (8, 5),
	   (9, 8),
	   (9, 9),
	   (9, 2),
	   (1, 1),
	   (1, 4),
	   (1, 5),
	   (1, 6),
	   (1, 7),
	   (1, 9)
;

-- r4
INSERT INTO r4 (filmID, actorID)
VALUES (1, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 5),
	(5, 1),
	(5, 6),
	(6, 7),
	(6, 8),
	(7, 8),
	(8, 4),
	(10, 9),
	(10, 10),
	(10, 11),
	(11, 12)
	
;

-- r5
INSERT INTO r5 (serieID, actorID)
VALUES (1, 17),
	(2, 18),
	(3, 19),
	(4, 20),
	(5, 21),
	(7, 12),
	(9, 13),
	(10, 14),
	(11, 15),
	(11, 16)
;