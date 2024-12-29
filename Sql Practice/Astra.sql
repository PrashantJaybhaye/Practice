CREATE DATABASE IF NOT EXISTS ButterCup;
USE buttercup;

CREATE TABLE if not exists Cats(
	Cat_id INT PRIMARY KEY AUTO_INCREMENT,
    Cat_Name varchar(50),
    Cat_color varchar(50),
    Cat_breed varchar(50),
    Cat_age Bigint,
    Cat_country varchar(50),
    Owner varchar(50)
);
CREATE TABLE if not exists Dogs(
	Dog_id INT PRIMARY KEY AUTO_INCREMENT,
    Dog_Name varchar(50),
    Dog_color varchar(50),
    Dog_breed varchar(50),
    Dog_age Bigint,
    Dog_country varchar(50),
    Owner varchar(50)
);
CREATE TABLE if not exists Humans(
	Owner_id INT PRIMARY KEY AUTO_INCREMENT,
    Name varchar(50),
    Contact Bigint,
    Email varchar(50),
    Age Bigint,
    Country varchar(50)
);


INSERT INTO Cats (Cat_Name,
                Cat_color,
                Cat_breed,
                Cat_age,
                Cat_country)
VALUES ("Tom","Grey","Persian",3,"India"),
		("Bella","Orange","Spotted",3,"India"),
        ("Meow","White","Siamese",4,"Thailand "),
        ("Taco","Brown","Bengal",6,"USA"),
        ("Loki","Cream","Ragdoll",1,"California");
        
INSERT INTO Dogs (Dog_Name,
                    Dog_Color,
                    Dog_breed,
                    Dog_age,
                    Dog_country)
VALUES("Rocky","White","Bulldog",6,"UK"),
		("Max","Golden","Golden Retriever",3,"Canada"),
        ("Luna","Black & Tan","German Shepherd",5,"Germany"),
        ("Gogo","White","Labrador",4,"USA"),
        ("Daisy","Brown","Poddle",2,"France");
        
INSERT INTO humans (Name,
					Contact,
                    Email,
                    Age,
                    Country)
VALUES ("Prashant Jaybhaye",9082411233,"Xyz@gmail",19,"India"),
		("Sonu Kadam",9876543210,"Xyz@gmail",19,"India"),
        ("Kuldeep Pandey",9345678901,"Xyz@gmail",19,"India"),
        ("Yatish Mhatre",9784512367,"Xyz@gmail",19,"India"),
        ("Tamanna Verma",9123456789,"Xyz@gmail",20,"India");

 
SELECT * FROM Cats;
SELECT * FROM Dogs;
SELECT * FROM Humans;

SET SQL_SAFE_UPDATES = 0;

UPDATE Cats 
SET Owner = (Select Name from humans where Owner_id = 1)
WHERE Cat_Name = "Tom";

UPDATE Cats 
SET Owner = (Select Name from humans where Owner_id = 2)
WHERE Cat_Name = "Bella";

UPDATE Cats 
SET Owner = (Select Name from humans where Owner_id = 3)
WHERE Cat_Name = "Meow";

UPDATE Cats 
SET Owner = (Select Name from humans where Owner_id = 4)
WHERE Cat_Name = "Taco";

UPDATE Cats 
SET Owner = (Select Name from humans where Owner_id = 5)
WHERE Cat_Name = "Loki";

SELECT * FROM cats;

UPDATE Dogs
Set Owner= (Select Name FROM humans WHERE Owner_id = 1)
Where Dog_Name = "Rocky";

UPDATE Dogs
Set Owner= (Select Name FROM humans WHERE Owner_id = 2)
Where Dog_Name = "Max";

UPDATE Dogs
Set Owner= (Select Name FROM humans WHERE Owner_id = 3)
Where Dog_Name = "Luna";

UPDATE Dogs
Set Owner= (Select Name FROM humans WHERE Owner_id = 1)
Where Dog_Name = "Gogo";

UPDATE Dogs
Set Owner= (Select Name FROM humans WHERE Owner_id = 5)
Where Dog_Name = "Daisy";

Select * from Dogs;

CREATE VIEW View_Details AS
SELECT h.Owner_id,
		h.Name,
        d.Dog_Name,
        d.Dog_breed,
        c.Cat_Name,
        c.Cat_breed
FROM humans h 
INNER JOIN dogs d ON h.Name = d.Owner
INNER JOIN cats c ON d.owner = c.owner;

SELECT * FROM view_details;
        





