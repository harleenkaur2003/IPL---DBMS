CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
Name VARCHAR(50) UNIQUE NOT NULL,
Nationality VARCHAR(50) NOT NULL,
DoB Varchar(50) NOT NULL,
        Age INT,
Role VARCHAR(50),
StrikeRate INT,
BowlingStyle  VARCHAR(50),
BattingStyle  VARCHAR(50)
);
drop table players;

INSERT INTO Players VALUES (001,'Hardik Pandya','India','11-Oct-1993', 31, 'All-rounder',146,'right-arm fast-medium','right-handed')
INSERT INTO Players VALUES (012,'M S Dhoni','India','7-Jul-1981', 42, 'Wicketkeeper',135,'right-arm medium','right-handed')
INSERT INTO Players VALUES (023,'Virat Kohli','India','5-Nov-1988', 35, 'Batsman',129,'right-arm medium','right-handed')
INSERT INTO Players VALUES (029,'AB de Villiers','South Africa','17-Feb-1984', 40, 'Wicketkeeper',151,'right-arm medium','right-handed')
INSERT INTO Players VALUES (042,'Jasprit Bumrah','India','6-Dec-1993', 31, 'Bowler',84,'right-arm fast','right-handed')
INSERT INTO Players VALUES(011,'Kane Williamson','New Zealand','8-aug-1990',34,'Batsman',113,'right-arm offbreak','right-handed')
INSERT INTO Players VALUES(014,'Suresh Raina','India','27-nov-1986',38,'Batsman',136,'right-arm offbreak','left-handed')
INSERT INTO Players VALUES(032,'Yuzvendra Chahal','India','23-aug-1990',34,'Bowler',43,'right-arm legbreak','right-handed')
INSERT INTO Players VALUES(060,'Sanju Samson','India','11-nov-1994',30,'Wicketkeeper',136,NULL,'right-handed')
INSERT INTO Players VALUES(065,'Chris Gayle','Jamaica','21-sep-1979',45,'Batsman',189,'right-arm fast-medium','left-handed')


CREATE TABLE TeamOwner(
CompanyName VARCHAR(50) PRIMARY KEY,
BusinessDomain VARCHAR(50) NOT NULL,
Country VARCHAR(50) NOT NULL
);

INSERT INTO TeamOwner VALUES ('Red Chillies Entertainment','Film Industry','India')
INSERT INTO TeamOwner VALUES ('Reliance Industry Ltd','Telecommunications, Energy','India')
INSERT INTO TeamOwner VALUES ('CVC Capital Partners','Investment Advisory Firm','England')
INSERT INTO TeamOwner VALUES ('United Spirits','Alcoholic Beverages Company','England')
INSERT INTO TeamOwner VALUES ('India Cements Ltd','Digital Venture Builder','England')
INSERT INTO TeamOwner VALUES ('Emerging Media IPL Ltd','Digital Venture Builder','England')
INSERT INTO TeamOwner VALUES ('Sanjeev Goenka Group','Power and Energy','India')
INSERT INTO TeamOwner VALUES ('Sun TV Group','Television media chanel','India')
INSERT INTO TeamOwner VALUES ('Jindal Steel','Steel manufacturer','India')
INSERT INTO TeamOwner VALUES ('Priety Zinta Group','Actress','India')

CREATE TABLE HeadCoach(
CoachID INT PRIMARY KEY,
CoachName VARCHAR(50) NOT NULL,
Years_of_Experience INT,
Age INT NOT NULL,
Country VARCHAR(50) NOT NULL
);

