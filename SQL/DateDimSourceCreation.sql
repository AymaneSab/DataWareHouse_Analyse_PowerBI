CREATE TABLE [dbo].[DateDim] (
    [DateID] INT  NOT NULL,
    [Date]   DATE NULL,
    CONSTRAINT [PK_NewTable] PRIMARY KEY CLUSTERED ([DateID] ASC)
);

-- import the file : 

BULK INSERT dbo.DateDim
FROM '/Users/sabri/Desktop/Study /Youcode/Github/Sprint_3/Azure_DataWareHouse/Ressources/DataSet/datedim-6506f8f25d26e398055394.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=1
)
GO

SELECT * FROM DBO.DateDim
