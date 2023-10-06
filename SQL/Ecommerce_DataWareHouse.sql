-- Désactiver les contraintes de clé étrangère
EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL';

-- Supprimer les tables
DROP TABLE [dbo].[CustomerDim];
DROP TABLE [dbo].[DateDim];
DROP TABLE [dbo].[ProductDim];
DROP TABLE [dbo].[ShipperDim];
DROP TABLE [dbo].[SupplierDim];
DROP TABLE [dbo].[InventoryFact];
DROP TABLE [dbo].[SalesFact];

-- Réactiver les contraintes de clé étrangère
EXEC sp_MSforeachtable 'ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL';

SELECT * FROM [dbo].[CustomerDim];
SELECT * FROM [dbo].[DateDim];
SELECT * FROM [dbo].[ProductDim];
SELECT * FROM [dbo].[ShipperDim];
SELECT * FROM [dbo].[SupplierDim];
SELECT * FROM [dbo].[InventoryFact];
SELECT * FROM [dbo].[SalesFact];

