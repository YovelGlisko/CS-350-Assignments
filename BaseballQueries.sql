/* Query 1 */

SELECT Team_Name, Manager
FROM Team
WHERE Division = 'AL East';

/* Query 2 */

SELECT Player.Player_Name, Player.Position
FROM Player, Team
WHERE Player.Team_Code = Team.Team_Code AND Team.Manager = 'Francona';

/* Query 3 */

SELECT Team.Team_Name, SUM(Player.At_Bats) AS TotalAtBats, SUM(Player.Hits) AS TotalHits, (SUM(Player.Hits)/SUM(Player.At_Bats)) AS BattingAverage
FROM Player, Team
WHERE Player.Team_Code = Team.Team_Code
GROUP BY Team.Team_Name
ORDER BY BattingAverage DESC;

/* Query 4 */

SELECT Team.Team_Name, COUNT(Games.Winning_Team) AS NumberOfWins
FROM Team, Games
WHERE Games.Winning_Team = Team.Team_Code
GROUP BY Team.Team_NAME
ORDER BY NumberOfWins DESC;

/* Query 5 */

SELECT Team_Name, Division
FROM Team
WHERE Team_Code NOT IN (SELECT Team.Team_Code FROM Team, Games WHERE Games.Winning_Team = Team.Team_Code GROUP BY Team.Team_Code)
ORDER BY Division ASC, Team_Name ASC;

/* Query 6 */

SELECT Player.Player_Name, Team.Team_Name, (Player.Hits/Player.At_Bats) AS BattingAverage
FROM Player, Team
WHERE Player.Team_Code = Team.Team_Code AND Division = 'AL East' AND (Player.Hits/Player.At_Bats) = (SELECT MAX(Hits/At_Bats) FROM Player, Team WHERE Player.Team_Code = Team.Team_Code AND Team.Division = 'AL East')
ORDER BY BattingAverage DESC;

/* Query 7 */

SELECT Team_Name
FROM Team
WHERE Team_Code IN (SELECT Team.Team_Code FROM Team, Player WHERE Player.Team_Code = Team.Team_Code AND (Player.Hits/Player.At_Bats) > 0.30 GROUP BY Team.Team_Code HAVING COUNT(Player.Hits/Player.At_Bats) > 1);

