
INSERT INTO PLAYER VALUES
('00000000', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000001', 'Wendell Carter Jr.', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000002', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000003', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000004', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000005', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000006', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000007', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000008', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);
INSERT INTO PLAYER VALUES
('00000009', 'Lauri Markkanen', 84, 240, 10, 2, 4, 4, 1, 1, 0);


INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Eastlake Building', 'Office', '123 Eastlake', 'Seattle', 'WA', '98119', 2);
INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Elm St Apts', 'Apartments', '4 East Elm', 'Lynwood', 'WA', '98223', 1);
INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Jefferson Hill', 'Office', '42 West 7th St', 'Bellevue', 'WA', '98007', 2);
INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Lake View Apts', 'Apartments', '1265 32nd Avenue', 'Redmond', 'WA', '98052', 3);
INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Kodak Heights Apts', 'Apartments', '65 32nd Avenue', 'Redmond', 'WA', '98052', 4);
INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Jones House', 'Private Residence', '1456 48th St', 'Bellevue', 'WA', '98007', 1);
INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Douglas House', 'Private Residence', '1567 51st St', 'Bellevue', 'WA', '98007', 3);
INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Samuels House', 'Private Residence', '567 151st St', 'Redmondr', 'WA', '98052', 5);
INSERT INTO OWNED_PROPERTY VALUES(seqOPID.nextVal,
	'Oak St Apts', 'Apartments', '5 West Oak', 'Lynwood', 'WA', '98223', 1);


INSERT INTO GGEMPLOYEE VALUES(seqEID.nextVal,
	'Smith', 'Sam', '206-254-1234', 'Master');
INSERT INTO GGEMPLOYEE VALUES(seqEID.nextVal,
	'Evanston', 'John','206-254-2345', 'Senior');
INSERT INTO GGEMPLOYEE VALUES(seqEID.nextVal,
	'Murray', 'Dale', '425-545-7654', 'Junior');
INSERT INTO GGEMPLOYEE VALUES(seqEID.nextVal,
	'Murphy', 'Jerry', '425-545-8765', 'Master');
INSERT INTO GGEMPLOYEE VALUES(seqEID.nextVal,
	'Fontaine', 'Joan', '206-254-3456', 'Senior');


INSERT INTO GG_SERVICE VALUES(seqGGSID.nextVal, 'Mow Lawn', 25.00);
INSERT INTO GG_SERVICE VALUES(seqGGSID.nextVal, 'Plant Annuals', 25.00);
INSERT INTO GG_SERVICE VALUES(seqGGSID.nextVal, 'Weed Garden', 30.00);
INSERT INTO GG_SERVICE VALUES(seqGGSID.nextVal, 'Trim Hedge', 45.00);
INSERT INTO GG_SERVICE VALUES(seqGGSID.nextVal, 'Prune Small Tree', 60.00);
INSERT INTO GG_SERVICE VALUES(seqGGSID.nextVal, 'Trim Medium Tree',100.00);
INSERT INTO GG_SERVICE VALUES(seqGGSID.nextVal, 'Trim Large Tree', 125.00);


INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 1, 2, TO_DATE('05-MAY-14', 'DD-MON-YY'), 1, 4.50);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 3, 2, TO_DATE('08-MAY-14', 'DD-MON-YY'), 3, 4.50);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 2, 1, TO_DATE('08-MAY-14', 'DD-MON-YY'), 2, 2.75);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 6, 1, TO_DATE('10-MAY-14', 'DD-MON-YY'), 5, 2.50);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 5, 4, TO_DATE('12-MAY-14', 'DD-MON-YY'), 4, 7.50);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 8, 1, TO_DATE('15-MAY-14', 'DD-MON-YY'), 4, 2.75);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 4, 4, TO_DATE('19-MAY-14', 'DD-MON-YY'), 1, 1.00);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 7, 1, TO_DATE('21-MAY-14', 'DD-MON-YY'), 2, 2.50);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 6, 3, TO_DATE('03-JUN-14', 'DD-MON-YY'), 5, 2.50);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 5, 7, TO_DATE('08-JUN-14', 'DD-MON-YY'), 4, 10.50);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 8, 3, TO_DATE('12-JUN-14', 'DD-MON-YY'), 4, 2.75);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 4, 5, TO_DATE('15-JUN-14', 'DD-MON-YY'), 1, 5.00);
INSERT INTO PROPERTY_SERVICE VALUES(seqPSID.nextVal, 7, 3, TO_DATE('19-JUN-14', 'DD-MON-YY'), 2, 4.00);

