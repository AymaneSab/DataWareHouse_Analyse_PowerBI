-- Create a temporary table to hold the distinct years
CREATE TABLE #DistinctYears (YearValue INT);

-- Insert distinct years from your DateDim table
INSERT INTO #DistinctYears (YearValue)
SELECT DISTINCT [Year] FROM [dbo].[DateDim];

-- Create a partition function dynamically
DECLARE @PartitionFunctionSQL NVARCHAR(MAX) = 'CREATE PARTITION FUNCTION YearPartitionFunction (INT) AS RANGE LEFT FOR VALUES (';
DECLARE @Year INT;
DECLARE @FirstYear BIT = 1;
DECLARE @FilegroupSQL NVARCHAR(MAX);

-- Loop through distinct years to generate partition function SQL
WHILE EXISTS (SELECT * FROM #DistinctYears)
BEGIN
    SELECT TOP 1 @Year = YearValue FROM #DistinctYears;

    IF @FirstYear = 1
        SET @FirstYear = 0;
    ELSE
        SET @PartitionFunctionSQL += ', ';

    SET @PartitionFunctionSQL += CAST(@Year AS NVARCHAR(MAX));
    
    DELETE FROM #DistinctYears WHERE YearValue = @Year;
END

SET @PartitionFunctionSQL += ');';

-- Execute the partition function SQL
EXEC sp_executesql @PartitionFunctionSQL;

-- Create a partition scheme dynamically
DECLARE @PartitionSchemeSQL NVARCHAR(MAX) = 'CREATE PARTITION SCHEME YearPartitionScheme AS PARTITION YearPartitionFunction TO (';

-- Loop through distinct years to generate partition scheme SQL
SET @FirstYear = 1;
WHILE EXISTS (SELECT * FROM #DistinctYears)
BEGIN
    SELECT TOP 1 @Year = YearValue FROM #DistinctYears;

    IF @FirstYear = 1
        SET @FirstYear = 0;
    ELSE
        SET @PartitionSchemeSQL += ', ';

    SET @PartitionSchemeSQL += '[' + CAST(@Year AS NVARCHAR(MAX)) + ']';

    SET @FilegroupSQL = 'ALTER DATABASE EcommerceDataWareHouse ADD FILEGROUP [' + CAST(@Year AS NVARCHAR(MAX)) + '];';
    EXEC sp_executesql @FilegroupSQL;

    DELETE FROM #DistinctYears WHERE YearValue = @Year;
END

SET @PartitionSchemeSQL += ');';

-- Execute the partition scheme SQL
EXEC sp_executesql @PartitionSchemeSQL;

-- Alter the table to use partitioning
ALTER TABLE [dbo].[DateDim]
DROP CONSTRAINT [PK_DateDim];

ALTER TABLE [dbo].[DateDim]
ADD CONSTRAINT [PK_DateDim] PRIMARY KEY CLUSTERED
(
   [DateID] ASC
)
ON YearPartitionScheme([Year]);

-- Rebuild indexes
ALTER INDEX [PK_DateDim] ON [dbo].[DateDim] REBUILD;

-- Clean up temporary table
DROP TABLE #DistinctYears;