INSERT INTO HeadCoach VALUES (10101,'Gary Kirsten',24,52,'South Africa')
INSERT INTO HeadCoach VALUES (10102,'Mark Boucher',17,55,'South Africa')
INSERT INTO HeadCoach VALUES (10103,'Ashish Nehra',4,48,'India')
INSERT INTO HeadCoach VALUES (10104,'Kumar Sangakkara',2,47,'Sri Lanka')
INSERT INTO HeadCoach VALUES (10105,'Andy Flower',5,56,'Zimbabwe')
INSERT INTO HeadCoach VALUES (10106,'Jacques Kallis',10,49,'South Africa')
INSERT INTO HeadCoach VALUES (10107,'Anil Kumble',27,54,'India')
INSERT INTO HeadCoach VALUES (10108,'Trevor Bayliss',13,62,'Australia')
INSERT INTO HeadCoach VALUES (10109,'Paddy Upton',20,62,'South Africa')
INSERT INTO HeadCoach VALUES (10110,'Sanjay Bangar',19,52,'India')

CREATE TABLE Teams (
TeamID VARCHAR(5) PRIMARY KEY,
TeamName VARCHAR(50) UNIQUE NOT NULL,
OwnerCompany VARCHAR(50) NOT NULL,
FOREIGN KEY(OwnerCompany) REFERENCES TeamOwner(CompanyName)
);

INSERT INTO Teams VALUES ('RCB','Royal Challengers Bangalore','United Spirits')
INSERT INTO Teams VALUES ('MI','Mumbai Indians','Reliance Industry Ltd')
INSERT INTO Teams VALUES ('CSK','Chennai Super Kings','India Cements Ltd')
INSERT INTO Teams VALUES ('GT','Gujarat Titans','CVC Capital Partners')
INSERT INTO Teams VALUES ('RR','Rajasthan Royals','Emerging Media IPL Ltd')
INSERT INTO Teams VALUES ('KKR','Kolkata Knight Riders','Red Chillies Entertainment')
INSERT INTO Teams VALUES ('LSG', 'Lucknow Super Giants', 'Sanjeev Goenka Group')
INSERT INTO Teams VALUES ('DC', 'Delhi Capitals', 'Jindal Steel')
INSERT INTO Teams VALUES ('PBKS', 'Punjab Kings', 'Priety Zinta Group')
INSERT INTO Teams VALUES ('SRH','Sunrisers Hyderabad', 'Sun TV Group')

CREATE TABLE Umpire(
UmpireID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
YearsOfExperience INT,
Country VARCHAR(50) NOT NULL
);

INSERT INTO Umpire VALUES (001,'Sundaram Ravi',15,'Inida')
INSERT INTO Umpire VALUES (002,'Paul Reiffel',18,'Australia')
INSERT INTO Umpire VALUES (003,'Nitin Menon',9,'India')
INSERT INTO Umpire VALUES(004,'Christopher Columbus',25,'New Zealand')
INSERT INTO Umpire VALUES(005,'Anil Chaudary',10,'Inida')
INSERT INTO Umpire VALUES(006,'C. Shamshuddin',20,'India')
INSERT INTO Umpire VALUES(007,'Arvindra Gohel',9,'USA')
INSERT INTO Umpire VALUES(008,'Sumukh Chattopadhay',14,'India')
INSERT INTO Umpire VALUES(009,'Gerard Abood',23,'Australia')
INSERT INTO Umpire VALUES(010,'Afzal Ahmed',12,'India');

CREATE TABLE Stadium(
StadiumName VARCHAR(50) PRIMARY KEY,
City VARCHAR(50),
Capacity INT
);

INSERT INTO Stadium VALUES ('Narendra Modi Stadium','Ahmedabad',132000)
INSERT INTO Stadium VALUES ('M.Chinnaswamy Stadium','Banglore',40000)
INSERT INTO Stadium VALUES ('MA Chidambaram','Chennai',50000)
INSERT INTO Stadium VALUES('Wankhede Stadium','Mumbai',33000)
INSERT INTO Stadium VALUES('Sawai Mansingh Stadium','Jaipur',30000)
INSERT INTO Stadium VALUES('Arun Jaitley Stadium','New Delhi',41000)
INSERT INTO Stadium VALUES('Rajiv Gandhi International Cricket Stadium','Hyderabad',55000)
INSERT INTO Stadium VALUES('Eden Gardens','Kolkata',68000)
INSERT INTO Stadium VALUES('Maharaja Yadavindra Singh International stadium','Punjab',34000)
INSERT INTO Stadium VALUES('Bharat Ratna Shri Atal Bihari Vajpayee Stadium','Uttar Pradesh',55000)

