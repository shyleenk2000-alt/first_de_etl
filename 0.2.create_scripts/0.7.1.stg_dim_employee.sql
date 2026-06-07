USE stg_pc_sales;
GO

IF OBJECT_ID('stg_pc_sales.dbo.dim_employee', 'U') IS NULL
BEGIN
    CREATE TABLE stg_pc_sales.dbo.dim_employee
    (
        SalesPersonID INT IDENTITY(1,1) PRIMARY KEY,
        Sales_Person_Name VARCHAR(150),
        Sales_Person_Department VARCHAR(100)
    );
END;
GO
INSERT INTO stg_pc_sales.dbo.dim_employee
(
    Sales_Person_Name,
    Sales_Person_Department
)
SELECT DISTINCT
    Sales_Person_Name,
    Sales_Person_Department
FROM stg_pc_sales.dbo.raw_pc_data
