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

USE EcommerceDataWareHouse ;

SELECT * FROM [dbo].[CustomerDim];
SELECT * FROM [dbo].[DateDim];
SELECT * FROM [dbo].[ProductDim];
SELECT * FROM [dbo].[ShipperDim];
SELECT * FROM [dbo].[SupplierDim];
SELECT * FROM [dbo].[InventoryFact];
SELECT * FROM [dbo].[SalesFact];

new ProductMappinngRoutine().loadProductMappingData("/Users/sabri/Desktop/Study /Youcode/Github/Sprint_3/DataWareHouse_Analyse_PowerBI/TalendJob/ProductInfiMap.csv");

output_row.ProductName = new ProductMappinngRoutine().mapProduct(input_row.ProductName , input_row.ProductCategory , input_row.ProductSubCategory , input_row.ProductPrice);

//Code generated according to input schema and output schema
/* Encryption setting */
String password = "youcode#AYMANE-2022/2023"; // This is the encryption passwd
byte[] passwordBytes = password.getBytes(StandardCharsets.UTF_8);
SecretKeySpec secretKeySpec = new SecretKeySpec(passwordBytes, "AES");

// Create a cipxher for encryption
Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec);

output_row.CustomerAddress = Base64.getEncoder().encodeToString(cipher.doFinal(input_row.CustomerAddress.getBytes(StandardCharsets.UTF_8)));
output_row.CustomerEmail = Base64.getEncoder().encodeToString(cipher.doFinal(input_row.CustomerEmail.getBytes(StandardCharsets.UTF_8)));
output_row.CustomerPhone = Base64.getEncoder().encodeToString(cipher.doFinal(input_row.CustomerPhone.getBytes(StandardCharsets.UTF_8)));

output_row.ProductCategory = new CategoryMapping().mapCategory(input_row.ProductSubCategory);


output_row.Date = input_row.Date;
output_row.ProductSubCategory = input_row.ProductSubCategory;
output_row.ProductPrice = input_row.ProductPrice;
output_row.CustomerName = input_row.CustomerName;
output_row.CustomerSegment = input_row.CustomerSegment;
output_row.SupplierName = input_row.SupplierName;
output_row.SupplierLocation = input_row.SupplierLocation;
output_row.SupplierContact = input_row.SupplierContact;
output_row.ShipperName = input_row.ShipperName;
output_row.ShippingMethod = input_row.ShippingMethod;
output_row.QuantitySold = input_row.QuantitySold;
output_row.TotalAmount = input_row.TotalAmount;
output_row.DiscountAmount = input_row.DiscountAmount;
output_row.NetAmount = input_row.NetAmount;
output_row.StockReceived = input_row.StockReceived;
output_row.StockSold = input_row.StockSold;
output_row.StockOnHand = input_row.StockOnHand;











output_row.Date = input_row.Date;
output_row.ProductSubCategory = input_row.ProductSubCategory;
output_row.ProductPrice = input_row.ProductPrice;
output_row.CustomerName = input_row.CustomerName;
output_row.CustomerSegment = input_row.CustomerSegment;
output_row.SupplierName = input_row.SupplierName;
output_row.SupplierLocation = input_row.SupplierLocation;
output_row.SupplierContact = input_row.SupplierContact;
output_row.ShipperName = input_row.ShipperName;
output_row.ShippingMethod = input_row.ShippingMethod;
output_row.QuantitySold = input_row.QuantitySold;
output_row.TotalAmount = input_row.TotalAmount;
output_row.DiscountAmount = input_row.DiscountAmount;
output_row.NetAmount = input_row.NetAmount;
output_row.StockReceived = input_row.StockReceived;
output_row.StockSold = input_row.StockSold;
output_row.StockOnHand = input_row.StockOnHand;

new ProductMappinngRoutine().loadProductMappingData("/Users/sabri/Desktop/Study /Youcode/Github/Sprint_3/DataWareHouse_Analyse_PowerBI/TalendJob/ProductInfiMap.csv");

output_row.ProductName = new ProductMappinngRoutine().mapProduct(input_row.ProductName , input_row.ProductCategory , input_row.ProductSubCategory , input_row.ProductPrice);

//Code generated according to input schema and output schema
/* Encryption setting */
String password = "youcode#AYMANE-2022/2023"; // This is the encryption passwd
byte[] passwordBytes = password.getBytes(StandardCharsets.UTF_8);
SecretKeySpec secretKeySpec = new SecretKeySpec(passwordBytes, "AES");

// Create a cipxher for encryption
Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
cipher.init(Cipher.ENCRYPT_MODE, secretKeySpec);

output_row.CustomerAddress = Base64.getEncoder().encodeToString(cipher.doFinal(input_row.CustomerAddress.getBytes(StandardCharsets.UTF_8)));
output_row.CustomerEmail = Base64.getEncoder().encodeToString(cipher.doFinal(input_row.CustomerEmail.getBytes(StandardCharsets.UTF_8)));
output_row.CustomerPhone = Base64.getEncoder().encodeToString(cipher.doFinal(input_row.CustomerPhone.getBytes(StandardCharsets.UTF_8)));
output_row.ProductCategory = new CategoryMapping().mapCategory(input_row.ProductSubCategory);

//import java.util.List;

import routines.CategoryMapping ;
import routines.ProductMappinngRoutine ;

import java.nio.charset.StandardCharsets ;
import javax.crypto.Cipher ;
import javax.crypto.spec.SecretKeySpec ;
import java.util.Base64 ;
