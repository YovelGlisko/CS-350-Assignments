/* Yovel Glisko Assignment 4 */
DROP TABLE S	CASCADE CONSTRAINTS;
DROP TABLE P	CASCADE CONSTRAINTS;
DROP TABLE SP	CASCADE CONSTRAINTS;

CREATE TABLE S
     (S#		CHAR(3)    NOT NULL,
      SName		VARCHAR(25),
      Status	NUMBER,
      City		VARCHAR(20),
CONSTRAINT S_PK PRIMARY KEY (S#));

CREATE TABLE P
(P#         CHAR(3)    NOT NULL,
	 PName      VARCHAR(25),
	 Color      VARCHAR(15),
       Weight     NUMBER,
       City       VARCHAR(20),
CONSTRAINT P_PK PRIMARY KEY (P#));

CREATE TABLE SP
(S#		CHAR(3)   NOT NULL,
 P#		CHAR(3)   NOT NULL,
 Qty		NUMBER,
CONSTRAINT SP_PK PRIMARY KEY (S#,P#),
CONSTRAINT SP_FK1 FOREIGN KEY (S#) REFERENCES S(S#),
CONSTRAINT SP_FK2 FOREIGN KEY (P#) REFERENCES P(P#));

delete from S;
delete from SP;
delete from P;

INSERT INTO S  (S#, SName, Status, City)
VALUES  ('S1', 'Smith', 20, 'London');
INSERT INTO S  (S#, SName, Status, City)
VALUES  ('S2', 'Jones', 10, 'Paris');
INSERT INTO S  (S#, SName, Status, City)
VALUES  ('S3', 'Blake', 30, 'Paris');
INSERT INTO S  (S#, SName, Status, City)
VALUES  ('S4', 'Clark', 20, 'London');
INSERT INTO S  (S#, SName, Status, City)
VALUES  ('S5', 'Adams', 30, 'Athens');

INSERT INTO P  (P#, PName, Color, Weight, City)
VALUES  ('P1', 'Nut', 'Red', 12, 'London');
INSERT INTO P  (P#, PName, Color, Weight, City)
VALUES  ('P2', 'Bolt', 'Green', 17, 'Paris');
INSERT INTO P  (P#, PName, Color, Weight, City)
VALUES  ('P3', 'Screw', 'Blue', 17, 'Rome');
INSERT INTO P  (P#, PName, Color, Weight, City)
VALUES  ('P4', 'Screw', 'Red', 14, 'London');
INSERT INTO P  (P#, PName, Color, Weight, City)
VALUES  ('P5', 'Cam', 'Blue', 12, 'Paris');
INSERT INTO P  (P#, PName, Color, Weight, City)
VALUES  ('P6', 'Cog', 'Red', 19, 'London');

INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S1', 'P1', 300);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S1', 'P2', 200);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S1', 'P3', 400);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S1', 'P4', 200);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S1', 'P5', 100);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S1', 'P6', 100);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S2', 'P1', 300);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S2', 'P2', 400);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S3', 'P2', 200);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S4', 'P2', 200);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S4', 'P4', 300);
INSERT INTO SP  (S#, P#, Qty)
VALUES  ('S4', 'P5', 400);

COMMIT;

SELECT * FROM S;
SELECT * FROM P;
SELECT * FROM SP;

/* Query 1 */
SELECT S#, SUM(QTY) AS Quantity
FROM SP
GROUP BY S#
ORDER BY S#;

/* Query 2 */
SELECT S.SNAME, SUM(SP.QTY) AS Quantity
FROM S, SP
WHERE S.S# = SP.S#
GROUP BY S.SNAME
ORDER BY Quantity;

/* Query 3 */
SELECT P.COLOR, SUM(SP.QTY) AS Quantity
FROM P, SP
WHERE P.P# = SP.P#
GROUP BY P.COLOR
ORDER BY P.COLOR;

/* Query 4 */
SELECT S.SNAME, SUM(SP.QTY) AS Quantity
FROM S, SP, P
WHERE S.S# = SP.S# AND P.P# = SP.P# AND P.COLOR = 'Red'
GROUP BY S.SNAME
ORDER BY S.SNAME;

/* Query 5 */
SELECT S.SNAME, SUM(SP.QTY) AS Quantity
FROM S, SP, P
WHERE S.S# = SP.S# AND P.P# = SP.P# AND S.STATUS > 20 AND P.COLOR = 'Red'
GROUP BY S.SNAME
ORDER BY Quantity;

/* Query 6 */
SELECT S.S#, S.SNAME, (Count(SP.P#))
FROM S, SP, P
WHERE S.S# = SP.S# AND P.P# = SP.P# AND P.P# = (SELECT P# FROM (SELECT P#, COUNT(P#) FROM SP group by P# ORDER BY COUNT(P#) desc) WHERE ROWNUM = 1)
GROUP BY S.SNAME, S.S#
ORDER BY S.SNAME;

/* Query 7 */
SELECT P.COLOR, COUNT(P.COLOR) AS NumberTimesOrderedByLowerStatus
FROM S, SP, P
WHERE S.S# = SP.S# AND P.P# = SP.P# AND S.STATUS != (SELECT STATUS FROM (SELECT STATUS FROM S group by STATUS ORDER BY STATUS desc) WHERE ROWNUM = 1)
GROUP BY P.COLOR
ORDER BY COUNT(P.COLOR) desc;

/* Query 8 */
SELECT SNAME, STATUS
FROM S
WHERE S.STATUS > (SELECT AVG(STATUS) FROM S)
ORDER BY SNAME;

/* Query 9 */
SELECT P#, PNAME, City
FROM P
WHERE City = (SELECT City FROM (SELECT City, COUNT(City) FROM P group by City ORDER BY COUNT(City) desc) WHERE ROWNUM = 1)
ORDER BY PNAME;

/* Query 10 */
SELECT S.S#, S.SNAME, SUM(P.WEIGHT * SP.QTY) AS AggregateWeight
FROM S, SP, P
WHERE S.S# = SP.S# AND P.P# = SP.P# 
GROUP BY S.S#, S.SNAME
HAVING SUM(P.WEIGHT * SP.QTY) > (SELECT SUM(P.WEIGHT * SP.QTY) FROM S, SP, P WHERE S.S# = SP.S# AND P.P# = SP.P# AND S.S# = 'S2')
ORDER BY AggregateWeight desc, SNAME
