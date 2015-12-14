CREATE TABLE EP_PERSON
(
 PERSON_ID int NOT NULL,
 FIRSTNAME varchar(255),
 LASTNAME varchar(255) NOT NULL,
 SEX CHAR(1) NOT NULL,
 CREATION_DATE DATE,
 CREATED_BY VARCHAR(255),
 LAST_UPDATE_DATE DATE,
 LAST_UPDATE_BY VARCHAR(255),
      PRIMARY KEY (PERSON_ID)
      );


CREATE TABLE EP_ADDRESS
(
  ADDRESS_ID int NOT NULL,
  ADDRESSLINE_1 VARCHAR(255) NOT NULL,
  ADDRESSLINE_2 VARCHAR(255),
  ADDRESSLINE_3 VARCHAR(255),
  ADDRESSLINE_4 VARCHAR(255),
  CITY VARCHAR(255),
  PANCHAYAT VARCHAR(255),
  LANDMARK VARCHAR(255),
  PINCODE INT NOT NULL,
  PHONE_NUMBER VARCHAR(255),
  CREATION_DATE DATE,
  CREATED_BY VARCHAR(255),
  LAST_UPDATE_DATE DATE,
  LAST_UPDATE_BY VARCHAR(255),
  PRIMARY KEY (ADDRESS_ID)
);
//Create Address Script


CREATE TABLE EP_GUARDIAN
(
  GUARDIAN_ID int NOT NULL,
  STUDENT_ID int NOT NULL ,
  PERSON_ID INT NOT NULL,
  ADDRESS_ID INT,
  IS_PRIMARY  CHAR(1),
  RELATIONSHIP CHAR(2),
  PHONENUMBER int ,
  PHONENUMBER_2 int,
  PHONENUMBER_3 int, 
    CREATION_DATE DATE,
    CREATED_BY VARCHAR(255),
    LAST_UPDATE_DATE DATE,
    LAST_UPDATE_BY VARCHAR(255)
     PRIMARY KEY (GUARDIAN_ID),
	  FOREIGN KEY (PERSON_ID) 
        REFERENCES EP_PERSON(PERSON_ID),
	   FOREIGN KEY (STUDENT_ID) 
        REFERENCES EP_STUDENT(STUDENT_ID),
		 FOREIGN KEY (ADDRESS_ID) 
        REFERENCES EP_ADDRESS(ADDRESS_ID)


);

CREATE TABLE EP_CONTACT
(
  CONTACT_ID int NOT NULL,
  GUARDIAN_ID int NOT NULL,
  PHONENUMBER int NOT NULL,
  PHONENUMBER_2 int,
  PHONENUMBER_3 int,
  CREATION_DATE DATE,
  CREATED_BY VARCHAR(255),
  LAST_UPDATE_DATE DATE,
  LAST_UPDATE_BY VARCHAR(255),
  PRIMARY KEY (CONTACT_ID),
   FOREIGN KEY (GUARDIAN_ID) 
        REFERENCES EP_GUARDIAN(GUARDIAN_ID)
);


CREATE TABLE EP_STUDENT
(
    STUDENT_ID int NOT NULL,
    PERSON_ID int NOT NULL,
    CURRENT_ADDRESS_ID int NOT NULL,
    DOB DATE NOT NULL,
    DOJ DATE NOT NULL,
    EMERGENCY_CNT_ID INT NOT NULL,
    CREATION_DATE DATE,
    CREATED_BY VARCHAR(255),
    LAST_UPDATE_DATE DATE,
    LAST_UPDATE_BY VARCHAR(255),
    PRIMARY KEY (STUDENT_ID),
    FOREIGN KEY (CURRENT_ADDRESS_ID) 
        REFERENCES EP_ADDRESS(ADDRESS_ID),
    FOREIGN KEY (EMERGENCY_CNT_ID) 
        REFERENCES EP_ADDRESS(CONTACT_ID),
     FOREIGN KEY (PERSON_ID) 
        REFERENCES EP_PERSON(PERSON_ID)
);


