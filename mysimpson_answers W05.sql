
/
***********************************************************************************
******************************
NAME: MySImpson Name Jonathan Ordillas
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


-- Simpson communities


--(Q4. I want to know the description of all the debit that has been made by my wife Marge simpson and 
--figure out the total amount of all his debit transactions ?

-- A4: Marge's debit | Joining tables

 DROP TABLE IF EXISTS [dbo].[FBS_Viza_Costmo];
 
 ALTER TABLE [dbo].[FBS_Viza_Costmo]
 ADD member_id int IDENTITY(1,1) PRIMARY KEY;

 SELECT a.Name, b.Description, SUM(b.Debit) as total
 FROM [Family_Data] a 
 JOIN [dbo].[FBS_Viza_Costmo] b
 ON a.Member_ID = b.member_id
 WHERE a.name = 'Marge Simpson'
 GROUP BY a.Name, b.Description;


 // ASK BY MY CLASSMATE GRACE // 

  --Q5 We want to learn how we can better use of our money. 
 -- How much money would they save if they avoid spending money on Try N' save , and KWIK-E-MART
 --A5 : Here's the total amount by not spending on Try n save and kwik E-mark

 SELECT Member_Name, SUM(debit) as 'This is the total with amount try n save and kwek i mart'
FROM [dbo].[FBS_Viza_Costmo]
WHERE Member_Name = 'Marge Simpson' AND Description NOT IN ('TRY N SAVE', 'KWIK E mart')
GROUP BY Member_Name;



--(Q6  I want to know the description of all the debit that has been made by my Husband Homer simpson 
--  to see how much money left on his bank account
-- A6: descriptions and amounts

SELECT a.Member_Name, a.Description, a.debit
FROM [dbo].[FBS_Viza_Costmo] a
WHERE Member_Name = 'Homer Simpson';


--(Q7.We want to learn how we can better use of our money. 
 -- How much money would they save if they avoid spending money on Try N' save (just try n save )
 --A7: here you can see the total value of their Debit:

 SELECT Member_Name, SUM(debit) as 'This is the total with outh try n save'
FROM [dbo].[FBS_Viza_Costmo]
WHERE Description NOT IN ('TRY N SAVE')
GROUP BY Member_Name;

SELECT * FROM [dbo].[FBS_Viza_Costmo];



-- (8 I want to know the description of all the debit that has been made by my wife Marge simpson and figure out the total
--   amount of all his debit transactions?
-- QA8: summarize

SELECT a.Member_Name, a.Description, a.debit
FROM [dbo].[FBS_Viza_Costmo] a
WHERE Mem