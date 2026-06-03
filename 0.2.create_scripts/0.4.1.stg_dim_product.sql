IF OBJECT_ID('[stg_pc_sales].[dbo].[dim_product]', 'U') IS NULL
BEGIN
    CREATE TABLE [stg_pc_sales].[dbo].[dim_product]
    (
        ProductID INT IDENTITY(1,1) PRIMARY KEY,
        PC_Make VARCHAR(100),
        PC_Model VARCHAR(100),
        Storage_Type VARCHAR(50),
        RAM VARCHAR(50),
        Storage_Capacity VARCHAR(50)
    );
END;
GO

INSERT INTO [stg_pc_sales].[dbo].[dim_product]
(
    PC_Make,
    PC_Model,
    Storage_Type,
    RAM,
    Storage_Capacity
)
SELECT DISTINCT
    PC_Make,
    PC_Model,
    Storage_Type,
    RAM,
    Storage_Capacity
FROM [stg_pc_sales].[dbo].[raw_pc_data];