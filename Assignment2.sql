--Assignment2
--Max Herrington

--1
PRINT'***QUESTION 1***'
PRINT''

SELECT DISTINCT LEN(firstName) AS 'First Name Length'
FROM Person
ORDER BY 'First Name Length' DESC


--2
PRINT'***QUESTION 2***'
PRINT''

SELECT firstName, LEFT(firstName,1) AS 'First Initial', 
	LOWER(LEFT(firstName,1)) AS 'Lower First Initial'
FROM Person
WHERE LEFT(lastName,1)='P'
ORDER BY firstName


--3
PRINT'***QUESTION 3***'
PRINT''

SELECT lastName,SUBSTRING(lastName,1,7) AS 'First Seven', 
	LOWER(SUBSTRING(lastName,1,7)) AS 'Lower First Seven'
FROM Person
WHERE SUBSTRING(lastName,1,1) = 'P'
ORDER BY lastName


--4
PRINT'***QUESTION 4***'
PRINT''

SELECT LOWER(SUBSTRING(firstName,1,1)) + LOWER(SUBSTRING(lastName,1,7)) 
	AS 'User Id'
FROM Person
WHERE SUBSTRING(lastName,1,1)= 'P'
ORDER BY 'User Id'


--5
PRINT'***QUESTION 5***'
PRINT''

SELECT number AS 'Course Code', name AS 'Course Name'
FROM Course
WHERE CHARINDEX('Database',name)>0


--6
PRINT'***QUESTION 6***'
PRINT''


SELECT CONVERT(CHAR(10),GETDATE(),102) AS 'Today',
 CONVERT(CHAR(10),GETDATE()+30,102) AS '30 Days',
 CONVERT(CHAR(10),GETDATE()+60,102) AS '60 Days',
 CONVERT(CHAR(10),GETDATE()+90,102) AS '90 Days',
 CONVERT(CHAR(10),GETDATE()+120,102)AS '120 Days'


 --7a)
 PRINT'***QUESTION 7 A)***'
 PRINT''


 SELECT 'Employee Number: ' + e.number,
	'Year: ' + CONVERT(VARCHAR(4),YEAR(p.birthdate)), 
	'Month: ' + CONVERT(VARCHAR(2),MONTH(p.birthdate)),
	'Day: ' + CONVERT(VARCHAR(2),DAY(p.birthdate))
 FROM Employee e,Person	p
 WHERE p.number = e.number
 ORDER BY p.birthdate


 --7b)
 PRINT'***QUESTION 7 B***'
 PRINT''

  SELECT 'Employee Number: ' + e.number,
	'Year: ' + CONVERT(VARCHAR(4),DATEPART(YYYY,p.birthdate)), 
	'Month: ' + CONVERT(VARCHAR(2),DATEPART(MM,p.birthdate)),
	'Day: ' + CONVERT(VARCHAR(2),DATEPART(DD,p.birthdate))
 FROM Employee e,Person	p
 WHERE p.number = e.number
 ORDER BY p.birthdate