USE stg_pc_sales;
GO

IF OBJECT_ID('stg_pc_sales.dbo.dim_customer', 'U') IS NULL
BEGIN
    CREATE TABLE stg_pc_sales.dbo.dim_customer
    (
        CustomerID INT IDENTITY(1,1) PRIMARY KEY,
        Customer_Name VARCHAR(150),
        Customer_Surname VARCHAR(150),
        Customer_Contact_Number VARCHAR(50),
        Customer_Email_Address VARCHAR(200)
    );
END;
GO

INSERT INTO stg_pc_sales.dbo.dim_customer
(
    Customer_Name,
    Customer_Surname,
    Customer_Contact_Number,
    Customer_Email_Address
)
SELECT DISTINCT
    Customer_Name,
    Customer_Surname,
    Customer_Contact_Number,
    Customer_Email_Address
FROM stg_pc_sales.dbo.raw_pc_data
