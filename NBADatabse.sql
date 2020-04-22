DROP TABLE PLAYER CASCADE CONSTRAINTS;
DROP TABLE MADE_BASKET CASCADE CONSTRAINTS;
DROP TABLE ASSIST CASCADE CONSTRAINTS;
DROP TABLE REBOUND CASCADE CONSTRAINTS;
DROP TABLE FOUL CASCADE CONSTRAINTS;
DROP TABLE TURNOVER CASCADE CONSTRAINTS;
dROP TABLE STEAL CASCADE CONSTRAINTS;
DROP TABLE BLOCK CASCADE CONSTRAINTS;

CREATE TABLE PLAYER(
	PlayerID			Char(8)			NOT NULL,
	PlayerName			Char(50)		NOT NULL,
	PlayerHeight		Int	            NOT NULL,
	PlayerWeight		Int     		NOT NULL,
    Points              Int             NULL,
    AssistID            Int             NULL,
    Rebound             Int             NULL,
    Foul                Int             NULL,
    Turnover            Int             NULL,
    Steal               Int             NULL,
    Block               Int             NULL,
	CONSTRAINT			PLAYER_PK		PRIMARY KEY(PlayerID)
	);

CREATE TABLE Made_Basket(
	PlayerID			Int				NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
    AssistID            Int             NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
    
CREATE TABLE Points(
	PlayerID			Int				NOT NULL,
	Made_Basket_Value   Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
  
CREATE TABLE REBOUND(
	PlayerID			Int				NOT NULL,
	Time_Rebound        Int             NOT NULL,
	CONSTRAINT			REBOUND_FK	    FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);

CREATE TABLE FOUL(
	PlayerID			Int				NOT NULL,
	Time_Foul           Int             NOT NULL,
	CONSTRAINT			FOUL_FK	        FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
    
CREATE TABLE TURNOVER(
	PlayerID			Int				NOT NULL,
	Time_Turnover       Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
    
CREATE TABLE STEAL(
	PlayerID			Int				NOT NULL,
	Time_Steal          Int             NOT NULL,
	CONSTRAINT			STEAL_FK	    FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
    
CREATE TABLE BLOCK(
	PlayerID			Int				NOT NULL,
	Time_Block          Int             NOT NULL,
	CONSTRAINT			BLOCK_FK	    FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
