--Marketing Department Metric Tables:

-- Table: Marketing_Expenses
CREATE TABLE Marketing_Expenses (
    ID INT PRIMARY KEY,
    DepartmentID INT,
    Expense_Type VARCHAR(100),
    Amount DECIMAL(18, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);

-- Table: Website_Visitors
CREATE TABLE Website_Visitors (
    ID INT PRIMARY KEY,
    DepartmentID INT,
    Visit_Date DATE,
    Count INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);

-- Table: Social_Media_Metrics
CREATE TABLE Social_Media_Metrics (
    ID INT PRIMARY KEY,
    DepartmentID INT,
    Date_Recorded DATE,
    Social_Media_Followers INT,
    Social_Media_Mentions INT,
    Reach INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);

-------Sales Department Metric Tables:

-- Table: Sales_Revenue
CREATE TABLE Sales_Revenue (
    ID INT PRIMARY KEY,
    DepartmentID INT,
    Date DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);

-- Table: Sales_Source
CREATE TABLE Sales_Source (
    ID INT PRIMARY KEY,
    Source_Name VARCHAR(50) UNIQUE -- Retail, Website, Third-Party
);

-- Table: Sales_Revenue_Details
CREATE TABLE Sales_Revenue_Details (
    ID INT PRIMARY KEY,
    Sales_Revenue_ID INT,
    Source_ID INT,
    Sales_Amount DECIMAL(18, 2),
    FOREIGN KEY (Sales_Revenue_ID) REFERENCES Sales_Revenue(ID),
    FOREIGN KEY (Source_ID) REFERENCES Sales_Source(ID)
);

-- Table: Purchased_Products
CREATE TABLE Purchased_Products (
    ID INT PRIMARY KEY,
    DepartmentID INT,
    Date DATE,
    Product_Name VARCHAR(100),
    Quantity INT,
    Price DECIMAL(18, 2),
    Source_ID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID),
    FOREIGN KEY (Source_ID) REFERENCES Sales_Source(ID)
);



--Retail Department Metric Tables:

-- Table: Customer_Traffic
CREATE TABLE Customer_Traffic (
    ID INT PRIMARY KEY,
    DepartmentID INT,
    Date DATE,
    City VARCHAR(100),           -- New column to indicate the city
    Customer_Traffic INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);


-- Table: Purchased_Products
CREATE TABLE Purchased_Products (
    ID INT PRIMARY KEY,
    DepartmentID INT,
    Date DATE,
    Product_Name VARCHAR(100),
    Quantity INT,
    Price DECIMAL(18, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);






---HR Department Metric Table:
-- Table: Employees
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    DepartmentID INT,
    Hire_Date DATE,
    Termination_Date DATE,
    Performance_Rating INT,
    Performance_Rating_Year INT,       -- New column for the year of performance rating
    Engagement_Score DECIMAL(18, 2),
    Engagement_Score_Year INT,         -- New column for the year of engagement score
    Satisfaction_Score DECIMAL(18, 2),
    Satisfaction_Score_Year INT,       -- New column for the year of satisfaction score
    FOREIGN KEY (DepartmentID) REFERENCES Departments(ID)
);


