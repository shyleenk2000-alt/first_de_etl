USE stg_pc_sales;
GO

IF OBJECT_ID('stg_pc_sales.dbo.dim_channel', 'U') IS NULL
BEGIN
    CREATE TABLE stg_pc_sales.dbo.dim_channel
    (
        ChannelID INT IDENTITY(1,1) PRIMARY KEY,
        Channel VARCHAR(100)
    );
END;
GO

INSERT INTO stg_pc_sales.dbo.dim_channel
(
    Channel
)
SELECT DISTINCT
    Channel
FROM stg_pc_sales.dbo.raw_pc_data
