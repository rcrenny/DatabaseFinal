
DROP TABLE PLAYER CASCADE CONSTRAINTS;
DROP TABLE MADE_BASKET CASCADE CONSTRAINTS;
DROP TABLE ASSIST CASCADE CONSTRAINTS;
DROP TABLE REBOUND CASCADE CONSTRAINTS;
DROP TABLE FOUL CASCADE CONSTRAINTS;
DROP TABLE TURNOVER CASCADE CONSTRAINTS;
dROP TABLE STEAL CASCADE CONSTRAINTS;
DROP TABLE BLOCK CASCADE CONSTRAINTS;
DROP SEQUENCE seqOID;
DROP SEQUENCE seqOPID;
DROP SEQUENCE seqEID;
DROP SEQUENCE seqGGSID;
DROP SEQUENCE seqPSID;

CREATE TABLE PLAYER(
	PlayerID			Int			    NOT NULL,
	PlayerName			Char(50)		NOT NULL,
	PlayerHeight		Int	            NOT NULL,
	PlayerWeight		Int		        NOT NULL,
	CONSTRAINT			PLAYER_PK		PRIMARY KEY(PlayerID)
	);

CREATE TABLE Made_Basket(
	ScorerID			Int				NOT NULL,
	Assist_Result	    Binary(n)		NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);

CREATE TABLE ASSIST(
	ScorerID			Int				NOT NULL,
	Assist_Result	    Binary(n)		NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);

/*The following tables need to be edited, but wanted to make table code blocks so it's easier to edit later*/
  
CREATE TABLE REBOUND(
	ScorerID			Int				NOT NULL,
	Assist_Result	    Binary(n)		NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);

CREATE TABLE FOUL(
	ScorerID			Int				NOT NULL,
	Assist_Result	    Binary(n)		NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
    
CREATE TABLE TURNOVER(
	ScorerID			Int				NOT NULL,
	Assist_Result	    Binary(n)		NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
    
CREATE TABLE STEAL(
	ScorerID			Int				NOT NULL,
	Assist_Result	    Binary(n)		NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);
    
CREATE TABLE BLOCK(
	ScorerID			Int				NOT NULL,
	Assist_Result	    Binary(n)		NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);

/*Will delete next table later, only using it for reference*/

CREATE TABLE PROPERTY_SERVICE(
	PropertyServiceID	Int				NOT NULL,
	PropertyID			Int				NOT NULL,
	ServiceID			Int				NOT NULL,
	ServiceDate			Date			NOT NULL,
	EmployeeID			Int				NOT NULL,
    HoursWorked			Number (4,2)	NULL,
	CONSTRAINT			PROP_SERVICE_PK 		
							PRIMARY KEY(PropertyServiceID),
	CONSTRAINT			PROP_SERVICE_PROP_FK FOREIGN KEY (PropertyID)
							REFERENCES OWNED_PROPERTY(PropertyID),
	CONSTRAINT			PROP_SERVICE_SERVICE_FK FOREIGN KEY (ServiceID)
							REFERENCES GG_SERVICE(ServiceID),
	CONSTRAINT			SERVICE_EMP_FK FOREIGN KEY (EmployeeID)
							REFERENCES GGEMPLOYEE(EmployeeID)
	);

