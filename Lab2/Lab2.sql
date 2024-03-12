/*SELECT * FROM EmployeeINFO
WHERE CONVERT(VARCHAR, Position) = 'Builder' OR CONVERT(VARCHAR, Position) = 'Electrician';
*/
/*
SELECT * FROM EmployeeINFO
WHERE CONVERT(VARCHAR, Position) = 'Builder' AND CONVERT(VARCHAR, PlaceBirth) = 'Sambir';
*/

/*
SELECT Sum([HoursWorkedDay]+[AddHoursWorkedDay]) AS SumOfWorked
FROM HoursWorked
WHERE (((EmployeeID)=1))
*/
/*
SELECT * FROM EmployeeINFO , Department
WHERE CONVERT(VARCHAR, [EmployeeINFO].Position) = 'Builder' AND [EmployeeINFO].DepartmentID = 1 AND  [Department].Id = 1;
*/
/*
SELECT Department.NameDepartment , EmployeeINFO.EmployeeID,EmployeeINFO.Name,EmployeeINFO.Surname
FROM EmployeeINFO
FULL OUTER JOIN Department ON Department.Id = EmployeeINFO.EmployeeID
ORDER BY CONVERT(VARCHAR , Department.NameDepartment);
*/

/*
SELECT Name, EmployeeID,Surname,FatherName FROM EmployeeINFO WHERE Name LIKE 'Alex';
*/

/*
SELECT * FROM EmployeeINFO
WHERE EmployeeID BETWEEN 1 AND 8;
*/

/*
SELECT * FROM EmployeeINFO
WHERE DepartmentID IN (1, 3);
*/

/*
SELECT *
FROM Department
WHERE EXISTS (SELECT * FROM EmployeeINFO WHERE EmployeeINFO.EmployeeID = Department.Id AND EmployeeID =2);
*/

/*
UPDATE EmployeeINFO
SET Name = 'Alfred', Surname= 'Smith'
WHERE EmployeeID = 1;
*/
/*
DELETE FROM EmployeeINFO WHERE EmployeeID='20';
*/
/*
INSERT [dbo].[EmployeeINFO] ([Position], [EmployeeID], [Pasport], [HomeAddress], [PlaceBirth], [DateBirth], [DepartmentID], [Name], [Surname], [FatherName]) VALUES (N'Electrician', 20, 553356, N'Zelena 02', N'Lviv', N'08.03.2000', 1, N'Robert ', N'Schaefer', N'Alex ')
*/








