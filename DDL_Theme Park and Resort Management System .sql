/*
					   THEME PARK AND RESORT MANAGEMENT SYSTEM (TPRMS)
						    Trainee Name : SHEIKH AHASUNUL ISLAM 
					    	  Trainee ID : 1294372 
								Batch ID : WADA/PNTL-M/69/01 


---------------------------------------------------------------------------------------

Table of Contents: DDL
			=> SECTION 01: CHECK DATABASE EXISTANCE & CREATE DATABASE WITH ATTRIBUTES
			=> SECTION 02: CREATE TABLE WITH CONSTRAINTS DEFINE PRIMARY KEY AND FOREIGN KEY
			=> SECTION 03: CONSTRAINTS DROP/ADD
			=> SECTION 04: CREATE TRIGGER
			=> SECTION 05: CREATE INDEXES
			=> SECTION 06: CREATE A VIEW
			=> SECTION 07: CREATE A VIEW WITH ENCRYPTION AND SCHEMA BINDING
			=> SECTION 08: CREATE STORED PROCEDURE
			=> SECTION 09: CREATE FUNCTION


====================================  SECTION 01  ====================================
	     	   CHECK DATABASE EXISTANCE & CREATE DATABASE WITH ATTRIBUTES
======================================================================================
*/

USE master
GO

IF DB_ID('TPRMS') IS NOT NULL
DROP DATABASE TPRMS
GO

CREATE DATABASE TPRMS
/*ON
(
	name = 'TPRMS_data',
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\TPRMS_data.mdf',
	size = 10MB,
	maxsize = 100MB,
	filegrowth = 10%
)
LOG ON
(
	name = 'TPRMS_log',
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER\MSSQL\DATA\TPRMS_log.ldf',
	size = 5MB,
	maxsize = 50MB,
	filegrowth = 10%
)*/
GO

Use TPRMS
GO

/*====================================  SECTION 02  ===================================
           CREATE TABLE WITH CONSTRAINTS DEFINE PRIMARY KEY AND FOREIGN KEY 				      
=======================================================================================*/

CREATE TABLE Park (
    ParkID INT PRIMARY KEY,                                                 
    ParkName VARCHAR(100),                                                  
    [Location] VARCHAR(150),                                                
    [Address] VARCHAR(250),                                                 
    EstablishedDate DATE,                                                   
    AreaSize DECIMAL(10,2),                                                 
    OpeningTime TIME,                                                       
    ContactNumber VARCHAR(20),                                              
    Email VARCHAR(100),                                                     
    Website VARCHAR(150),                                                   
    ParkType VARCHAR(50),                                                   
    EntryFee DECIMAL(10,2),                                                 
    ParkingCapacity INT,                                                    
    TotalResorts INT,                                                       
    TotalPlaygrounds INT,                                                   
    TotalRides INT,                                                         
    TotalShops INT,                                                         
    TotalMosques INT,                                                       
    TotalZooSection INT,                                                    
    TotalFishFarm INT,                                                      
    TotalFruitGardens INT,                                                  
    TotalEmployees INT,                                                     
    AnnualVisitors INT,                                                     
    AverageDailyVisitors INT,                                               
    RevenueSources VARCHAR(250),                                            
    MaintenanceStatus VARCHAR(50),                                          
    SpecialEvents VARCHAR(250)                                              
)
GO



CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,                                              
    ParkID INT NOT NULL,                                                     
    FullName VARCHAR(100) NOT NULL,                                          
    FatherName VARCHAR(100),                                                 
    MotherName VARCHAR(100),                                                 
    Gender VARCHAR(10) NOT NULL                                              
        CHECK (Gender IN ('Male','Female','Other')),
    DateOfBirth DATE NOT NULL,                                               
    Age INT CHECK (Age >= 18),                                               
    Nationality VARCHAR(50),                                                 
    PassportNo VARCHAR(50),                                                  
    NationalID VARCHAR(50) UNIQUE,                                           
    PresentAddress VARCHAR(250),                                             
    PermanentAddress VARCHAR(250),                                           
    PhoneNumber VARCHAR(20) UNIQUE,                                          
    Email VARCHAR(100) UNIQUE,                                               
    Role VARCHAR(50) NOT NULL,                                               
    Department VARCHAR(50),                                                  
    HireDate DATE NOT NULL,                                                  
    EmploymentStatus VARCHAR(20) NOT NULL                                    
        CHECK (EmploymentStatus IN ('Active','Inactive','Terminated')),
    ShiftSchedule VARCHAR(50),                                               
    BloodGroup VARCHAR(5)                                                    
        CHECK (BloodGroup IN ('A+','A-','B+','B-','O+','O-','AB+','AB-')),
    Salary DECIMAL(10,2) CHECK (Salary >= 0),                                
    Bonus DECIMAL(10,2) DEFAULT 0.00,                                        
    PaymentMethod VARCHAR(20)                                                
        CHECK (PaymentMethod IN ('Cash','Bank','MobileBanking')),
    Qualification VARCHAR(100),                                              
    Reference VARCHAR(100),                                                  
    CONSTRAINT FK_Employees_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID)
)
GO



CREATE TABLE PlaygroundFacilities (
    FacilityID INT PRIMARY KEY,                                            
    ParkID INT NOT NULL,                                                   
    FacilityType VARCHAR(100) NOT NULL,                                    
    Description VARCHAR(250),                                              
    Location VARCHAR(150),                                                 
    Capacity INT CHECK (Capacity > 0),                                     
    Duration INT CHECK (Duration >= 0),                                    
    AgeRestriction INT CHECK (AgeRestriction >= 0),                        
    MaintenanceStatus VARCHAR(50)                                          
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    TicketRequired BIT NOT NULL                                            
        CHECK (TicketRequired IN (0,1)),
    TicketPrice DECIMAL(10,2)                                              
        CHECK (TicketPrice >= 0),
    OpeningHours VARCHAR(50),                                              
    StaffRequired INT CHECK (StaffRequired >= 0),                          
    EmergencyContact VARCHAR(20),                                          
    SupervisorID INT,                                                      
    CONSTRAINT FK_PlaygroundFacilities_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_PlaygroundFacilities_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE Resort (
    ResortID INT PRIMARY KEY,                                              
    ParkID INT NOT NULL,                                                   
    ResortName VARCHAR(100) NOT NULL,                                      
    Location VARCHAR(150),                                                 
    ContactNumber VARCHAR(20) UNIQUE,                                      
    Email VARCHAR(100) UNIQUE,                                             
    TotalRooms INT CHECK (TotalRooms >= 0),                                
    AvailableRooms INT CHECK (AvailableRooms >= 0),                        
    RoomType VARCHAR(50),                                                  
    Facilities VARCHAR(250),                                               
    CheckInTime TIME NOT NULL,                                             
    CheckOutTime TIME NOT NULL,                                            
    StaffCount INT CHECK (StaffCount >= 0),                                
    KitchenAvailable BIT NOT NULL                                          
        CHECK (KitchenAvailable IN (0,1)),
    RestaurantAvailable BIT NOT NULL                                       
        CHECK (RestaurantAvailable IN (0,1)),
    ParkingAvailable BIT NOT NULL                                          
        CHECK (ParkingAvailable IN (0,1)),
    DailyRate DECIMAL(10,2) CHECK (DailyRate >= 0),                        
    SeasonalRate DECIMAL(10,2) CHECK (SeasonalRate>= 0),                   
    DiscountPolicy VARCHAR(150),                                           
    BookingPolicy VARCHAR(150),                                            
    MaintenanceStatus VARCHAR(50)                                          
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    ManagerID INT NOT NULL,                                                
    CONSTRAINT FK_Resort_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_Resort_Manager FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
)
go



CREATE TABLE Enclosure (
    EnclosureID INT PRIMARY KEY,                                             
    ParkID INT NOT NULL,                                                     
    EnclosureName VARCHAR(100) NOT NULL,                                     
    EnclosureType VARCHAR(50) NOT NULL                                       
        CHECK (EnclosureType IN ('Cage','Aviary','Aquarium','OpenField')),
    Location VARCHAR(150),                                                   
    Capacity INT CHECK (Capacity >= 0),                                      
    Size DECIMAL(10,2) CHECK (Size >= 0),                                    
    ClimateControl BIT NOT NULL                                              
        CHECK (ClimateControl IN (0,1)),
    MaintenanceStatus VARCHAR(50)                                            
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    LastInspectionDate DATE,                                                 
    Note VARCHAR(250),                                                     
    CONSTRAINT FK_Enclosure_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID)
)
GO



CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,                                              
    VendorName VARCHAR(100) NOT NULL,                                      
    ContactName VARCHAR(100),                                              
    PhoneNumber VARCHAR(20) UNIQUE NOT NULL,                               
    Email VARCHAR(100) UNIQUE,                                             
    Address VARCHAR(250),                                                  
    City VARCHAR(100),                                                     
    Country VARCHAR(100),                                                  
    VendorType VARCHAR(50) NOT NULL                                        
        CHECK (VendorType IN ('Local','International','Distributor','Supplier')),
    ContractStartDate DATE NOT NULL,                                        
    ContractEndDate DATE NOT NULL,                                          
    PaymentTerms VARCHAR(50)                                                
        CHECK (PaymentTerms IN ('Net30','Net60','Advance','OnDelivery')),
    BankAccountDetails VARCHAR(100),                                        
    TaxID VARCHAR(50) UNIQUE,                                               
    Status VARCHAR(20) NOT NULL                                             
        CHECK (Status IN ('Active','Inactive','Suspended')),
    Note VARCHAR(250),                                                      
    Reference INT,                                                          
    CONSTRAINT FK_Vendors_Employee FOREIGN KEY (Reference) REFERENCES Employees(EmployeeID)
)
GO


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,                                              
    SourceTable VARCHAR(50) NOT NULL,                                       
    ProductName VARCHAR(100) NOT NULL,                                      
    Description VARCHAR(250),                                               
    UnitPrice DECIMAL(10,2) NOT NULL                                        
        CHECK (UnitPrice >= 0),
    StockQuantity INT NOT NULL                                              
        CHECK (StockQuantity >= 0),
    ReorderLevel INT NOT NULL                                               
        CHECK (ReorderLevel >= 0),
    ExpiryDate DATE,                                                        
    VendorID INT NOT NULL,                                                  
    AddedBy INT NOT NULL,                                                   
    CONSTRAINT FK_Products_Vendor FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID),
    CONSTRAINT FK_Products_Employee FOREIGN KEY (AddedBy) REFERENCES Employees(EmployeeID)
)
GO

