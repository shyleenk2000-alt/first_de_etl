
      IF OBJECT_ID('[stg_pc_sales].[dbo].[dim_location]', 'U') IS NULL
BEGIN
    CREATE TABLE [stg_pc_sales].[dbo].[dim_location]
    (
        LocationID INT IDENTITY(1,1) PRIMARY KEY,
        Continent VARCHAR(100),
        Country_or_State VARCHAR(100),
        Province_or_City VARCHAR(100)
    );
END;
INSERT INTO [stg_pc_sales].[dbo].[dim_location]
(
    Continent,
    Country_or_State,
    Province_or_City
)
SELECT DISTINCT
    Continent,
    Country_or_State,
    Province_or_City
FROM stg_pc_sales.dbo.raw_pc_data;