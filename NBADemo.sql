/*Get All Player's Stats and Information*/
SELECT *
FROM PLAYER
ORDER BY PlayerID;

/*First Half Player Scoring*/
SELECT *
FROM POINTS
WHERE Time_Point_Scored <= 24 
ORDER BY PlayerID;

/*Devonte Graham Assists*/
SELECT *
FROM ASSIST
WHERE PlayerID = 00000014 
ORDER BY Time_Assist;

/*PJ Washington First Half Rebounds*/
SELECT *
FROM REBOUND
WHERE PlayerID = 00000010 AND Time_Rebound <= 24 
ORDER BY Time_Rebound;

/*3rd Quarter Fouls*/
SELECT *
FROM FOUL
WHERE Time_Foul > 24 and Time_Foul < 37 
ORDER BY PlayerID;

