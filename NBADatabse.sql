DROP TABLE PLAYER CASCADE CONSTRAINTS;
DROP TABLE MADE_BASKET CASCADE CONSTRAINTS;
DROP TABLE ASSIST CASCADE CONSTRAINTS;
DROP TABLE REBOUND CASCADE CONSTRAINTS;
DROP TABLE FOUL CASCADE CONSTRAINTS;
DROP TABLE TURNOVER CASCADE CONSTRAINTS;
dROP TABLE STEAL CASCADE CONSTRAINTS;
DROP TABLE BLOCK CASCADE CONSTRAINTS;

CREATE TABLE PLAYER(
	PlayerID			Int			    NOT NULL,
	PlayerName			Char(50)		NOT NULL,
	PlayerHeight		Int	            NOT NULL,
	PlayerWeight		Int		        NOT NULL,
    AssistID            Int             NULL,
	CONSTRAINT			PLAYER_PK		PRIMARY KEY(PlayerID)
	);

CREATE TABLE Made_Basket(
	PlayerID			Int				NOT NULL,
	Time_Basket_Scored  Int             NOT NULL,
    AssistID            Int             NULL,
	CONSTRAINT			Made_Basket_FK	FOREIGN KEY(PlayerID)
							REFERENCES PLAYER(PlayerID)
	);

/*The following tables need to be edited, but wanted to make table code blocks so it's easier to edit later*/
  
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