CREATE TABLE Matches(
MatchNo INT PRIMARY KEY,
MatchType VARCHAR(20) NOT NULL,
MatchDate VARCHAR(50) NOT NULL,
StadiumName VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
ManOfTheMatch VARCHAR(50) NOT NULL,
FOREIGN KEY (StadiumName) REFERENCES Stadium (StadiumName),
FOREIGN KEY (ManOfTheMatch) REFERENCES Players (Name)
);

INSERT INTO Matches VALUES (2401,'League','27-mar-2024','Wankhede Stadium','Mumbai','Virat Kohli')
INSERT INTO Matches VALUES (2402,'League','29-mar-2024','Sawai Mansingh Stadium','Jaipur','M S Dhoni')
INSERT INTO Matches VALUES (2403,'League','2-jun-2024','Arun Jaitley Stadium','New Delhi','AB de Villiers')
INSERT INTO Matches VALUES (2404,'League','12-jun-2024','M.Chinnaswamy Stadium','Banglore','Chris Gayle')
INSERT INTO Matches VALUES (2405,'Semifinal','2-may-2024','Rajiv Gandhi International Cricket Stadium','Hyderabad','Jasprit Bumrah')
INSERT INTO Matches VALUES (2406,'League','20-Apr-2024','MA Chidambaram','Chennai', 'Kane Williamson')
INSERT INTO Matches VALUES (2407,'League','18-Apr-2024','MA Chidambaram','Chennai', 'Yuzvendra Chahal')
INSERT INTO Matches VALUES (2408,'Semifinal','20-May-2024','Narendra Modi Stadium', 'Ahmedabad', 'Sanju Samson')
INSERT INTO Matches VALUES (2409,'Semifinal','22-May-2024','M.Chinnaswamy Stadium','Bangalore', 'Hardik Pandya')
INSERT INTO Matches VALUES (2410,'Final','24-May-2024','Narendra Modi Stadium','Ahmedabad', 'Suresh Raina')
INSERT INTO Matches VALUES (2411,'Final','24-May-2024','Eden Gardens','Kolkata', 'Suresh Raina')


CREATE TABLE UmpiredBy(
MatchNo INT,
UmpireID INT,
PRIMARY KEY (UmpireID),
FOREIGN KEY (MatchNo) REFERENCES Matches (MatchNo),
FOREIGN KEY (UmpireID) REFERENCES Umpire (UmpireID)
);

INSERT INTO UmpiredBy VALUES (2408,001)
INSERT INTO UmpiredBy VALUES (2401,002)
INSERT INTO UmpiredBy VALUES (2403,003)
INSERT INTO UmpiredBy VALUES (2407,004)
INSERT INTO UmpiredBy VALUES (2405,005)
INSERT INTO UmpiredBy VALUES (2402,006)
INSERT INTO UmpiredBy VALUES (2411,007)



CREATE TABLE TeamDetails(
TeamID VARCHAR(5),
Year INT,
CaptainID INT NOT NULL,
    CoachID INT NOT NULL,
SponsorCompany VARCHAR(50) NOT NULL,
SponsorAmount INT NOT NULL,
PRIMARY KEY (TeamID),
FOREIGN KEY (CaptainID) REFERENCES Players (PlayerID),
FOREIGN KEY (CoachID) REFERENCES HeadCoach (CoachID),
FOREIGN KEY (TeamID) REFERENCES Teams (TeamID)
);