/*======================================================================================
							            Junction Table	 				      
=======================================================================================*/

CREATE TABLE VendorProducts (
    VendorID INT NOT NULL,
    ProductID INT NOT NULL,
    PRIMARY KEY (VendorID, ProductID),
    CONSTRAINT FK_VendorProducts_Vendor FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID),
    CONSTRAINT FK_VendorProducts_Product FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
)
GO


--=======================================================================================


CREATE TABLE Buyer (
    BuyerID INT PRIMARY KEY,                                               
    BuyerName VARCHAR(100) NOT NULL,                                       
    PhoneNumber VARCHAR(20) UNIQUE NOT NULL,                               
    Email VARCHAR(100) UNIQUE,                                             
    Address VARCHAR(250),                                                  
    City VARCHAR(100),                                                     
    BuyerType VARCHAR(50) NOT NULL                                         
        CHECK (BuyerType IN ('Retail','Wholesale','Corporate')),
    ProductID INT NOT NULL,                                                
    PaymentMethod VARCHAR(20) NOT NULL                                     
        CHECK (PaymentMethod IN ('Cash','Bank','MobileBanking')),
    PurchasedDate DATE NOT NULL,                                           
    Reference INT,                                                         
    CONSTRAINT FK_Buyer_Product FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    CONSTRAINT FK_Buyer_Employee FOREIGN KEY (Reference) REFERENCES Employees(EmployeeID)
)
GO





CREATE TABLE Zoo (
    ZooID INT PRIMARY KEY,                                                   
    ParkID INT NOT NULL,                                                     
    ZooName VARCHAR(100) NOT NULL,                                           
    Location VARCHAR(150),                                                   
    AreaSize DECIMAL(10,2) CHECK (AreaSize >= 0),                            
    EstablishedDate DATE,                                                    
    TotalSection SMALLINT CHECK (TotalSection >= 0),                         
    TotalAnimals INT CHECK (TotalAnimals >= 0),                              
    VisitorCapacity INT CHECK (VisitorCapacity > 0),                         
    OpeningTime TIME NOT NULL,                                               
    ClosingTime TIME NOT NULL,                                               
    TicketRequired BIT NOT NULL                                              
        CHECK (TicketRequired IN (0,1)),
    TicketPrice DECIMAL(10,2) CHECK (TicketPrice >=0),                       
    MaintenanceStatus VARCHAR(50) NOT NULL                                   
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    VeterinaryStaffCount SMALLINT CHECK (VeterinaryStaffCount >= 0), 
    EmergencyContact VARCHAR(20),                                            
    SupervisorID INT NOT NULL,                                               
    EnclosureID INT NOT NULL,                                                
    CONSTRAINT FK_Zoo_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_Zoo_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_Zoo_Enclosure FOREIGN KEY (EnclosureID) REFERENCES Enclosure(EnclosureID)
)
GO


CREATE TABLE Animal (
    AnimalID INT PRIMARY KEY,                                             
    ZooID INT NOT NULL,                                                   
    SpeciesName VARCHAR(100) NOT NULL,                                    
    CommonName VARCHAR(100) NOT NULL,                                     
    NickName VARCHAR(50),                                                 
    Gender VARCHAR(10) NOT NULL                                           
        CHECK (Gender IN ('Male','Female')),
    Age INT CHECK (Age >= 0),                                             
    DateOfBirth DATE,                                                     
    ArrivalDate DATE NOT NULL,                                            
    Origin VARCHAR(100),                                                  
    EnclosureID INT NOT NULL,                                             
    HealthStatus VARCHAR(50) NOT NULL                                     
        CHECK (HealthStatus IN ('Healthy','Sick','UnderTreatment')),
    LastCheckupDate DATE,                                                 
    DietType VARCHAR(50) NOT NULL                                         
        CHECK (DietType IN ('Carnivore','Herbivore','Omnivore')),
    VeterinarianID INT NOT NULL,                                          
    FeedingSchedule VARCHAR(100),                                         
    BehaviorNotes VARCHAR(250),                                           
    BreedingStatus VARCHAR(50)                                            
        CHECK (BreedingStatus IN ('Active','Inactive ','Pregnant')),
    OffspringCount INT CHECK (OffspringCount >= 0),                       
    PhotoURL VARCHAR(250),                                                
    CONSTRAINT FK_Animal_Zoo FOREIGN KEY (ZooID) REFERENCES Zoo(ZooID),
    CONSTRAINT FK_Animal_Enclosure FOREIGN KEY (EnclosureID) REFERENCES Enclosure(EnclosureID),
    CONSTRAINT FK_Animal_Veterinarian FOREIGN KEY (VeterinarianID) REFERENCES Employees(EmployeeID)
)
GO



CREATE TABLE PlantSpecies (
    PlantID INT PRIMARY KEY,                                                
    ParkID INT NOT NULL,                                                    
    ScientificName VARCHAR(150) NOT NULL,                                   
    CommonName VARCHAR(100) NOT NULL,                                       
    PlantType VARCHAR(50) NOT NULL                                          
        CHECK (PlantType IN ('Tree','Shrub','Herb','Flower')),
    Origin VARCHAR(100),                                                    
    Location VARCHAR(150),                                                  
    Age INT CHECK (Age >= 0),                                               
    DatePlanted DATE,                                                       
    Height DECIMAL(5,2) CHECK (Height >= 0),                                
    Seasonality VARCHAR(50)                                                 
        CHECK (Seasonality IN ('Evergreen','Deciduous','Seasonal')),
    FlowerColor VARCHAR(50),                                                
    FruitType VARCHAR(100),                                                 
    FruitSeason VARCHAR(50),                                                
    MedicinalUse VARCHAR(250),                                              
    MaintenanceStatus VARCHAR(50) NOT NULL                                  
        CHECK (MaintenanceStatus IN ('Healthy','Diseased','UnderTreatment')),
    GardenerID INT NOT NULL,                                                
    WateringSchedule VARCHAR(50),                                           
    FertilizerSchedule VARCHAR(50),                                         
    Notes VARCHAR(250),                                                     
    PhotoURL VARCHAR(250),                                                  
    CONSTRAINT FK_PlantSpecies_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_PlantSpecies_Gardener FOREIGN KEY (GardenerID) REFERENCES Employees(EmployeeID)
)
GO



CREATE TABLE FlowerPlant (
    FlowerID INT PRIMARY KEY,                                               
    ParkID INT NOT NULL,                                                    
    ScientificName VARCHAR(150) NOT NULL,                                   
    FlowerType VARCHAR(50) NOT NULL                                         
        CHECK (FlowerType IN ('Annual','Perennial','Seasonal')),
    CommonName VARCHAR(100) NOT NULL,                                       
    Origin VARCHAR(100),                                                    
    Location VARCHAR(150),                                                  
    DatePlanted DATE,                                                       
    BloomSeason VARCHAR(50)                                                 
        CHECK (BloomSeason IN ('Spring','Summer','Autumn','Winter')),
    FlowerColor VARCHAR(50),                                                
    Fragrance VARCHAR(50)                                                   
        CHECK (Fragrance IN ('Strong','Mild','None')),                      
    Height DECIMAL(5,2) CHECK (Height >= 0),                                
    MedicinalUse VARCHAR(250),                                              
    MaintenanceStatus VARCHAR(50) NOT NULL                                  
        CHECK (MaintenanceStatus IN ('Healthy','Diseased','UnderTreatment')),
    GardenerID INT NOT NULL,                                                
    WaterSchedule VARCHAR(50),                                              
    FertilizerSchedule VARCHAR(50),                                         
    Notes VARCHAR(250),                                                     
    PhotoURL VARCHAR(250),                                                  
    CONSTRAINT FK_FlowerPlant_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_FlowerPlant_Gardener FOREIGN KEY (GardenerID) REFERENCES Employees(EmployeeID)
)
GO





