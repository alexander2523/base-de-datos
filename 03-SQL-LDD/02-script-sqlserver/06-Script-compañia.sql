CREATE DATABASE compañia
USE compañia

CREATE TABLE Employee (
    Id_Ssn INT NOT NULL IDENTITY(1,1),  
    Firstname NVARCHAR(20) NOT NULL,     
    SecondName NVARCHAR(20) NOT NULL,    
    LastName NVARCHAR(20) NOT NULL,      
    Salary INT NOT NULL,                 
    Sex NVARCHAR(10) NOT NULL,           
    PRIMARY KEY (Id_Ssn)                
);
GO

SELECT * FROM Employee

CREATE TABLE Department (
    NameDepartmen NVARCHAR(20) NOT NULL,  
    Id_NumberDeparment INT NOT NULL IDENTITY(1,1),  
    Id_Ssn INT NOT NULL,                 
    Stardate DATE NOT NULL,               
    PRIMARY KEY (Id_NumberDeparment),    
    FOREIGN KEY (Id_Ssn) 
	REFERENCES Employee(Id_Ssn)  
);
GO


CREATE TABLE Dependent (
    Id_Dependent INT NOT NULL IDENTITY(1,1),  
    Id_Snn INT NOT NULL,                       
    Name NVARCHAR(20) NOT NULL,                
    Sex NVARCHAR(15) NOT NULL,                 
    Bithday DATE NOT NULL,                     
    PRIMARY KEY (Id_Dependent),               
    FOREIGN KEY (Id_Snn) 
	REFERENCES Employee(Id_Ssn)  
);


CREATE TABLE Project (
    Id_NumberProject INT NOT NULL IDENTITY(1,1),  
    Name NVARCHAR(30) NOT NULL,                    
    Location GEOMETRY NOT NULL,                    
    Id_NumberDepartment INT NOT NULL,             
    PRIMARY KEY (Id_NumberProject),               
    FOREIGN KEY (Id_NumberDepartment) 
	REFERENCES Department(Id_NumberDeparment)  
);
GO

CREATE TABLE Work_on (
    Id_Ssn INT NOT NULL,                         
    Id_NumberProject INT NOT NULL,               
    Hours DATETIME NOT NULL,                     
    PRIMARY KEY (Id_Ssn, Id_NumberProject),      
    FOREIGN KEY (Id_Ssn) 
	REFERENCES Employee(Id_Ssn),  
    FOREIGN KEY (Id_NumberProject) 
	REFERENCES Project(Id_NumberProject) 
);
GO

