/* Part 2A */

/* Query 1 */
SELECT STUDENT.FNAME, STUDENT.LNAME
FROM STUDENT, COURSE, CLASS, ENROLL
WHERE COURSE.CTITLE = 'Introduction to Programming II' AND ENROLL.SID = STUDENT.SID AND (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO;

/* Query 2 */
SELECT COURSE.CNO, COURSE.CTITLE
FROM STUDENT, COURSE, CLASS, ENROLL
WHERE STUDENT.FNAME = 'Susan' AND STUDENT.LNAME = 'Jones' AND ENROLL.SID = STUDENT.SID AND (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO;

/* Query 3 */
SELECT STUDENT.SID
FROM STUDENT
WHERE STUDENT.SID NOT IN (SELECT STUDENT.SID FROM STUDENT, COURSE, CLASS, ENROLL WHERE ENROLL.SID = STUDENT.SID AND (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND ENROLL.TERM = 'F18' AND CLASS.CNO = COURSE.CNO);

/* Query 4 */
SELECT STUDENT.SID
FROM STUDENT, COURSE, CLASS, ENROLL
WHERE ENROLL.SID = STUDENT.SID AND (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO 
GROUP BY STUDENT.SID
HAVING COUNT(STUDENT.SID) = (SELECT COUNT(*) FROM CLASS);

/* Query 5 */
SELECT STUDENT.FNAME, STUDENT.LNAME
FROM STUDENT
WHERE STUDENT.SID NOT IN (SELECT STUDENT.SID FROM STUDENT, COURSE, CLASS, ENROLL WHERE ENROLL.SID = STUDENT.SID AND (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO);

/* Query 6 */
SELECT STUDENT.SID
FROM STUDENT, COURSE, CLASS, ENROLL
WHERE ENROLL.SID = STUDENT.SID AND (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO 
GROUP BY STUDENT.SID
HAVING COUNT(STUDENT.SID) = (SELECT MAX(COUNT(STUDENT.SID)) FROM STUDENT, COURSE, CLASS, ENROLL WHERE ENROLL.SID = STUDENT.SID AND (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO GROUP BY STUDENT.SID );

/* Query 7 */
SELECT CLASS.TERM, CLASS.SECTNO, COURSE.CTITLE, COUNT(CONCAT(CLASS.TERM, CLASS.SECTNO)) AS NumberEnrolled
FROM CLASS, COURSE, ENROLL
WHERE (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO 
GROUP BY CLASS.TERM, CLASS.SECTNO, COURSE.CTITLE;

/* Query 8 */
SELECT CLASS.TERM, CLASS.SECTNO, COURSE.CTITLE
FROM CLASS, COURSE, ENROLL
WHERE (ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO 
GROUP BY CLASS.TERM, CLASS.SECTNO, COURSE.CTITLE
HAVING COUNT(CONCAT(CLASS.TERM, CLASS.SECTNO)) >= (SELECT AVG(COUNT(CONCAT(CLASS.TERM, CLASS.SECTNO))) FROM CLASS, COURSE, ENROLL WHERE 
(ENROLL.SECTNO = CLASS.SECTNO AND ENROLL.TERM = CLASS.TERM) AND CLASS.CNO = COURSE.CNO GROUP BY CLASS.TERM, CLASS.SECTNO, COURSE.CTITLE);

/* Query 9 */
SELECT SCORES.SID, SCORES.TERM, SCORES.SECTNO, SCORES.COMPNAME, SCORES.POINTS, (SCORES.POINTS * COMPONENT.WEIGHT) AS WeightedScore
FROM SCORES, COMPONENT
WHERE SCORES.TERM = COMPONENT.TERM AND SCORES.SECTNO = COMPONENT.SECTNO AND SCORES.COMPNAME = COMPONENT.COMPNAME;

/* Query 10 */
SELECT SCORES.SID, STUDENT.FNAME, STUDENT.LNAME, SUM(SCORES.POINTS * COMPONENT.WEIGHT) AS CourseAverage
FROM STUDENT, SCORES, COMPONENT
WHERE STUDENT.SID = SCORES.SID AND SCORES.TERM = COMPONENT.TERM AND SCORES.SECTNO = COMPONENT.SECTNO AND SCORES.COMPNAME = COMPONENT.COMPNAME AND SCORES.TERM = '&Term' AND SCORES.SECTNO = '&SectionNumber'
GROUP BY SCORES.SID, STUDENT.FNAME, STUDENT.LNAME;

/* Part 2B */

/* Question 1 */
SELECT * FROM STUDENT;
DELETE FROM STUDENT WHERE FNAME = 'Mary' AND MINIT = 'C' AND LNAME = 'Jones';
SELECT * FROM STUDENT;

/* Question 2 */
SELECT * FROM ENROLL;
DELETE FROM ENROLL WHERE SID = '4444' AND TERM = 'F18' AND SECTNO = '1031';
SELECT * FROM ENROLL;

/* Question 3 */
SELECT * FROM SCORES;
UPDATE SCORES
SET POINTS = POINTS + 10
WHERE SECTNO = '1031' AND TERM = 'F18' AND COMPNAME = 'Exam1';
SELECT * FROM SCORES;

/* Question 4 */
SELECT * FROM ENROLL;
INSERT INTO ENROLL (SID, TERM, SECTNO)
SELECT SID, 'S19', '1031' FROM ENROLL
WHERE SECTNO = '1031' AND TERM = 'F18';
SELECT * FROM ENROLL;

/* Question 5 */
SELECT * FROM COURSE;
DELETE FROM COURSE WHERE COURSE.CNO IN 
(SELECT CLASS.CNO FROM CLASS, ENROLL WHERE (ENROLL.TERM = CLASS.TERM AND ENROLL.SECTNO = CLASS.SECTNO) 
     GROUP BY CLASS.CNO HAVING COUNT(CLASS.CNO) < 5);
SELECT * FROM COURSE;

COMMIT;







