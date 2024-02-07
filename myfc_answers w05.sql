


/
***********************************************************************************
******************************
NAME: MyFC Name Jonathan Ordillas
PURPOSE: My script purpose is to answer the question I created last week
MODIFICATION LOG:
Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
v2.0 02/06/2024 IT143JO 1. Built this script for EC IT143
RUNTIME:
0m 1s
NOTES:
This is where I talk about what this script is, why I built it, and other stuff...
***********************************************************************************
*******************************/
-- Q1: Our finance team is planning to organize the budget for this year. We want to know how many players are on our team
-- A1: --(1. Number of players

SELECT COUNT(*) as 'Total numbers of player' FROM [dbo].[tblPlayerDim];



 --Q2. We need to understand how these players spends their salary to support their needs and how much these players saves in a month?
 -- A2 monthly salaries

 SELECT DISTINCT a.pl_name, b.mtd_salary
 FROM [dbo].[tblPlayerDim] a 
 INNER JOIN [dbo].[tblPlayerFact] b
 ON a.pl_id = b.pl_id
 ORDER BY mtd_salary DESC;


--Q3.  We want to raise the salary for those players who have worked hard in practice. How many players on this team do you think have been working hard
-- A2. These are the top players who have been working hard it is based on their salaries

SELECT mtd_salary 
FROM [dbo].[tblPlayerFact]
ORDER BY mtd_salary DESC;

 SELECT TOP 10 * FROM ((SELECT DISTINCT t.pl_name, f.mtd_salary
 FROM [dbo].[tblPlayerDim] t 
 INNER JOIN [dbo].[tblPlayerFact] f
 ON t.pl_id = f.pl_id)) AS subquery
 ORDER BY mtd_salary DESC;

 ber_Name = 'Marge Simpson';