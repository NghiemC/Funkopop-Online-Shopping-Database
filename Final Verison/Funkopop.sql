# Create the database
DROP DATABASE IF EXISTS funkopop;

CREATE DATABASE funkopop;
USE funkopop;

# Funkopop attribute types

DROP TABLE IF EXISTS fandom;

CREATE TABLE fandom	(
	fandomNo	char(5)			NOT NULL,	# Formatted as F001 PRIMARY KEY
	fandomName	VARCHAR(100),
    PRIMARY KEY (fandomNo)
);

INSERT INTO fandom VALUES('F001', 'DC Comics');
INSERT INTO fandom VALUES('F002', 'Disney');
INSERT INTO fandom VALUES('F003', 'Harry Potter');
INSERT INTO fandom VALUES('F004', 'Marvel');
INSERT INTO fandom VALUES('F005', 'Star Wars');

DROP TABLE IF EXISTS series;

CREATE TABLE series (
	seriesNo	char(5)			NOT NULL,	# Formatted as S001 PRIMARY KEY 
	seriesName	VARCHAR(255)	NOT NULL,
    PRIMARY KEY (seriesNo)
);

INSERT INTO series VALUES('S001', 'Aquaman and the Lost Kingdom');
INSERT INTO series VALUES('S002', 'Batman');
INSERT INTO series VALUES('S003', 'Alice in Wonderland');
INSERT INTO series VALUES('S004', 'Disney Princess');
INSERT INTO series VALUES('S005', 'Harry Potter');
INSERT INTO series VALUES('S006', 'Avengers Infinity War');
INSERT INTO series VALUES('S007', 'Black Panther');
INSERT INTO series VALUES('S008', 'The Mandalorian');
INSERT INTO series VALUES('S009', 'Ahsoka');

DROP TABLE IF EXISTS funkopop;

CREATE TABLE funkopop (
	popNo		varchar(6)		NOT NULL,	# Formatted as 12345 PRIMARY KEY
	popName		varchar(255)	NOT NULL,
	seriesNo	char(5)			NOT NULL,
	fandomNo	char(5)			NOT NULL,
	price		decimal(10,2)	NOT NULL,
    exclusive	BINARY DEFAULT 0,
    PRIMARY KEY	(popNo),
	FOREIGN KEY (seriesNo)	REFERENCES	series(seriesNo),
	FOREIGN KEY (fandomNo)	REFERENCES	fandom(fandomNo)
);

INSERT INTO funkopop VALUES('68186', 'AQUAMAN ON WAVE', 'S001', 'F001', 15.00, 1);
INSERT INTO funkopop VALUES('67567', 'BLACK MANTA', 'S001', 'F001', 12.00, 0);
INSERT INTO funkopop VALUES('67570', 'MERA', 'S001', 'F001', 12.00, 0);
INSERT INTO funkopop VALUES('67568', 'ORM', 'S001', 'F001', 12.00, 0);
INSERT INTO funkopop VALUES('67573', 'DR. SHIN', 'S001', 'F001', 12.00, 0);

INSERT INTO funkopop VALUES('74313', 'TWO-FACE FLIPPING COIN', 'S002', 'F001', 15.00, 1);
INSERT INTO funkopop VALUES('74314', 'THE PENGUIN WITH UMBRELLA', 'S002', 'F001', 15.00, 1);
INSERT INTO funkopop VALUES('74424', 'BATMAN (ONE MILLION)', 'S002', 'F001', 15.00, 1);
INSERT INTO funkopop VALUES('68852', 'THE RIDDLER', 'S002', 'F001', 15.00, 1);
INSERT INTO funkopop VALUES('47709', 'JOKER BATMAN 1989', 'S002', 'F001', 12.00, 0);

INSERT INTO funkopop VALUES('77382', 'CHESHIRE CAT (DIAMOND)', 'S003', 'F002', 15.00, 1);
INSERT INTO funkopop VALUES('75691', 'ALICE WITH TEA', 'S003', 'F002', 15.00, 1);

