--- Logins Creationn : 


CREATE LOGIN StagingAreaAdmin WITH PASSWORD = 'AllahSave.1234/' ; 
CREATE LOGIN SalesDataMartAdmin WITH PASSWORD = 'AllahSave.1234/' ; 
CREATE LOGIN InventoryDataMartAdmin WITH PASSWORD = 'AllahSave.1234/' ; 
CREATE LOGIN DataWareHouseAdmin WITH PASSWORD = 'AllahSave.1234/' ; 


CREATE USER StagingAreaAdminUser FOR LOGIN StagingAreaAdmin ;
CREATE USER SalesDataMartAdminUser FOR LOGIN SalesDataMartAdmin ;
CREATE USER InventoryDataMartAdminUser FOR LOGIN InventoryDataMartAdmin ;
CREATE USER DataWareHouseAdminUser FOR LOGIN DataWareHouseAdmin ;


