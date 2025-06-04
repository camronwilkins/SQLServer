-- seed_data.sql
-- This script inserts sample data into the Sales schema

INSERT INTO Sales.Customers (FirstName, LastName, Email)
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Alice', 'Jones', 'alice.jones@example.com');
GO

INSERT INTO Sales.Orders (CustomerID, OrderDate, Amount)
VALUES
    (1, DATEADD(day, -10, GETDATE()), 99.99),
    (1, DATEADD(day, -5, GETDATE()), 149.50),
    (2, GETDATE(), 200.00),
    (3, GETDATE(), 50.00);
GO