INSERT INTO funkopop VALUES('56352', 'MULAN', 'S004', 'F002', 12.00, 0);
INSERT INTO funkopop VALUES('70849', 'CINDERELLA WITH TRAYS', 'S004', 'F002', 10.99, 1);
INSERT INTO funkopop VALUES('21215', 'JASMINE', 'S004', 'F002', 12.00, 0);
INSERT INTO funkopop VALUES('55970', 'MOANA', 'S004', 'F002', 12.00, 0);
INSERT INTO funkopop VALUES('55973', 'SNOW WHITE', 'S004', 'F002', 12.00, 0);

INSERT INTO funkopop VALUES('5858', 'HARRY POTTER', 'S005', 'F003', 12.00, 0);
INSERT INTO funkopop VALUES('5859', 'RON WEASLEY', 'S005', 'F003', 12.00, 0);
INSERT INTO funkopop VALUES('5860', 'HERMIONE GRANGER', 'S005', 'F003', 12.00, 0);
INSERT INTO funkopop VALUES('76007', 'STAN SHUNPIKE', 'S005', 'F003', 12.00, 0);
INSERT INTO funkopop VALUES('77381', 'SUPER RUBEUS HAGRID WITH LETTER', 'S005', 'F003', 30.00, 1);

INSERT INTO funkopop VALUES('26464', 'THOR WITH STORMBREAKER', 'S006', 'F004', 12.00, 0);
INSERT INTO funkopop VALUES('63212', "GUARDIANS' SHIP: GROOT", 'S006', 'F004', 35.00, 1);
INSERT INTO funkopop VALUES('63210', "GUARDIANS' SHIP: GAMORA", 'S006', 'F004', 35.00, 1);
INSERT INTO funkopop VALUES('63207', "GUARDIANS' SHIP: STAR-LORD", 'S006', 'F004', 12.00, 0);
INSERT INTO funkopop VALUES('26465', 'IRON SPIDER', 'S006', 'F004', 12.00, 0);

INSERT INTO funkopop VALUES('74478', 'BLACK PANTHER (RETRO REIMAGINED)', 'S007', 'F004', 15.00, 1);
INSERT INTO funkopop VALUES('68814', 'NAKIA', 'S007', 'F004', 4.97, 1);
INSERT INTO funkopop VALUES('66717', 'IRONHEART MK 2', 'S007', 'F004', 3.97, 0);
INSERT INTO funkopop VALUES('68806', "M'BAKU", 'S007', 'F004', 10.99, 0);
INSERT INTO funkopop VALUES('66721', 'RIDE NAMOR WITH ORCA', 'S007', 'F004', 8.97, 1);

INSERT INTO funkopop VALUES('76828', 'BO-KATAN KRYZE WITH SHIELD', 'S008', 'F005', 15.00, 1);
INSERT INTO funkopop VALUES('76679', 'MANDALORIAN GUARD', 'S008', 'F005', 15.00, 1);
INSERT INTO funkopop VALUES('76672', 'GROGU WITH ANZELLAN DROIDSMITH', 'S008', 'F005', 15.00, 1);
INSERT INTO funkopop VALUES('76553', 'PAZ VIZSLA', 'S008', 'F005', 12.00, 0);
INSERT INTO funkopop VALUES('76554', 'THE ARMORER', 'S008', 'F005', 12.00, 0);

INSERT INTO funkopop VALUES('77102', 'CLONE TROOPER (PHASE 1)', 'S009', 'F005', 15.00, 1);
INSERT INTO funkopop VALUES('76539', 'GRAND ADMIRAL THRAWN', 'S009', 'F005', 12.00, 0);
INSERT INTO funkopop VALUES('76540', 'MORGAN ELSBETH', 'S009', 'F005', 12.00, 0);
INSERT INTO funkopop VALUES('76544', 'BAYLAN SKOLL', 'S009', 'F005', 12.00, 0);
INSERT INTO funkopop VALUES('76543', 'SHIN HATI', 'S009', 'F005', 12.00, 0);

