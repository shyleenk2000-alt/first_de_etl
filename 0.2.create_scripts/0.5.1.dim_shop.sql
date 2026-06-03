USE stg_pc_sales;
GO

IF OBJECT_ID('[stg_pc_sales][dbo].[dim_shop]', 'U') IS NULL
BEGIN
    CREATE TABLE stg_pc_sales.dbo.dim_shop
    (
        ShopID INT IDENTITY(1,1) PRIMARY KEY,
        Shop_Name VARCHAR(150),
        Shop_Age INT
    );
END;
GO
INSERT INTO stg_pc_sales.dbo.dim_shop
(
    Shop_Name,
    Shop_Age
)
SELECT DISTINCT
    Shop_Name,
    Shop_Age
FROM stg_pc_sales.dbo.raw_pc_data