CREATE TABLE ParkingArea (
    ParkingAreaID INT PRIMARY KEY,                                          
    ParkID INT NOT NULL,                                                    
    AreaName VARCHAR(100) NOT NULL,                                         
    Location VARCHAR(150),                                                  
    Capacity INT NOT NULL CHECK (Capacity >= 0),                            
    AvailableSlots INT CHECK (AvailableSlots >= 0),                         
    VehicleTypeAllowed VARCHAR(50) NOT NULL                                 
        CHECK (VehicleTypeAllowed IN ('Car','Bike','Bus','Ambulance')),
    EntryGate VARCHAR(50),                                                  
    ExitGate VARCHAR(50),                                                   
    OperatingHours VARCHAR(50),                                             
    ParkingFee DECIMAL(10,2) CHECK (ParkingFee >= 0),                       
    SupervisorID INT NOT NULL,                                              
    MaintenanceStatus VARCHAR(50) NOT NULL                                  
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    Note VARCHAR(250),                                                      
    CONSTRAINT FK_ParkingArea_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_ParkingArea_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO



CREATE TABLE Mosque (
    MosqueID INT PRIMARY KEY,                                               
    ParkID INT NOT NULL,                                                    
    MosqueName VARCHAR(150) NOT NULL,                                       
    Location VARCHAR(150),                                                  
    AreaSize DECIMAL(10,2) CHECK (AreaSize >= 0),                           
    Capacity INT CHECK (Capacity > 0),                                      
    EstablishedDate DATE,                                                   
    ImamID INT NOT NULL,                                                    
    MuazzinID INT NOT NULL,                                                 
    Facilities VARCHAR(250),                                                
    FridayPrayerCapacity INT CHECK (FridayPrayerCapacity > 0),              
    SpecialEvents VARCHAR(250),                                             
    MaintenanceStatus VARCHAR(50) NOT NULL                                  
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    SupervisorID INT NOT NULL,                                              
    EmergencyContact VARCHAR(20),                                           
    CONSTRAINT FK_Mosque_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_Mosque_Imam FOREIGN KEY (ImamID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_Mosque_Muazzin FOREIGN KEY (MuazzinID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_Mosque_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO





CREATE TABLE FishFarms (
    FishFarmID INT PRIMARY KEY,                                             
    ParkID INT NOT NULL,                                                    
    Location VARCHAR(150) NOT NULL,                                         
    AreaSize DECIMAL(10,2) CHECK (AreaSize >= 0),                           
    WaterSource VARCHAR(100) NOT NULL,                                      
    StockingDate DATE NOT NULL,                                             
    InitialQuantity INT CHECK (InitialQuantity >= 0),                       
    CurrentQuantity INT CHECK (CurrentQuantity >= 0),                       
    AverageWeight DECIMAL(5,2) CHECK (AverageWeight >= 0),                  
    FeedingSchedule VARCHAR(100),                                           
    FeedType VARCHAR(100),                                                  
    HealthStatus VARCHAR(50) NOT NULL                                       
        CHECK (HealthStatus IN ('Healthy','Sick','UnderTreatment')),
    LastCheckupDate DATE,                                                   
    VeterinarianID INT NOT NULL,                                            
    HarvestDate DATE,                                                       
    ProductionOutput DECIMAL(10,2) CHECK (ProductionOutput >= 0),           
    SupervisorID INT NOT NULL,                                              
    MaintenanceStatus VARCHAR(50) NOT NULL                                  
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    Note VARCHAR(250),                                                      
    CONSTRAINT FK_FishFarms_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_FishFarms_Veterinarian FOREIGN KEY (VeterinarianID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_FishFarms_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE FishSales (
    FishSalesID INT PRIMARY KEY,                                           
    FishFarmID INT NOT NULL,                                               
    FishName VARCHAR(100) NOT NULL,                                        
    QuantitySold INT NOT NULL CHECK (QuantitySold > 0),                    
    UnitPrice DECIMAL(10,2) NOT NULL CHECK (UnitPrice >= 0),                
    SaleDate DATE NOT NULL,                                                
    BuyerID INT NOT NULL,                                                  
    PaymentStatus VARCHAR(50) NOT NULL                                     
        CHECK (PaymentStatus IN ('Paid','Pending','Cancelled')),
    PaymentMethod VARCHAR(50) NOT NULL                                     
        CHECK (PaymentMethod IN ('Cash','Bank','MobileBanking')),
    ReferenceNo VARCHAR(50),                                               
    DeliveryStatus VARCHAR(50) NOT NULL                                    
        CHECK (DeliveryStatus IN ('Delivered','Pending','Cancelled')),
    DeliveryDate DATE,                                                     
    DiscountApplied DECIMAL(5,2) CHECK (DiscountApplied >=0),              
    IssuedBy VARCHAR(100) NOT NULL,                                        
    Note VARCHAR(250),                                                     
    CONSTRAINT FK_FishSales_FishFarm FOREIGN KEY (FishFarmID) REFERENCES FishFarms(FishFarmID),
    CONSTRAINT FK_FishSales_Buyer FOREIGN KEY (BuyerID) REFERENCES Buyer(BuyerID)
)
GO





CREATE TABLE FruitGarden (
    FruitGardenID INT PRIMARY KEY,                                        
    ParkID INT NOT NULL,                                                  
    GardenName VARCHAR(150) NOT NULL,                                     
    Location VARCHAR(150),                                                
    AreaSize DECIMAL(10,2) CHECK (AreaSize >= 0),                         
    FruitsName VARCHAR(100) NOT NULL,                                     
    ScientificName VARCHAR(150),                                          
    PlantType VARCHAR(50) NOT NULL                                        
        CHECK (PlantType IN ('Tree','Shrub','Vine')),
    DatePlanted DATE,                                                     
    Age INT CHECK (Age >= 0),                                             
    FruitSeason VARCHAR(50)                                               
        CHECK (FruitSeason IN ('Summer','Winter','Autumn','Spring')),
    AverageYield DECIMAL(10,2) CHECK (AverageYield >= 0),                 
    TotalYield DECIMAL(10,2) CHECK (TotalYield >= 0),                     
    HarvestDate DATE,                                                     
    SoilType VARCHAR(100),                                                
    FertilizerSchedule VARCHAR(100),                                      
    HealthStatus VARCHAR(50) NOT NULL                                     
        CHECK (HealthStatus IN ('Healthy','Diseased','UnderTreatment')),
    GardenerID INT NOT NULL,                                              
    MaintenanceStatus VARCHAR(50) NOT NULL                                
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    Notes VARCHAR(250),                                                   
    PhotoURL VARCHAR(250),                                                
    CONSTRAINT FK_FruitGarden_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_FruitGarden_Gardener FOREIGN KEY (GardenerID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE FruitSales (
    FruitSalesID INT PRIMARY KEY,                                          
    FruitGardenID INT NOT NULL,                                            
    FruitName VARCHAR(100) NOT NULL,                                       
    QuantitySold INT NOT NULL CHECK (QuantitySold > 0),                    
    UnitPrice DECIMAL(10,2) NOT NULL CHECK (UnitPrice >= 0),               
    SaleDate DATE NOT NULL,                                                
    BuyerID INT NOT NULL,                                                  
    PaymentStatus VARCHAR(50) NOT NULL                                     
        CHECK (PaymentStatus IN ('Paid','Pending','Cancelled')),
    PaymentMethod VARCHAR(50) NOT NULL                                     
        CHECK (PaymentMethod IN ('Cash','Bank','MobileBanking')),
    ReferenceNo VARCHAR(50),                                               
    DeliveryStatus VARCHAR(50) NOT NULL                                    
        CHECK (DeliveryStatus IN ('Delivered','Pending','Cancelled')),
    DeliveryDate DATE,                                                     
    DiscountApplied DECIMAL(5,2) CHECK (DiscountApplied >= 0),             
    IssuedBy VARCHAR(100) NOT NULL,                                        
    Note VARCHAR(250),                                                     
    CONSTRAINT FK_FruitSales_FruitGarden FOREIGN KEY (FruitGardenID) REFERENCES FruitGarden(FruitGardenID),
    CONSTRAINT FK_FruitSales_Buyer FOREIGN KEY (BuyerID) REFERENCES Buyer(BuyerID)
)
GO





CREATE TABLE Shop (
    ShopID INT PRIMARY KEY,                                                
    ParkID INT NOT NULL,                                                   
    ShopName VARCHAR(150) NOT NULL,                                        
    ShopType VARCHAR(100) NOT NULL                                         
        CHECK (ShopType IN ('Food','Souvenir','Bookstore','Grocery')),
    Location VARCHAR(150),                                                 
    AreaSize DECIMAL(10,2) CHECK (AreaSize >= 0),                          
    OpeningHours VARCHAR(50),                                              
    ClosingDays VARCHAR(50),                                               
    ManagerID INT NOT NULL,                                                
    StaffCount INT CHECK (StaffCount >= 0),                                
    ContactNumber CHAR(11)                                                 
        CONSTRAINT CK_ShopPhone CHECK (ContactNumber LIKE'01_________'),
    Email VARCHAR(100) UNIQUE,                                             
    AvailableProduct VARCHAR(150),                                         
    InventoryCapacity INT CHECK (InventoryCapacity >= 0),                  
    CurrentStockLevel INT CHECK (CurrentStockLevel >= 0),                  
    PaymentMethods VARCHAR(50)                                             
        CHECK (PaymentMethods IN ('Cash','Card','MobileBanking')),
    RevenueTarget DECIMAL(12,2) CHECK (RevenueTarget >= 0),               
    MaintenanceStatus VARCHAR(50) NOT NULL                              
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    Note VARCHAR(250),                                                     
    CONSTRAINT FK_Shop_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_Shop_Manager FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE Visitors (
    VisitorID INT PRIMARY KEY,                                             
    FullName VARCHAR(150) NOT NULL,                                        
    Age INT CHECK (Age >= 0 AND Age <= 120),                               
    NationalID VARCHAR(20) NULL,                                           
    PassportNo VARCHAR(20) NULL,                                           
    PhoneNumber CHAR(16),
    VisitorType VARCHAR(50) NOT NULL                                       
        CHECK (VisitorType IN ('Individual','Family','Group','Corporate')),
    VisitPurpose VARCHAR(100) NOT NULL                                     
        CHECK (VisitPurpose IN ('Tourism','Shopping','Prayer','Event','Education','Other')),
    MembershipStatus VARCHAR(50) NOT NULL                                 
        CHECK (MembershipStatus IN ('Active','Expired','None'))
)
GO




CREATE TABLE ShopSales (
    ShopSalesID INT PRIMARY KEY,                                            
    ShopID INT NOT NULL,                                                    
    ProductID INT NOT NULL,                                                 
    ProductName VARCHAR(150) NOT NULL,                                      
    QuantitySold INT NOT NULL CHECK (QuantitySold > 0),                     
    UnitPrice DECIMAL(10,2) NOT NULL CHECK (UnitPrice >= 0),                
    TotalPrice AS (QuantitySold * UnitPrice) PERSISTED,                     
    SaleDate DATE NOT NULL,                                                 
    VisitorID INT NOT NULL,                                                 
    VendorName VARCHAR(150),                                                
    PaymentStatus VARCHAR(50) NOT NULL                                      
        CHECK (PaymentStatus IN ('Paid','Pending','Cancelled')),
    PaymentMethod VARCHAR(50) NOT NULL                                      
        CHECK (PaymentMethod IN ('Cash','Card','MobileBanking')),
    ReferenceNo VARCHAR(50),                                                
    IssuedBy VARCHAR(100) NOT NULL,                                         
    DiscountApplied DECIMAL(5,2) CHECK (DiscountApplied >=0),               
    DeliveryStatus VARCHAR(50) NOT NULL                                     
        CHECK (DeliveryStatus IN ('Delivered','Pending','Cancelled')),
    DeliveryDate DATE,                                                      
    Note VARCHAR(250),                                                      
    CONSTRAINT FK_ShopSales_Shop FOREIGN KEY (ShopID) REFERENCES Shop(ShopID),
    CONSTRAINT FK_ShopSales_Product FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    CONSTRAINT FK_ShopSales_Visitor FOREIGN KEY (VisitorID) REFERENCES Visitors(VisitorID)
)
GO



CREATE TABLE ResortKitchen (
    KitchenID INT PRIMARY KEY,                                              
    ResortID INT NOT NULL,                                                  
    KitchenName VARCHAR(150) NOT NULL,                                      
    Location VARCHAR(150),                                                  
    AreaSize DECIMAL(10,2) CHECK (AreaSize >= 0),                           
    Capacity INT CHECK (Capacity >= 0),                                     
    ChiefID INT NOT NULL,                                                   
    StaffCount INT CHECK (StaffCount >= 0),                                 
    CuisineType VARCHAR(100) NOT NULL                                       
        CHECK (CuisineType IN ('Bangladeshi','Indian','Chinese','Continental','Italian','Other')),
    MenuType VARCHAR(100) NOT NULL                                         
        CHECK (MenuType IN ('Buffet','A la carte','Mixed')),               
    OperatingHours VARCHAR(50) NOT NULL,                                   
    StorageFacilities VARCHAR(150),                                        
    InventoryCapacity INT CHECK (InventoryCapacity >= 0),                  
    CurrentStockLevel INT CHECK (CurrentStockLevel >= 0),                  
    LastInspectionDate DATE,                                               
    MaintenanceStatus VARCHAR(50) NOT NULL                                 
        CHECK (MaintenanceStatus IN ('Active','UnderRepair','Closed')),
    SafetyEquipment VARCHAR(150),                                          
    Note VARCHAR(250),                                                     
    CONSTRAINT FK_ResortKitchen_Resort FOREIGN KEY (ResortID) REFERENCES Resort(ResortID),
    CONSTRAINT FK_ResortKitchen_Chief FOREIGN KEY (ChiefID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE IncomeSource (
    IncomeSourceID INT PRIMARY KEY,                                         
    SourceName VARCHAR(150) NOT NULL,                                       
    Description VARCHAR(250),                                               
    RelatedTable VARCHAR(100) NOT NULL                                      
        CHECK (RelatedTable IN ('ShopSales','FruitSales','FishSales','TicketSales','ResortKitchen','Other')),
    RevenueCategory VARCHAR(100) NOT NULL                                   
        CHECK (RevenueCategory IN ('Food','Retail','Accommodation','Ticketing','Service','Other')),
    AvgIncome DECIMAL(12,2) CHECK (AvgIncome >= 0)                          
)
GO





CREATE TABLE Event (
    EventID INT PRIMARY KEY,                                                
    ParkID INT NOT NULL,                                                    
    ResortID INT NOT NULL,                                                  
    EventName VARCHAR(150) NOT NULL,                                        
    EventType VARCHAR(100) NOT NULL                                         
        CHECK (EventType IN ('Concert','Festival','Wedding','Corporate','Seasonal Show','Other')),
    Description VARCHAR(250),                                                
    StartDate DATE NOT NULL,                                                 
    EndDate DATE NOT NULL,                                                   
    Duration AS (DATEDIFF(DAY, StartDate, EndDate)) PERSISTED,               
    Location VARCHAR(150) NOT NULL,                                          
    Capacity INT CHECK (Capacity >= 0),                                      
    TicketRequired BIT NOT NULL,                                             
    TicketPrice DECIMAL(10,2) CHECK (TicketPrice >= 0),                      
    EventStatus VARCHAR(50) NOT NULL                                         
        CHECK (EventStatus IN ('Scheduled','Ongoing','Completed','Cancelled')),
    CONSTRAINT FK_Event_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_Event_Resort FOREIGN KEY (ResortID) REFERENCES Resort(ResortID),
)
GO




CREATE TABLE WaterBalloonWalks (
    BalloonWalkID INT PRIMARY KEY,                                       
    ParkID INT NOT NULL,                                                 
    RideType VARCHAR(100) NOT NULL                                       
        CHECK (RideType IN ('Single','Double','Group')),
    Capacity INT NOT NULL CHECK (Capacity > 0),                          
    Duration INT NOT NULL CHECK (Duration > 0),                          
    OperatingHours VARCHAR(50) NOT NULL,                                 
    TicketPrice DECIMAL(10,2) NOT NULL CHECK (TicketPrice >=0),
    DiscountAvailable BIT NOT NULL,                                      
    SafetyEquipment VARCHAR(150) NOT NULL,                               
    SupervisorID INT NOT NULL,                                           
    StaffCount INT NOT NULL CHECK (StaffCount >= 0),                     
    Location VARCHAR(150) NOT NULL,                                      
    MaintenanceStatus VARCHAR(50) NOT NULL                               
        CHECK (MaintenanceStatus IN ('Active','Pending','UnderRepair')),
    CONSTRAINT FK_WaterBalloonWalks_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_WaterBalloonWalks_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE BoatRides (
    BoatRideID INT PRIMARY KEY,                             
    ParkID INT NOT NULL,                                    
    BoatName VARCHAR(150) NOT NULL,                         
    BoatType VARCHAR(100) NOT NULL                          
        CHECK (BoatType IN ('Paddle','Speed','Ferry','Row','Other')),
    Capacity INT NOT NULL CHECK (Capacity > 0),            
    Duration INT NOT NULL CHECK (Duration > 0),            
    RouteDescription VARCHAR(250),                         
    DeparturePoint VARCHAR(150) NOT NULL,                  
    ArrivalPoint VARCHAR(150) NOT NULL,                    
    OperatingHours VARCHAR(50) NOT NULL,                   
    TicketPrice DECIMAL(10,2) NOT NULL CHECK (TicketPrice >= 0), 
    DiscountAvailable BIT NOT NULL,                        
    SafetyEquipment VARCHAR(150) NOT NULL,                  
    SupervisorID INT NOT NULL,                              
    StaffCount INT NOT NULL CHECK (StaffCount >= 0),       
    CONSTRAINT FK_BoatRides_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_BoatRides_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO



CREATE TABLE HorseRides (
    HorseRideID INT PRIMARY KEY,
    ParkID INT NOT NULL,
    HorseName VARCHAR(100) NOT NULL,
    Breed VARCHAR(100) NOT NULL,
    Age INT NOT NULL CHECK (Age >= 0 AND Age <= 30),
    Capacity INT NOT NULL CHECK (Capacity > 0),
    Duration INT NOT NULL CHECK (Duration > 0),
    RouteDescription VARCHAR(250),
    OperatingHours VARCHAR(50) NOT NULL,
    TicketPrice DECIMAL(10,2) NOT NULL CHECK (TicketPrice >= 0),
    DiscountAvailable BIT NOT NULL,
    SafetyEquipment VARCHAR(150) NOT NULL,
    SupervisorID INT NOT NULL,
    TrainerID INT NOT NULL,
    StaffCount INT NOT NULL CHECK (StaffCount >= 0),
    HealthStatus VARCHAR(50) NOT NULL CHECK (HealthStatus IN ('Healthy','Sick','Injured')),
    LastCheckupStatus DATE,
    MaintenanceStatus VARCHAR(50) NOT NULL CHECK (MaintenanceStatus IN ('Active','Pending','UnderRepair')),
    Location VARCHAR(150) NOT NULL,
    Note VARCHAR(250),
    CONSTRAINT FK_HorseRides_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_HorseRides_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_HorseRides_Trainer FOREIGN KEY (TrainerID) REFERENCES Employees(EmployeeID)
)
GO



CREATE TABLE KidTrainRide (
    KidTrainRideID INT PRIMARY KEY,
    ParkID INT NOT NULL,
    TrainName VARCHAR(150) NOT NULL,
    Capacity INT NOT NULL CHECK (Capacity > 0),
    AgeLimit INT NOT NULL CHECK (AgeLimit >= 3 AND AgeLimit <= 15),
    Duration INT NOT NULL CHECK (Duration > 0),
    RouteDescription VARCHAR(250),
    DeparturePoint VARCHAR(150) NOT NULL,
    OperatingHours VARCHAR(50) NOT NULL,
    DiscountAvailable BIT NOT NULL,
    SafetyEquipment VARCHAR(150) NOT NULL,
    SupervisorID INT NOT NULL,
    StaffCount INT NOT NULL CHECK (StaffCount >= 0),
    MaintenanceStatus VARCHAR(50) NOT NULL
        CHECK (MaintenanceStatus IN ('Active','Pending','UnderRepair')),
    LastInspectionDate DATE,
    Location VARCHAR(150) NOT NULL,
    Note VARCHAR(250),
    CONSTRAINT FK_KidTrainRide_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_KidTrainRide_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE ResortRoom (
    RoomID INT PRIMARY KEY,                
    ResortID INT FOREIGN KEY REFERENCES Resort(ResortID), 
    RoomNumber VARCHAR(10) NOT NULL,       
    RoomType VARCHAR(50) NOT NULL,         
    Capacity INT NOT NULL,                 
    BedType VARCHAR(50),                   
    RatePerNight DECIMAL(10,2) NOT NULL,   
    Facilities VARCHAR(255),               
    AvailabilityStatus VARCHAR(20) NOT NULL,
    FloorNumber INT,                       
    ViewType VARCHAR(50),                  
    BookingPolicy VARCHAR(255),            
    LastMaintenanceDate DATE,              
    Notes VARCHAR(255)                     
)
GO



CREATE TABLE FerrisWheel (
    FerrisWheelID INT PRIMARY KEY,                         
    ParkID INT NOT NULL,                                   
    WheelType VARCHAR(100) NOT NULL,                       
    Height DECIMAL(6,2) NOT NULL CHECK (Height > 0),       
    Capacity INT NOT NULL CHECK (Capacity > 0),            
    CabinCount INT NOT NULL CHECK (CabinCount > 0),        
    CabinCapacity INT NOT NULL CHECK (CabinCapacity > 0),  
    Duration INT NOT NULL CHECK (Duration > 0),            
    OperatingHours VARCHAR(50) NOT NULL,                   
    TicketPrice DECIMAL(10,2) NOT NULL CHECK (TicketPrice >= 0),
    DiscountAvailable BIT NOT NULL,                         
    AgeLimit INT CHECK (AgeLimit >= 3),                     
    SafetyEquipment VARCHAR(150) NOT NULL,                  
    SupervisorID INT NOT NULL,                              
    StaffCount INT NOT NULL CHECK (StaffCount >= 0),
    MaintenanceStatus VARCHAR(50) NOT NULL
        CHECK (MaintenanceStatus IN ('Active','Pending','UnderRepair')),
    LastInspectionDate DATE,
    Location VARCHAR(150) NOT NULL,
    Note VARCHAR(250),
    CONSTRAINT FK_FerrisWheel_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_FerrisWheel_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE EmployeeSalaryGrade (
    GradeID INT PRIMARY KEY,
    GradeName VARCHAR(50) NOT NULL,              
    BasicSalary DECIMAL(10,2) NOT NULL CHECK (BasicSalary >= 0),
    Allowance DECIMAL(10,2) NOT NULL DEFAULT 0,
    BonusPercentage DECIMAL(5,2) CHECK (BonusPercentage >= 0 AND BonusPercentage <= 100)
)
GO




CREATE TABLE EmployeePayment (
    PaymentID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    GradeID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    NetSalary DECIMAL(10,2) NOT NULL CHECK (NetSalary >= 0),
    CONSTRAINT FK_Payment_Employee FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_Payment_Grade FOREIGN KEY (GradeID) REFERENCES EmployeeSalaryGrade(GradeID)
)
GO




CREATE TABLE Expense (
    ExpenseID INT PRIMARY KEY,
    ParkID INT NOT NULL,
    ExpenseType VARCHAR(100) NOT NULL,        
    Description VARCHAR(250),
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount >= 0),
    ExpenseDate DATE NOT NULL,
    SupervisorID INT NOT NULL,
    CONSTRAINT FK_Expense_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_Expense_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE MaintenanceLog (
    MaintenanceID INT PRIMARY KEY,
    ParkID INT NOT NULL,
    RideType VARCHAR(100) NOT NULL,               
    RideID INT NOT NULL,                          
    IssueDescription VARCHAR(250) NOT NULL,       
    ReportedDate DATE NOT NULL,                   
    MaintenanceDate DATE,                         
    Cost DECIMAL(10,2) CHECK (Cost >= 0),         
    SupervisorID INT NOT NULL,                    
    TechnicianID INT NOT NULL,                    
    Status VARCHAR(50) NOT NULL                   
        CHECK (Status IN ('Pending','InProgress','Completed')),
    NextInspectionDate DATE,                      
    Notes VARCHAR(250),                           
    CONSTRAINT FK_MaintenanceLog_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_MaintenanceLog_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_MaintenanceLog_Technician FOREIGN KEY (TechnicianID) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE AttendanceStaffShift (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    ParkID INT NOT NULL,
    ShiftDate DATE NOT NULL,
    ShiftType VARCHAR(50) NOT NULL
        CHECK (ShiftType IN ('Morning','Afternoon','Evening','Night')),
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    TotalHours DECIMAL(5,2) CHECK (TotalHours >= 0),
    Status VARCHAR(50) NOT NULL
        CHECK (Status IN ('Present','Absent','Late','OnLeave')),
    SupervisorID INT NOT NULL,
    Notes VARCHAR(250),
    CONSTRAINT FK_Attendance_Employee FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    CONSTRAINT FK_Attendance_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_Attendance_Supervisor FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
)
go




CREATE TABLE Payroll (
    PayrollID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    PayPeriodStart DATE NOT NULL,
    PayPeriodEnd DATE NOT NULL,
    BasicSalary DECIMAL(10,2) NOT NULL,
    Allowance DECIMAL(10,2) DEFAULT 0,
    OvertimePay DECIMAL(10,2) DEFAULT 0,
    Deduction DECIMAL(10,2) DEFAULT 0,
    NetSalary AS (BasicSalary + Allowance + OvertimePay - Deduction) PERSISTED,
    PaymentDate DATE,
    PaymentMethod VARCHAR(50) CHECK (PaymentMethod IN ('Cash','BankTransfer','MobileBanking')),
    PaymentStatus VARCHAR(50) CHECK (PaymentStatus IN ('Pending','Paid','Failed')),
    CONSTRAINT FK_Payroll_Employee FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
)
go




CREATE TABLE RevenueSummary (
    SummaryID INT PRIMARY KEY,
    ParkID INT NOT NULL,
    TotalIncome DECIMAL(18,2) NOT NULL DEFAULT 0,
    TotalExpense DECIMAL(18,2) NOT NULL DEFAULT 0,
    NetRevenue AS (TotalIncome - TotalExpense) PERSISTED,
    LastUpdated DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_RevenueSummary_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID)
)
GO



CREATE TABLE TicketSales (
    TicketID INT PRIMARY KEY,
    VisitorID INT NOT NULL,
    ParkID INT NOT NULL,
    TicketType VARCHAR(50) NOT NULL,
    PurchaseDate DATETIME NOT NULL DEFAULT GETDATE(),
    ValidDate DATE NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    Quantity INT NOT NULL CHECK (Quantity > 0) DEFAULT 1,
    TotalAmount AS (Price * Quantity) PERSISTED,
    PaymentMethod VARCHAR(50) NOT NULL
        CHECK (PaymentMethod IN ('Cash','Card','Online')),
    CONSTRAINT FK_TicketSales_Visitor FOREIGN KEY (VisitorID) REFERENCES Visitors(VisitorID),
    CONSTRAINT FK_TicketSales_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID)
)
GO



CREATE TABLE ResortBookings (
    BookingID INT PRIMARY KEY,
    VisitorID INT NOT NULL,
    RoomID INT NOT NULL,
    BookingDate DATETIME NOT NULL DEFAULT GETDATE(),
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    TotalAmount DECIMAL(12,2) NOT NULL CHECK (TotalAmount >= 0),
    PaymentStatus VARCHAR(50) NOT NULL
        CHECK (PaymentStatus IN ('Paid','Pending','Partial')),
    BookingStatus VARCHAR(50) NOT NULL
        CHECK (BookingStatus IN ('Confirmed','Cancelled','CheckedOut')),
    CONSTRAINT FK_Bookings_Visitor FOREIGN KEY (VisitorID) REFERENCES Visitors(VisitorID),
    CONSTRAINT FK_Bookings_Room FOREIGN KEY (RoomID) REFERENCES ResortRoom(RoomID),
    CONSTRAINT CK_Booking_Dates CHECK (CheckOutDate > CheckInDate)
)
GO




CREATE TABLE CustomerFeedback (
    FeedbackID INT PRIMARY KEY,
    VisitorID INT NOT NULL,
    ServiceType VARCHAR(50) NOT NULL
        CHECK (ServiceType IN ('Park','Resort','Ride','Food','Staff')),
    ReferenceID INT NULL,
    Rating INT NOT NULL CHECK (Rating >= 1 AND Rating <= 5),
    Comments VARCHAR(500),
    SubmissionDate DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Feedback_Visitor FOREIGN KEY (VisitorID) REFERENCES Visitors(VisitorID)
)
GO





CREATE TABLE IncidentReport (
    IncidentID INT PRIMARY KEY,
    ParkID INT NOT NULL,
    IncidentDate DATETIME NOT NULL DEFAULT GETDATE(),
    Location VARCHAR(150) NOT NULL,
    IncidentType VARCHAR(100) NOT NULL
        CHECK (IncidentType IN ('Medical','Technical Failure','Lost Item','Theft','Other')),
    Description VARCHAR(500) NOT NULL,
    SeverityLevel VARCHAR(50) NOT NULL
        CHECK (SeverityLevel IN ('Low','Medium','High','Critical')),
    ReportedBy INT NOT NULL, 
    ActionTaken VARCHAR(500),
    CONSTRAINT FK_Incident_Park FOREIGN KEY (ParkID) REFERENCES Park(ParkID),
    CONSTRAINT FK_Incident_Employee FOREIGN KEY (ReportedBy) REFERENCES Employees(EmployeeID)
)
GO




CREATE TABLE AnimalMedicalHistory (
    RecordID INT PRIMARY KEY,
    AnimalID INT NOT NULL,
    VeterinarianID INT NOT NULL,
    CheckupDate DATE NOT NULL,
    Diagnosis VARCHAR(250) NOT NULL,
    TreatmentGiven VARCHAR(250) NOT NULL,
    MedicinePrescribed VARCHAR(150) NOT NULL,
    NextFollowUpDate DATE,
    CONSTRAINT FK_History_Animal FOREIGN KEY (AnimalID) REFERENCES Animal(AnimalID),
    CONSTRAINT FK_History_Vet FOREIGN KEY (VeterinarianID) REFERENCES Employees(EmployeeID),
    CONSTRAINT CK_FollowUp CHECK (NextFollowUpDate IS NULL OR NextFollowUpDate >= CheckupDate)
)
GO


CREATE TABLE FinancialTransactions (
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    TransactionDate DATETIME NOT NULL DEFAULT GETDATE(),
    TransactionType VARCHAR(20) NOT NULL
        CHECK (TransactionType IN ('Income','Expense')),
    Category VARCHAR(50) NOT NULL,
    Amount DECIMAL(15,2) NOT NULL
        CHECK (Amount > 0),
    PaymentMethod VARCHAR(50) NOT NULL
        CHECK (PaymentMethod IN ('Cash','Bank','MobileBanking','Card')),
    Description VARCHAR(250),
    ReferenceID INT NULL,
    SourceTable VARCHAR(50) NULL,
)
GO



CREATE TABLE ResortDining
(
    MealID INT PRIMARY KEY,                          
    VisitorID INT NOT NULL,                          
    RoomID INT NULL,                                 
    KitchenID INT NOT NULL,                          
    MenuItem VARCHAR(100) NOT NULL,                  
    MealType VARCHAR(50) NOT NULL CHECK              
        (MealType IN ('Breakfast','Lunch','Dinner','Snack')),
    Quantity INT NOT NULL CHECK (Quantity > 0),
    UnitPrice DECIMAL(10,2) NOT NULL CHECK (UnitPrice >= 0), 
    OrderDateTime DATETIME NOT NULL DEFAULT GETDATE(),
    DeliveryType VARCHAR(50) NOT NULL CHECK          
        (DeliveryType IN ('Dine-In','Room Service','Takeaway')),
    ServedBy INT NULL,                               
    PaymentStatus VARCHAR(20) NOT NULL CHECK        
        (PaymentStatus IN ('Paid','Pending','Cancelled')),
    PaymentMethod VARCHAR(20) NOT NULL CHECK         
        (PaymentMethod IN ('Cash','Card','MobileBanking')),
    DiscountApplied DECIMAL(5,2) DEFAULT 0 CHECK (DiscountApplied >= 0), 
    Note VARCHAR(255) NULL,                        
    CONSTRAINT FK_ResortDining_Visitor FOREIGN KEY (VisitorID) REFERENCES Visitors(VisitorID),
    CONSTRAINT FK_ResortDining_Room FOREIGN KEY (RoomID) REFERENCES ResortRoom(RoomID),
    CONSTRAINT FK_ResortDining_Kitchen FOREIGN KEY (KitchenID) REFERENCES Resortkitchen(KitchenID),
    CONSTRAINT FK_ResortDining_ServedBy FOREIGN KEY (ServedBy) REFERENCES Employees(EmployeeID)
)
GO





/*====================================  SECTION 03  ====================================
	     	                       CONSTRAINTS DROP/ADD
======================================================================================*/

-- Step 1: Drop the existing CHECK constraint 
ALTER TABLE FinancialTransactions
DROP CONSTRAINT CK__Financial__Payme__324172E1
GO

-- Step 2: Add a new CHECK constraint that includes 'Online' as a valid payment method.
ALTER TABLE FinancialTransactions
ADD CONSTRAINT CK_FinancialTransactions_PaymentMethod_Fixed
CHECK (PaymentMethod IN ('Cash','Bank','MobileBanking','Card','Online'))
GO


-- Purpose: Ensures that a visitor is uniquely identified by their NationalID or PassportNo 
ALTER TABLE Visitors
ADD CONSTRAINT UQ_Visitors_ID_Composite UNIQUE (NationalID, PassportNo)
GO




/*====================================  SECTION 04  ====================================
	                          	      CREATE TRIGGER
========================================================================================



Inventory Management Trigger (Stock Update) Purpose: 
Whenever a product is sold in the ShopSales table, the stock in the Products and Shop tables 
will automatically decrease. If there is not enough stock, the sale will be canceled (rollback).*/

CREATE TRIGGER trg_UpdateStock_AfterSale
ON ShopSales
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON

    DECLARE 
           @ProductID INT,
           @ShopID INT,
           @QtySold INT,
           @CurrentStock INT
    SELECT  
           @ProductID = ProductID,
           @ShopID = ShopID,
           @QtySold = QuantitySold
    FROM inserted

    SELECT @CurrentStock = StockQuantity
    FROM Products
    WHERE ProductID = @ProductID
IF  @CurrentStock < @QtySold
    BEGIN
        RAISERROR ('Not enough stock. Sale cancelled.', 16, 1)
        ROLLBACK TRANSACTION
        RETURN
    END
    UPDATE Products
    SET StockQuantity = StockQuantity - @QtySold
    WHERE ProductID = @ProductID
    UPDATE Shop
    SET CurrentStockLevel = CurrentStockLevel - @QtySold
    WHERE ShopID = @ShopID
END
GO




/*Room Status Automation Trigger (Room Availability)Purpose:
When a room booking is confirmed in the ResortBookings table, the status of that
room in the ResortRoom table will become 'Booked'. Again, when the booking is completed
(CheckedOut) or canceled (Cancelled), the status will become 'Available'.*/

CREATE TRIGGER trg_UpdateRoomStatus
ON ResortBookings
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON

    DECLARE @RoomID INT,
            @Status VARCHAR(50)

    SELECT 
        @RoomID = RoomID,
        @Status = BookingStatus
    FROM inserted

    UPDATE ResortRoom
    SET AvailabilityStatus = 
        CASE 
            WHEN @Status = 'Confirmed' THEN 'Booked'
            WHEN @Status IN ('CheckedOut', 'Cancelled') THEN 'Available'
        END
    WHERE RoomID = @RoomID
END
GO






/*Financial Transaction Logging Trigger (Financial Automation) Purpose: 
Your system has a central table called FinancialTransactions. Instead of manually entering 
data there, whenever a sale is made in the TicketSales or ShopSales tables, this trigger will automatically
enter that revenue into the FinancialTransactions table.*/

CREATE TRIGGER trg_LogTicketSales_Income 
ON TicketSales 
AFTER INSERT AS
BEGIN
    SET NOCOUNT ON
    INSERT INTO FinancialTransactions
    (
        TransactionDate, TransactionType, Category, Amount, PaymentMethod,
        Description, ReferenceID, SourceTable
    )
    SELECT 
        i.PurchaseDate, 
        'Income', 
        'Ticketing', 
        i.Price * i.Quantity, 
        CASE 
            WHEN i.PaymentMethod = 'Online' THEN 'Card' 
            ELSE i.PaymentMethod 
        END AS PaymentMethod,
        'Ticket Sales Income (ID: ' + CAST(i.TicketID AS VARCHAR(20)) + ')', 
        i.TicketID, 
        'TicketSales'
    FROM inserted i
END
GO






/* Expense Tracking Trigger (Expense Logging) Purpose: 
Similarly, when an expense entry is made in the Expense table, it will also be 
automatically stored as 'Expense' in the FinancialTransactions table.
*/

CREATE TRIGGER trg_LogExpense_Transaction
ON Expense
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON

    INSERT INTO FinancialTransactions 
    (
        TransactionDate, 
        TransactionType, 
        Category, 
        Amount, 
        PaymentMethod, 
        Description, 
        ReferenceID, 
        SourceTable
    )
    SELECT 
        i.ExpenseDate,
        'Expense',
        i.ExpenseType,
        i.Amount,
        'Cash', 
        i.Description,
        i.ExpenseID,
        'Expense'
    FROM inserted i
END
GO





/*(ShopSales Income):
Automatically add revenue from ShopSales as 'Income' to the FinancialTransactions table.*/


CREATE TRIGGER trg_LogShopSales_Income
ON ShopSales
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON

    INSERT INTO FinancialTransactions
    (
        TransactionDate, 
        TransactionType, 
        Category,
        Amount, 
        PaymentMethod, 
        Description, 
        ReferenceID, 
        SourceTable
    )
    SELECT
        i.SaleDate,
        'Income',
        'Retail Sales',
        i.TotalPrice - ISNULL(i.DiscountApplied, 0),
        i.PaymentMethod,
        'Shop Sales Income (ID: ' + CAST(i.ShopSalesID AS VARCHAR(20)) + ') from Shop ID: ' + CAST(i.ShopID AS VARCHAR(20)),
        i.ShopSalesID,
        'ShopSales'
    FROM inserted i
    WHERE i.PaymentStatus = 'Paid'
END
GO




/*This trigger will ensure that whenever a new sale record is inserted into the FishSales table and the PaymentStatus
of that sale is 'Paid', the net amount of the sale will automatically be logged as 'Income' in the central FinancialTransactions table.*/


CREATE TRIGGER trg_LogFishSales_Income
ON FishSales
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON

    INSERT INTO FinancialTransactions
    (
        TransactionDate, 
        TransactionType, 
        Category,
        Amount, 
        PaymentMethod, 
        Description, 
        ReferenceID, 
        SourceTable
    )
    SELECT
        i.SaleDate,
        'Income',
        'Fish Sales',
        (i.QuantitySold * i.UnitPrice) - ISNULL(i.DiscountApplied, 0),
        i.PaymentMethod,
        'Fish Sales Income (ID: ' + CAST(i.FishSalesID AS VARCHAR(20)) + ') from FishFarm ID: ' + CAST(i.FishFarmID AS VARCHAR(20)),
        i.FishSalesID,
        'FishSales'
    FROM inserted i
    WHERE i.PaymentStatus = 'Paid'
END
GO






/*Automatically add the net income from FruitSales as 'Income' to the FinancialTransactions table, 
 only when the PaymentStatus is 'Paid'.*/

CREATE TRIGGER trg_LogFruitSales_Income
ON FruitSales
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON

    INSERT INTO FinancialTransactions
    (
        TransactionDate, 
        TransactionType, 
        Category,
        Amount, 
        PaymentMethod, 
        Description, 
        ReferenceID, 
        SourceTable
    )
    SELECT
        i.SaleDate,
        'Income',
        'Fruit Sales',
        (i.QuantitySold * i.UnitPrice) - ISNULL(i.DiscountApplied, 0),
        i.PaymentMethod,
        'Fruit Sales Income (ID: ' + CAST(i.FruitSalesID AS VARCHAR(20)) + ') from Fruit Garden ID: ' + CAST(i.FruitGardenID AS VARCHAR(20)),
        i.FruitSalesID,
        'FruitSales'
    FROM inserted i
    WHERE i.PaymentStatus = 'Paid'
END
GO





/*This trigger will ensure that the data in your RevenueSummary table is always consistent with the 
actual transactions, which will be very fast and helpful for generating reports.*/

CREATE TRIGGER trg_MaintainRevenueSummary
ON FinancialTransactions
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON
    
    DECLARE @NetIncomeChange DECIMAL(18,2) = 0
    DECLARE @NetExpenseChange DECIMAL(18,2) = 0

    SELECT 
        @NetIncomeChange = @NetIncomeChange + ISNULL(SUM(CASE WHEN TransactionType = 'Income' THEN Amount ELSE 0 END), 0),
        @NetExpenseChange = @NetExpenseChange + ISNULL(SUM(CASE WHEN TransactionType = 'Expense' THEN Amount ELSE 0 END), 0)
    FROM inserted

    SELECT 
        @NetIncomeChange = @NetIncomeChange - ISNULL(SUM(CASE WHEN TransactionType = 'Income' THEN Amount ELSE 0 END), 0),
        @NetExpenseChange = @NetExpenseChange - ISNULL(SUM(CASE WHEN TransactionType = 'Expense' THEN Amount ELSE 0 END), 0)
    FROM deleted
    
    UPDATE RevenueSummary
    SET
        TotalIncome = TotalIncome + @NetIncomeChange,
        TotalExpense = TotalExpense + @NetExpenseChange,
        LastUpdated = GETDATE()
    WHERE ParkID = 1
    
END
GO




/*Even though the AttendanceStaffShift table has StartTime and EndTime, the TotalHours 
column may be empty or incorrectly populated. This trigger will ensure that TotalHours 
is automatically correct as soon as StartTime and EndTime are inserted or updated.*/

CREATE TRIGGER trg_CalculateStaffTotalHours
ON AttendanceStaffShift
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON

    IF UPDATE(StartTime) OR UPDATE(EndTime)
    BEGIN
        
        UPDATE A
        SET
            A.TotalHours = ROUND(DATEDIFF(MINUTE, i.StartTime, i.EndTime) / 60.0, 2)
        FROM AttendanceStaffShift A
        INNER JOIN inserted i ON A.AttendanceID = i.AttendanceID
        WHERE DATEDIFF(MINUTE, i.StartTime, i.EndTime) >= 0

        UPDATE A
        SET
            A.TotalHours = 0
        FROM AttendanceStaffShift A
        INNER JOIN inserted i ON A.AttendanceID = i.AttendanceID
        WHERE DATEDIFF(MINUTE, i.StartTime, i.EndTime) < 0

    END
END
GO




/*Whenever a new salary payment record is inserted into the EmployeePayment
table, this trigger will automatically log that NetSalary as 
'Expense' in the central FinancialTransactions table.*/

CREATE TRIGGER trg_LogSalary_Expense
ON EmployeePayment
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON

    INSERT INTO FinancialTransactions
    (
        TransactionDate, 
        TransactionType, 
        Category,
        Amount, 
        PaymentMethod, 
        Description, 
        ReferenceID, 
        SourceTable
    )
    SELECT
        i.PaymentDate,
        'Expense',
        'Salary',
        i.NetSalary,
        'Bank', 
        'Salary payment for Employee ID: ' + CAST(i.EmployeeID AS VARCHAR(20)),
        i.PaymentID,
        'EmployeePayment'
    FROM inserted i
END
GO




/*Automatically add net income from dining orders to the FinancialTransactions 
table as 'Income', only when the PaymentStatus is 'Paid'.*/

CREATE TRIGGER trg_LogResortDining_Income
ON ResortDining
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON

    INSERT INTO FinancialTransactions
    (
        TransactionDate, 
        TransactionType, 
        Category,
        Amount, 
        PaymentMethod, 
        Description, 
        ReferenceID, 
        SourceTable
    )
    SELECT
        i.OrderDateTime,
        'Income',
        'Dining / F&B', 
        (i.Quantity * i.UnitPrice) - ISNULL(i.DiscountApplied, 0),
        i.PaymentMethod,
        'Dining Order Income (ID: ' + CAST(i.MealID AS VARCHAR(20)) + ') for Visitor ID: ' + CAST(i.VisitorID AS VARCHAR(20)),
        i.MealID,
        'ResortDining'
    FROM inserted i
    WHERE i.PaymentStatus = 'Paid'
END
GO



/*This trigger will ensure that when the booking status is 'Confirmed' and 
the payment status is 'Paid', the TotalAmount of the booking will be 
automatically logged as 'Income' in the FinancialTransactions table.*/

CREATE TRIGGER trg_LogResortBooking_Income
ON ResortBookings
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON

    INSERT INTO FinancialTransactions
    (
        TransactionDate, TransactionType, Category,
        Amount, PaymentMethod, Description, ReferenceID, SourceTable
    )
    SELECT
        GETDATE(), 
        'Income',
        'Accommodation',
        i.TotalAmount,
        'Card', 
        'Resort Booking Income (Booking ID: ' + CAST(i.BookingID AS VARCHAR(20)) + ')',
        i.BookingID,
        'ResortBookings'
    FROM inserted i
    WHERE i.BookingStatus = 'Confirmed'
    AND i.PaymentStatus = 'Paid'
    AND NOT EXISTS (
        SELECT 1 FROM deleted d 
        WHERE d.BookingID = i.BookingID 
        AND d.BookingStatus = 'Confirmed'
        AND d.PaymentStatus = 'Paid'
    )
END
GO





/*===================================  SECTION 05  ====================================
	     	                         CREATE INDEXES
======================================================================================*/

-- Resort Table
CREATE NONCLUSTERED INDEX NCI_Resort_ParkID ON Resort (ParkID)
GO

-- Employees Table 
CREATE NONCLUSTERED INDEX NCI_Employees_GradePark ON Employees ([FullName], ParkID)
GO

-- EmployeeSalaryGrade Table
CREATE NONCLUSTERED INDEX CI_EmployeeSalaryGrade_GradeID ON EmployeeSalaryGrade ([GradeName])
GO

-- FinancialTransactions Table 
CREATE NONCLUSTERED INDEX CI_FinancialTransactions_TransactionID ON FinancialTransactions ([TransactionType])
CREATE NONCLUSTERED INDEX NCI_FinancialTransactions_ReportFilter ON FinancialTransactions (TransactionDate DESC, TransactionType, SourceTable) INCLUDE (Amount)
GO

-- RevenueSummary Table 
CREATE NONCLUSTERED INDEX NCI_RevenueSummary_ParkID ON RevenueSummary (ParkID)
GO

-- TicketSales Table 
CREATE NONCLUSTERED INDEX NCI_TicketSales_SaleDate ON TicketSales ([PurchaseDate] DESC)
CREATE NONCLUSTERED INDEX NCI_TicketSales_VisitorID ON TicketSales (VisitorID)
GO

-- ResortBookings Table 
CREATE NONCLUSTERED INDEX NCI_ResortBookings_RoomID ON ResortBookings (RoomID)
CREATE NONCLUSTERED INDEX NCI_ResortBookings_CheckInStatus ON ResortBookings (CheckInDate, BookingStatus)
GO

-- ShopSales Table 
CREATE NONCLUSTERED INDEX NCI_ShopSales_SaleDate ON ShopSales (SaleDate DESC)
CREATE NONCLUSTERED INDEX NCI_ShopSales_ProductShop ON ShopSales (ProductID, ShopID)
GO

-- FishSales Table
CREATE NONCLUSTERED INDEX NCI_FishSales_SaleDate ON FishSales (SaleDate DESC)
CREATE NONCLUSTERED INDEX NCI_FishSales_FishFarmID ON FishSales (FishFarmID)
GO

-- FruitSales Table
CREATE NONCLUSTERED INDEX NCI_FruitSales_SaleDate ON FruitSales (SaleDate DESC)
CREATE NONCLUSTERED INDEX NCI_FruitSales_FruitGardenID ON FruitSales (FruitGardenID)
GO

-- Expense Table
CREATE NONCLUSTERED INDEX NCI_Expense_DateType ON Expense (ExpenseDate DESC, ExpenseType)
GO

-- AttendanceStaffShift Table 
CREATE NONCLUSTERED INDEX NCI_AttendanceStaffShift_EmployeeDate ON AttendanceStaffShift (EmployeeID, ShiftDate DESC)
CREATE NONCLUSTERED INDEX NCI_AttendanceStaffShift_Status ON AttendanceStaffShift (Status)
GO

-- EmployeePayment Table 
CREATE NONCLUSTERED INDEX NCI_EmployeePayment_EmployeeDate ON EmployeePayment (EmployeeID, PaymentDate DESC)
GO

-- Event Table 
CREATE NONCLUSTERED INDEX NCI_Event_StartStatus ON Event (StartDate, EventStatus)
CREATE NONCLUSTERED INDEX NCI_Event_ParkResort ON Event (ParkID, ResortID)
GO

-- ResortDining Table
CREATE NONCLUSTERED INDEX NCI_ResortDining_OrderDate ON ResortDining (OrderDateTime DESC)
CREATE NONCLUSTERED INDEX NCI_ResortDining_VisitorRoom ON ResortDining (VisitorID, RoomID)
GO

-- ResortRoom Table 
CREATE NONCLUSTERED INDEX NCI_ResortRoom_Availability ON ResortRoom (AvailabilityStatus)
CREATE NONCLUSTERED INDEX NCI_ResortRoom_ResortID ON ResortRoom (ResortID)
GO

-- Vendors Table
CREATE NONCLUSTERED INDEX NCI_Vendors_TypeStatus ON Vendors (VendorType, [Status])
CREATE NONCLUSTERED INDEX NCI_Vendors_Name ON Vendors (VendorName)
GO

-- Products Table
CREATE NONCLUSTERED INDEX NCI_Products_Vendor ON Products (VendorID)
CREATE NONCLUSTERED INDEX NCI_Products_StockCheck ON Products (StockQuantity, ReorderLevel)
CREATE NONCLUSTERED INDEX NCI_Products_Expiry ON Products (ExpiryDate)
GO

-- VendorProducts Table
CREATE NONCLUSTERED INDEX NCI_VendorProducts_Product ON VendorProducts (ProductID, VendorID)
GO




/*====================================  SECTION 06  ====================================
	     	                          CREATE A VIEW
======================================================================================*/

-- Create a view to summarize employee payroll information
CREATE VIEW vw_EmployeePayrollDetails
AS
SELECT
    E.EmployeeID,
    E.FullName,
    E.Role,
    E.Department,
    E.HireDate,
    ESG.GradeName,
    ESG.BasicSalary AS GradeBasicSalary,
    ESG.Allowance AS GradeAllowance,
    EP.PaymentDate,
    EP.NetSalary AS PaymentNetSalary,
    E.ParkID
FROM
    Employees E
INNER JOIN
    EmployeePayment EP ON E.EmployeeID = EP.EmployeeID
INNER JOIN
    EmployeeSalaryGrade ESG ON EP.GradeID = ESG.GradeID
GO




-- Create a view to summarize the operational status of key park assets
CREATE VIEW vw_AssetMaintenanceSummary
AS
SELECT
    'Playground Facility' AS AssetType,
    f.FacilityID AS AssetID,
    f.FacilityType AS AssetName,
    f.Location,
    f.Capacity,
    f.MaintenanceStatus,
    p.ParkName,
    e.FullName AS SupervisorName
FROM
    PlaygroundFacilities f
INNER JOIN
    Park p ON f.ParkID = p.ParkID
LEFT JOIN
    Employees e ON f.SupervisorID = e.EmployeeID

UNION ALL

SELECT
    'Zoo Enclosure' AS AssetType,
    enc.EnclosureID AS AssetID,
    enc.EnclosureName AS AssetName,
    enc.Location,
    enc.Capacity,
    enc.MaintenanceStatus,
    p.ParkName,
    NULL AS SupervisorName
FROM
    Enclosure enc
INNER JOIN
    Park p ON enc.ParkID = p.ParkID

UNION ALL

SELECT
    'Resort' AS AssetType,
    r.ResortID AS AssetID,
    r.ResortName AS AssetName,
    r.Location,
    r.TotalRooms AS Capacity, 
    r.MaintenanceStatus,
    p.ParkName,
    e.FullName AS SupervisorName
FROM
    Resort r
INNER JOIN
    Park p ON r.ParkID = p.ParkID
INNER JOIN
    Employees e ON r.ManagerID = e.EmployeeID
GO




/*====================================  SECTION 07  ====================================
	     	         CREATE A VIEW WITH ENCRYPTION AND SCHEMA BINDING
======================================================================================*/


--CREATE A VIEW FOR CONFIDENTIAL EMPLOYEE DATA

CREATE VIEW vw_ConfidentialEmployeeData
WITH ENCRYPTION, SCHEMABINDING
AS
SELECT
    E.EmployeeID,
    E.NationalID, 
    E.FullName,
    E.Role,
    E.Department,
    E.Salary,      
    E.Bonus,       
    E.PaymentMethod,
    P.ParkName
FROM
    dbo.Employees E  
INNER JOIN
    dbo.Park P ON E.ParkID = P.ParkID
WHERE
    E.EmploymentStatus = 'Active' 
GO



/*====================================  SECTION 08  ====================================
	     	                     CREATE STORED PROCEDURE 
========================================================================================



- This procedure lets you add a new shop sale record without writing a long INSERT statement each time.*/

CREATE PROCEDURE sp_AddShopSale
    @ShopSalesID INT,
    @ShopID INT,
    @ProductID INT,
    @ProductName VARCHAR(150),
    @QuantitySold INT,
    @UnitPrice DECIMAL(10,2),
    @SaleDate DATE,
    @VisitorID INT,
    @VendorName VARCHAR(150) = NULL,
    @PaymentStatus VARCHAR(50),
    @PaymentMethod VARCHAR(50),
    @ReferenceNo VARCHAR(50) = NULL,
    @IssuedBy VARCHAR(100),
    @DiscountApplied DECIMAL(5,2) = 0,
    @DeliveryStatus VARCHAR(50),
    @DeliveryDate DATE = NULL,
    @Note VARCHAR(250) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO ShopSales
    (
        ShopSalesID, ShopID, ProductID, ProductName, QuantitySold, UnitPrice,
        SaleDate, VisitorID, VendorName, PaymentStatus, PaymentMethod,
        ReferenceNo, IssuedBy, DiscountApplied, DeliveryStatus, DeliveryDate, Note
    )
    VALUES
    (
        @ShopSalesID, @ShopID, @ProductID, @ProductName, @QuantitySold, @UnitPrice,
        @SaleDate, @VisitorID, @VendorName, @PaymentStatus, @PaymentMethod,
        @ReferenceNo, @IssuedBy, @DiscountApplied, @DeliveryStatus, @DeliveryDate, @Note
    )
END
GO


/*To change the operational status of a specific room 
(e.g., from 'Occupied' to 'Cleaning' to 'Available').*/

CREATE PROCEDURE sp_UpdateRoomStatus
    @RoomID INT,                             
    @NewStatus VARCHAR(50)          
AS
BEGIN
    SET NOCOUNT ON

    UPDATE ResortRoom
    SET 
        [AvailabilityStatus] = @NewStatus,
        [LastMaintenanceDate] = GETDATE()
    WHERE 
        RoomID = @RoomID
    SELECT 'Rows Updated:' = @@ROWCOUNT
END
GO




/*=======================================  SECTION 09  =====================================
                                        CREATE FUNCTION
============================================================================================*/


/*Only calculates salary for 'Active' employees.*/

CREATE FUNCTION fn_CalculateEmployeeNetSalary
(
    @EmployeeID INT
)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @NetSalary DECIMAL(10, 2) = 0.00
    DECLARE @Basic DECIMAL(10, 2)
    DECLARE @Bonus DECIMAL(10, 2)
    DECLARE @AnnualAllowance DECIMAL(10, 2)
    DECLARE @Status VARCHAR(20)

    SELECT
        @Basic = Salary,
        @Bonus = Bonus,
        @Status = EmploymentStatus
    FROM Employees
    WHERE EmployeeID = @EmployeeID

    IF @Status = 'Active'
    BEGIN
        SELECT TOP 1 
            @AnnualAllowance = ESG.Allowance 
        FROM EmployeePayment EP
        INNER JOIN EmployeeSalaryGrade ESG ON EP.GradeID = ESG.GradeID
        WHERE EP.EmployeeID = @EmployeeID
        ORDER BY EP.PaymentDate DESC

        SET @NetSalary = ISNULL(@Basic, 0) + ISNULL(@Bonus, 0) + (ISNULL(@AnnualAllowance, 0) / 12.0)
    END
    RETURN @NetSalary
END
GO



/*Returns a table with the count of employees for each attendance status 
(Present, Absent, Late, OnLeave) for a given Park and ShiftType.*/

CREATE FUNCTION fn_GetParkAttendanceSummary
(
    @ParkID INT,
    @ShiftType VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        A.Status,
        AttendanceCount = COUNT(A.EmployeeID)
    FROM
        AttendanceStaffShift A
    WHERE
        A.ParkID = @ParkID
        AND A.ShiftType = @ShiftType
        AND A.ShiftDate = CAST(GETDATE() AS DATE)
    GROUP BY
        A.Status
)
GO



--================================================================================================================================


