USE [CarDB]
GO

INSERT INTO [dbo].[CarManufacturers]
           ([ManufacturerRegistrationNumber]
           ,[ManufacturerName]
           ,[ManufacturerAddress]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate])
     VALUES
           ('MAN001',
           'Honda',
           'Cikarang',
           null,
           '2023-01-01',
           null,
           '2023-01-01')

		   INSERT INTO [dbo].[CarManufacturers]
           ([ManufacturerRegistrationNumber]
           ,[ManufacturerName]
           ,[ManufacturerAddress]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate])
     VALUES
           ('MAN002',
           'Daihatsu',
           'Cikarang',
           null,
           '2023-01-01',
           null,
           '2023-01-01')

		   INSERT INTO [dbo].[CarManufacturers]
           ([ManufacturerRegistrationNumber]
           ,[ManufacturerName]
           ,[ManufacturerAddress]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate])
     VALUES
           ('MAN003',
           'Toyota',
           'Cikarang',
           null,
           '2023-01-01',
           null,
           '2023-01-01')
GO

USE [CarDB]
GO

INSERT INTO [dbo].[Cars]
           ([Description]
           ,[ProductionYear]
           ,[Price]
           ,[PlateNumber]
           ,[MachineNumber]
           ,[OwnershipNumber]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[Manufacturer_Id])
     VALUES
           ('Xenia HItam',
           2012,
           100000000,
           'B 3421 AS',
           'MC0001',
           'OW0001',
           null,
           '2023-01-01',
           null,
           '2023-01-01',
           (select top 1 Id from CarManufacturers where ManufacturerName='Daihatsu'))

		   INSERT INTO [dbo].[Cars]
           ([Description]
           ,[ProductionYear]
           ,[Price]
           ,[PlateNumber]
           ,[MachineNumber]
           ,[OwnershipNumber]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[Manufacturer_Id])
     VALUES
           ('Grand Max Putih',
           2012,
           100000000,
           'B 3422 AS',
           'MC0001',
           'OW0001',
           null,
           '2023-01-01',
           null,
           '2023-01-01',
           (select top 1 Id from CarManufacturers where ManufacturerName='Daihatsu'))

		   INSERT INTO [dbo].[Cars]
           ([Description]
           ,[ProductionYear]
           ,[Price]
           ,[PlateNumber]
           ,[MachineNumber]
           ,[OwnershipNumber]
           ,[CreatedBy]
           ,[CreatedDate]
           ,[UpdatedBy]
           ,[UpdatedDate]
           ,[Manufacturer_Id])
     VALUES
           ('Grand Max Pickup',
           2012,
           100000000,
           'B 3423 AS',
           'MC0001',
           'OW0001',
           null,
           '2023-01-01',
           null,
           '2023-01-01',
           (select top 1 Id from CarManufacturers where ManufacturerName='Daihatsu'))
GO




