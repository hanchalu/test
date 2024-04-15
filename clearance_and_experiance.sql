

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    Role VARCHAR(255)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    UserID INT,
    Program VARCHAR(255),
    YearLevel VARCHAR(255),
    GPA DECIMAL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255) NOT NULL
);