INSERT INTO TeamDetails VALUES('RCB',2024,023,10108,'Muthoot Finance Ltd',230000000)
INSERT INTO TeamDetails VALUES('CSK',2024,012,10105,'DHFL',610000000)
INSERT INTO TeamDetails VALUES('RR',2024,001,10106,'Royal Stag',490000000)
INSERT INTO TeamDetails VALUES('MI',2024,029,10104,'Colors',800000000)
INSERT INTO TeamDetails VALUES('KKR',2024,065,10107,'Puma',190000000)
INSERT INTO TeamDetails VALUES('LSG',2024,060,10101,'Nike',190000000)
INSERT INTO TeamDetails VALUES('PBKS',2024,032,10102,'Adidas',190000000)
INSERT INTO TeamDetails VALUES('DC',2024,011,10103,'Dream11',190000000)
INSERT INTO TeamDetails VALUES('GT',2024,014,10109,'LIC',190000000)
INSERT INTO TeamDetails VALUES('SRH',2024,042,10110,'Suntv',170000000)

CREATE TABLE PlayerDetails(
PlayerID INT,
Year INT,
TeamID VARCHAR(5) NOT NULL,
TotalWickets INT,
TotalRuns INT,
MaximumWickets INT,
MaximumRuns INT,
PlayerPrice INT,
PRIMARY KEY(PlayerID, Year),
FOREIGN KEY (PlayerID) REFERENCES Players (PlayerID),
FOREIGN KEY (TeamID) REFERENCES TeamDetails (TeamID)
);

INSERT INTO PlayerDetails VALUES (001,2024,'MI',3,95,2,8,110000000)
INSERT INTO PlayerDetails VALUES (012,2024,'CSK',0,160,0,31,50000000)
INSERT INTO PlayerDetails VALUES (023,2024,'RCB',6,2310,6,115,110000000)
INSERT INTO PlayerDetails VALUES (029,2024,'RCB',8,1960,5,105,170000000)
INSERT INTO PlayerDetails VALUES (042,2024,'MI',5,1421,3,96,110000000)
INSERT INTO PlayerDetails VALUES (011,2024,'SRH',5,1421,3,96,110000000)
INSERT INTO PlayerDetails VALUES (014,2024,'GT',5,1421,3,96,110000000)
INSERT INTO PlayerDetails VALUES (032,2024,'LSG',5,1421,3,96,110000000)
INSERT INTO PlayerDetails VALUES (060,2024,'RR',5,1421,3,96,110000000)
INSERT INTO PlayerDetails VALUES (065,2024,'PBKS',5,1421,3,96,110000000)

CREATE TABLE Played(
MatchID INT,
TeamID VARCHAR(5),
TeamRuns INT NOT NULL,
fours INT NOT NULL,
sixes INT NOT NULL,
Wickets INT NOT NULL,
Match_Result VARCHAR(5) NOT NULL,
PRIMARY KEY(MatchID,TeamID),
FOREIGN KEY (TeamID) REFERENCES Teams (TeamID),
FOREIGN KEY (MatchID) REFERENCES Matches (MatchNo) 
);

INSERT INTO played VALUES(2401,'KKR',213,15,6,9,'lost')
INSERT INTO played VALUES(2402,'CSK',214,12,5,9,'won')
INSERT INTO played VALUES(2403,'MI',200,16,7,10,'lost')
INSERT INTO played VALUES(2403,'RCB',224,9,6,3,'won')
INSERT INTO played VALUES(2404,'MI',240,13,6,4,'won')
INSERT INTO played VALUES(2405,'LSG',145,15,6,5,'lost')
INSERT INTO played VALUES(2406,'GT',184,24,4,4,'lost')
INSERT INTO played VALUES(2407,'KKR',176,65,6,6,'won')
INSERT INTO played VALUES(2408,'PBKS',205,26,12,7,'lost')
INSERT INTO played VALUES(2409,'DC',278,19,23,8,'won')