/*Get All Player's Stats and Information*/
SELECT *
FROM PLAYER
ORDER BY PlayerID;

/*Points Example*/
SELECT PlayerName, PlayerID
FROM PLAYER
WHERE PlayerID IN
(SELECT PlayerID
FROM POINTS
WHERE PlayerID IN
    (SELECT PlayerID
    FROM POINTS
    WHERE Time_Point_Scored = 47))
ORDER BY PlayerName;

/*Assist Example*/
SELECT PlayerName, PlayerID
FROM PLAYER
WHERE PlayerID IN
(SELECT PlayerID
FROM ASSIST
WHERE PlayerID IN
    (SELECT PlayerID
    FROM ASSIST
    WHERE Time_Assist = 35))
ORDER BY PlayerName;

/*Rebound Example*/
SELECT PlayerName, PlayerID
FROM PLAYER
WHERE PlayerID IN
(SELECT PlayerID
FROM REBOUND
WHERE PlayerID IN
    (SELECT PlayerID
    FROM REBOUND
    WHERE Time_Rebound = 28))
ORDER BY PlayerName;

/*Foul Example*/
SELECT PlayerName, PlayerID
FROM PLAYER
WHERE PlayerID IN
(SELECT PlayerID
FROM FOUL
WHERE PlayerID IN
    (SELECT PlayerID
    FROM FOUL
    WHERE Time_Foul = 24))
ORDER BY PlayerName;

/*Turnover Subquery*/
SELECT PlayerName, PlayerID
FROM PLAYER
WHERE PlayerID IN
(SELECT PlayerID
FROM TURNOVER
WHERE PlayerID IN
    (SELECT PlayerID
    FROM TURNOVER
    WHERE Time_Turnover = 15))
ORDER BY PlayerName;

/*Steal Example*/
SELECT PlayerName, PlayerID
FROM PLAYER
WHERE PlayerID IN
(SELECT PlayerID
FROM STEAL
WHERE PlayerID IN
    (SELECT PlayerID
    FROM STEAL
    WHERE Time_Steal = 18))
ORDER BY PlayerName;

/*Block Example*/
SELECT PlayerName, PlayerID
FROM PLAYER
WHERE PlayerID IN
(SELECT PlayerID
FROM BLOCK
WHERE PlayerID IN
    (SELECT PlayerID
    FROM BLOCK
    WHERE Time_Block = 36))
ORDER BY PlayerName;