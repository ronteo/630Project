Drop table Entities;
Drop table Relationships;
Drop table Attributes;

CREATE TABLE "Attributes" ( `AName` varchar(32) NOT NULL, `DType` varchar(32) NOT NULL, `EName` varchar(32) NOT NULL, FOREIGN KEY(EName) REFERENCES Entities(EName));

CREATE TABLE "Entities" ( `EName` varchar(32) NOT NULL, PRIMARY KEY(`EName`) );

CREATE TABLE "Relationships" ( `From` varchar(64) NOT NULL, `To` varchar(64) NOT NULL, `Cardiniality` varchar(64) NOT NULL, `ReId` INTEGER, `Attributes` varchar(64) NOT NULL, `Type` varchar(64) NOT NULL, `AName` varchar(64) NOT NULL, `EName` varchar(64) NOT NULL, PRIMARY KEY(`ReId`) ,
FOREIGN KEY(AName) REFERENCES Attributes(AName),
FOREIGN KEY(EName) REFERENCES Entities(EName)
);
