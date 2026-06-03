USE dwh_pc_sales;
GO

IF OBJECT_ID('dwh_pc_sales.dbo.dim_customer', 'U') IS NULL
BEGIN
    CREATE TABLE dwh_pc_sales.dbo.dim_customer
    (
        CustomerKey INT IDENTITY(1,1) NOT NULL,
        Customer_Name NVARCHAR(150) NOT NULL,
        Customer_Surname NVARCHAR(150) NOT NULL,
        Customer_Contact_Number NVARCHAR(50) NULL,
        Customer_Email_Address NVARCHAR(200) NOT NULL,

        CreatedDate DATETIME2 NOT NULL 
            CONSTRAINT DF_dim_customer_CreatedDate DEFAULT SYSUTCDATETIME(),

        CONSTRAINT PK_dim_customer PRIMARY KEY CLUSTERED (CustomerKey),

        CONSTRAINT UQ_dim_customer UNIQUE
        (
            Customer_Name,
            Customer_Surname,
            Customer_Email_Address
        )
    );
END;
GO