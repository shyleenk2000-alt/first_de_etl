USE dwh_pc_sales;
GO

IF OBJECT_ID('dwh_pc_sales.dbo.dim_product', 'U') IS NULL
BEGIN
    CREATE TABLE dwh_pc_sales.dbo.dim_product
    (
        ProductKey INT IDENTITY(1,1) NOT NULL,
        PC_Make NVARCHAR(100) NOT NULL,
        PC_Model NVARCHAR(100) NOT NULL,
        Storage_Type NVARCHAR(50) NOT NULL,
        RAM NVARCHAR(50) NOT NULL,
        Storage_Capacity NVARCHAR(50) NOT NULL,
        CreatedDate DATETIME2 NOT NULL
            CONSTRAINT DF_dim_product_CreatedDate
            DEFAULT SYSUTCDATETIME(),

        CONSTRAINT PK_dim_product
            PRIMARY KEY CLUSTERED (ProductKey),

        CONSTRAINT UQ_dim_product
            UNIQUE
            (
                PC_Make,
                PC_Model,
                Storage_Type,
                RAM,
                Storage_Capacity
            )
    );
END;
GO