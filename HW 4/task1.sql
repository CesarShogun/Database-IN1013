CREATE TABLE petPet(
	petname VARCHAR(20) NOT NULL PRIMARY KEY,
	owner VARCHAR(45),
	species VARCHAR(45),
	gender VARCHAR(1),
	birth DATE,
	death DATE
);

CREATE TABLE petEvent(
	petname VARCHAR(20) NOT NULL,
	eventdate DATE,
	eventtype VARCHAR(15),
	remark VARCHAR(255),
	PRIMARY KEY (petname, eventdate),
	FOREIGN KEY (petname) REFERENCES petPet(petname)
);