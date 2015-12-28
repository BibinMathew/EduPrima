	-- Drop Constraints
	
	-- Delete Tables
	DROP table  IF EXISTS EP_STUDENT,EP_CONTACT,EP_GUARDIAN,EP_ADDRESS, EP_PERSON ;
	
	--Create Tables
	
	CREATE TABLE EP_PERSON
	(
	 PERSON_ID int NOT NULL AUTO_INCREMENT,
	 FIRSTNAME varchar(255),
	 LASTNAME varchar(255) NOT NULL,
	 SEX CHAR(1) NOT NULL,
	 is_active char(1) NOT NULL,
	 CREATION_DATE DATE,
	 CREATED_BY VARCHAR(255),
	 LAST_UPDATE_DATE DATE,
	 LAST_UPDATE_BY VARCHAR(255),
	 PRIMARY KEY(PERSON_ID)
	        )AUTO_INCREMENT=10000000;
	
	
	CREATE TABLE EP_ADDRESS
	(
	  ADDRESS_ID int NOT NULL AUTO_INCREMENT,
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
	  PRIMARY KEY(ADDRESS_ID)
	)AUTO_INCREMENT=20000000;
	
	
	
	CREATE TABLE EP_GUARDIAN
	(
	  GUARDIAN_ID int NOT NULL AUTO_INCREMENT,
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
	    LAST_UPDATE_BY VARCHAR(255),
	    PRIMARY KEY(GUARDIAN_ID)
		
	
	
	)AUTO_INCREMENT=30000000;
	
	CREATE TABLE EP_CONTACT
	(
	  CONTACT_ID int NOT NULL AUTO_INCREMENT,
	  GUARDIAN_ID int NOT NULL,
	  PHONENUMBER int NOT NULL,
	  PHONENUMBER_2 int,
	  PHONENUMBER_3 int,
	  CREATION_DATE DATE,
	  CREATED_BY VARCHAR(255),
	  LAST_UPDATE_DATE DATE,
	  LAST_UPDATE_BY VARCHAR(255),
	  PRIMARY KEY (CONTACT_ID)
	)AUTO_INCREMENT=40000000;
	
	
	CREATE TABLE EP_STUDENT
	(
	    STUDENT_ID int NOT NULL AUTO_INCREMENT,
	    PERSON_ID int NOT NULL,
	    CURRENT_ADDRESS_ID int NOT NULL,
	    DOB DATE NOT NULL,
	    DOJ DATE NOT NULL,
	    EMERGENCY_CNT_ID INT NOT NULL,
	    CREATION_DATE DATE,
	    CREATED_BY VARCHAR(255),
	    LAST_UPDATE_DATE DATE,
	    LAST_UPDATE_BY VARCHAR(255),
	    PRIMARY KEY(STUDENT_ID)
	    
	)AUTO_INCREMENT=50000000;
	
	-- Add Constraints
	
	ALTER TABLE EP_GUARDIAN 
	    ADD CONSTRAINT PER_GUARD_FK
	    FOREIGN KEY (PERSON_ID) 
	        REFERENCES EP_PERSON(PERSON_ID); 
	
	ALTER TABLE EP_GUARDIAN 
	    ADD CONSTRAINT STUD_GUARD_FK
	   FOREIGN KEY (STUDENT_ID) 
	        REFERENCES EP_STUDENT(STUDENT_ID);
	        
	    
	ALTER TABLE EP_GUARDIAN 
	    ADD CONSTRAINT ADD_GUARD_FK
	   FOREIGN KEY (ADDRESS_ID) 
	        REFERENCES EP_ADDRESS(ADDRESS_ID);
	    
	ALTER TABLE EP_CONTACT 
	    ADD CONSTRAINT GUARD_CONT_PK 
	       FOREIGN KEY (GUARDIAN_ID) 
	        REFERENCES EP_GUARDIAN(GUARDIAN_ID);
	        
	ALTER TABLE EP_STUDENT 
	    ADD CONSTRAINT ADDRESS_STUD_FK
	    FOREIGN KEY (CURRENT_ADDRESS_ID) 
	        REFERENCES EP_ADDRESS(ADDRESS_ID);
	        
	    
	ALTER TABLE EP_STUDENT 
	    ADD CONSTRAINT EMERCONT_STUD_FK
	     FOREIGN KEY (EMERGENCY_CNT_ID) 
	        REFERENCES EP_CONTACT(CONTACT_ID);
	    
	ALTER TABLE EP_STUDENT 
	    ADD CONSTRAINT PERS_STUD_FK
		FOREIGN KEY (PERSON_ID) 
	        REFERENCES EP_PERSON(PERSON_ID);  
		
     	 