# User attribute type 

DROP TABLE IF EXISTS user;

CREATE TABLE user (
	userNo		char(5)			NOT NULL,	# Formatted as U001
	fName 		varchar(10)		NOT NULL,
	lName 		varchar(10)		NOT NULL,
	telNo 		char(15)		NOT NULL, 	# Formatted as (111)111-1111
	email 		varchar(50)		NOT NULL,
    PRIMARY KEY (userNo)
);

INSERT INTO user VALUES('U001', 'John', 'Doe', '(123)456-7890', 'john.doe@example.com');
INSERT INTO user VALUES('U002', 'Jane', 'Smith', '(234)567-8901', 'jane.smith@example.com');
INSERT INTO user VALUES('U003', 'Michael', 'Johnson', '(345)678-9012', 'michael.johnson@example.com');
INSERT INTO user VALUES('U004', 'Emily', 'Williams', '(456)789-0123', 'emily.williams@example.com');
INSERT INTO user VALUES('U005', 'William', 'Brown', '(567)890-1234', 'william.brown@example.com');
INSERT INTO user VALUES('U006', 'Emma', 'Jones', '(678)901-2345', 'emma.jones@example.com');
INSERT INTO user VALUES('U007', 'Daniel', 'Miller', '(789)012-3456', 'daniel.miller@example.com');
INSERT INTO user VALUES('U008', 'Olivia', 'Davis', '(890)123-4567', 'olivia.davis@example.com');
INSERT INTO user VALUES('U009', 'Alexander', 'Garcia', '(901)234-5678', 'alexander.garcia@example.com');
INSERT INTO user VALUES('U010', 'Sophia', 'Rodriguez', '(012)345-6789', 'sophia.rodriguez@example.com');

# Cart attribute type

DROP TABLE IF EXISTS cartItem;

CREATE TABLE cartItem (
    cartItemID      char(5)             NOT NULL,   # Formatted as CI001
    userID          char(5)             NOT NULL, 
    popNo           varchar(6)          NOT NULL, 
    quantity        int                 NOT NULL,
    PRIMARY KEY (cartItemID),
    FOREIGN KEY (userID) REFERENCES user(userNo),
    FOREIGN KEY (popNo) REFERENCES funkopop(popNo)
);

# User U001
INSERT INTO cartItem VALUES ('CI001', 'U001', '68186', 1);
INSERT INTO cartItem VALUES ('CI002', 'U001', '67567', 2);
INSERT INTO cartItem VALUES ('CI003', 'U001', '67570', 1);

# User U002
INSERT INTO cartItem VALUES ('CI004', 'U002', '74313', 2);
INSERT INTO cartItem VALUES ('CI005', 'U002', '74424', 1);

# User U003
INSERT INTO cartItem VALUES ('CI006', 'U003', '77382', 1);
INSERT INTO cartItem VALUES ('CI007', 'U003', '63212', 3);

# User U004
INSERT INTO cartItem VALUES ('CI008', 'U004', '5858', 2);
INSERT INTO cartItem VALUES ('CI009', 'U004', '26464', 1);

# User U005
INSERT INTO cartItem VALUES ('CI010', 'U005', '26465', 1);

# User U006
INSERT INTO cartItem VALUES ('CI011', 'U006', '67568', 3);
INSERT INTO cartItem VALUES ('CI012', 'U006', '67573', 1);

# User U007
INSERT INTO cartItem VALUES ('CI013', 'U007', '47709', 2);
INSERT INTO cartItem VALUES ('CI014', 'U007', '68852', 1);

# User U008
INSERT INTO cartItem VALUES ('CI015', 'U008', '5859', 1);
INSERT INTO cartItem VALUES ('CI016', 'U008', '5860', 2);

