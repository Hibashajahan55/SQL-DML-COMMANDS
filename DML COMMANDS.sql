use entri_d41;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age > 18),
    Last_Update DATE,
    Gender CHAR(1),
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);
desc managers;
#Insert 10 Rows
INSERT INTO Managers (Manager_Id, First_Name, Last_Name, DOB, Age, Last_Update, Gender, Department, Salary) VALUES
(1, 'Annie', 'Jacob', '1985-07-15', 39, '2024-01-01', 'F', 'Finance', 45000),
(2, 'Abin', 'Mars', '1990-04-12', 34, '2024-02-15', 'M', 'IT', 28000),
(3, 'Samuel', 'Smith', '1980-03-10', 44, '2024-03-05', 'M', 'HR', 32000),
(4, 'Aaliya', 'Brown', '1988-08-22', 36, '2024-04-18', 'F', 'IT', 26000),
(5, 'John', 'Williams', '1975-09-30', 49, '2024-05-20', 'M', 'Sales', 40000),
(6, 'Dijo', 'Ronson', '1992-05-25', 32, '2024-06-30', 'M', 'Marketing', 35000),
(7, 'Santra', 'James', '1986-11-11', 38, '2024-07-11', 'F', 'IT', 30000),
(8, 'Priya', 'Deen', '1993-12-05', 30, '2024-08-25', 'F', 'HR', 22000),
(9, 'Michael', 'Miller', '1983-01-20', 41, '2024-09-10', 'M', 'Finance', 37000),
(10, 'Linta', 'Wilson', '1987-06-15', 37, '2024-10-01', 'F', 'IT', 27000);

SELECT * FROM managers;

#  query that retrieves the name and date of birth of the manager with Manager_Id 1:
SELECT First_Name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

#query to display the annual income of all managers:
SELECT First_Name, Last_Name,Salary,(Salary * 12) AS Annual_Income
FROM Managers;

# query to display records of all managers except ‘Aaliya':
SELECT *FROM Managers
WHERE First_Name <> 'Aaliya';

# query to display details of managers whose department is IT and earns more than 25000 per month.

SELECT *FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

#  query to display details of managers whose salary is between 10000 and 35000.

SELECT *FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;




