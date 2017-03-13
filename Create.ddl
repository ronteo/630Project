Drop table Entities;
Drop table Relationships;
Drop table Attributes;

CREATE TABLE "Attributes" ( `AName` varchar(32) NOT NULL, `DType` varchar(32) NOT NULL, `EName` varchar(32) NOT NULL, FOREIGN KEY(EName) REFERENCES Entities(EName));

CREATE TABLE "Entities" ( `EName` varchar(32) NOT NULL, PRIMARY KEY(`EName`) );

CREATE TABLE Relationships ( `From` varchar(64) NOT NULL, `To` varchar(64) NOT NULL, `Cardinality` varchar(64) NOT NULL, `ReId` INTEGER PRIMARY KEY AUTOINCREMENT, `Type` varchar(64) NOT NULL, `AName` varchar(64) NOT NULL, FOREIGN KEY(`AName`) REFERENCES `Attributes`(`AName`), FOREIGN KEY(`From`) REFERENCES `Entities`(`EName`), FOREIGN KEY(`To`) REFERENCES `Entities`(`EName`) ); 