# User U009
INSERT INTO cartItem VALUES ('CI017', 'U009', '63210', 1);
INSERT INTO cartItem VALUES ('CI018', 'U009', '26465', 3);

# User U010
INSERT INTO cartItem VALUES ('CI019', 'U010', '68814', 2);
INSERT INTO cartItem VALUES ('CI020', 'U010', '66717', 1);


DROP TABLE IF EXISTS cart;

CREATE TABLE cart (
	cartNo		char(5)			NOT NULL,	# Formatted as C001
	userNo		char(5)			NOT NULL,
	cartTotal	DECIMAL(10,2)	DEFAULT 0,
	amtOfPops	INT				DEFAULT 0,
    PRIMARY KEY (cartNo),
	FOREIGN KEY (userNo) REFERENCES user(userNo)
);

INSERT INTO cart VALUES ('C001', 'U001', 51.00, 4);
INSERT INTO cart VALUES ('C002', 'U002', 42.00, 3);
INSERT INTO cart VALUES ('C003', 'U003', 45.00, 4);
INSERT INTO cart VALUES ('C004', 'U004', 36.00, 3);
INSERT INTO cart VALUES ('C005', 'U005', 27.00, 2);
INSERT INTO cart VALUES ('C006', 'U006', 51.00, 4);
INSERT INTO cart VALUES ('C007', 'U007', 37.00, 3);
INSERT INTO cart VALUES ('C008', 'U008', 36.00, 3);
INSERT INTO cart VALUES ('C009', 'U009', 123.00, 4);
INSERT INTO cart VALUES ('C010', 'U010', 25.00, 2);


DROP TABLE IF EXISTS purchase;

CREATE TABLE purchase (
	prchNo		char(5)			NOT NULL,	# Formatted as P001
	userNo		char(5)			NOT NULL,
	cartNo		char(5)			NOT NULL,
	prchDate	DATETIME 		DEFAULT CURRENT_TIMESTAMP,
	prchTotal	DECIMAL(10,2)	NOT NULL,
	pmtMethod	VARCHAR(50)		DEFAULT 'Credit Card',
    PRIMARY KEY (prchNo),
	FOREIGN KEY (userNo) REFERENCES user(userNo),
	FOREIGN KEY (cartNo) REFERENCES cart(cartNo)
);

INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P001', 'U001', 'C001', 51.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P002', 'U002', 'C002', 45.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P003', 'U003', 'C003', 120.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P004', 'U004', 'C004', 36.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P005', 'U005', 'C005', 30.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P006', 'U006', 'C006', 48.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P007', 'U007', 'C007', 39.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P008', 'U008', 'C008', 36.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P009', 'U009', 'C009', 116.00);
INSERT INTO purchase (prchNo, userNo, cartNo, prchTotal) VALUES ('P010', 'U010', 'C010', 30.00);

DROP TABLE IF EXISTS reciept;

CREATE TABLE receipt (
	receiptNo	char(5)			NOT NULL, # Formatted as R001
	userNo		char(5)			NOT NULL,
	cartNo		char(5)			NOT NULL,
	receiptDate DATETIME		DEFAULT CURRENT_TIMESTAMP,
	receiptTotal DECIMAL(10,2)	NOT NULL,
    PRIMARY KEY (receiptNo),
	FOREIGN KEY (userNo) REFERENCES user(userNo),
	FOREIGN KEY (cartNo) REFERENCES cart(cartNo)
);

INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R001', 'U001', 'C001', 51.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R002', 'U002', 'C002', 45.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R003', 'U003', 'C003', 120.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R004', 'U004', 'C004', 36.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R005', 'U005', 'C005', 30.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R006', 'U006', 'C006', 48.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R007', 'U007', 'C007', 39.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R008', 'U008', 'C008', 36.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R009', 'U009', 'C009', 116.00);
INSERT INTO receipt (receiptNo, userNo, cartNo, receiptTotal) VALUES ('R010', 'U010', 'C010', 30.00);




