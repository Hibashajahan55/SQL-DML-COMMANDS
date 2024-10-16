
# SQL-DML-COMMANDS
# SQL Activity - Manager Database
# INTRODUCTION
This project involves working with SQL DML (Data Manipulation Language) commands to create and manipulate a `Managers` table. The activities include table creation, data insertion, and various queries to retrieve and filter data from the table.

## Table Structure

The `Managers` table is created with the following fields:
- `Manager_Id` (INT): Primary key, unique identifier for each manager.
- `First_Name` (VARCHAR): Manager's first name, cannot be `NULL`.
- `Last_Name` (VARCHAR): Manager's last name, cannot be `NULL`.
- `DOB` (DATE): Manager's date of birth, cannot be `NULL`.
- `Age` (INT): Age of the manager, must be greater than 18 (check constraint applied).
- `Last_Update` (DATE): Date when the record was last updated.
- `Gender` (CHAR): Manager's gender ('M' or 'F').
- `Department` (VARCHAR): Department name, cannot be `NULL`.
- `Salary` (DECIMAL): Monthly salary, cannot be `NULL`.

## Tasks

### 1. Create the Managers Table
### 2. Insert 10 Rows into the Table
### 3. Query to Retrieve Name and Date of Birth of the Manager with Manager_Id 1
### 4. Query to Display the Annual Income of All Managers
### 5. Query to Display Records of All Managers Except ‘Aaliya’
### 6. Query to Display Details of Managers in the IT Department Earning More Than 25000
### 7. Query to Display Details of Managers with Salaries Between 10000 and 35000


## SQL Commands

### Table Creation Example
```sql
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
```
###  Insert 10 Rows into the Table
```sql
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
```
### Query to Retrieve Name and Date of Birth of the Manager with Manager_Id 1
```sql
SELECT First_Name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;
```
### Query to Display the Annual Income of All Managers
```sql
SELECT First_Name, Last_Name, (Salary * 12) AS Annual_Income
FROM Managers;
```
### Query to Display Records of All Managers Except ‘Aaliya’
```sql
SELECT *
FROM Managers
WHERE First_Name <> 'Aaliya';
```
### Query to Display Details of Managers in the IT Department Earning More Than 25000
```sql
SELECT *
FROM Managers
WHERE Department = 'IT' AND Salary > 25000;
```
###  Query to Display Details of Managers with Salaries Between 10000 and 35000
```sql
SELECT *
FROM Managers
WHERE Salary BETWEEN 10000 AND 35000;

```
## Conclusion

This project provides a hands-on experience with SQL DML commands, focusing on creating and managing a database table, inserting data, and writing queries to retrieve specific information.



