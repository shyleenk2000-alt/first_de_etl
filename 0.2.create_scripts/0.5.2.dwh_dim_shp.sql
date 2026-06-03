USE dwh_pc_sales;
GO

IF OBJECT_ID('dwh_pc_sales.dbo.dim_shop', 'U') IS NULL
BEGIN
    CREATE TABLE dwh_pc_sales.dbo.dim_shop
    (
        ShopKey INT IDENTITY(1,1) NOT NULL,
        Shop_Name NVARCHAR(150) NOT NULL,
        Shop_Age INT NULL,
        CreatedDate DATETIME2 NOT NULL 
            CONSTRAINT DF_dim_shop_CreatedDate DEFAULT SYSUTCDATETIME(),

        CONSTRAINT PK_dim_shop PRIMARY KEY CLUSTERED (ShopKey),

        CONSTRAINT UQ_dim_shop UNIQUE (Shop_Name, Shop_Age)
    );
END;
GO