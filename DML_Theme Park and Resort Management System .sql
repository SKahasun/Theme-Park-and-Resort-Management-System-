/*====================================================================================================
					    SQL PROJECT: THEME PARK AND RESORT MANAGEMENT SYSTEM (TPRMS)
======================================================================================================
					
								Trainee Name : SHEIKH AHASUNUL ISLAM 
							 	  Trainee ID : 1294372 
									Batch ID : WADA/PNTL-M/69/01 

------------------------------------------------------------------------------------------------------
                                          DOCUMENT STRUCTURE: DML                         
------------------------------------------------------------------------------------------------------

                          => SECTION 01: INSERT DATA INTO TABLES										
		                  - Purpose: Insert or select data into/from tables. 
                          
                          => SECTION 02: RETRIEVE DATA USING VIEW
                          - Purpose: Execute DML operations via views.

                          => SECTION 03: INSERT, UPDATE, DELETE USING STORED PROCEDURE		
			              - Purpose: Perform data manipulation using stored procedures.

                          => SECTION 04: RETRIEVE DATA USING USER-DEFINED FUNCTIONS (UDF)	
                          - Purpose: Retrieve and manipulate data via UDFs.
             
                          => SECTION 05: USING AN INDEX														
			              - Purpose: Perform DML operations with indexed tables.	
                         
                          => SECTION 06: SQL DML QUERIES FROM TPRMS PROJECT						
                          - Coverage: DML QUERIES														
			            	6.1:: All types of JOIN								      
			            	6.2:: ALL, DISTINCT, TOP, PERCENT, WITH TIES
			            	6.3:: String Expressions, Concatenate				       
			            	6.4:: GROUP BY, HAVING
			            	6.5:: Arithmetic Expressions							  
			            	6.6:: ROLLUP, CUBE, GROUPING SETS
			            	6.7:: Logical Operator (AND, OR, NOT)							
			            	6.8:: Comparison Operator, BETWEEN
			            	6.9:: Range of Selected Rows (OFFSET FETCH)		  
			               6.10:: Compound Join
			               6.11:: UNION, UNION ALL, EXCEPT, INTERSECT   
			               6.12:: GROUP BY, HAVING
			               6.13:: Subqueries											   
			               6.14:: CTE, Recursive CTE
			               6.15:: MERGE												   
			               6.16:: CAST, CONVERT, TRY_CONVERT
			               6.17:: Other Data Conversion Functions				   
			               6.18:: Numeric Functions
			               6.19:: Date Functions										   
			               6.20:: COALESCE, ISNULL, CASE
			               6.21:: IIF, CHOOSE										   
			               6.22:: Temporary Tables, Table Variables
			               6.23:: Ranking Functions								  	   
			               6.24:: Analytic Functions
			               6.25:: System Stored Procedures						   
			               6.26:: TRY-CATCH block to handle errors			   

        	            => SECTION 08: DECLARE VARIABLES													
			              - Purpose: Use SQL variables for dynamic queries.	

                        => SECTION 09: DML OPERATIONS WITH TRIGGERS								
		            	  - Purpose: Automate DML operations with triggers.
                          

------------------------------------------------------------------------------------------------------------



            
            =======================================  SECTION 01  ===========================================
            	       						  INSERT DATA INTO TABLES	
            ===============================================================================================*/

USE TPRMS
GO


INSERT INTO  Park
(
    ParkID, ParkName, Location, Address, EstablishedDate, AreaSize, OpeningTime,
    ContactNumber, Email, Website, ParkType, EntryFee, ParkingCapacity,
    TotalResorts, TotalPlaygrounds, TotalRides, TotalShops, TotalMosques,
    TotalZooSection, TotalFishFarm, TotalFruitGardens, TotalEmployees,
    AnnualVisitors, AverageDailyVisitors, RevenueSources, MaintenanceStatus, SpecialEvents
)

VALUES

(1, 'Green Valley Park', 'Dhaka', 'Uttara Sector 12', '2005-03-15', 120.50, '09:00','01711111111', 'info@greenvalley.com', 
'www.greenvalley.com', 'Theme', 200.00, 500, 2, 3, 15, 10, 1, 2, 1, 2, 150, 250000, 685, 'Tickets, Shops, Resorts', 'Active', 'Summer Festival')
GO



INSERT INTO Employees 
(
    EmployeeID, ParkID, FullName, FatherName, MotherName, Gender, DateOfBirth, Age,
    Nationality, PassportNo, NationalID, PresentAddress, PermanentAddress,
    PhoneNumber, Email, Role, Department, HireDate, EmploymentStatus,
    ShiftSchedule, BloodGroup, Salary, Bonus, PaymentMethod, Qualification, Reference
)
VALUES
(1, 1, 'Abdul Karim', 'Rahim Uddin', 'Ayesha Begum', 'Male', '1985-05-12', 40,
 'Bangladeshi', NULL, 'NID1001', 'Dhaka', 'Comilla', '01711111111', 'karLim@park.com',
 'Gardener', 'Maintenance', '2015-03-01', 'Active', 'Morning', 'O+', 18000, 2000, 'Cash', 'SSC', 'Supervisor Rahman'),

(2, 1, 'Shahidul Islam', 'Jalal Uddin', 'Rokeya Begum', 'Male', '1978-09-20', 47,
 'Bangladeshi', NULL, 'NID1002', 'Dhaka', 'Sylhet', '01711111112', 'shSahidul@park.com',
 'Manager', 'Administration', '2010-01-15', 'Active', 'Morning', 'A+', 45000, 5000, 'Bank', 'MBA', 'Director Alam'),

(3, 1, 'Nasrin Akter', 'Mizanur Rahman', 'Shahana Begum', 'Female', '1990-02-10', 35,
 'Bangladeshi', NULL, 'NID1003', 'Dhaka', 'Khulna', '01711111113', 'nasrSin@park.com',
 'Supervisor', 'Operations', '2018-07-01', 'Active', 'Evening', 'B+', 30000, 2500, 'Bank', 'BBA', 'Manager Shahid'),

(4, 1, 'Mohammad Ali', 'Habib Ullah', 'Fatema Begum', 'Male', '1982-11-05', 43,
 'Bangladeshi', NULL, 'NID1004', 'Dhaka', 'Rajshahi', '01711111114', 'alSi@park.com',
 'Imam', 'Mosque', '2012-05-01', 'Active', 'Morning', 'A-', 25000, 2000, 'Cash', 'Islamic Studies', 'Mosque Committee'),

(5, 1, 'Yusuf Hossain', 'Salam Uddin', 'Jahanara Begum', 'Male', '1988-03-22', 37,
 'Bangladeshi', NULL, 'NID1005', 'Dhaka', 'Barisal', '01711111115', 'yusSuf@park.com',
 'Muazzin', 'Mosque', '2014-08-01', 'Active', 'Morning', 'O-', 20000, 1500, 'Cash', 'HSC', 'Mosque Committee'),

(6, 1, 'Dr. Farzana Rahman', 'Anwar Hossain', 'Razia Begum', 'Female', '1980-06-18', 45,
 'Bangladeshi', NULL, 'NID1006', 'Dhaka', 'Sylhet', '01711111116', 'farSzana@park.com',
 'Veterinarian', 'Zoo', '2011-09-01', 'Active', 'Morning', 'AB+', 55000, 6000, 'Bank', 'DVM', 'Zoo Director'),

(7, 1, 'Kamrul Hasan', 'Aziz Ullah', 'Mariam Begum', 'Male', '1987-01-25', 38,
 'Bangladeshi', NULL, 'NID1007', 'Dhaka', 'Chittagong', '01711111117', 'kaAmrul@park.com',
 'Chef', 'Kitchen', '2016-02-01', 'Active', 'Evening', 'B-', 28000, 2000, 'Cash', 'Diploma in Culinary', 'Kitchen Manager'),

(8, 1, 'Rashed Khan', 'Nurul Islam', 'Shirin Akter', 'Male', '1992-12-12', 33,
 'Bangladeshi', NULL, 'NID1008', 'Dhaka', 'Gazipur', '01711111118', 'rashWed@park.com',
 'Trainer', 'Rides', '2019-04-01', 'Active', 'Morning', 'O+', 27000, 1800, 'Bank', 'BSc Physical Education', 'Ride Supervisor'),

(9, 1, 'Sadia Jahan', 'Abdul Malek', 'Parvin Akter', 'Female', '1995-07-07', 30,
 'Bangladeshi', NULL, 'NID1009', 'Dhaka', 'Narayanganj', '01711111119', 'sadAia@park.com',
 'Staff', 'Ticket Counter', '2020-01-01', 'Active', 'Morning', 'A+', 20000, 1200, 'Cash', 'HSC', 'Manager Nasrin'),

(10, 1, 'Imran Hossain', 'Shafiqul Islam', 'Laila Begum', 'Male', '1989-10-10', 36,
 'Bangladeshi', NULL, 'NID1010', 'Dhaka', 'Tangail', '01711111120', 'im2ran@park.com',
 'Other', 'Maintenance', '2017-06-01', 'Active', 'Night', 'O-', 22000, 1500, 'Cash', 'SSC', 'Supervisor Karim'),

(11, 1, 'Jannat Ara', 'Abdul Latif', 'Nurjahan Begum', 'Female', '1993-04-14', 32,
 'Bangladeshi', NULL, 'NID1011', 'Dhaka', 'Mymensingh', '01711111121', 'jan2nat@park.com',
 'Gardener', 'Maintenance', '2018-03-01', 'Active', 'Morning', 'B+', 18500, 1000, 'Cash', 'SSC', 'Supervisor Rahman'),

(12, 1, 'Mahmudul Hasan', 'Abdul Quddus', 'Sufia Begum', 'Male', '1984-08-08', 41,
 'Bangladeshi', NULL, 'NID1012', 'Dhaka', 'Jessore', '01711111122', 'mahmuSd@park.com',
 'Manager', 'Finance', '2012-01-01', 'Active', 'Morning', 'A+', 48000, 4500, 'Bank', 'MBA Finance', 'Director Alam'),

(13, 1, 'Shamima Akter', 'Abdul Halim', 'Rokeya Begum', 'Female', '1991-11-11', 34,
 'Bangladeshi', NULL, 'NID1013', 'Dhaka', 'Noakhali', '01711111123', 'shamCima@park.com',
 'Supervisor', 'HR', '2019-05-01', 'Active', 'Morning', 'O+', 31000, 2000, 'Bank', 'BBA HRM', 'Manager Shahid'),

(14, 1, 'Abdul Wahid', 'Abdul Bari', 'Sufia Begum', 'Male', '1986-02-02', 39,
 'Bangladeshi', NULL, 'NID1014', 'Dhaka', 'Kushtia', '01711111124', 'wahids@park.com',
 'Trainer', 'Safety', '2015-07-01', 'Active', 'Morning', 'AB-', 29000, 2200, 'Bank', 'BSc Safety Training', 'Safety Officer'),

(15, 1, 'Rokeya Sultana', 'Abdul Hamid', 'Jahanara Begum', 'Female', '1983-03-03', 42,
 'Bangladeshi', NULL, 'NID1015', 'Dhaka', 'Pabna', '01711111125', 'roakeya@park.com',
 'Staff', 'Reception', '2013-09-01', 'Active', 'Morning', 'A-', 21000, 1500, 'Cash', 'BA', 'Manager Nasrin'),
 
(101, 1, 'Abdul Karim', 'Rahim Uddin', 'Ayesha Begum', 'Male', '1985-05-12', 40,
 'Bangladeshi', NULL, 'NID2001', 'Dhaka', 'Comilla', '01720000001', 'kaarim@park.com',
 'Gardener', 'Maintenance', '2015-03-01', 'Active', 'Morning', 'O+', 18000, 2000, 'Cash', 'SSC', 'Supervisor Rahman'),

(102, 1, 'Shahidul Islam', 'Jalal Uddin', 'Rokeya Begum', 'Male', '1978-09-20', 47,
 'Bangladeshi', NULL, 'NID2002', 'Dhaka', 'Sylhet', '01720000002', 'shaahidul@park.com',
 'Manager', 'Administration', '2010-01-15', 'Active', 'Morning', 'A+', 45000, 5000, 'Bank', 'MBA', 'Director Alam'),

(103, 1, 'Nasrin Akter', 'Mizanur Rahman', 'Shahana Begum', 'Female', '1990-02-10', 35,
 'Bangladeshi', NULL, 'NID2003', 'Dhaka', 'Khulna', '01720000003', 'nasrain@park.com',
 'Supervisor', 'Operations', '2018-07-01', 'Active', 'Evening', 'B+', 30000, 2500, 'Bank', 'BBA', 'Manager Shahid'),

(104, 1, 'Mohammad Ali', 'Habib Ullah', 'Fatema Begum', 'Male', '1982-11-05', 43,
 'Bangladeshi', NULL, 'NID2004', 'Dhaka', 'Rajshahi', '01720000004', 'alai@park.com',
 'Imam', 'Mosque', '2012-05-01', 'Active', 'Morning', 'A-', 25000, 2000, 'Cash', 'Islamic Studies', 'Mosque Committee'),

(105, 1, 'Yusuf Hossain', 'Salam Uddin', 'Jahanara Begum', 'Male', '1988-03-22', 37,
 'Bangladeshi', NULL, 'NID2005', 'Dhaka', 'Barisal', '01720000005', 'yusseuf@park.com',
 'Muazzin', 'Mosque', '2014-08-01', 'Active', 'Morning', 'O-', 20000, 1500, 'Cash', 'HSC', 'Mosque Committee'),

(106, 1, 'Dr. Farzana Rahman', 'Anwar Hossain', 'Razia Begum', 'Female', '1980-06-18', 45,
 'Bangladeshi', NULL, 'NID2006', 'Dhaka', 'Sylhet', '01720000006', 'farzanda@park.com',
 'Veterinarian', 'Zoo', '2011-09-01', 'Active', 'Morning', 'AB+', 55000, 6000, 'Bank', 'DVM', 'Zoo Director'),

(107, 1, 'Kamrul Hasan', 'Aziz Ullah', 'Mariam Begum', 'Male', '1987-01-25', 38,
 'Bangladeshi', NULL, 'NID2007', 'Dhaka', 'Chittagong', '01720000007', 'kafmrul@park.com',
 'Chef', 'Kitchen', '2016-02-01', 'Active', 'Evening', 'B-', 28000, 2000, 'Cash', 'Diploma in Culinary', 'Kitchen Manager'),

(108, 1, 'Rashed Khan', 'Nurul Islam', 'Shirin Akter', 'Male', '1992-12-12', 33,
 'Bangladeshi', NULL, 'NID2008', 'Dhaka', 'Gazipur', '01720000008', 'rasfhed@park.com',
 'Trainer', 'Rides', '2019-04-01', 'Active', 'Morning', 'O+', 27000, 1800, 'Bank', 'BSc Physical Education', 'Ride Supervisor'),

(109, 1, 'Sadia Jahan', 'Abdul Malek', 'Parvin Akter', 'Female', '1995-07-07', 30,
 'Bangladeshi', NULL, 'NID2009', 'Dhaka', 'Narayanganj', '01720000009', 'sadira@park.com',
 'Staff', 'Ticket Counter', '2020-01-01', 'Active', 'Morning', 'A+', 20000, 1200, 'Cash', 'HSC', 'Manager Nasrin'),

(110, 1, 'Imran Hossain', 'Shafiqul Islam', 'Laila Begum', 'Male', '1989-10-10', 36,
 'Bangladeshi', NULL, 'NID2010', 'Dhaka', 'Tangail', '01720000010', 'imranr@park.com',
 'Other', 'Maintenance', '2017-06-01', 'Active', 'Night', 'O-', 22000, 1500, 'Cash', 'SSC', 'Supervisor Karim'),

(111, 1, 'Jannat Ara', 'Abdul Latif', 'Nurjahan Begum', 'Female', '1993-04-14', 32,
 'Bangladeshi', NULL, 'NID2011', 'Dhaka', 'Mymensingh', '01720000011', 'jafnnat@park.com',
 'Gardener', 'Maintenance', '2018-03-01', 'Active', 'Morning', 'B+', 18500, 1000, 'Cash', 'SSC', 'Supervisor Rahman'),

(112, 1, 'Mahmudul Hasan', 'Abdul Quddus', 'Sufia Begum', 'Male', '1984-08-08', 41,
 'Bangladeshi', NULL, 'NID2012', 'Dhaka', 'Jessore', '01720000012', 'maheemud@park.com',
 'Manager', 'Finance', '2012-01-01', 'Active', 'Morning', 'A+', 48000, 4500, 'Bank', 'MBA Finance', 'Director Alam'),

(113, 1, 'Shamima Akter', 'Abdul Halim', 'Rokeya Begum', 'Female', '1991-11-11', 34,
 'Bangladeshi', NULL, 'NID2013', 'Dhaka', 'Noakhali', '01720000013', 'shameima@park.com',
 'Supervisor', 'HR', '2019-05-01', 'Active', 'Morning', 'O+', 31000, 2000, 'Bank', 'BBA HRM', 'Manager Shahid'),

(114, 1, 'Abdul Wahid', 'Abdul Bari', 'Sufia Begum', 'Male', '1986-02-02', 39,
 'Bangladeshi', NULL, 'NID2014', 'Dhaka', 'Kushtia', '01720000014', 'wawhid@park.com',
 'Trainer', 'Safety', '2015-07-01', 'Active', 'Morning', 'AB-', 29000, 2200, 'Bank', 'BSc Safety Training', 'Safety Officer'),

(115, 1, 'Rokeya Sultana', 'Abdul Hamid', 'Jahanara Begum', 'Female', '1983-03-03', 42,
 'Bangladeshi', NULL, 'NID2015', 'Dhaka', 'Pabna', '01720000015', 'rokewya@park.com',
 'Staff', 'Reception', '2013-09-01', 'Active', 'Morning', 'A-', 21000, 1500, 'Cash', 'BA', 'Manager Nasrin')
 GO





INSERT INTO PlaygroundFacilities 
(
    FacilityID, ParkID, FacilityType, Description, Location, Capacity, Duration,
    AgeRestriction, MaintenanceStatus, TicketRequired, TicketPrice, OpeningHours,
    StaffRequired, EmergencyContact, SupervisorID
)
VALUES

(1, 1, 'Slide', 'Large kids slide', 'Zone A', 50, 30, 5, 'Active', 0, 0.00, '09:00-18:00', 2, '01711111111', 3),
(2, 1, 'Swing', 'Double swing set', 'Zone A', 40, 20, 4, 'Active', 0, 0.00, '09:00-18:00', 2, '01711111111', 13),
(3, 1, 'Climbing Wall', 'Kids climbing wall', 'Zone B', 30, 45, 6, 'Active', 1, 50.00, '10:00-17:00', 3, '01711111111', 3),
(4, 1, 'Ball Pit', 'Indoor ball pit', 'Zone C', 60, 25, 3, 'Active', 0, 0.00, '09:00-19:00', 2, '01711111111', 3),
(5, 1, 'Mini Train', 'Children train ride', 'Zone D', 80, 15, 3, 'Active', 1, 100.00, '09:30-18:30', 4, '01711111111', 103),
(6, 1, 'Carousel', 'Kids carousel ride', 'Zone D', 70, 20, 3, 'Active', 1, 120.00, '10:00-19:00', 3, '01711111111', 3),
(7, 1, 'Playhouse', 'Small playhouse', 'Zone E', 25, 60, 2, 'Active', 0, 0.00, '09:00-18:00', 1, '01711111111', 13),
(8, 1, 'Trampoline', 'Outdoor trampoline', 'Zone F', 35, 30, 5, 'Active', 1, 80.00, '09:00-18:00', 2, '01711111111', 13),
(9, 1, 'Obstacle Course', 'Kids obstacle course', 'Zone G', 40, 40, 6, 'Active', 1, 150.00, '09:00-17:00', 3, '01822222222', 3),
(10, 1, 'Water Play', 'Splash zone for kids', 'Zone H', 100, 30, 4, 'Active', 1, 200.00, '10:00-18:00', 5, '01822222222', 103),
(11, 1, 'Sand Pit', 'Outdoor sand play area', 'Zone I', 50, 60, 2, 'Active', 0, 0.00, '09:00-18:00', 2, '01822222222', 3),
(12, 1, 'Zip Line', 'Kids zip line ride', 'Zone J', 20, 15, 7, 'Active', 1, 250.00, '11:00-17:00', 4, '01822222222', 3),
(13, 1, 'Maze', 'Children maze adventure', 'Zone K', 45, 35, 5, 'Active', 1, 100.00, '09:00-18:00', 3, '01822222222', 103),
(14, 1, 'Rope Bridge', 'Suspension rope bridge', 'Zone L', 30, 20, 6, 'Active', 1, 120.00, '09:00-17:00', 2, '01822222222', 13),
(15, 1, 'Mini Golf', 'Kids mini golf course', 'Zone M', 60, 45, 6, 'Active', 1, 180.00, '09:00-18:00', 3, '01822222222', 13)
GO



INSERT INTO Resort 
(
    ResortID, ParkID, ResortName, Location, ContactNumber, Email, TotalRooms, AvailableRooms,
    RoomType, Facilities, CheckInTime, CheckOutTime, StaffCount,
    KitchenAvailable, RestaurantAvailable, ParkingAvailable,
    DailyRate, SeasonalRate, DiscountPolicy, BookingPolicy,
    MaintenanceStatus, ManagerID
)

VALUES

(1, 1, 'Green Valley Resort', 'Zone A', '01730000001', 'greenvalley@resort.com', 50, 10,
 'Suite', 'Pool,Gym,Spa', '14:00', '11:00', 25, 1, 1, 1,
 5000.00, 4500.00, '10% off weekdays', 'Advance booking required', 'Active', 102),

(2, 1, 'Sunshine Resort', 'Zone B', '01730000002', 'sunshine@resort.com', 80, 20,
 'Deluxe', 'Restaurant,Conference Hall', '13:00', '11:00', 40, 1, 1, 1,
 6000.00, 5500.00, '15% off off-season', 'Online booking only', 'Active', 102),

(3, 1, 'Dreamland Resort', 'Zone C', '01730000003', 'dreamland@resort.com', 60, 15,
 'Standard', 'Playground,WiFi', '14:00', '11:00', 30, 1, 1, 1,
 4000.00, 3500.00, '5% off for members', 'Walk-in allowed', 'Active', 102),

(4, 1, 'River View Resort', 'Zone D', '01730000004', 'riverview@resort.com', 100, 25,
 'Suite', 'River View,Boat Ride', '15:00', '12:00', 50, 1, 1, 1,
 7000.00, 6500.00, '20% off group booking', 'Advance booking required', 'Active', 112),

(5, 1, 'Fantasy Island Resort', 'Zone E', '01730000005', 'fantasy@resort.com', 120, 30,
 'Deluxe', 'Beach Access,Water Sports', '14:00', '11:00', 60, 1, 1, 1,
 8000.00, 7500.00, 'Seasonal packages available', 'Online booking only', 'Active', 112),

(6, 1, 'Heritage Resort', 'Zone F', '01730000006', 'heritage@resort.com', 40, 8,
 'Standard', 'Cultural Hall,Library', '13:00', '11:00', 20, 1, 0, 1,
 3500.00, 3000.00, 'Student discount 10%', 'Walk-in allowed', 'Active', 112),

(7, 1, 'Skyline Resort', 'Zone G', '01730000007', 'skyline@resort.com', 70, 12,
 'Suite', 'Sky Deck,Gym', '14:00', '11:00', 35, 1, 1, 1,
 5500.00, 5000.00, 'Weekend special rates', 'Advance booking required', 'Active', 112)
 GO






 INSERT INTO Enclosure
 (
    EnclosureID, ParkID, EnclosureName, EnclosureType, Location, Capacity, Size,
    ClimateControl, MaintenanceStatus, LastInspectionDate, Note
)
VALUES
(1, 1, 'Lion Enclosure', 'Cage', 'Zone A', 5, 250.00, 0, 'Active', '2025-01-10', 'High security required'),
(2, 1, 'Tiger Enclosure', 'Cage', 'Zone B', 4, 220.00, 0, 'Active', '2025-01-12', 'Double fencing installed'),
(3, 1, 'Elephant Enclosure', 'OpenField', 'Zone C', 8, 1200.00, 0, 'Active', '2025-01-15', 'Large water pond included'),
(4, 1, 'Bird Aviary', 'Aviary', 'Zone D', 50, 400.00, 1, 'Active', '2025-01-18', 'Climate controlled for tropical birds'),
(5, 1, 'Reptile House', 'Cage', 'Zone E', 20, 150.00, 1, 'Active', '2025-01-20', 'Humidity maintained'),
(6, 1, 'Aquarium', 'Aquarium', 'Zone F', 200, 600.00, 1, 'Active', '2025-01-22', 'Saltwater tanks available'),
(7, 1, 'Monkey Enclosure', 'Cage', 'Zone G', 15, 300.00, 0, 'Active', '2025-01-25', 'Play structures installed'),
(8, 1, 'Giraffe Enclosure', 'OpenField', 'Zone H', 6, 800.00, 0, 'Active', '2025-01-28', 'Tall fencing required'),
(9, 1, 'Zebra Enclosure', 'OpenField', 'Zone I', 12, 700.00, 0, 'Active', '2025-01-30', 'Grassland habitat'),
(10, 1, 'Penguin House', 'Aquarium', 'Zone J', 25, 350.00, 1, 'Active', '2025-02-02', 'Cold climate maintained'),
(11, 1, 'Crocodile Enclosure', 'Cage', 'Zone K', 10, 500.00, 1, 'Active', '2025-02-05', 'Water pool included'),
(12, 1, 'Kangaroo Enclosure', 'OpenField', 'Zone L', 10, 600.00, 0, 'Active', '2025-02-08', 'Open grassland area'),
(13, 1, 'Snake House', 'Cage', 'Zone M', 30, 200.00, 1, 'Active', '2025-02-10', 'Temperature controlled'),
(14, 1, 'Parrot Aviary', 'Aviary', 'Zone N', 40, 250.00, 1, 'Active', '2025-02-12', 'Colorful bird species'),
(15, 1, 'Bear Enclosure', 'Cage', 'Zone O', 6, 400.00, 0, 'Active', '2025-02-15', 'Water pond and cave shelter'),
(16, 1, 'Deer Enclosure', 'OpenField', 'Zone P', 20, 900.00, 0, 'Active', '2025-02-18', 'Grassland with shade trees'),
(17, 1, 'Camel Enclosure', 'OpenField', 'Zone Q', 10, 850.00, 0, 'Active', '2025-02-20', 'Desert habitat created'),
(18, 1, 'Flamingo Aviary', 'Aviary', 'Zone R', 60, 500.00, 1, 'Active', '2025-02-22', 'Shallow water pools included'),
(19, 1, 'Ostrich Enclosure', 'OpenField', 'Zone S', 12, 750.00, 0, 'Active', '2025-02-24', 'Tall fencing required'),
(20, 1, 'Wolf Enclosure', 'Cage', 'Zone T', 8, 400.00, 0, 'Active', '2025-02-26', 'Secure double fencing'),
(21, 1, 'Fox Enclosure', 'Cage', 'Zone U', 10, 300.00, 0, 'Active', '2025-02-28', 'Natural burrows maintained'),
(22, 1, 'Peacock Aviary', 'Aviary', 'Zone V', 25, 350.00, 1, 'Active', '2025-03-02', 'Decorative environment'),
(23, 1, 'Rabbit House', 'Cage', 'Zone W', 40, 200.00, 0, 'Active', '2025-03-04', 'Kids friendly enclosure'),
(24, 1, 'Panda Enclosure', 'Cage', 'Zone X', 4, 500.00, 1, 'Active', '2025-03-06', 'Bamboo forest habitat'),
(25, 1, 'Koala Enclosure', 'Cage', 'Zone Y', 6, 350.00, 1, 'Active', '2025-03-08', 'Eucalyptus trees included'),
(26, 1, 'Hippopotamus Enclosure', 'OpenField', 'Zone Z', 6, 1000.00, 0, 'Active', '2025-03-10', 'Large water pool'),
(27, 1, 'Rhinoceros Enclosure', 'OpenField', 'Zone AA', 5, 950.00, 0, 'Active', '2025-03-12', 'Mud wallows included'),
(28, 1, 'Leopard Enclosure', 'Cage', 'Zone AB', 4, 280.00, 0, 'Active', '2025-03-14', 'High security fencing'),
(29, 1, 'Parakeet Aviary', 'Aviary', 'Zone AC', 70, 300.00, 1, 'Active', '2025-03-16', 'Colorful small birds'),
(30, 1, 'Cheetah Enclosure', 'Cage', 'Zone AD', 6, 350.00, 0, 'Active', '2025-03-18', 'High speed run area')
GO



INSERT INTO Vendors
(
    VendorID, VendorName, ContactName, PhoneNumber, Email, Address, City, Country,
    VendorType, ContractStartDate, ContractEndDate, PaymentTerms,
    BankAccountDetails, TaxID, Status, Note, Reference
)
VALUES
(1, 'Green Agro Supplies', 'Rahim Uddin', '01860000001', 'greenagro@vendor.com', 'Uttara Sector 12', 'Dhaka', 'Bangladesh',
 'Local', '2025-01-01', '2026-01-01', 'Net30', 'DBBL-ACC-1001', 'TAX2001', 'Active', 'Organic fertilizers supplier', 102),
(2, 'Sunshine Traders', 'Karim Hossain', '01860000002', 'sunshine@vendor.com', 'Banani Block E', 'Dhaka', 'Bangladesh',
 'Distributor', '2025-01-05', '2026-01-05', 'Net60', 'IBBL-ACC-2002', 'TAX2002', 'Active', 'Wholesale distributor of seeds', 112),
(3, 'Dreamland Imports', 'Nasrin Akter', '01860000003', 'dreamland@vendor.com', 'Agrabad', 'Chittagong', 'Bangladesh',
 'International', '2025-01-10', '2026-01-10', 'Advance', 'HSBC-ACC-3003', 'TAX2003', 'Active', 'Imports exotic plants', 102),
(4, 'River View Suppliers', 'Imran Ali', '01860000004', 'riverview@vendor.com', 'Shib Bari Road', 'Khulna', 'Bangladesh',
 'Supplier', '2025-01-15', '2026-01-15', 'OnDelivery', 'SCB-ACC-4004', 'TAX2004', 'Active', 'Construction materials supplier', 109),
(5, 'Fantasy Foods Ltd', 'Sadia Jahan', '01860000005', 'fantasyfoods@vendor.com', 'Marine Drive Road', 'Coxs Bazar', 'Bangladesh',
 'Local', '2025-01-20', '2026-01-20', 'Net30', 'DBBL-ACC-5005', 'TAX2005', 'Active', 'Packaged foods supplier', 102),
(6, 'Heritage Textiles', 'Rashed Khan', '01860000006', 'heritage@vendor.com', 'Padma Riverside', 'Rajshahi', 'Bangladesh',
 'Supplier', '2025-01-25', '2026-01-25', 'Net60', 'IBBL-ACC-6006', 'TAX2006', 'Active', 'Uniforms and fabrics supplier', 112),
(7, 'Skyline Electronics', 'Farzana Rahman', '01860000007', 'skyline@vendor.com', 'Shahjadpur', 'Dhaka', 'Bangladesh',
 'International', '2025-01-30', '2026-01-30', 'Advance', 'HSBC-ACC-7007', 'TAX2007', 'Active', 'Imports electronic equipment', 102),
(8, 'Golden Furniture', 'Kamrul Hasan', '01860000008', 'golden@vendor.com', 'Agrabad', 'Chittagong', 'Bangladesh',
 'Distributor', '2025-02-01', '2026-02-01', 'Net30', 'SCB-ACC-8008', 'TAX2008', 'Active', 'Office furniture supplier', 109),
(9, 'Oceanic Fish Supply', 'Yusuf Hossain', '01860000009', 'oceanic@vendor.com', 'Patenga Beach Road', 'Chittagong', 'Bangladesh',
 'Supplier', '2025-02-05', '2026-02-05', 'OnDelivery', 'DBBL-ACC-9009', 'TAX2009', 'Active', 'Fresh fish supplier', 112),
(10, 'Shamima Agro Ltd', 'Shamima Akter', '01860000010', 'shamima@vendor.com', 'Noakhali Town', 'Noakhali', 'Bangladesh',
 'Local', '2025-02-10', '2026-02-10', 'Net30', 'IBBL-ACC-1010', 'TAX2010', 'Active', 'Agro products supplier', 102),
(11, 'Wahid Construction', 'Abdul Wahid', '01860000011', 'wahid@vendor.com', 'Kushtia Sadar', 'Kushtia', 'Bangladesh',
 'Supplier', '2025-02-15', '2026-02-15', 'Net60', 'HSBC-ACC-1111', 'TAX2011', 'Active', 'Building materials supplier', 109),
(12, 'Jannat Pharmaceuticals', 'Jannat Ara', '01860000012', 'jannat@vendor.com', 'Mymensingh Road', 'Mymensingh', 'Bangladesh',
 'Distributor', '2025-02-20', '2026-02-20', 'Advance', 'SCB-ACC-1212', 'TAX2012', 'Active', 'Medicine supplier', 102),
(13, 'Mahmudul Steel Works', 'Mahmudul Hasan', '01860000013', 'mahmudul@vendor.com', 'Jessore Town', 'Jessore', 'Bangladesh',
 'Local', '2025-02-25', '2026-02-25', 'Net30', 'DBBL-ACC-1313', 'TAX2013', 'Active', 'Steel structures supplier', 112),
(14, 'Rokeya Stationery', 'Rokeya Sultana', '01860000014', 'rokeya@vendor.com', 'Pabna City', 'Pabna', 'Bangladesh',
 'Supplier', '2025-03-01', '2026-03-01', 'OnDelivery', 'IBBL-ACC-1414', 'TAX2014', 'Active', 'Office stationery supplier', 102),
(15, 'Shahidul Logistics', 'Shahidul Islam', '01860000015', 'shahidul@vendor.com', 'Sylhet Sadar', 'Sylhet', 'Bangladesh',
 'International', '2025-03-05', '2026-03-05', 'Net60', 'HSBC-ACC-1515', 'TAX2015', 'Active', 'Transport services provider', 109)
 GO



 INSERT INTO Products 
 (
    ProductID, SourceTable, ProductName, Description, UnitPrice,
    StockQuantity, ReorderLevel, ExpiryDate, VendorID, AddedBy
)
VALUES
(201, 'FishSales', 'Rohu Fish', 'Freshwater Rohu fish', 350.00, 120, 20, '2025-12-31', 9, 102),
(202, 'FishSales', 'Catla Fish', 'Large Catla fish', 400.00, 80, 15, '2025-12-30', 9, 109),
(203, 'FishSales', 'Tilapia', 'Farmed Tilapia fish', 280.00, 150, 25, '2025-12-25', 9, 112),
(204, 'FruitSales', 'Apple', 'Imported red apples', 180.00, 200, 30, '2025-12-20', 3, 102),
(205, 'FruitSales', 'Banana', 'Local bananas', 60.00, 300, 50, '2025-12-15', 5, 109),
(206, 'FruitSales', 'Orange', 'Seasonal oranges', 120.00, 250, 40, '2025-12-18', 1, 112),
(207, 'ShopSales', 'Rice Bag', '25kg premium rice', 1200.00, 100, 20, NULL, 4, 102),
(208, 'ShopSales', 'Wheat Flour', '10kg wheat flour pack', 550.00, 150, 30, NULL, 4, 109),
(209, 'ShopSales', 'Cooking Oil', '5L sunflower oil', 750.00, 80, 15, '2026-01-15', 5, 112),
(210, 'ShopSales', 'Sugar', '5kg refined sugar', 400.00, 120, 25, NULL, 13, 102),
(211, 'ShopSales', 'Salt', '2kg iodized salt', 80.00, 200, 40, NULL, 14, 109),
(212, 'ShopSales', 'Tea Pack', '500g premium tea', 300.00, 90, 20, '2026-02-01', 12, 112),
(213, 'ShopSales', 'Stationery Set', 'Pens, pencils, notebooks', 150.00, 300, 50, NULL, 14, 102),
(214, 'ShopSales', 'Uniform', 'Staff uniform set', 600.00, 60, 10, NULL, 6, 109),
(215, 'ShopSales', 'Medicine Kit', 'Basic first aid medicines', 950.00, 40, 10, '2026-03-01', 12, 112),
(216, 'FishSales', 'Hilsa Fish', 'Premium river Hilsa', 950.00, 60, 10, '2025-12-31', 9, 102),
(217, 'FishSales', 'Prawn', 'Freshwater prawns', 700.00, 90, 15, '2025-12-28', 9, 109),
(218, 'FishSales', 'Crab', 'Live mud crabs', 600.00, 50, 10, '2025-12-29', 9, 112),
(219, 'FruitSales', 'Mango', 'Seasonal mangoes', 150.00, 200, 30, '2025-06-30', 1, 102),
(220, 'FruitSales', 'Papaya', 'Local papayas', 80.00, 180, 25, '2025-07-15', 5, 109),
(221, 'FruitSales', 'Pineapple', 'Sylhet pineapples', 100.00, 160, 20, '2025-07-20', 3, 112),
(222, 'ShopSales', 'Milk Powder', '1kg full cream milk powder', 550.00, 120, 20, '2026-01-10', 5, 102),
(223, 'ShopSales', 'Biscuits', '500g assorted biscuits', 200.00, 250, 40, '2026-02-01', 5, 109),
(224, 'ShopSales', 'Soft Drinks', '2L cola bottles', 120.00, 300, 50, '2026-03-01', 5, 112),
(225, 'ShopSales', 'Detergent Powder', '2kg washing powder', 350.00, 150, 25, NULL, 6, 102),
(226, 'ShopSales', 'Shampoo', '500ml herbal shampoo', 400.00, 100, 20, '2026-04-01', 6, 109),
(227, 'ShopSales', 'Toothpaste', '200g fluoride toothpaste', 150.00, 180, 30, '2026-05-01', 6, 112),
(228, 'ShopSales', 'Notebook Pack', '10 notebooks set', 250.00, 200, 40, NULL, 14, 102),
(229, 'ShopSales', 'Ball Pen Box', 'Box of 50 pens', 300.00, 150, 30, NULL, 14, 109),
(230, 'ShopSales', 'Printer Paper', '500 sheets A4 size', 450.00, 120, 20, NULL, 14, 112)
GO





INSERT INTO VendorProducts (VendorID, ProductID)
VALUES
(1, 206),			
(2, 202),			
(3, 204),			
(4, 207),			
(5, 205),			
(6, 214),			
(7, 207),			
(8, 213),			
(9, 201),			
(10, 210),			
(11, 211),			
(12, 212),			
(13, 210),			
(14, 213),			
(15, 215);			
GO





INSERT INTO Buyer 
(
    BuyerID, BuyerName, PhoneNumber, Email, Address, City, BuyerType,
    ProductID, PaymentMethod, PurchasedDate, Reference
)
VALUES
(1, 'Rahim Uddin', '01741000001', 'rahim@buyer.com', 'Uttara Sector 12', 'Dhaka', 'Retail',
 201, 'Cash', '2025-01-05', 109),
(2, 'Karim Hossain', '01741000002', 'karim@buyer.com', 'Banani Block E', 'Dhaka', 'Wholesale',
 202, 'Bank', '2025-01-06', 102),
(3, 'Nasrin Akter', '01741000003', 'nasrin@buyer.com', 'Agrabad', 'Chittagong', 'Corporate',
 203, 'MobileBanking', '2025-01-07', 112),
(4, 'Imran Ali', '01741000004', 'imran@buyer.com', 'Shib Bari Road', 'Khulna', 'Retail',
 204, 'Cash', '2025-01-08', 109),
(5, 'Sadia Jahan', '01741000005', 'sadia@buyer.com', 'Hazrat Shahjalal Road', 'Sylhet', 'Retail',
 205, 'Bank', '2025-01-09', 102),
(6, 'Rashed Khan', '01741000006', 'rashed@buyer.com', 'Marine Drive Road', 'Coxs Bazar', 'Wholesale',
 206, 'Cash', '2025-01-10', 112),
(7, 'Farzana Rahman', '01741000007', 'farzana@buyer.com', 'Padma Riverside', 'Rajshahi', 'Corporate',
 207, 'Bank', '2025-01-11', 102),
(8, 'Kamrul Hasan', '01741000008', 'kamrul@buyer.com', 'Shahjadpur', 'Dhaka', 'Retail',
 208, 'MobileBanking', '2025-01-12', 109),
(9, 'Yusuf Hossain', '01741000009', 'yusuf@buyer.com', 'Patenga Beach Road', 'Chittagong', 'Wholesale',
 209, 'Cash', '2025-01-13', 112),
(10, 'Shamima Akter', '01741000010', 'shamima@buyer.com', 'Noakhali Town', 'Noakhali', 'Corporate',
 210, 'Bank', '2025-01-14', 102),
(11, 'Abdul Wahid', '01741000011', 'wahid@buyer.com', 'Kushtia Sadar', 'Kushtia', 'Retail',
 211, 'Cash', '2025-01-15', 109),
(12, 'Jannat Ara', '01741000012', 'jannat@buyer.com', 'Mymensingh Road', 'Mymensingh', 'Retail',
 212, 'MobileBanking', '2025-01-16', 102),
(13, 'Mahmudul Hasan', '01741000013', 'mahmud@buyer.com', 'Jessore Town', 'Jessore', 'Wholesale',
 213, 'Bank', '2025-01-17', 112),
(14, 'Rokeya Sultana', '01741000014', 'rokeya@buyer.com', 'Pabna City', 'Pabna', 'Corporate',
 214, 'Cash', '2025-01-18', 102),
(15, 'Shahidul Islam', '01741000015', 'shahidul@buyer.com', 'Sylhet Sadar', 'Sylhet', 'Retail',
 215, 'Bank', '2025-01-19', 109)
 GO




 INSERT INTO Zoo 
 (
    ZooID, ParkID, ZooName, Location, AreaSize, EstablishedDate, TotalSection,
    TotalAnimals, VisitorCapacity, OpeningTime, ClosingTime, TicketRequired,
    TicketPrice, MaintenanceStatus, VeterinaryStaffCount, EmergencyContact,
    SupervisorID, EnclosureID
)
VALUES
(1, 1, 'Safari Zoo', 'Zone A', 1200.00, '2005-03-15', 5, 150, 2000, '09:00', '18:00', 1, 200.00, 'Active', 12, '01770000001', 102, 1),
(2, 1, 'Bird Park', 'Zone B', 400.00, '2010-05-20', 3, 80, 1000, '08:30', '17:30', 1, 100.00, 'Active', 8, '01770000002', 109, 2),
(3, 1, 'Aquarium Zoo', 'Zone C', 600.00, '2012-07-10', 4, 200, 1500, '09:00', '19:00', 1, 150.00, 'Active', 10, '01770000003', 112, 6),
(4, 1, 'Reptile House Zoo', 'Zone D', 300.00, '2008-09-05', 2, 60, 800, '09:30', '17:00', 1, 80.00, 'Active', 6, '01770000004', 102, 5),
(5, 1, 'Elephant Safari Zoo', 'Zone E', 1500.00, '2000-01-01', 3, 25, 1200, '08:00', '16:00', 1, 250.00, 'Active', 5, '01770000005', 109, 3),
(6, 1, 'Monkey World Zoo', 'Zone F', 350.00, '2015-04-12', 2, 40, 900, '09:00', '17:30', 1, 90.00, 'Active', 4, '01770000006', 112, 7),
(7, 1, 'Penguin House Zoo', 'Zone G', 500.00, '2018-06-18', 2, 30, 700, '10:00', '18:00', 1, 120.00, 'Active', 6, '01770000007', 102, 10),
(8, 1, 'Crocodile Park Zoo', 'Zone H', 450.00, '2007-11-25', 2, 20, 600, '09:00', '17:00', 1, 110.00, 'Active', 5, '01770000008', 109, 11),
(9, 1, 'Kangaroo Valley Zoo', 'Zone I', 800.00, '2011-02-14', 3, 15, 500, '08:30', '16:30', 1, 130.00, 'Active', 4, '01770000009', 112, 12),
(10, 1, 'Snake World Zoo', 'Zone J', 250.00, '2013-08-08', 2, 50, 700, '09:00', '17:00', 1, 70.00, 'Active', 6, '01770000010', 102, 13),
(11, 1, 'Parrot Paradise Zoo', 'Zone K', 300.00, '2016-12-01', 2, 40, 600, '09:00', '17:30', 1, 100.00, 'Active', 5, '01770000011', 109, 14),
(12, 1, 'Bear Cave Zoo', 'Zone L', 600.00, '2009-03-03', 2, 12, 400, '08:00', '16:00', 1, 150.00, 'Active', 3, '01770000012', 112, 15),
(13, 1, 'Deer Park Zoo', 'Zone M', 700.00, '2014-05-05', 3, 20, 800, '09:00', '17:00', 1, 90.00, 'Active', 4, '01770000013', 102, 16),
(14, 1, 'Camel Desert Zoo', 'Zone N', 850.00, '2017-07-07', 2, 10, 500, '08:30', '16:30', 1, 140.00, 'Active', 3, '01770000014', 109, 17),
(15, 1, 'Flamingo Lake Zoo', 'Zone O', 550.00, '2019-09-09', 2, 60, 900, '09:00', '18:00', 1, 160.00, 'Active', 6, '01770000015', 112, 18)
GO




INSERT INTO Animal 
(
    AnimalID, ZooID, SpeciesName, CommonName, NickName, Gender, Age,
    DateOfBirth, ArrivalDate, Origin, EnclosureID, HealthStatus, LastCheckupDate,
    DietType, VeterinarianID, FeedingSchedule, BehaviorNotes, BreedingStatus,
    OffspringCount, PhotoURL
)
VALUES
(1, 1, 'Panthera leo', 'Lion', 'Simba', 'Male', 8, '2017-05-12', '2018-06-01', 'Africa', 1, 'Healthy', '2025-11-20',
 'Carnivore', 102, 'Twice Daily', 'Dominant male, social pride leader', 'Active', 3, 'https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg'),
(2, 2, 'Panthera tigris', 'Tiger', 'Sheru', 'Female', 6, '2019-03-10', '2020-01-15', 'India', 2, 'Healthy', '2025-11-18',
 'Carnivore', 109, 'Twice Daily', 'Aggressive, solitary hunter', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/5/56/Tiger_in_Ranthambhore.jpg'),
(3, 3, 'Elephas maximus', 'Elephant', 'Rani', 'Female', 25, '2000-07-01', '2005-03-10', 'Sri Lanka', 3, 'Healthy', '2025-11-10',
 'Herbivore', 112, 'Thrice Daily', 'Gentle giant, herd matriarch', 'Active', 2, 'https://upload.wikimedia.org/wikipedia/commons/3/37/Asian_elephant_-_Sri_Lanka.jpg'),
(4, 4, 'Giraffa camelopardalis', 'Giraffe', 'Longneck', 'Male', 12, '2013-09-15', '2014-05-20', 'Kenya', 8, 'Healthy', '2025-11-15',
 'Herbivore', 102, 'Twice Daily', 'Calm, enjoys tall trees', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Giraffe_standing.jpg'),
(5, 5, 'Psittacus erithacus', 'Parrot', 'Mithu', 'Male', 4, '2021-02-01', '2021-06-01', 'Brazil', 14, 'Healthy', '2025-11-05',
 'Herbivore', 109, 'Twice Daily', 'Talkative, colorful feathers', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/3/32/African_Grey_Parrot.jpg'),
(6, 6, 'Crocodylus niloticus', 'Crocodile', 'Jaws', 'Male', 15, '2010-04-12', '2012-07-01', 'Nile River', 11, 'Healthy', '2025-11-12',
 'Carnivore', 112, 'Daily', 'Aggressive, prefers water pools', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Nile_crocodile_head.jpg'),
(7, 7, 'Spheniscus demersus', 'Penguin', 'Pingu', 'Female', 7, '2018-01-01', '2019-03-01', 'South Africa', 10, 'Healthy', '2025-11-08',
 'Carnivore', 102, 'Twice Daily', 'Playful, swims often', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/0/0f/African_penguin_-_Boulders_Beach.jpg'),
(8, 8, 'Macropus rufus', 'Kangaroo', 'Joey', 'Male', 5, '2020-05-05', '2021-01-01', 'Australia', 12, 'Healthy', '2025-11-02',
 'Herbivore', 109, 'Twice Daily', 'Energetic, jumps frequently', 'Active', 1, 'https://upload.wikimedia.org/wikipedia/commons/0/0c/Red_kangaroo_-_male.jpg'),
(9, 9, 'Python bivittatus', 'Python', 'Nagini', 'Female', 10, '2015-06-06', '2016-02-01', 'Myanmar', 13, 'Healthy', '2025-11-01',
 'Carnivore', 112, 'Weekly', 'Calm, prefers dark corners', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Burmese_python.jpg'),
(10, 10, 'Ursus arctos', 'Bear', 'Bhalu', 'Male', 14, '2011-08-08', '2012-05-01', 'Russia', 15, 'Healthy', '2025-11-03',
 'Omnivore', 102, 'Twice Daily', 'Strong, enjoys water pond', 'Active', 2, 'https://upload.wikimedia.org/wikipedia/commons/0/0b/Brown_bear_in_forest.jpg'),
(11, 11, 'Cervus elaphus', 'Deer', 'Chand', 'Male', 6, '2019-09-09', '2020-04-01', 'Bangladesh', 16, 'Healthy', '2025-11-06',
 'Herbivore', 109, 'Twice Daily', 'Calm, grazes often', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Red_deer_stag.jpg'),
(12, 12, 'Camelus dromedarius', 'Camel', 'Desert King', 'Male', 9, '2016-07-07', '2017-02-01', 'Saudi Arabia', 17, 'Healthy', '2025-11-07',
 'Herbivore', 112, 'Daily', 'Adapted to desert habitat', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dromedary_camel.jpg'),
(13, 13, 'Phoenicopterus roseus', 'Flamingo', 'Pinkie', 'Female', 5, '2020-09-09', '2021-03-01', 'Kenya', 18, 'Healthy', '2025-11-09',
 'Herbivore', 102, 'Twice Daily', 'Social, enjoys shallow water', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Greater_flamingo.jpg'),
(14, 14, 'Acinonyx jubatus', 'Cheetah', 'Speedy', 'Male', 6, '2019-11-11', '2020-06-01', 'South Africa', 30, 'Healthy', '2025-11-11',
 'Carnivore', 109, 'Twice Daily', 'Fast runner, solitary', 'Active', 1, 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Cheetah_in_South_Africa.jpg'),
(15, 15, 'Ara macao', 'Macaw', 'Rainbow', 'Female', 3, '2022-01-01', '2022-06-01', 'Brazil', 29, 'Healthy', '2025-11-04',
 'Herbivore', 112, 'Twice Daily', 'Colorful, playful bird', 'Inactive', 0, 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Scarlet_Macaw.jpg')
 GO




 INSERT INTO PlantSpecies 
 (
    PlantID, ParkID, ScientificName, CommonName, PlantType, Origin, Location, Age,
    DatePlanted, Height, Seasonality, FlowerColor, FruitType, FruitSeason,
    MedicinalUse, MaintenanceStatus, GardenerID, WateringSchedule, FertilizerSchedule,
    Notes, PhotoURL
)
VALUES
(1, 1, 'Azadirachta indica', 'Neem Tree', 'Tree', 'India', 'Zone A', 20, '2005-03-15', 12.5, 'Evergreen', NULL, NULL, NULL,
 'Used in Ayurveda for skin diseases', 'Healthy', 102, 'Weekly', 'Seasonal', 'Sacred medicinal tree', 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Neem_tree.jpg'),
(2, 1, 'Mangifera indica', 'Mango Tree', 'Tree', 'Bangladesh', 'Zone B', 15, '2010-05-20', 10.0, 'Deciduous', 'Yellow', 'Mango', 'Summer',
 'Rich in vitamins, fruit edible', 'Healthy', 109, 'Weekly', 'Seasonal', 'Popular fruit tree', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Mango_tree.jpg'),
(3, 1, 'Ocimum tenuiflorum', 'Tulsi', 'Herb', 'India', 'Zone C', 5, '2020-07-10', 0.8, 'Evergreen', 'Purple', NULL, NULL,
 'Medicinal herb for cold and cough', 'Healthy', 112, 'Daily', 'Monthly', 'Sacred herb in Hindu tradition', 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Tulsi_plant.jpg'),
(4, 1, 'Rosa indica', 'Rose', 'Flower', 'Iran', 'Zone D', 3, '2022-09-05', 1.2, 'Seasonal', 'Red', NULL, NULL,
 'Used in perfumes and herbal remedies', 'Healthy', 102, 'Daily', 'Monthly', 'Ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Red_rose.jpg'),
(5, 1, 'Hibiscus rosa-sinensis', 'Hibiscus', 'Flower', 'China', 'Zone E', 4, '2021-01-01', 1.5, 'Seasonal', 'Red', NULL, NULL,
 'Used in hair care and herbal tea', 'Healthy', 109, 'Daily', 'Monthly', 'Bright ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/1/1e/Hibiscus_flower.jpg'),
(6, 1, 'Ficus religiosa', 'Peepal Tree', 'Tree', 'India', 'Zone F', 50, '1980-04-12', 20.0, 'Evergreen', NULL, NULL, NULL,
 'Sacred tree, used in Ayurveda', 'Healthy', 112, 'Weekly', 'Seasonal', 'Large shade tree', 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Peepal_tree.jpg'),
(7, 1, 'Cocos nucifera', 'Coconut Tree', 'Tree', 'Bangladesh', 'Zone G', 25, '2000-06-18', 15.0, 'Evergreen', NULL, 'Coconut', 'Summer',
 'Fruit edible, oil extraction', 'Healthy', 102, 'Weekly', 'Seasonal', 'Common coastal tree', 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Coconut_tree.jpg'),
(8, 1, 'Carica papaya', 'Papaya', 'Shrub', 'Bangladesh', 'Zone H', 6, '2019-11-25', 3.0, 'Seasonal', NULL, 'Papaya', 'Summer',
 'Fruit edible, digestive aid', 'Healthy', 109, 'Weekly', 'Seasonal', 'Fast-growing fruit plant', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Papaya_tree.jpg'),
(9, 1, 'Syzygium cumini', 'Jamun Tree', 'Tree', 'India', 'Zone I', 18, '2007-02-14', 9.0, 'Deciduous', NULL, 'Jamun', 'Summer',
 'Fruit used for diabetes treatment', 'Healthy', 112, 'Weekly', 'Seasonal', 'Popular fruit tree', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Jamun_tree.jpg'),
(10, 1, 'Nelumbo nucifera', 'Lotus', 'Flower', 'India', 'Zone J', 2, '2023-08-08', 0.5, 'Seasonal', 'Pink', NULL, NULL,
 'Sacred flower, used in Ayurveda', 'Healthy', 102, 'Daily', 'Monthly', 'National flower of India', 'https://upload.wikimedia.org/wikipedia/commons/0/0d/Lotus_flower.jpg'),
(11, 1, 'Zingiber officinale', 'Ginger', 'Herb', 'Bangladesh', 'Zone K', 3, '2022-12-01', 0.6, 'Seasonal', NULL, NULL, NULL,
 'Medicinal herb for digestion', 'Healthy', 109, 'Daily', 'Monthly', 'Common spice plant', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Ginger_plant.jpg'),
(12, 1, 'Curcuma longa', 'Turmeric', 'Herb', 'India', 'Zone L', 4, '2021-03-03', 0.7, 'Seasonal', NULL, NULL, NULL,
 'Medicinal herb, anti-inflammatory', 'Healthy', 112, 'Daily', 'Monthly', 'Spice and medicinal plant', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Turmeric_plant.jpg'),
(13, 1, 'Bougainvillea glabra', 'Bougainvillea', 'Shrub', 'Brazil', 'Zone M', 7, '2018-05-05', 2.5, 'Seasonal', 'Pink', NULL, NULL,
 'Ornamental plant, used for decoration', 'Healthy', 102, 'Weekly', 'Seasonal', 'Climbing ornamental shrub', 'https://upload.wikimedia.org/wikipedia/commons/5/5d/Bougainvillea.jpg'),
(14, 1, 'Catharanthus roseus', 'Periwinkle', 'Flower', 'Madagascar', 'Zone N', 3, '2022-07-07', 0.4, 'Seasonal', 'Pink', NULL, NULL,
 'Medicinal plant for cancer treatment', 'Healthy', 109, 'Daily', 'Monthly', 'Ornamental medicinal flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Catharanthus_roseus.jpg'),
(15, 1, 'Bamboo vulgaris', 'Bamboo', 'Shrub', 'Bangladesh', 'Zone O', 12, '2013-09-09', 8.0, 'Evergreen', NULL, NULL, NULL,
 'Used in construction and crafts', 'Healthy', 112, 'Weekly', 'Seasonal', 'Fast-growing woody grass', 'https://upload.wikimedia.org/wikipedia/commons/2/2d/Bamboo_forest.jpg'),
(16, 1, 'Terminalia arjuna', 'Arjun Tree', 'Tree', 'India', 'Zone P', 25, '2000-01-01', 18.0, 'Deciduous', NULL, NULL, NULL,
 'Used in heart disease treatment', 'Healthy', 102, 'Weekly', 'Seasonal', 'Medicinal tree', 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Terminalia_arjuna_tree.jpg'),
(17, 1, 'Moringa oleifera', 'Drumstick Tree', 'Tree', 'India', 'Zone Q', 12, '2013-05-10', 10.0, 'Deciduous', 'White', 'Drumstick', 'Winter',
 'Leaves rich in vitamins, medicinal uses', 'Healthy', 109, 'Weekly', 'Seasonal', 'Nutrient-rich plant', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Moringa_tree.jpg'),
(18, 1, 'Aloe vera', 'Aloe Vera', 'Herb', 'Arabian Peninsula', 'Zone R', 6, '2019-03-15', 0.6, 'Evergreen', NULL, NULL, NULL,
 'Used for skin care and digestion', 'Healthy', 112, 'Daily', 'Monthly', 'Medicinal succulent plant', 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Aloe_vera.jpg'),
(19, 1, 'Jasminum sambac', 'Jasmine', 'Flower', 'India', 'Zone S', 4, '2021-04-01', 1.0, 'Seasonal', 'White', NULL, NULL,
 'Used in perfumes and herbal tea', 'Healthy', 102, 'Daily', 'Monthly', 'Fragrant flower plant', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Jasmine_flower.jpg'),
(20, 1, 'Nelumbo lutea', 'Yellow Lotus', 'Flower', 'USA', 'Zone T', 3, '2022-06-01', 0.5, 'Seasonal', 'Yellow', NULL, NULL,
 'Ornamental aquatic flower', 'Healthy', 109, 'Daily', 'Monthly', 'Rare lotus species', 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Yellow_lotus.jpg'),
(21, 1, 'Lawsonia inermis', 'Henna Plant', 'Shrub', 'Egypt', 'Zone U', 8, '2017-07-01', 2.0, 'Seasonal', 'White', NULL, NULL,
 'Leaves used for dye and medicine', 'Healthy', 112, 'Weekly', 'Seasonal', 'Traditional dye plant', 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Henna_plant.jpg'),
(22, 1, 'Camellia sinensis', 'Tea Plant', 'Shrub', 'China', 'Zone V', 10, '2015-08-01', 2.5, 'Evergreen', 'White', NULL, NULL,
 'Leaves used for tea production', 'Healthy', 102, 'Weekly', 'Seasonal', 'Commercial tea plant', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Tea_plant.jpg'),
(23, 1, 'Capsicum annuum', 'Chili Plant', 'Herb', 'Mexico', 'Zone W', 2, '2023-01-01', 0.8, 'Seasonal', 'White', 'Chili', 'Summer',
 'Fruit used as spice', 'Healthy', 109, 'Daily', 'Monthly', 'Spicy fruit plant', 'https://upload.wikimedia.org/wikipedia/commons/7/7c/Chili_plant.jpg'),
(24, 1, 'Allium cepa', 'Onion Plant', 'Herb', 'Iran', 'Zone X', 3, '2022-02-01', 0.7, 'Seasonal', NULL, 'Onion', 'Winter',
 'Bulb used in cooking and medicine', 'Healthy', 112, 'Daily', 'Monthly', 'Common vegetable plant', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Onion_plant.jpg'),
(25, 1, 'Solanum lycopersicum', 'Tomato Plant', 'Herb', 'South America', 'Zone Y', 2, '2023-03-01', 1.2, 'Seasonal', 'Yellow', 'Tomato', 'Summer',
 'Fruit edible, rich in vitamins', 'Healthy', 102, 'Daily', 'Monthly', 'Popular vegetable plant', 'https://upload.wikimedia.org/wikipedia/commons/4/47/Tomato_plant.jpg'),
(26, 1, 'Citrus limon', 'Lemon Tree', 'Tree', 'India', 'Zone Z', 7, '2018-04-01', 3.5, 'Seasonal', 'White', 'Lemon', 'Winter',
 'Fruit used for vitamin C and digestion', 'Healthy', 109, 'Weekly', 'Seasonal', 'Fruit-bearing tree', 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Lemon_tree.jpg'),
(27, 1, 'Punica granatum', 'Pomegranate Tree', 'Tree', 'Iran', 'Zone AA', 12, '2013-05-01', 4.0, 'Deciduous', 'Red', 'Pomegranate', 'Summer',
 'Fruit edible, medicinal properties', 'Healthy', 112, 'Weekly', 'Seasonal', 'Fruit tree with medicinal use', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Pomegranate_tree.jpg'),
(28, 1, 'Ananas comosus', 'Pineapple Plant', 'Shrub', 'Brazil', 'Zone AB', 5, '2020-06-01', 1.0, 'Seasonal', NULL, 'Pineapple', 'Summer',
 'Fruit edible, digestive aid', 'Healthy', 102, 'Weekly', 'Seasonal', 'Tropical fruit plant', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Pineapple_plant.jpg'),
(29, 1, 'Coffea arabica', 'Coffee Plant', 'Shrub', 'Ethiopia', 'Zone AC', 9, '2016-07-01', 2.0, 'Evergreen', 'White', 'Coffee Beans', 'Winter',
 'Seeds used for coffee beverage', 'Healthy', 109, 'Weekly', 'Seasonal', 'Commercial beverage plant', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Coffee_plant.jpg'),
(30, 1, 'Saccharum officinarum', 'Sugarcane', 'Shrub', 'Bangladesh', 'Zone AD', 6, '2019-08-01', 3.0, 'Seasonal', NULL, NULL, NULL,
 'Used for sugar production', 'Healthy', 112, 'Weekly', 'Seasonal', 'Cash crop plant', 'https://upload.wikimedia.org/wikipedia/commons/2/2d/Sugarcane_field.jpg')
 GO




 INSERT INTO FlowerPlant 
 (
    FlowerID, ParkID, ScientificName, FlowerType, CommonName, Origin, Location,
    DatePlanted, BloomSeason, FlowerColor, Fragrance, Height, MedicinalUse,
    MaintenanceStatus, GardenerID, WaterSchedule, FertilizerSchedule, Notes, PhotoURL
)
VALUES
(1, 1, 'Rosa indica', 'Perennial', 'Rose', 'Iran', 'Zone A', '2022-03-15', 'Spring', 'Red', 'Strong', 1.2,
 'Used in perfumes and herbal remedies', 'Healthy', 102, 'Daily', 'Monthly', 'Ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/3/3d/Red_rose.jpg'),
(2, 1, 'Tulipa gesneriana', 'Annual', 'Tulip', 'Turkey', 'Zone B', '2023-02-10', 'Spring', 'Yellow', 'Mild', 0.6,
 'Ornamental flower, symbol of love', 'Healthy', 109, 'Daily', 'Monthly', 'Seasonal bulb flower', 'https://upload.wikimedia.org/wikipedia/commons/4/49/Yellow_tulip.jpg'),
(3, 1, 'Helianthus annuus', 'Annual', 'Sunflower', 'North America', 'Zone C', '2023-04-01', 'Summer', 'Yellow', 'None', 2.5,
 'Seeds edible, oil extraction', 'Healthy', 112, 'Weekly', 'Seasonal', 'Tall ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/4/40/Sunflower.jpg'),
(4, 1, 'Hibiscus rosa-sinensis', 'Seasonal', 'Hibiscus', 'China', 'Zone D', '2021-05-20', 'Summer', 'Red', 'Mild', 1.5,
 'Used in hair care and herbal tea', 'Healthy', 102, 'Daily', 'Monthly', 'Bright ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/1/1e/Hibiscus_flower.jpg'),
(5, 1, 'Nelumbo nucifera', 'Perennial', 'Lotus', 'India', 'Zone E', '2022-06-01', 'Summer', 'Pink', 'Mild', 0.5,
 'Sacred flower, used in Ayurveda', 'Healthy', 109, 'Daily', 'Monthly', 'National flower of India', 'https://upload.wikimedia.org/wikipedia/commons/0/0d/Lotus_flower.jpg'),
(6, 1, 'Jasminum sambac', 'Perennial', 'Jasmine', 'India', 'Zone F', '2021-07-01', 'Summer', 'White', 'Strong', 1.0,
 'Used in perfumes and herbal tea', 'Healthy', 112, 'Daily', 'Monthly', 'Fragrant flower plant', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Jasmine_flower.jpg'),
(7, 1, 'Tagetes erecta', 'Annual', 'Marigold', 'Mexico', 'Zone G', '2023-08-01', 'Autumn', 'Orange', 'Mild', 0.8,
 'Used in rituals and decoration', 'Healthy', 102, 'Daily', 'Monthly', 'Festival flower', 'https://upload.wikimedia.org/wikipedia/commons/4/4c/Marigold_flower.jpg'),
(8, 1, 'Lilium candidum', 'Perennial', 'Lily', 'Europe', 'Zone H', '2022-09-01', 'Summer', 'White', 'Strong', 1.5,
 'Ornamental flower, symbol of purity', 'Healthy', 109, 'Daily', 'Monthly', 'Sacred flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Lilium_candidum.jpg'),
(9, 1, 'Dahlia pinnata', 'Seasonal', 'Dahlia', 'Mexico', 'Zone I', '2023-03-01', 'Summer', 'Purple', 'Mild', 1.2,
 'Ornamental flower, decorative use', 'Healthy', 112, 'Daily', 'Monthly', 'Garden flower', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Dahlia_flower.jpg'),
(10, 1, 'Chrysanthemum morifolium', 'Seasonal', 'Chrysanthemum', 'China', 'Zone J', '2022-10-01', 'Autumn', 'Yellow', 'Mild', 1.0,
 'Used in herbal tea and decoration', 'Healthy', 102, 'Daily', 'Monthly', 'Festival flower', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Chrysanthemum_flower.jpg'),
(11, 1, 'Lavandula angustifolia', 'Perennial', 'Lavender', 'Mediterranean', 'Zone K', '2021-11-01', 'Summer', 'Purple', 'Strong', 0.9,
 'Used in aromatherapy and perfumes', 'Healthy', 109, 'Weekly', 'Monthly', 'Fragrant herb flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Lavender_flower.jpg'),
(12, 1, 'Nymphaea caerulea', 'Perennial', 'Blue Water Lily', 'Egypt', 'Zone L', '2022-12-01', 'Summer', 'Blue', 'Mild', 0.6,
 'Sacred aquatic flower', 'Healthy', 112, 'Daily', 'Monthly', 'Rare water flower', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Blue_water_lily.jpg'),
(13, 1, 'Petunia hybrida', 'Annual', 'Petunia', 'South America', 'Zone M', '2023-01-01', 'Spring', 'Pink', 'Mild', 0.5,
 'Ornamental flower, decorative use', 'Healthy', 102, 'Daily', 'Monthly', 'Colorful garden flower', 'https://upload.wikimedia.org/wikipedia/commons/5/5d/Petunia_flower.jpg'),
(14, 1, 'Viola tricolor', 'Annual', 'Pansy', 'Europe', 'Zone N', '2023-02-01', 'Spring', 'Purple', 'Mild', 0.4,
 'Ornamental flower, edible petals', 'Healthy', 109, 'Daily', 'Monthly', 'Winter garden flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Pansy_flower.jpg'),
(15, 1, 'Calendula officinalis', 'Annual', 'Calendula', 'Mediterranean', 'Zone O', '2023-03-01', 'Spring', 'Orange', 'Mild', 0.7,
 'Medicinal flower, used in skin care', 'Healthy', 112, 'Daily', 'Monthly', 'Medicinal ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Calendula_flower.jpg'),
(16, 1, 'Orchidaceae', 'Perennial', 'Orchid', 'Thailand', 'Zone P', '2022-04-01', 'Spring', 'Purple', 'Mild', 0.7,
 'Used in herbal medicine and decoration', 'Healthy', 102, 'Daily', 'Monthly', 'Exotic ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Orchid_flower.jpg'),
(17, 1, 'Narcissus pseudonarcissus', 'Annual', 'Daffodil', 'Europe', 'Zone Q', '2023-02-15', 'Spring', 'Yellow', 'Mild', 0.5,
 'Ornamental flower, symbol of rebirth', 'Healthy', 109, 'Daily', 'Monthly', 'Spring bulb flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Daffodil_flower.jpg'),
(18, 1, 'Gerbera jamesonii', 'Seasonal', 'Gerbera Daisy', 'South Africa', 'Zone R', '2023-03-01', 'Summer', 'Orange', 'Mild', 0.6,
 'Ornamental flower, decorative use', 'Healthy', 112, 'Daily', 'Monthly', 'Bright garden flower', 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Gerbera_flower.jpg'),
(19, 1, 'Carnation', 'Perennial', 'Carnation', 'Mediterranean', 'Zone S', '2022-05-01', 'Spring', 'Pink', 'Strong', 0.8,
 'Used in perfumes and decoration', 'Healthy', 102, 'Daily', 'Monthly', 'Fragrant ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/5/5c/Carnation_flower.jpg'),
(20, 1, 'Magnolia grandiflora', 'Perennial', 'Magnolia', 'USA', 'Zone T', '2021-06-01', 'Summer', 'White', 'Strong', 2.0,
 'Ornamental flower, used in herbal medicine', 'Healthy', 109, 'Weekly', 'Seasonal', 'Large fragrant flower', 'https://upload.wikimedia.org/wikipedia/commons/9/9c/Magnolia_flower.jpg'),
(21, 1, 'Camellia japonica', 'Perennial', 'Camellia', 'Japan', 'Zone U', '2022-07-01', 'Winter', 'Red', 'Mild', 1.5,
 'Ornamental flower, used in tea blends', 'Healthy', 112, 'Weekly', 'Seasonal', 'Winter blooming flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Camellia_flower.jpg'),
(22, 1, 'Zinnia elegans', 'Annual', 'Zinnia', 'Mexico', 'Zone V', '2023-08-01', 'Summer', 'Pink', 'None', 0.6,
 'Ornamental flower, decorative use', 'Healthy', 102, 'Daily', 'Monthly', 'Colorful garden flower', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Zinnia_flower.jpg'),
(23, 1, 'Iris germanica', 'Perennial', 'Iris', 'Europe', 'Zone W', '2022-09-01', 'Spring', 'Blue', 'Mild', 1.0,
 'Ornamental flower, symbol of royalty', 'Healthy', 109, 'Daily', 'Monthly', 'Elegant garden flower', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Iris_flower.jpg'),
(24, 1, 'Peony lactiflora', 'Perennial', 'Peony', 'China', 'Zone X', '2021-10-01', 'Spring', 'Pink', 'Strong', 1.2,
 'Used in traditional Chinese medicine', 'Healthy', 112, 'Weekly', 'Seasonal', 'Fragrant ornamental flower', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Peony_flower.jpg'),
(25, 1, 'Gladiolus communis', 'Seasonal', 'Gladiolus', 'South Africa', 'Zone Y', '2023-03-01', 'Summer', 'Red', 'Mild', 1.5,
 'Ornamental flower, decorative use', 'Healthy', 102, 'Daily', 'Monthly', 'Tall garden flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Gladiolus_flower.jpg'),
(26, 1, 'Lotus corniculatus', 'Perennial', 'Birdsfoot Trefoil', 'Europe', 'Zone Z', '2022-11-01', 'Summer', 'Yellow', 'None', 0.4,
 'Medicinal plant for cough treatment', 'Healthy', 109, 'Weekly', 'Seasonal', 'Ground cover flower', 'https://upload.wikimedia.org/wikipedia/commons/7/7a/Birdsfoot_trefoil.jpg'),
(27, 1, 'Phlox paniculata', 'Perennial', 'Phlox', 'USA', 'Zone AA', '2021-12-01', 'Summer', 'Purple', 'Mild', 0.9,
 'Ornamental flower, decorative use', 'Healthy', 112, 'Daily', 'Monthly', 'Garden flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6b/Phlox_flower.jpg'),
(28, 1, 'Cosmos bipinnatus', 'Annual', 'Cosmos', 'Mexico', 'Zone AB', '2023-01-01', 'Summer', 'Pink', 'Mild', 1.0,
 'Ornamental flower, decorative use', 'Healthy', 102, 'Daily', 'Monthly', 'Colorful garden flower', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Cosmos_flower.jpg'),
(29, 1, 'Anemone coronaria', 'Seasonal', 'Anemone', 'Mediterranean', 'Zone AC', '2022-02-01', 'Spring', 'Red', 'Mild', 0.6,
 'Ornamental flower, decorative use', 'Healthy', 109, 'Daily', 'Monthly', 'Spring blooming flower', 'https://upload.wikimedia.org/wikipedia/commons/6/6e/Anemone_flower.jpg'),
(30, 1, 'Hydrangea macrophylla', 'Perennial', 'Hydrangea', 'Japan', 'Zone AD', '2021-03-01', 'Summer', 'Blue', 'Mild', 1.5,
 'Ornamental flower, decorative use', 'Healthy', 112, 'Weekly', 'Seasonal', 'Popular garden flower', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Hydrangea_flower.jpg')
 GO




 INSERT INTO ParkingArea 
 (
    ParkingAreaID, ParkID, AreaName, Location, Capacity, AvailableSlots,
    VehicleTypeAllowed, EntryGate, ExitGate, OperatingHours, ParkingFee,
    SupervisorID, MaintenanceStatus, Note
)
VALUES
(1, 1, 'Main Parking', 'North Zone', 200, 50, 'Car', 'Gate A', 'Gate B', '08:00-22:00', 50.00,
 102, 'Active', 'General visitor parking area'),
(2, 1, 'VIP Parking', 'East Zone', 50, 10, 'Car', 'Gate C', 'Gate D', '08:00-22:00', 100.00,
 109, 'Active', 'Reserved for VIP guests'),
(3, 1, 'Staff Parking', 'West Zone', 80, 20, 'Bike', 'Gate E', 'Gate F', '07:00-20:00', 20.00,
 112, 'Active', 'Parking for staff and employees'),
(4, 1, 'Emergency Parking', 'South Zone', 30, 5, 'Ambulance', 'Gate G', 'Gate H', '24 Hours', 0.00,
 102, 'Active', 'Reserved for emergency vehicles'),
(5, 1, 'Bus Parking', 'Central Zone', 40, 8, 'Bus', 'Gate I', 'Gate J', '08:00-22:00', 150.00,
 109, 'Active', 'Parking for school and tourist buses'),
(6, 1, 'Bike Parking', 'Near Gate K', 100, 25, 'Bike', 'Gate K', 'Gate L', '08:00-22:00', 10.00,
 112, 'Active', 'Dedicated parking for motorcycles')
 GO




 INSERT INTO Mosque
(
    MosqueID, ParkID, MosqueName, Location, AreaSize, Capacity, EstablishedDate,
    ImamID, MuazzinID, Facilities, FridayPrayerCapacity, SpecialEvents,
    MaintenanceStatus, SupervisorID, EmergencyContact
)
VALUES
(1, 1, 'Central Park Mosque', 'North Zone', 1200.00, 800, '2005-03-15',
 102, 109, 'Ablution Area, Library, Air Conditioning', 1200, 'Eid Prayers, Ramadan Taraweeh',
 'Active', 112, '01770000001'),
(2, 1, 'Riverside Mosque', 'East Zone', 800.00, 500, '2010-06-20',
 109, 112, 'Ablution Area, Quran Study Hall', 700, 'Eid Prayers, Nikah Ceremonies',
 'Active', 102, '01770000002')
 GO



 INSERT INTO FishFarms 
 (
    FishFarmID, ParkID, Location, AreaSize, WaterSource, StockingDate,
    InitialQuantity, CurrentQuantity, AverageWeight, FeedingSchedule, FeedType,
    HealthStatus, LastCheckupDate, VeterinarianID, HarvestDate, ProductionOutput,
    SupervisorID, MaintenanceStatus, Note
)
VALUES
(1, 1, 'North Pond', 500.00, 'Pond', '2025-01-05', 2000, 1800, 1.2,
 'Twice Daily', 'Pellet', 'Healthy', '2025-11-20', 102, '2025-12-15', 2100.00,
 109, 'Active', 'Tilapia stocked, good growth'),
(2, 1, 'East Lake', 800.00, 'Lake', '2025-02-10', 3000, 2800, 1.5,
 'Daily', 'Mixed', 'Healthy', '2025-11-18', 109, '2025-12-20', 3500.00,
 112, 'Active', 'Carp and Catla mixed culture'),
(3, 1, 'South River Farm', 600.00, 'River', '2025-03-01', 2500, 2400, 1.3,
 'Twice Daily', 'Natural', 'Healthy', '2025-11-15', 112, '2025-12-25', 2800.00,
 102, 'Active', 'River-fed farm, fast growth'),
(4, 1, 'West Reservoir', 700.00, 'Reservoir', '2025-04-12', 2200, 2000, 1.1,
 'Daily', 'Pellet', 'Healthy', '2025-11-10', 102, '2025-12-30', 2300.00,
 109, 'Active', 'Mixed species, reservoir-based'),
(5, 1, 'Central Aquaculture Zone', 1000.00, 'Tube-Well', '2025-05-20', 4000, 3700, 1.4,
 'Thrice Daily', 'Pellet', 'Healthy', '2025-11-08', 109, '2026-01-05', 4200.00,
 112, 'Active', 'High-density aquaculture system'),
(6, 1, 'Eco Pond', 450.00, 'Pond', '2025-06-15', 1500, 1400, 1.0,
 'Daily', 'Natural', 'Healthy', '2025-11-05', 112, '2026-01-10', 1600.00,
 102, 'Active', 'Organic fish farming')
 GO






INSERT INTO FishSales 
(
    FishSalesID, FishFarmID, FishName, QuantitySold, UnitPrice, SaleDate,
    BuyerID, PaymentStatus, PaymentMethod, ReferenceNo, DeliveryStatus,
    DeliveryDate, DiscountApplied, IssuedBy, Note
)
VALUES
(1, 1, 'Rohu', 200, 180.00, '2025-11-01', 1, 'Paid', 'Cash', 'INV-1001', 'Delivered', '2025-11-02', 5.00, 'Employee-102', 'Bulk Rohu sale to retail buyer'),
(2, 2, 'Catla', 150, 200.00, '2025-11-02', 2, 'Paid', 'Bank', 'INV-1002', 'Delivered', '2025-11-03', 0.00, 'Employee-109', 'Wholesale Catla order'),
(3, 3, 'Tilapia', 300, 160.00, '2025-11-03', 3, 'Pending', 'MobileBanking', 'INV-1003', 'Pending', NULL, 10.00, 'Employee-112', 'Corporate buyer order'),
(4, 4, 'Pangas', 250, 140.00, '2025-11-04', 4, 'Paid', 'Cash', 'INV-1004', 'Delivered', '2025-11-05', 0.00, 'Employee-102', 'Retail Pangas sale'),
(5, 5, 'Carp', 180, 175.00, '2025-11-05', 5, 'Paid', 'Bank', 'INV-1005', 'Delivered', '2025-11-06', 5.00, 'Employee-109', 'Corporate Carp order'),
(6, 6, 'Silver Carp', 220, 170.00, '2025-11-06', 6, 'Paid', 'Cash', 'INV-1006', 'Delivered', '2025-11-07', 0.00, 'Employee-112', 'Community buyer purchase'),
(7, 1, 'Mrigal', 140, 185.00, '2025-11-07', 7, 'Pending', 'Bank', 'INV-1007', 'Pending', NULL, 0.00, 'Employee-102', 'Wholesale Mrigal order'),
(8, 2, 'Shrimp', 100, 300.00, '2025-11-08', 8, 'Paid', 'MobileBanking', 'INV-1008', 'Delivered', '2025-11-09', 15.00, 'Employee-109', 'Shrimp sale to Dhaka buyer'),
(9, 3, 'Hilsa', 80, 500.00, '2025-11-09', 9, 'Paid', 'Cash', 'INV-1009', 'Delivered', '2025-11-10', 0.00, 'Employee-112', 'Premium Hilsa sale')
GO





INSERT INTO FruitGarden 
(
    FruitGardenID, ParkID, GardenName, Location, AreaSize, FruitsName, ScientificName,
    PlantType, DatePlanted, Age, FruitSeason, AverageYield, TotalYield, HarvestDate,
    SoilType, FertilizerSchedule, HealthStatus, GardenerID, MaintenanceStatus, Notes, PhotoURL
)
VALUES
(1, 1, 'Mango Orchard', 'North Zone', 1200.00, 'Mango', 'Mangifera indica', 'Tree',
 '2015-03-15', 10, 'Summer', 50.00, 5000.00, '2025-06-20', 'Loamy', 'Seasonal', 'Healthy', 102, 'Active',
 'Produces high-quality mangoes', 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Mango_tree.jpg'),
(2, 1, 'Banana Grove', 'East Zone', 800.00, 'Banana', 'Musa acuminata', 'Shrub',
 '2018-05-10', 7, 'Summer', 30.00, 3000.00, '2025-07-15', 'Sandy', 'Monthly', 'Healthy', 109, 'Active',
 'Continuous banana production', 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Banana_plant.jpg'),
(3, 1, 'Guava Orchard', 'South Zone', 600.00, 'Guava', 'Psidium guajava', 'Tree',
 '2017-04-01', 8, 'Winter', 40.00, 3200.00, '2025-12-10', 'Loamy', 'Seasonal', 'Healthy', 112, 'Active',
 'Popular winter fruit garden', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Guava_tree.jpg'),
(4, 1, 'Papaya Patch', 'West Zone', 500.00, 'Papaya', 'Carica papaya', 'Shrub',
 '2020-02-20', 5, 'Summer', 25.00, 2000.00, '2025-08-05', 'Sandy', 'Monthly', 'Healthy', 102, 'Active',
 'Fast-growing papaya plants', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Papaya_tree.jpg'),
(5, 1, 'Coconut Grove', 'Central Zone', 1000.00, 'Coconut', 'Cocos nucifera', 'Tree',
 '2012-06-01', 13, 'Summer', 60.00, 4800.00, '2025-09-01', 'Sandy', 'Seasonal', 'Healthy', 109, 'Active',
 'Tall coconut trees with high yield', 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Coconut_tree.jpg'),
(6, 1, 'Litchi Garden', 'East Riverside', 700.00, 'Litchi', 'Litchi chinensis', 'Tree',
 '2016-03-01', 9, 'Summer', 35.00, 2800.00, '2025-06-10', 'Loamy', 'Seasonal', 'Healthy', 112, 'Active',
 'Seasonal litchi harvest', 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Litchi_tree.jpg'),
(7, 1, 'Jackfruit Orchard', 'Hill Zone', 900.00, 'Jackfruit', 'Artocarpus heterophyllus', 'Tree',
 '2014-07-01', 11, 'Summer', 70.00, 5600.00, '2025-07-25', 'Clay', 'Seasonal', 'Healthy', 102, 'Active',
 'Large jackfruit production', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Jackfruit_tree.jpg'),
(8, 1, 'Orange Grove', 'West Riverside', 650.00, 'Orange', 'Citrus sinensis', 'Tree',
 '2019-03-01', 6, 'Winter', 45.00, 3600.00, '2025-12-20', 'Loamy', 'Monthly', 'Healthy', 109, 'Active',
 'Winter orange harvest', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Orange_tree.jpg'),
(9, 1, 'Apple Orchard', 'North Hill', 750.00, 'Apple', 'Malus domestica', 'Tree',
 '2013-04-01', 12, 'Autumn', 55.00, 4400.00, '2025-10-15', 'Clay', 'Seasonal', 'Healthy', 112, 'Active',
 'Autumn apple harvest', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Apple_tree.jpg'),
(10, 1, 'Pomegranate Garden', 'South Riverside', 550.00, 'Pomegranate', 'Punica granatum', 'Shrub',
 '2018-06-01', 7, 'Autumn', 30.00, 2400.00, '2025-09-20', 'Loamy', 'Monthly', 'Healthy', 102, 'Active',
 'Medicinal and edible pomegranates', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Pomegranate_tree.jpg'),
(11, 1, 'Grape Vineyard', 'East Hill', 600.00, 'Grapes', 'Vitis vinifera', 'Vine',
 '2019-03-01', 6, 'Summer', 20.00, 2000.00, '2025-07-10', 'Loamy', 'Monthly', 'Healthy', 102, 'Active',
 'Produces table and wine grapes', 'https://upload.wikimedia.org/wikipedia/commons/5/5a/Grape_vineyard.jpg'),
(12, 1, 'Pineapple Grove', 'South Riverside', 500.00, 'Pineapple', 'Ananas comosus', 'Shrub',
 '2020-04-01', 5, 'Summer', 25.00, 2500.00, '2025-08-15', 'Sandy', 'Monthly', 'Healthy', 109, 'Active',
 'Sweet tropical pineapples', 'https://upload.wikimedia.org/wikipedia/commons/6/6d/Pineapple_field.jpg'),
(13, 1, 'Dragonfruit Garden', 'West Zone', 400.00, 'Dragonfruit', 'Hylocereus undatus', 'Shrub',
 '2021-05-01', 4, 'Summer', 15.00, 1500.00, '2025-09-01', 'Sandy', 'Monthly', 'Healthy', 112, 'Active',
 'Exotic dragonfruit plants', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Dragonfruit.jpg'),
(14, 1, 'Olive Orchard', 'North Hill', 700.00, 'Olive', 'Olea europaea', 'Tree',
 '2010-03-01', 15, 'Autumn', 35.00, 2800.00, '2025-10-20', 'Loamy', 'Seasonal', 'Healthy', 102, 'Active',
 'Produces olives for oil', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Olive_tree.jpg'),
(15, 1, 'Strawberry Patch', 'East Riverside', 300.00, 'Strawberry', 'Fragaria × ananassa', 'Shrub',
 '2022-02-01', 3, 'Winter', 10.00, 1000.00, '2025-12-05', 'Sandy', 'Monthly', 'Healthy', 109, 'Active',
 'Winter strawberry harvest', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Strawberry_field.jpg'),
(16, 1, 'Kiwi Garden', 'West Hill', 450.00, 'Kiwi', 'Actinidia deliciosa', 'Vine',
 '2016-04-01', 9, 'Autumn', 20.00, 1600.00, '2025-10-25', 'Loamy', 'Seasonal', 'Healthy', 112, 'Active',
 'Kiwi fruit production', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Kiwi_fruit.jpg'),
(17, 1, 'Pear Orchard', 'North Riverside', 550.00, 'Pear', 'Pyrus communis', 'Tree',
 '2014-05-01', 11, 'Autumn', 30.00, 2400.00, '2025-09-15', 'Clay', 'Seasonal', 'Healthy', 102, 'Active',
 'Produces sweet pears', 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Pear_tree.jpg'),
(18, 1, 'Plum Orchard', 'South Hill', 500.00, 'Plum', 'Prunus domestica', 'Tree',
 '2015-06-01', 10, 'Summer', 25.00, 2000.00, '2025-07-20', 'Loamy', 'Monthly', 'Healthy', 109, 'Active',
 'Seasonal plum harvest', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Plum_tree.jpg'),
(19, 1, 'Cherry Orchard', 'East Hill', 650.00, 'Cherry', 'Prunus avium', 'Tree',
 '2012-07-01', 13, 'Summer', 40.00, 3200.00, '2025-06-25', 'Loamy', 'Seasonal', 'Healthy', 112, 'Active',
 'Cherry harvest in summer', 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Cherry_tree.jpg'),
(20, 1, 'Mulberry Garden', 'West Riverside', 400.00, 'Mulberry', 'Morus alba', 'Tree',
 '2018-08-01', 7, 'Summer', 20.00, 1600.00, '2025-07-30', 'Loamy', 'Monthly', 'Healthy', 102, 'Active',
 'Mulberry fruits for silk industry', 'https://upload.wikimedia.org/wikipedia/commons/9/9e/Mulberry_tree.jpg'),
(21, 1, 'Custard Apple Garden', 'South Riverside', 350.00, 'Custard Apple', 'Annona reticulata', 'Tree',
 '2019-09-01', 6, 'Autumn', 15.00, 1200.00, '2025-10-05', 'Sandy', 'Monthly', 'Healthy', 109, 'Active',
 'Custard apple harvest', 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Custard_apple.jpg'),
(22, 1, 'Sapodilla Garden', 'Central Zone', 500.00, 'Sapodilla', 'Manilkara zapota', 'Tree',
 '2017-10-01', 8, 'Autumn', 25.00, 2000.00, '2025-09-25', 'Loamy', 'Seasonal', 'Healthy', 112, 'Active',
 'Sapodilla fruits for local market', 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Sapodilla_tree.jpg'),
(23, 1, 'Fig Orchard', 'North Riverside', 450.00, 'Fig', 'Ficus carica', 'Tree',
 '2016-11-01', 9, 'Summer', 20.00, 1600.00, '2025-07-15', 'Clay', 'Monthly', 'Healthy', 102, 'Active',
 'Fig fruits for medicinal use', 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Fig_tree.jpg'),
(24, 1, 'Watermelon Patch', 'South Riverside', 300.00, 'Watermelon', 'Citrullus lanatus', 'Vine',
 '2023-01-01', 2, 'Summer', 15.00, 1200.00, '2025-06-05', 'Sandy', 'Monthly', 'Healthy', 109, 'Active',
 'Summer watermelon harvest', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Watermelon_field.jpg'),
(25, 1, 'Lemon Grove', 'East Riverside', 400.00, 'Lemon', 'Citrus limon', 'Tree',
 '2015-12-01', 10, 'Winter', 30.00, 2400.00, '2025-12-15', 'Loamy', 'Seasonal', 'Healthy', 112, 'Active',
 'Lemon harvest for juice production', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Lemon_tree.jpg')
 GO




 INSERT INTO FruitSales 
 (
    FruitSalesID, FruitGardenID, FruitName, QuantitySold, UnitPrice, SaleDate,
    BuyerID, PaymentStatus, PaymentMethod, ReferenceNo, DeliveryStatus,
    DeliveryDate, DiscountApplied, IssuedBy, Note
)
VALUES
(1, 1, 'Mango', 500, 120.00, '2025-06-25', 1, 'Paid', 'Cash', 'FR-1001', 'Delivered', '2025-06-26', 5.00, 'Employee-102', 'Bulk mango sale to retailer'),
(2, 2, 'Banana', 300, 40.00, '2025-07-05', 2, 'Paid', 'Bank', 'FR-1002', 'Delivered', '2025-07-06', 0.00, 'Employee-109', 'Banana sale to wholesaler'),
(3, 3, 'Guava', 250, 60.00, '2025-12-12', 3, 'Pending', 'MobileBanking', 'FR-1003', 'Pending', NULL, 10.00, 'Employee-112', 'Corporate guava order'),
(4, 4, 'Papaya', 200, 55.00, '2025-08-10', 4, 'Paid', 'Cash', 'FR-1004', 'Delivered', '2025-08-11', 0.00, 'Employee-102', 'Retail papaya sale'),
(5, 5, 'Coconut', 150, 80.00, '2025-09-02', 5, 'Paid', 'Bank', 'FR-1005', 'Delivered', '2025-09-03', 5.00, 'Employee-109', 'Corporate coconut order'),
(6, 6, 'Litchi', 180, 150.00, '2025-06-15', 6, 'Paid', 'Cash', 'FR-1006', 'Delivered', '2025-06-16', 0.00, 'Employee-112', 'Seasonal litchi sale'),
(7, 7, 'Jackfruit', 220, 100.00, '2025-07-20', 7, 'Pending', 'Bank', 'FR-1007', 'Pending', NULL, 0.00, 'Employee-102', 'Wholesale jackfruit order'),
(8, 8, 'Orange', 300, 90.00, '2025-12-22', 8, 'Paid', 'MobileBanking', 'FR-1008', 'Delivered', '2025-12-23', 15.00, 'Employee-109', 'Orange sale to Dhaka buyer'),
(9, 9, 'Apple', 400, 200.00, '2025-10-18', 9, 'Paid', 'Cash', 'FR-1009', 'Delivered', '2025-10-19', 0.00, 'Employee-112', 'Premium apple sale'),
(10, 10, 'Pomegranate', 250, 130.00, '2025-09-25', 10, 'Paid', 'Bank', 'FR-1010', 'Delivered', '2025-09-26', 0.00, 'Employee-102', 'Corporate pomegranate order'),
(11, 11, 'Grapes', 200, 140.00, '2025-07-12', 11, 'Paid', 'Cash', 'FR-1011', 'Delivered', '2025-07-13', 0.00, 'Employee-109', 'Retail grape sale'),
(12, 12, 'Pineapple', 180, 70.00, '2025-08-18', 12, 'Pending', 'MobileBanking', 'FR-1012', 'Pending', NULL, 5.00, 'Employee-112', 'Pending pineapple order'),
(13, 13, 'Dragonfruit', 120, 250.00, '2025-09-05', 13, 'Paid', 'Bank', 'FR-1013', 'Delivered', '2025-09-06', 0.00, 'Employee-102', 'Wholesale dragonfruit order'),
(14, 14, 'Olive', 150, 300.00, '2025-10-22', 14, 'Paid', 'Cash', 'FR-1014', 'Delivered', '2025-10-23', 0.00, 'Employee-109', 'Retail olive sale'),
(15, 15, 'Strawberry', 100, 180.00, '2025-12-08', 15, 'Paid', 'MobileBanking', 'FR-1015', 'Delivered', '2025-12-09', 10.00, 'Employee-112', 'Winter strawberry sale')
GO






INSERT INTO Shop
(
    ShopID, ParkID, ShopName, ShopType, Location, AreaSize, OpeningHours, ClosingDays,
    ManagerID, StaffCount, ContactNumber, Email, AvailableProduct, InventoryCapacity,
    CurrentStockLevel, PaymentMethods, RevenueTarget, MaintenanceStatus, Note
)
VALUES
(1, 1, 'Food Court', 'Food', 'North Zone', 500.00, '09:00-21:00', 'Friday',
 102, 15, '01770000001', 'foodcourt@park.com', 'Fast Food', 1000, 800, 'Cash', 500000.00, 'Active', 'Main food hub'),
(2, 1, 'Souvenir Shop', 'Souvenir', 'East Gate', 200.00, '10:00-20:00', 'Sunday',
 109, 8, '01770000002', 'souvenir@park.com', 'Handicrafts', 500, 300, 'Card', 200000.00, 'Active', 'Tourist souvenirs'),
(3, 1, 'Bookstore', 'Bookstore', 'West Zone', 300.00, '09:00-19:00', 'Monday',
 112, 6, '01770000003', 'books@park.com', 'Books & Magazines', 600, 400, 'Cash', 150000.00, 'Active', 'Educational books'),
(4, 1, 'Grocery Shop', 'Grocery', 'South Zone', 400.00, '08:00-22:00', 'None',
 102, 10, '01770000004', 'grocery@park.com', 'Daily Essentials', 800, 600, 'MobileBanking', 300000.00, 'Active', 'Fresh groceries'),
(5, 1, 'Juice Bar', 'Food', 'Central Park', 150.00, '10:00-22:00', 'Friday',
 109, 5, '01770000005', 'juice@park.com', 'Fresh Juices', 300, 200, 'Cash', 100000.00, 'Active', 'Fruit juices'),
(6, 1, 'Coffee Shop', 'Food', 'Near Lake', 180.00, '09:00-23:00', 'Saturday',
 112, 7, '01770000006', 'coffee@park.com', 'Coffee & Snacks', 400, 250, 'Card', 120000.00, 'Active', 'Cafe style'),
(7, 1, 'Toy Store', 'Souvenir', 'Kids Zone', 220.00, '10:00-20:00', 'Friday',
 102, 6, '01770000007', 'toys@park.com', 'Toys & Games', 500, 350, 'Cash', 180000.00, 'Active', 'Children toys'),
(8, 1, 'Gift Shop', 'Souvenir', 'Main Gate', 250.00, '09:00-21:00', 'Sunday',
 109, 8, '01770000008', 'gift@park.com', 'Gifts & Cards', 600, 450, 'Card', 220000.00, 'Active', 'Gift items'),
(9, 1, 'Ice Cream Parlor', 'Food', 'West Riverside', 200.00, '11:00-22:00', 'Monday',
 112, 5, '01770000009', 'icecream@park.com', 'Ice Cream', 400, 300, 'Cash', 130000.00, 'Active', 'Summer special'),
(10, 1, 'Electronics Shop', 'Souvenir', 'Tech Zone', 350.00, '10:00-21:00', 'Friday',
 102, 12, '01770000010', 'electronics@park.com', 'Gadgets', 700, 500, 'Card', 400000.00, 'Active', 'Electronic items'),
(11, 1, 'Clothing Store', 'Souvenir', 'Fashion Street', 450.00, '09:00-20:00', 'Saturday',
 109, 10, '01770000011', 'clothing@park.com', 'Clothes', 900, 700, 'Cash', 350000.00, 'Active', 'Trendy clothes'),
(12, 1, 'Herbal Store', 'Souvenir', 'Green Zone', 300.00, '10:00-19:00', 'Sunday',
 112, 6, '01770000012', 'herbal@park.com', 'Herbal Products', 500, 350, 'MobileBanking', 200000.00, 'Active', 'Organic herbs'),
(13, 1, 'Bakery', 'Food', 'Central Plaza', 280.00, '08:00-20:00', 'Friday',
 102, 7, '01770000013', 'bakery@park.com', 'Bread & Cakes', 600, 400, 'Cash', 250000.00, 'Active', 'Fresh bakery items'),
(14, 1, 'Sports Shop', 'Souvenir', 'Playground Area', 320.00, '09:00-21:00', 'Monday',
 109, 9, '01770000014', 'sports@park.com', 'Sports Goods', 700, 500, 'Card', 280000.00, 'Active', 'Sports equipment'),
(15, 1, 'Flower Shop', 'Souvenir', 'Garden Zone', 200.00, '09:00-19:00', 'Saturday',
 112, 5, '01770000015', 'flowers@park.com', 'Flowers', 400, 300, 'Cash', 150000.00, 'Active', 'Fresh flowers'),
(16, 1, 'Dairy Shop', 'Grocery', 'Farm Zone', 350.00, '08:00-20:00', 'None',
 102, 8, '01770000016', 'dairy@park.com', 'Milk & Dairy', 600, 450, 'MobileBanking', 220000.00, 'Active', 'Fresh dairy products'),
(17, 1, 'Fish Market', 'Grocery', 'Riverside', 400.00, '07:00-19:00', 'Friday',
 109, 10, '01770000017', 'fish@park.com', 'Fish', 800, 600, 'Cash', 300000.00, 'Active', 'Fresh fish'),
(18, 1, 'Meat Shop', 'Grocery', 'South Gate', 380.00, '08:00-20:00', 'Sunday',
 112, 9, '01770000018', 'meat@park.com', 'Meat', 700, 500, 'Card', 280000.00, 'Active', 'Fresh meat'),
(19, 1, 'Organic Store', 'Souvenir', 'Eco Zone', 300.00, '09:00-21:00', 'Monday',
 102, 7, '01770000019', 'organic@park.com', 'Organic Products', 500, 350, 'Cash', 200000.00, 'Active', 'Organic lifestyle'),
(20, 1, 'Tea Stall', 'Food', 'Near Mosque', 150.00, '07:00-22:00', 'Friday',
 109, 4, '01770000020', 'tea@park.com', 'Tea & Snacks', 300, 200, 'MobileBanking', 100000.00, 'Active', 'Popular tea stall')
 GO




INSERT INTO Visitors (
    VisitorID, FullName, Age, NationalID, PassportNo, PhoneNumber,
    VisitorType, VisitPurpose, MembershipStatus
)
VALUES
(1, 'Rahim Uddin', 32, 'NID00001', NULL, '01770000001', 'Individual', 'Tourism', 'Active'),
(2, 'Karim Ali', 45, 'NID00002', NULL, '01770000002', 'Family', 'Shopping', 'None'),
(3, 'Selina Akter', 28, NULL, 'P00001', '01770000003', 'Individual', 'Prayer', 'Active'),
(4, 'Mahmud Hasan', 39, 'NID00003', NULL, '01770000004', 'Corporate', 'Event', 'Active'),
(5, 'Nusrat Jahan', 25, NULL, 'P00002', '01770000005', 'Individual', 'Tourism', 'None'),
(6, 'Abdul Kader', 50, 'NID00004', NULL, '01770000006', 'Family', 'Shopping', 'Expired'),
(7, 'Shamima Sultana', 34, NULL, 'P00003', '01770000007', 'Individual', 'Education', 'Active'),
(8, 'Imran Hossain', 29, 'NID00005', NULL, '01770000008', 'Group', 'Tourism', 'None'),
(9, 'Farzana Rahman', 31, NULL, 'P00004', '01770000009', 'Individual', 'Event', 'Active'),
(10, 'Jamil Chowdhury', 42, 'NID00006', NULL, '01770000010', 'Corporate', 'Shopping', 'Active'),
(11, 'Rokeya Begum', 27, NULL, 'P00005', '01770000011', 'Individual', 'Tourism', 'None'),
(12, 'Tanvir Ahmed', 36, 'NID00007', NULL, '01770000012', 'Family', 'Prayer', 'Expired'),
(13, 'Shirin Akter', 30, NULL, 'P00006', '01770000013', 'Individual', 'Tourism', 'Active'),
(14, 'Mizanur Rahman', 48, 'NID00008', NULL, '01770000014', 'Corporate', 'Event', 'Active'),
(15, 'Parveen Sultana', 33, NULL, 'P00007', '01770000015', 'Individual', 'Shopping', 'None'),
(16, 'Rashed Khan', 40, 'NID00009', NULL, '01770000016', 'Group', 'Tourism', 'Active'),
(17, 'Samira Akter', 26, NULL, 'P00008', '01770000017', 'Individual', 'Education', 'None'),
(18, 'Habib Ullah', 52, 'NID00010', NULL, '01770000018', 'Family', 'Prayer', 'Expired'),
(19, 'Lamia Rahman', 29, NULL, 'P00009', '01770000019', 'Individual', 'Tourism', 'Active'),
(20, 'Shafiqul Islam', 37, 'NID00011', NULL, '01770000020', 'Corporate', 'Event', 'Active')
GO




INSERT INTO Visitors (
    VisitorID, FullName, Age, NationalID, PassportNo, PhoneNumber,
    VisitorType, VisitPurpose, MembershipStatus
)
VALUES
(21, 'Hasina Begum', 29, 'NID0X0012', NULL, '017700000150', 'Individual', 'Tourism', 'Active'),
(22, 'Rafiq Islam', 41, NULL, 'P0Y0013', '017700000151', 'Family', 'Shopping', 'None'),
(23, 'Sadia Akter', 33, 'NID0Z0014', NULL, '017700000152', 'Corporate', 'Event', 'Active'),
(24, 'Mehedi Hasan', 27, NULL, 'P0W0015', '017700000153', 'Individual', 'Education', 'Active'),
(25, 'Shamim Hossain', 38, 'NID0A0016', NULL, '017700000154', 'Group', 'Tourism', 'None'),
(26, 'Nadia Rahman', 30, NULL, 'P0B0017', '017700000155', 'Individual', 'Prayer', 'Active'),
(27, 'Arif Chowdhury', 45, 'NID0C0018', NULL, '017700000156', 'Corporate', 'Shopping', 'Active'),
(28, 'Maliha Sultana', 26, NULL, 'P0D0019', '017700000157', 'Individual', 'Tourism', 'None'),
(29, 'Shafayat Karim', 35, 'NID0E0020', NULL, '017700000158', 'Family', 'Event', 'Active'),
(30, 'Rumana Akter', 28, NULL, 'P0F0021', '017700000159', 'Individual', 'Shopping', 'Expired'),
(31, 'Iqbal Hossain', 50, 'NID0G0022', NULL, '017700000160', 'Group', 'Tourism', 'Active'),
(32, 'Tahmina Begum', 32, NULL, 'P0H0023', '017700000161', 'Individual', 'Prayer', 'None'),
(33, 'Masud Rana', 40, 'NID0I0024', NULL, '017700000162', 'Corporate', 'Event', 'Active'),
(34, 'Shirin Sultana', 29, NULL, 'P0J0025', '017700000163', 'Individual', 'Tourism', 'Active'),
(35, 'Kamal Uddin', 44, 'NID0K0026', NULL, '017700000164', 'Family', 'Shopping', 'None'),
(36, 'Farzana Akter', 31, NULL, 'P0L0027', '017700000165', 'Individual', 'Education', 'Active'),
(37, 'Rashidul Islam', 39, 'NID0M0028', NULL, '017700000166', 'Group', 'Tourism', 'Active'),
(38, 'Nasima Khatun', 27, NULL, 'P0N0029', '017700000167', 'Individual', 'Prayer', 'Expired'),
(39, 'Shahriar Hossain', 36, 'NID0O0030', NULL, '017700000168', 'Corporate', 'Event', 'Active'),
(40, 'Lamia Sultana', 25, NULL, 'P0P0031', '017700000169', 'Individual', 'Tourism', 'None')
GO





INSERT INTO ShopSales (
    ShopSalesID, ShopID, ProductID, ProductName, QuantitySold, UnitPrice, SaleDate,
    VisitorID, VendorName, PaymentStatus, PaymentMethod, ReferenceNo, IssuedBy,
    DiscountApplied, DeliveryStatus, DeliveryDate, Note
)
VALUES
(1, 1, 201, 'Burger Meal', 50, 120.00, '2025-11-01', 1, 'Food Court Vendor', 'Paid', 'Cash', 'SS-2001', 'Employee-102', 5.00, 'Delivered', '2025-11-02', 'Lunch rush order'),
(2, 2, 202, 'Handmade Keychain', 30, 50.00, '2025-11-02', 2, 'Souvenir Vendor', 'Paid', 'Card', 'SS-2002', 'Employee-109', 0.00, 'Delivered', '2025-11-03', 'Tourist purchase'),
(3, 3, 203, 'Novel Book', 20, 200.00, '2025-11-03', 3, 'Bookstore Vendor', 'Pending', 'MobileBanking', 'SS-2003', 'Employee-112', 10.00, 'Pending', NULL, 'Corporate bulk order'),
(4, 4, 204, 'Rice Bag', 40, 80.00, '2025-11-04', 4, 'Grocery Vendor', 'Paid', 'Cash', 'SS-2004', 'Employee-102', 0.00, 'Delivered', '2025-11-05', 'Daily essentials'),
(5, 5, 205, 'Orange Juice', 25, 60.00, '2025-11-05', 5, 'Juice Bar Vendor', 'Paid', 'Card', 'SS-2005', 'Employee-109', 5.00, 'Delivered', '2025-11-06', 'Fresh juice order'),
(6, 6, 206, 'Latte Coffee', 40, 150.00, '2025-11-06', 6, 'Coffee Shop Vendor', 'Paid', 'Card', 'SS-2006', 'Employee-112', 0.00, 'Delivered', '2025-11-07', 'Morning coffee rush'),
(7, 7, 207, 'Toy Car', 15, 300.00, '2025-11-07', 7, 'Toy Store Vendor', 'Pending', 'Cash', 'SS-2007', 'Employee-102', 0.00, 'Pending', NULL, 'Kids toy order'),
(8, 8, 208, 'Gift Mug', 20, 250.00, '2025-11-08', 8, 'Gift Shop Vendor', 'Paid', 'Card', 'SS-2008', 'Employee-109', 15.00, 'Delivered', '2025-11-09', 'Gift item sale'),
(9, 9, 209, 'Ice Cream Cup', 50, 100.00, '2025-11-09', 9, 'Ice Cream Vendor', 'Paid', 'Cash', 'SS-2009', 'Employee-112', 0.00, 'Delivered', '2025-11-10', 'Summer special'),
(10, 10, 210, 'Smart Watch', 10, 2500.00, '2025-11-10', 10, 'Electronics Vendor', 'Paid', 'Card', 'SS-2010', 'Employee-102', 0.00, 'Delivered', '2025-11-11', 'Tech gadget sale'),
(11, 11, 211, 'T-Shirt', 30, 500.00, '2025-11-11', 11, 'Clothing Vendor', 'Paid', 'Cash', 'SS-2011', 'Employee-109', 0.00, 'Delivered', '2025-11-12', 'Fashion street sale'),
(12, 12, 212, 'Herbal Soap', 40, 120.00, '2025-11-12', 12, 'Herbal Vendor', 'Pending', 'MobileBanking', 'SS-2012', 'Employee-112', 5.00, 'Pending', NULL, 'Organic product order'),
(13, 13, 213, 'Chocolate Cake', 20, 600.00, '2025-11-13', 13, 'Bakery Vendor', 'Paid', 'Cash', 'SS-2013', 'Employee-102', 0.00, 'Delivered', '2025-11-14', 'Birthday cake order'),
(14, 14, 214, 'Football', 15, 800.00, '2025-11-14', 14, 'Sports Vendor', 'Paid', 'Card', 'SS-2014', 'Employee-109', 0.00, 'Delivered', '2025-11-15', 'Sports goods sale'),
(15, 15, 215, 'Rose Bouquet', 25, 300.00, '2025-11-15', 15, 'Flower Vendor', 'Paid', 'Cash', 'SS-2015', 'Employee-112', 0.00, 'Delivered', '2025-11-16', 'Flower shop order'),
(16, 16, 216, 'Milk Pack', 50, 80.00, '2025-11-16', 16, 'Dairy Vendor', 'Paid', 'MobileBanking', 'SS-2016', 'Employee-102', 0.00, 'Delivered', '2025-11-17', 'Fresh dairy sale'),
(17, 17, 217, 'Hilsa Fish', 20, 600.00, '2025-11-17', 17, 'Fish Vendor', 'Paid', 'Cash', 'SS-2017', 'Employee-109', 0.00, 'Delivered', '2025-11-18', 'Premium fish sale'),
(18, 18, 218, 'Beef Meat', 30, 700.00, '2025-11-18', 18, 'Meat Vendor', 'Paid', 'Card', 'SS-2018', 'Employee-112', 0.00, 'Delivered', '2025-11-19', 'Fresh meat order'),
(19, 19, 219, 'Organic Honey', 15, 900.00, '2025-11-19', 19, 'Organic Vendor', 'Paid', 'Cash', 'SS-2019', 'Employee-102', 0.00, 'Delivered', '2025-11-20', 'Organic lifestyle product'),
(20, 20, 220, 'Tea Cup', 40, 100.00, '2025-11-20', 20, 'Tea Stall Vendor', 'Paid', 'MobileBanking', 'SS-2020', 'Employee-109', 0.00, 'Delivered', '2025-11-21', 'Popular tea stall order')
GO




INSERT INTO ResortKitchen 
(
    KitchenID, ResortID, KitchenName, Location, AreaSize, Capacity, ChiefID, StaffCount,
    CuisineType, MenuType, OperatingHours, StorageFacilities, InventoryCapacity,
    CurrentStockLevel, LastInspectionDate, MaintenanceStatus, SafetyEquipment, Note
)
VALUES
(1, 1, 'Buffet Hall Kitchen', 'Main Building', 500.00, 200, 102, 25, 'Bangladeshi', 'Buffet',
 '07:00-23:00', 'Cold Storage, Dry Storage', 1000, 800, '2025-10-01', 'Active', 'Fire Extinguisher, First Aid', 'Main buffet service'),
(2, 1, 'Continental Kitchen', 'West Wing', 350.00, 120, 109, 18, 'Continental', 'A la carte',
 '10:00-22:00', 'Cold Storage', 700, 500, '2025-09-20', 'Active', 'Fire Extinguisher', 'Serves continental dishes'),
(3, 1, 'Chinese Kitchen', 'East Wing', 300.00, 100, 112, 15, 'Chinese', 'Mixed',
 '11:00-23:00', 'Dry Storage', 600, 450, '2025-09-15', 'Active', 'First Aid Kit', 'Chinese cuisine'),
(4, 1, 'Bakery Kitchen', 'Ground Floor', 200.00, 80, 102, 12, 'Other', 'A la carte',
 '06:00-20:00', 'Cold Storage', 500, 350, '2025-08-30', 'Active', 'Fire Extinguisher', 'Fresh bakery items'),
(5, 1, 'Coffee Kitchen', 'Lobby Area', 150.00, 60, 109, 10, 'Other', 'A la carte',
 '08:00-22:00', 'Dry Storage', 400, 300, '2025-09-10', 'Active', 'First Aid Kit', 'Coffee and snacks'),
(6, 1, 'Seafood Kitchen', 'Riverside', 280.00, 90, 112, 14, 'Other', 'Mixed',
 '12:00-23:00', 'Cold Storage', 600, 400, '2025-09-25', 'Active', 'Fire Extinguisher', 'Seafood specialties'),
(7, 1, 'BBQ Kitchen', 'Garden Zone', 250.00, 100, 102, 16, 'Other', 'Buffet',
 '17:00-23:00', 'Dry Storage', 500, 350, '2025-09-05', 'Active', 'Fire Extinguisher', 'Outdoor BBQ'),
(8, 1, 'Italian Kitchen', 'South Wing', 320.00, 110, 109, 15, 'Italian', 'A la carte',
 '11:00-22:00', 'Cold Storage', 650, 450, '2025-09-18', 'Active', 'First Aid Kit', 'Italian cuisine'),
(9, 1, 'Organic Kitchen', 'Eco Zone', 270.00, 80, 112, 12, 'Other', 'Mixed',
 '09:00-21:00', 'Cold Storage, Dry Storage', 550, 400, '2025-09-12', 'Active', 'Fire Extinguisher', 'Organic healthy food'),
(10, 1, 'Fast Food Kitchen', 'Food Court', 220.00, 150, 102, 20, 'Other', 'Buffet',
 '10:00-23:00', 'Dry Storage', 700, 500, '2025-09-28', 'Active', 'First Aid Kit', 'Fast food service'),
(11, 1, 'Dessert Kitchen', 'Central Plaza', 180.00, 70, 109, 10, 'Other', 'A la carte',
 '12:00-22:00', 'Cold Storage', 400, 300, '2025-09-08', 'Active', 'Fire Extinguisher', 'Desserts and sweets'),
(12, 1, 'VIP Kitchen', 'VIP Lounge', 260.00, 50, 112, 8, 'Continental', 'Mixed',
 '11:00-23:00', 'Cold Storage', 500, 350, '2025-09-22', 'Active', 'Fire Extinguisher, First Aid', 'Exclusive VIP service')
 GO




 INSERT INTO IncomeSource 
 (
    IncomeSourceID, SourceName, Description, RelatedTable, RevenueCategory, AvgIncome
)
VALUES
(1, 'Food Court Sales', 'Revenue from food court meals', 'ShopSales', 'Food', 500000.00),
(2, 'Souvenir Shop Sales', 'Revenue from souvenirs and gifts', 'ShopSales', 'Retail', 200000.00),
(3, 'Ticket Sales', 'Revenue from entry tickets', 'TicketSales', 'Ticketing', 800000.00),
(4, 'Resort Kitchen Buffet', 'Revenue from buffet services', 'ResortKitchen', 'Food', 350000.00),
(5, 'Fruit Sales', 'Revenue from fruit gardens', 'FruitSales', 'Food', 150000.00),
(6, 'Fish Sales', 'Revenue from fish farms', 'FishSales', 'Food', 180000.00),
(7, 'Accommodation', 'Revenue from resort rooms', 'Other', 'Accommodation', 1200000.00),
(8, 'Event Hosting', 'Revenue from events and parties', 'Other', 'Service', 600000.00),
(9, 'Parking Fees', 'Revenue from vehicle parking', 'Other', 'Service', 100000.00),
(10, 'Membership Fees', 'Revenue from annual memberships', 'Other', 'Service', 250000.00),
(11, 'Spa Services', 'Revenue from spa and wellness', 'Other', 'Service', 300000.00),
(12, 'Gym Services', 'Revenue from gym and fitness', 'Other', 'Service', 200000.00),
(13, 'Boat Rides', 'Revenue from boat rides', 'Other', 'Service', 120000.00),
(14, 'Guided Tours', 'Revenue from guided tours', 'Other', 'Service', 180000.00),
(15, 'Photography', 'Revenue from photography services', 'Other', 'Service', 90000.00),
(16, 'Laundry Services', 'Revenue from laundry services', 'Other', 'Service', 70000.00),
(17, 'Conference Hall', 'Revenue from conference hall rentals', 'Other', 'Service', 400000.00),
(18, 'Wedding Packages', 'Revenue from wedding events', 'Other', 'Service', 750000.00),
(19, 'Transportation', 'Revenue from shuttle and transport', 'Other', 'Service', 220000.00),
(20, 'Donations', 'Revenue from donations and charity', 'Other', 'Other', 50000.00)
GO




INSERT INTO Event 
(
    EventID, ParkID, ResortID, EventName, EventType, Description,
    StartDate, EndDate, Location, Capacity,
    TicketRequired, TicketPrice, EventStatus
)
VALUES
(1, 1, 1, 'Summer Music Concert', 'Concert', 'Live band performance', '2025-06-01', '2025-06-02', 'Main Stage', 5000, 1, 500.00, 'Scheduled'),
(2, 1, 1, 'Spring Festival', 'Festival', 'Seasonal cultural festival', '2025-03-15', '2025-03-17', 'Park Grounds', 8000, 1, 200.00, 'Scheduled'),
(3, 1, 1, 'Corporate Gala', 'Corporate', 'Annual corporate gathering', '2025-07-10', '2025-07-11', 'Resort Hall', 1000, 1, 1000.00, 'Scheduled'),
(4, 1, 1, 'Wedding Ceremony', 'Wedding', 'Private wedding event', '2025-08-05', '2025-08-05', 'Resort Garden', 300, 0, 0.00, 'Scheduled'),
(5, 1, 1, 'Autumn Food Festival', 'Festival', 'Food stalls and cultural shows', '2025-10-01', '2025-10-03', 'Food Court Zone', 6000, 1, 150.00, 'Scheduled'),
(6, 1, 1, 'New Year Celebration', 'Seasonal Show', 'Fireworks and performances', '2025-12-31', '2026-01-01', 'Central Plaza', 10000, 1, 300.00, 'Scheduled'),
(7, 1, 1, 'Charity Concert', 'Concert', 'Fundraising music event', '2025-09-20', '2025-09-20', 'Open Air Stage', 4000, 1, 250.00, 'Scheduled'),
(8, 1, 1, 'Flower Exhibition', 'Other', 'Seasonal flower showcase', '2025-02-10', '2025-02-12', 'Botanical Garden', 2000, 0, 0.00, 'Scheduled'),
(9, 1, 1, 'Kids Talent Show', 'Seasonal Show', 'Talent show for children', '2025-04-05', '2025-04-05', 'Kids Zone', 1500, 1, 100.00, 'Scheduled'),
(10, 1, 1, 'Corporate Training', 'Corporate', 'Employee training program', '2025-05-01', '2025-05-02', 'Conference Hall', 500, 1, 800.00, 'Scheduled'),
(11, 1, 1, 'Traditional Dance Festival', 'Festival', 'Cultural dance performances', '2025-07-25', '2025-07-27', 'Cultural Stage', 5000, 1, 200.00, 'Scheduled'),
(12, 1, 1, 'VIP Wedding Reception', 'Wedding', 'Exclusive wedding reception', '2025-11-15', '2025-11-15', 'VIP Lounge', 200, 0, 0.00, 'Scheduled'),
(13, 1, 1, 'Rock Concert', 'Concert', 'Rock band live show', '2025-08-20', '2025-08-20', 'Main Stage', 6000, 1, 600.00, 'Scheduled'),
(14, 1, 1, 'Corporate Product Launch', 'Corporate', 'Launch of new product', '2025-09-01', '2025-09-01', 'Resort Hall', 800, 1, 1200.00, 'Scheduled'),
(15, 1, 1, 'Winter Carnival', 'Festival', 'Games, rides, and food stalls', '2025-12-10', '2025-12-12', 'Park Grounds', 7000, 1, 250.00, 'Scheduled'),
(16, 1, 1, 'Spring Wedding Fair', 'Wedding', 'Wedding expo and fair', '2025-03-01', '2025-03-02', 'Resort Garden', 1000, 1, 100.00, 'Scheduled'),
(17, 1, 1, 'Cultural Concert', 'Concert', 'Traditional music concert', '2025-05-20', '2025-05-20', 'Cultural Stage', 3000, 1, 200.00, 'Scheduled'),
(18, 1, 1, 'Summer Corporate Retreat', 'Corporate', 'Corporate team-building retreat', '2025-06-15', '2025-06-17', 'Resort Grounds', 400, 1, 1500.00, 'Scheduled'),
(19, 1, 1, 'Childrens Festival', 'Festival', 'Festival for kids and families', '2025-08-10', '2025-08-11', 'Kids Zone', 3500, 1, 100.00, 'Scheduled'),
(20, 1, 1, 'Autumn Seasonal Show', 'Seasonal Show', 'Autumn-themed performances', '2025-10-20', '2025-10-21', 'Central Plaza', 5000, 1, 200.00, 'Scheduled')
GO



INSERT INTO WaterBalloonWalks 
(
    BalloonWalkID, ParkID, RideType, Capacity, Duration, OperatingHours,
    TicketPrice, DiscountAvailable, SafetyEquipment, SupervisorID, StaffCount,
    Location, MaintenanceStatus
)
VALUES
(1, 1, 'Single', 20, 15, '10:00-18:00', 100.00, 1, 'Helmet, Cushion Mat', 102, 5, 'Kids Zone', 'Active'),
(2, 1, 'Double', 30, 20, '09:00-17:00', 150.00, 0, 'Helmet, First Aid', 109, 6, 'Adventure Area', 'Active'),
(3, 1, 'Group', 50, 25, '11:00-19:00', 200.00, 1, 'Life Jacket, Supervisor', 112, 8, 'Central Plaza', 'Active'),
(4, 1, 'Single', 15, 10, '12:00-20:00', 80.00, 0, 'Helmet', 102, 4, 'Garden Zone', 'Active'),
(5, 1, 'Double', 25, 15, '10:00-18:00', 120.00, 1, 'Helmet, Knee Pad', 109, 5, 'Lake Side', 'Active'),
(6, 1, 'Group', 40, 30, '09:00-17:00', 250.00, 0, 'Life Jacket, Cushion Mat', 112, 7, 'Playground Area', 'Active'),
(7, 1, 'Single', 18, 12, '11:00-19:00', 90.00, 1, 'Helmet, Supervisor', 102, 3, 'Kids Zone', 'Active'),
(8, 1, 'Double', 28, 20, '10:00-18:00', 140.00, 0, 'Helmet, First Aid', 109, 6, 'Adventure Area', 'Active'),
(9, 1, 'Group', 60, 35, '12:00-20:00', 300.00, 1, 'Life Jacket, Supervisor', 112, 10, 'Central Plaza', 'Active'),
(10, 1, 'Single', 22, 15, '09:00-17:00', 110.00, 0, 'Helmet, Cushion Mat', 102, 4, 'Garden Zone', 'Active'),
(11, 1, 'Double', 35, 25, '11:00-19:00', 160.00, 1, 'Helmet, Knee Pad', 109, 7, 'Lake Side', 'Active'),
(12, 1, 'Group', 55, 30, '10:00-18:00', 280.00, 0, 'Life Jacket, First Aid', 112, 9, 'Playground Area', 'Active'),
(13, 1, 'Single', 20, 12, '12:00-20:00', 95.00, 1, 'Helmet, Supervisor', 102, 5, 'Kids Zone', 'Active'),
(14, 1, 'Double', 30, 18, '09:00-17:00', 130.00, 0, 'Helmet, Cushion Mat', 109, 6, 'Adventure Area', 'Active'),
(15, 1, 'Group', 45, 28, '11:00-19:00', 260.00, 1, 'Life Jacket, Supervisor', 112, 8, 'Central Plaza', 'Active'),
(16, 1, 'Single', 16, 10, '10:00-18:00', 85.00, 0, 'Helmet, First Aid', 102, 3, 'Garden Zone', 'Active'),
(17, 1, 'Double', 26, 15, '12:00-20:00', 125.00, 1, 'Helmet, Knee Pad', 109, 5, 'Lake Side', 'Active'),
(18, 1, 'Group', 48, 32, '09:00-17:00', 270.00, 0, 'Life Jacket, Cushion Mat', 112, 9, 'Playground Area', 'Active'),
(19, 1, 'Single', 19, 14, '11:00-19:00', 100.00, 1, 'Helmet, Supervisor', 102, 4, 'Kids Zone', 'Active'),
(20, 1, 'Double', 32, 22, '10:00-18:00', 150.00, 0, 'Helmet, First Aid', 109, 6, 'Adventure Area', 'Active')
GO



INSERT INTO BoatRides 
(
    BoatRideID, ParkID, BoatName, BoatType, Capacity, Duration, RouteDescription,
    DeparturePoint, ArrivalPoint, OperatingHours, TicketPrice, DiscountAvailable,
    SafetyEquipment, SupervisorID, StaffCount
)
VALUES
(1, 1, 'Paddle Breeze', 'Paddle', 10, 30, 'Circular lake route', 'Dock A', 'Dock A', '09:00-18:00', 100.00, 1, 'Life Jacket, Lifebuoy', 102, 3),
(2, 1, 'Speed Thunder', 'Speed', 20, 20, 'Fast river ride', 'Dock B', 'Dock C', '10:00-17:00', 250.00, 0, 'Life Jacket, Fire Extinguisher', 109, 5),
(3, 1, 'Ferry Queen', 'Ferry', 50, 40, 'Park-to-resort ferry service', 'Dock D', 'Dock E', '08:00-20:00', 150.00, 1, 'Life Jacket, Lifebuoy', 112, 8),
(4, 1, 'Row Classic', 'Row', 8, 25, 'Short rowing trip', 'Dock A', 'Dock A', '09:00-19:00', 80.00, 0, 'Life Jacket', 102, 2),
(5, 1, 'Paddle Joy', 'Paddle', 12, 30, 'Lake leisure ride', 'Dock F', 'Dock F', '10:00-18:00', 120.00, 1, 'Life Jacket, Lifebuoy', 109, 3),
(6, 1, 'Speed Arrow', 'Speed', 18, 15, 'High-speed adventure', 'Dock B', 'Dock C', '11:00-17:00', 300.00, 0, 'Life Jacket, Fire Extinguisher', 112, 4),
(7, 1, 'Ferry Star', 'Ferry', 60, 45, 'Resort shuttle service', 'Dock D', 'Dock E', '07:00-21:00', 200.00, 1, 'Life Jacket, Lifebuoy', 102, 7),
(8, 1, 'Row Breeze', 'Row', 6, 20, 'Quiet rowing trip', 'Dock G', 'Dock G', '09:00-18:00', 70.00, 0, 'Life Jacket', 109, 2),
(9, 1, 'Paddle Wave', 'Paddle', 15, 35, 'Family paddle ride', 'Dock H', 'Dock H', '10:00-19:00', 130.00, 1, 'Life Jacket, Lifebuoy', 112, 4),
(10, 1, 'Speed Flash', 'Speed', 25, 25, 'Thrill speed ride', 'Dock I', 'Dock J', '12:00-18:00', 280.00, 0, 'Life Jacket, Fire Extinguisher', 102, 6),
(11, 1, 'Ferry Pearl', 'Ferry', 55, 50, 'Park ferry loop', 'Dock K', 'Dock L', '08:00-22:00', 180.00, 1, 'Life Jacket, Lifebuoy', 109, 9),
(12, 1, 'Row Spirit', 'Row', 10, 30, 'Rowing competition route', 'Dock M', 'Dock M', '09:00-17:00', 90.00, 0, 'Life Jacket', 112, 3),
(13, 1, 'Paddle Fun', 'Paddle', 20, 40, 'Extended paddle ride', 'Dock N', 'Dock N', '10:00-20:00', 140.00, 1, 'Life Jacket, Lifebuoy', 102, 5),
(14, 1, 'Speed Jet', 'Speed', 22, 20, 'River speed adventure', 'Dock O', 'Dock P', '11:00-19:00', 320.00, 0, 'Life Jacket, Fire Extinguisher', 109, 6),
(15, 1, 'Ferry Ocean', 'Ferry', 70, 60, 'Large ferry service', 'Dock Q', 'Dock R', '07:00-23:00', 220.00, 1, 'Life Jacket, Lifebuoy', 112, 10),
(16, 1, 'Row Harmony', 'Row', 12, 25, 'Couple rowing ride', 'Dock S', 'Dock S', '09:00-18:00', 85.00, 0, 'Life Jacket', 102, 3),
(17, 1, 'Paddle Delight', 'Paddle', 18, 30, 'Family leisure paddle', 'Dock T', 'Dock T', '10:00-19:00', 125.00, 1, 'Life Jacket, Lifebuoy', 109, 4),
(18, 1, 'Speed Storm', 'Speed', 28, 18, 'Extreme speed thrill', 'Dock U', 'Dock V', '12:00-20:00', 350.00, 0, 'Life Jacket, Fire Extinguisher', 112, 7),
(19, 1, 'Ferry Horizon', 'Ferry', 65, 55, 'Park-to-resort ferry', 'Dock W', 'Dock X', '08:00-21:00', 210.00, 1, 'Life Jacket, Lifebuoy', 102, 9),
(20, 1, 'Row Adventure', 'Row', 14, 30, 'Adventure rowing trip', 'Dock Y', 'Dock Y', '09:00-17:00', 95.00, 0, 'Life Jacket', 109, 3)
GO




INSERT INTO HorseRides 
(
    HorseRideID, ParkID, HorseName, Breed, Age, Capacity, Duration,
    RouteDescription, OperatingHours, TicketPrice, DiscountAvailable,
    SafetyEquipment, SupervisorID, TrainerID, StaffCount, HealthStatus,
    LastCheckupStatus, MaintenanceStatus, Location, Note
)
VALUES
(1, 1, 'Thunder', 'Arabian', 7, 1, 20, 'Garden loop ride', '09:00-18:00', 200.00, 1, 'Helmet, Knee Pad', 102, 109, 3, 'Healthy', '2025-09-01', 'Active', 'Garden Zone', 'Popular horse'),
(2, 1, 'Storm', 'Thoroughbred', 5, 1, 15, 'Kids short ride', '10:00-17:00', 150.00, 0, 'Helmet', 109, 112, 2, 'Healthy', '2025-08-20', 'Active', 'Kids Zone', 'Safe for children'),
(3, 1, 'Shadow', 'Quarter Horse', 8, 2, 25, 'Adventure trail', '09:00-19:00', 250.00, 1, 'Helmet, First Aid', 112, 102, 4, 'Healthy', '2025-09-10', 'Active', 'Adventure Area', 'Strong horse'),
(4, 1, 'Blaze', 'Mustang', 10, 1, 30, 'Lake side ride', '11:00-18:00', 220.00, 0, 'Helmet', 102, 112, 3, 'Healthy', '2025-07-15', 'Active', 'Lake Side', 'Fast runner'),
(5, 1, 'Spirit', 'Arabian', 6, 1, 20, 'Resort garden loop', '09:00-17:00', 180.00, 1, 'Helmet, Knee Pad', 109, 102, 2, 'Healthy', '2025-08-05', 'Active', 'Resort Garden', 'Gentle horse'),
(6, 1, 'Lightning', 'Thoroughbred', 9, 2, 25, 'Central plaza ride', '10:00-19:00', 260.00, 0, 'Helmet, First Aid', 112, 109, 4, 'Healthy', '2025-09-12', 'Active', 'Central Plaza', 'Fast horse'),
(7, 1, 'Majesty', 'Friesian', 12, 1, 30, 'VIP lounge ride', '09:00-18:00', 300.00, 1, 'Helmet, Knee Pad', 102, 109, 3, 'Healthy', '2025-09-20', 'Active', 'VIP Lounge', 'Luxury horse'),
(8, 1, 'Comet', 'Mustang', 7, 1, 20, 'Playground loop', '10:00-17:00', 170.00, 0, 'Helmet', 109, 112, 2, 'Healthy', '2025-08-25', 'Active', 'Playground Area', 'Kids favorite'),
(9, 1, 'Star', 'Arabian', 5, 1, 15, 'Botanical garden ride', '09:00-18:00', 160.00, 1, 'Helmet, First Aid', 112, 102, 2, 'Healthy', '2025-09-05', 'Active', 'Botanical Garden', 'Calm horse'),
(10, 1, 'Flash', 'Quarter Horse', 8, 2, 25, 'Adventure trail extended', '11:00-19:00', 280.00, 0, 'Helmet, Knee Pad', 102, 112, 4, 'Healthy', '2025-07-30', 'Active', 'Adventure Area', 'Strong jumper'),
(11, 1, 'Prince', 'Friesian', 11, 1, 30, 'Resort grounds ride', '09:00-17:00', 240.00, 1, 'Helmet, First Aid', 109, 102, 3, 'Healthy', '2025-08-18', 'Active', 'Resort Grounds', 'Elegant horse'),
(12, 1, 'Queen', 'Arabian', 6, 1, 20, 'Kids zone ride', '10:00-18:00', 150.00, 0, 'Helmet', 112, 109, 2, 'Healthy', '2025-09-02', 'Active', 'Kids Zone', 'Gentle horse'),
(13, 1, 'Bolt', 'Mustang', 9, 2, 25, 'Lake side adventure', '09:00-19:00', 270.00, 1, 'Helmet, Knee Pad', 102, 109, 4, 'Healthy', '2025-09-08', 'Active', 'Lake Side', 'Fast sprinter'),
(14, 1, 'Duke', 'Thoroughbred', 10, 1, 30, 'Garden loop extended', '11:00-18:00', 230.00, 0, 'Helmet, First Aid', 109, 112, 3, 'Healthy', '2025-08-12', 'Active', 'Garden Zone', 'Strong horse'),
(15, 1, 'Ruby', 'Arabian', 7, 1, 20, 'Resort garden ride', '09:00-17:00', 190.00, 1, 'Helmet, Knee Pad', 112, 102, 2, 'Healthy', '2025-09-15', 'Active', 'Resort Garden', 'Popular horse'),
(16, 1, 'Ace', 'Quarter Horse', 8, 2, 25, 'Central plaza loop', '10:00-19:00', 250.00, 0, 'Helmet, First Aid', 102, 112, 4, 'Healthy', '2025-09-22', 'Active', 'Central Plaza', 'Strong jumper'),
(17, 1, 'Bella', 'Friesian', 12, 1, 30, 'VIP lounge ride', '09:00-18:00', 310.00, 1, 'Helmet, Knee Pad', 109, 102, 3, 'Healthy', '2025-09-25', 'Active', 'VIP Lounge', 'Luxury horse'),
(18, 1, 'Max', 'Mustang', 6, 1, 20, 'Playground ride', '10:00-17:00', 160.00, 0, 'Helmet', 112, 109, 2, 'Healthy', '2025-08-28', 'Active', 'Playground Area', 'Kids favorite'),
(19, 1, 'Luna', 'Arabian', 5, 1, 15, 'Botanical garden loop', '09:00-18:00', 155.00, 1, 'Helmet, First Aid', 102, 109, 2, 'Healthy', '2025-09-03', 'Active', 'Botanical Garden', 'Calm horse'),
(20, 1, 'King', 'Thoroughbred', 9, 2, 25, 'Adventure trail ride', '11:00-19:00', 275.00, 0, 'Helmet, Knee Pad', 109, 112, 4, 'Healthy', '2025-09-07', 'Active', 'Adventure Area', 'Strong horse'),
(21, 1, 'Silver', 'Arabian', 8, 1, 20, 'Resort garden loop', '09:00-17:00', 185.00, 1, 'Helmet, Knee Pad', 112, 102, 2, 'Healthy', '2025-09-09', 'Active', 'Resort Garden', 'Gentle horse'),
(22, 1, 'Ranger', 'Mustang', 7, 1, 20, 'Lake side loop', '10:00-18:00', 195.00, 0, 'Helmet', 102, 109, 3, 'Healthy', '2025-09-11', 'Active', 'Lake Side', 'Strong horse'),
(23, 1, 'Glory', 'Friesian', 11, 1, 30, 'VIP lounge ride', '09:00-18:00', 320.00, 1, 'Helmet, Knee Pad', 109, 112, 3, 'Healthy', '2025-09-13', 'Active', 'VIP Lounge', 'Show horse'),
(24, 1, 'Amber', 'Arabian', 6, 1, 20, 'Kids garden loop', '09:00-17:00', 165.00, 0, 'Helmet', 112, 102, 2, 'Healthy', '2025-09-16', 'Active', 'Kids Zone', 'Calm temperament'),
(25, 1, 'Cedar', 'Quarter Horse', 8, 2, 25, 'Adventure trail short', '10:00-19:00', 255.00, 1, 'Helmet, First Aid', 102, 109, 4, 'Healthy', '2025-09-18', 'Active', 'Adventure Area', 'Trail-ready'),
(26, 1, 'Onyx', 'Mustang', 9, 1, 30, 'Lake perimeter ride', '11:00-18:00', 235.00, 0, 'Helmet', 109, 112, 3, 'Healthy', '2025-09-21', 'Active', 'Lake Side', 'Endurance horse'),
(27, 1, 'Maple', 'Arabian', 7, 1, 20, 'Resort ring loop', '09:00-17:00', 175.00, 1, 'Helmet, Knee Pad', 112, 102, 2, 'Healthy', '2025-09-23', 'Active', 'Resort Garden', 'Beginner friendly'),
(28, 1, 'Nova', 'Thoroughbred', 10, 2, 25, 'Central plaza parade', '10:00-19:00', 295.00, 0, 'Helmet, First Aid', 102, 109, 4, 'Healthy', '2025-09-26', 'Active', 'Central Plaza', 'Parade horse'),
(29, 1, 'Echo', 'Friesian', 12, 1, 30, 'VIP exhibition ride', '09:00-18:00', 330.00, 1, 'Helmet, Knee Pad', 109, 112, 3, 'Healthy', '2025-09-28', 'Active', 'VIP Lounge', 'Exhibition favorite')
GO


INSERT INTO KidTrainRide (
    KidTrainRideID, ParkID, TrainName, Capacity, AgeLimit, Duration,
    RouteDescription, DeparturePoint, OperatingHours, DiscountAvailable,
    SafetyEquipment, SupervisorID, StaffCount, MaintenanceStatus,
    LastInspectionDate, Location, Note
)
VALUES
(1, 1, 'Rainbow Express', 40, 12, 20, 'Circular route around kids zone', 'Station A', '09:00-18:00', 1, 'Seat Belt, First Aid Kit', 102, 5, 'Active', '2025-09-01', 'Kids Zone', 'Popular weekend ride'),
(2, 1, 'Sunny Choo-Choo', 30, 10, 15, 'Short loop near playground', 'Station B', '10:00-17:00', 0, 'Seat Belt, Supervisor', 109, 4, 'Active', '2025-08-20', 'Playground Area', 'Safe for younger kids'),
(3, 1, 'Magic Train', 50, 15, 25, 'Extended scenic route around park', 'Station C', '11:00-19:00', 1, 'Seat Belt, Fire Extinguisher', 112, 6, 'Pending', '2025-09-10', 'Central Plaza', 'Under inspection for upgrades')
GO



INSERT INTO KidTrainRide 
(
    KidTrainRideID, ParkID, TrainName, Capacity, AgeLimit, Duration,
    RouteDescription, DeparturePoint, OperatingHours, DiscountAvailable,
    SafetyEquipment, SupervisorID, StaffCount, MaintenanceStatus,
    LastInspectionDate, Location, Note
)
VALUES
(11, 1, 'Junior Express', 25, 9, 12, 'Kids garden loop', 'Station K', '09:00-16:00', 1, 'Seat Belt', 109, 3, 'Active', '2025-10-01', 'Garden Zone', 'Safe for small kids'),
(12, 1, 'Family Choo-Choo', 40, 13, 20, 'Family scenic ride', 'Station L', '10:00-18:00', 0, 'Seat Belt, First Aid Kit', 112, 5, 'Active', '2025-10-03', 'Family Area', 'Designed for families'),
(13, 1, 'Adventure Loop', 35, 14, 18, 'Adventure trail loop', 'Station M', '09:00-17:00', 1, 'Seat Belt, Supervisor', 102, 4, 'Active', '2025-10-05', 'Adventure Area', 'Thrilling ride'),
(14, 1, 'Tiny Wheels', 20, 7, 10, 'Short toddler ride', 'Station N', '09:00-15:00', 0, 'Seat Belt', 109, 2, 'Active', '2025-10-07', 'Kids Zone', 'Safe for toddlers')
GO






INSERT INTO ResortRoom 
(
    RoomID, ResortID, RoomNumber, RoomType, Capacity, BedType, RatePerNight,
    Facilities, AvailabilityStatus, FloorNumber, ViewType, BookingPolicy,
    LastMaintenanceDate, Notes
)
VALUES
-- Green Valley Resort (ResortID = 1)
(1, 1, '101A', 'Deluxe', 2, 'King', 5000.00, 'WiFi,AC,TV', 'Available', 1, 'Garden View', 'Free cancellation 24h', '2025-01-10', 'Recently renovated'),
(2, 1, '102B', 'Standard', 2, 'Queen', 4000.00, 'WiFi,AC', 'Booked', 1, 'City View', 'Non-refundable', '2025-02-05', 'Minor wear'),
(3, 1, '201C', 'Suite', 4, 'King', 7000.00, 'WiFi,AC,TV,MiniBar', 'Available', 2, 'Sea View', 'Free cancellation 48h', '2025-03-01', 'VIP guest room'),

-- Sunshine Resort (ResortID = 2)
(4, 2, '301D', 'Standard', 2, 'Twin', 4500.00, 'WiFi', 'Available', 3, 'City View', 'Non-refundable', '2025-01-20', 'Basic amenities'),
(5, 2, '302E', 'Deluxe', 3, 'Queen', 6000.00, 'WiFi,AC,TV', 'Maintenance', 3, 'Pool View', 'Free cancellation 24h', '2025-02-15', 'AC repair scheduled'),
(6, 2, '401F', 'Suite', 5, 'King', 8000.00, 'WiFi,AC,TV,MiniBar,Jacuzzi', 'Booked', 4, 'Sea View', 'Free cancellation 72h', '2025-03-10', 'High demand'),

-- Dreamland Resort (ResortID = 3)
(7, 3, '501G', 'Standard', 2, 'Twin', 3500.00, 'WiFi,AC', 'Available', 5, 'Garden View', 'Non-refundable', '2025-01-25', 'Quiet corner'),
(8, 3, '502H', 'Deluxe', 3, 'King', 4500.00, 'WiFi,AC,TV', 'Available', 5, 'Sea View', 'Free cancellation 24h', '2025-02-18', 'Popular choice'),
(9, 3, '601I', 'Suite', 4, 'Queen', 6500.00, 'WiFi,AC,TV,MiniBar', 'Booked', 6, 'Mountain View', 'Free cancellation 48h', '2025-03-05', 'Family booking'),

-- River View Resort (ResortID = 4)
(10, 4, '701J', 'Standard', 2, 'Twin', 4000.00, 'WiFi', 'Available', 7, 'River View', 'Non-refundable', '2025-01-30', 'Budget option'),
(11, 4, '702K', 'Deluxe', 2, 'King', 6000.00, 'WiFi,AC,TV', 'Booked', 7, 'River View', 'Free cancellation 24h', '2025-02-22', 'Couple stay'),
(12, 4, '801L', 'Suite', 6, 'King', 9000.00, 'WiFi,AC,TV,MiniBar,Jacuzzi', 'Available', 8, 'Sea View', 'Free cancellation 72h', '2025-03-12', 'Penthouse'),

-- Fantasy Island Resort (ResortID = 5)
(13, 5, '901M', 'Standard', 2, 'Queen', 4500.00, 'WiFi,AC', 'Available', 9, 'Pool View', 'Non-refundable', '2025-01-28', 'Recently cleaned'),
(14, 5, '902N', 'Deluxe', 3, 'King', 7500.00, 'WiFi,AC,TV', 'Booked', 9, 'Sea View', 'Free cancellation 24h', '2025-02-25', 'Honeymoon suite'),
(15, 5, '1001O', 'Suite', 5, 'King', 9500.00, 'WiFi,AC,TV,MiniBar', 'Available', 10, 'Beach View', 'Free cancellation 48h', '2025-03-08', 'Luxury'),

-- Heritage Resort (ResortID = 6)
(16, 6, '1101P', 'Standard', 2, 'Twin', 3000.00, 'WiFi', 'Available', 11, 'City View', 'Non-refundable', '2025-01-12', 'Basic room'),
(17, 6, '1102Q', 'Deluxe', 4, 'Queen', 4000.00, 'WiFi,AC,TV', 'Booked', 11, 'Garden View', 'Free cancellation 24h', '2025-02-28', 'Family stay'),
(18, 6, '1201R', 'Suite', 6, 'King', 6000.00, 'WiFi,AC,TV,MiniBar,Jacuzzi', 'Available', 12, 'Sea View', 'Free cancellation 72h', '2025-03-15', 'Presidential suite'),

-- Skyline Resort (ResortID = 7)
(19, 7, '1301S', 'Standard', 2, 'Twin', 3500.00, 'WiFi,AC', 'Available', 13, 'Pool View', 'Non-refundable', '2025-01-18', 'Economy'),
(20, 7, '1302T', 'Deluxe', 3, 'King', 5000.00, 'WiFi,AC,TV', 'Booked', 13, 'Sky View', 'Free cancellation 24h', '2025-02-12', 'Couple retreat')
GO



INSERT INTO FerrisWheel 
(
    FerrisWheelID, ParkID, WheelType, Height, Capacity, CabinCount, CabinCapacity,
    Duration, OperatingHours, TicketPrice, DiscountAvailable, AgeLimit,
    SafetyEquipment, SupervisorID, StaffCount, MaintenanceStatus,
    LastInspectionDate, Location, Note
)
VALUES
(1, 1, 'Giant Wheel', 60.00, 120, 30, 4, 15, '09:00-18:00', 200.00, 1, 5, 'Seat Belt, Fire Extinguisher', 102, 6, 'Active', '2025-09-01', 'Zone A', 'Main attraction'),
(2, 1, 'Observation Wheel', 45.00, 80, 20, 4, 12, '10:00-19:00', 150.00, 0, 6, 'Seat Belt', 109, 4, 'Active', '2025-08-20', 'Zone B', 'Scenic view'),
(3, 1, 'Mini Wheel', 25.00, 40, 10, 4, 8, '09:00-17:00', 100.00, 1, 3, 'Seat Belt', 112, 3, 'Active', '2025-09-10', 'Kids Zone', 'Safe for children'),
(4, 1, 'Sky Wheel', 70.00, 140, 35, 4, 20, '11:00-20:00', 250.00, 1, 7, 'Seat Belt, First Aid Kit', 102, 7, 'Pending', '2025-09-12', 'Central Plaza', 'Inspection due')
GO




INSERT INTO EmployeeSalaryGrade (
    GradeID, GradeName, BasicSalary, Allowance, BonusPercentage
)
VALUES
(1, 'Grade A', 50000.00, 8000.00, 12.00),   
(2, 'Grade B', 40000.00, 6000.00, 10.00),   
(3, 'Grade C', 30000.00, 4000.00, 8.00),    
(4, 'Grade D', 25000.00, 3000.00, 6.00),    
(5, 'Grade E', 20000.00, 2000.00, 5.00),    
(6, 'Grade F', 18000.00, 1500.00, 4.00),    
(7, 'Grade G', 15000.00, 1000.00, 3.00),    
(8, 'Grade H', 12000.00, 800.00, 2.50),     
(9, 'Grade I', 10000.00, 500.00, 2.00),     
(10, 'Grade J', 8000.00, 300.00, 1.50)
GO



INSERT INTO EmployeePayment (
    PaymentID, EmployeeID, GradeID, PaymentDate, NetSalary
)
VALUES
(1, 101, 5, '2025-12-01', 20000 + 2000 + (20000*0.05)),   
(2, 102, 1, '2025-12-01', 50000 + 8000 + (50000*0.12)),   
(3, 103, 3, '2025-12-01', 30000 + 4000 + (30000*0.08)),   
(4, 104, 4, '2025-12-01', 25000 + 3000 + (25000*0.06)),   
(5, 105, 5, '2025-12-01', 20000 + 2000 + (20000*0.05)),   
(6, 106, 1, '2025-12-01', 50000 + 8000 + (50000*0.12)),   
(7, 107, 4, '2025-12-01', 25000 + 3000 + (25000*0.06)),   
(8, 108, 3, '2025-12-01', 30000 + 4000 + (30000*0.08)),   
(9, 109, 5, '2025-12-01', 20000 + 2000 + (20000*0.05)),   
(10, 110, 6, '2025-12-01', 18000 + 1500 + (18000*0.04)),  
(11, 111, 7, '2025-12-01', 15000 + 1000 + (15000*0.03)),  
(12, 112, 2, '2025-12-01', 40000 + 6000 + (40000*0.10)),  
(13, 113, 3, '2025-12-01', 30000 + 4000 + (30000*0.08)),  
(14, 114, 4, '2025-12-01', 25000 + 3000 + (25000*0.06)),  
(15, 115, 5, '2025-12-01', 20000 + 2000 + (20000*0.05)),  
(16, 101, 5, '2025-11-01', 20000 + 2000 + (20000*0.05)),  
(17, 102, 1, '2025-11-01', 50000 + 8000 + (50000*0.12)),  
(18, 103, 3, '2025-11-01', 30000 + 4000 + (30000*0.08)),  
(19, 104, 4, '2025-11-01', 25000 + 3000 + (25000*0.06)),  
(20, 105, 5, '2025-11-01', 20000 + 2000 + (20000*0.05))
GO




INSERT INTO Expense 
(
    ExpenseID, ParkID, ExpenseType, Description, Amount, ExpenseDate, SupervisorID
)
VALUES
(1, 1, 'Maintenance', 'Ferris Wheel repair', 15000.00, '2025-01-05', 102),
(2, 1, 'Utilities', 'Electricity bill January', 12000.00, '2025-01-10', 109),
(3, 1, 'Supplies', 'Gardening tools purchase', 5000.00, '2025-01-12', 112),
(4, 1, 'Salaries', 'Monthly staff salaries', 80000.00, '2025-01-15', 102),
(5, 1, 'Food', 'Canteen food supplies', 7000.00, '2025-01-18', 109),
(6, 1, 'Cleaning', 'Park cleaning contract', 9000.00, '2025-01-20', 112),
(7, 1, 'Security', 'CCTV installation', 25000.00, '2025-01-22', 102),
(8, 1, 'Marketing', 'Event promotion posters', 6000.00, '2025-01-25', 109),
(9, 1, 'Transport', 'Shuttle bus fuel', 4000.00, '2025-01-28', 112),
(10, 1, 'Medical', 'First aid kits purchase', 3500.00, '2025-02-01', 102),
(11, 1, 'Maintenance', 'Boat ride engine service', 18000.00, '2025-02-03', 109),
(12, 1, 'Utilities', 'Water bill February', 8000.00, '2025-02-05', 112),
(13, 1, 'Supplies', 'Office stationery', 2500.00, '2025-02-07', 102),
(14, 1, 'Food', 'Restaurant raw materials', 9500.00, '2025-02-10', 109),
(15, 1, 'Cleaning', 'Washroom deep cleaning', 6000.00, '2025-02-12', 112),
(16, 1, 'Security', 'Hiring extra guards', 12000.00, '2025-02-15', 102),
(17, 1, 'Marketing', 'Social media ads', 7000.00, '2025-02-18', 109),
(18, 1, 'Transport', 'Vehicle maintenance', 10000.00, '2025-02-20', 112),
(19, 1, 'Medical', 'Veterinary supplies for zoo', 8500.00, '2025-02-22', 102),
(20, 1, 'Maintenance', 'Playground equipment repair', 20000.00, '2025-02-25', 109)
GO



INSERT INTO MaintenanceLog 
(
    MaintenanceID, ParkID, RideType, RideID, IssueDescription,
    ReportedDate, MaintenanceDate, Cost, SupervisorID, TechnicianID,
    Status, NextInspectionDate, Notes
)
VALUES
(1, 1, 'Ferris Wheel', 1, 'Engine malfunction', '2025-01-05', '2025-01-06', 15000.00, 102, 109, 'Completed', '2025-02-05', 'Engine repaired successfully'),
(2, 1, 'Boat Ride', 2, 'Leak in hull', '2025-01-07', '2025-01-08', 8000.00, 109, 112, 'Completed', '2025-02-07', 'Hull patched'),
(3, 1, 'Horse Ride', 3, 'Saddle broken', '2025-01-10', NULL, NULL, 102, 109, 'Pending', '2025-01-20', 'Awaiting new saddle'),
(4, 1, 'Kid Train', 4, 'Wheel alignment issue', '2025-01-12', '2025-01-13', 5000.00, 112, 102, 'Completed', '2025-02-12', 'Wheel adjusted'),
(5, 1, 'Water Balloon Walk', 5, 'Safety net torn', '2025-01-15', '2025-01-16', 3000.00, 109, 112, 'Completed', '2025-02-15', 'Net replaced'),
(6, 1, 'Ferris Wheel', 1, 'Lighting system failure', '2025-01-18', '2025-01-19', 7000.00, 102, 109, 'Completed', '2025-02-18', 'Lights fixed'),
(7, 1, 'Boat Ride', 2, 'Oar damage', '2025-01-20', NULL, NULL, 109, 112, 'Pending', '2025-01-30', 'Replacement ordered'),
(8, 1, 'Horse Ride', 3, 'Horse injured', '2025-01-22', '2025-01-23', 4000.00, 112, 102, 'Completed', '2025-02-22', 'Vet treatment done'),
(9, 1, 'Kid Train', 4, 'Brake issue', '2025-01-25', '2025-01-26', 6000.00, 102, 109, 'Completed', '2025-02-25', 'Brake repaired'),
(10, 1, 'Water Balloon Walk', 5, 'Floor slippery', '2025-01-28', NULL, NULL, 109, 112, 'InProgress', '2025-02-28', 'Anti-slip mats installing'),
(11, 1, 'Ferris Wheel', 1, 'Cabin door jammed', '2025-02-01', '2025-02-02', 5500.00, 102, 109, 'Completed', '2025-03-01', 'Door fixed'),
(12, 1, 'Boat Ride', 2, 'Paint peeling', '2025-02-03', '2025-02-04', 2500.00, 109, 112, 'Completed', '2025-03-03', 'Repainted'),
(13, 1, 'Horse Ride', 3, 'Fence broken', '2025-02-05', NULL, NULL, 112, 102, 'Pending', '2025-02-15', 'Fence repair scheduled'),
(14, 1, 'Kid Train', 4, 'Track rusting', '2025-02-07', '2025-02-08', 9000.00, 102, 109, 'Completed', '2025-03-07', 'Track cleaned'),
(15, 1, 'Water Balloon Walk', 5, 'Balloon leakage', '2025-02-10', '2025-02-11', 3500.00, 109, 112, 'Completed', '2025-03-10', 'Balloon replaced'),
(16, 1, 'Ferris Wheel', 1, 'Noise in rotation', '2025-02-13', NULL, NULL, 102, 109, 'InProgress', '2025-03-13', 'Lubrication ongoing'),
(17, 1, 'Boat Ride', 2, 'Seat broken', '2025-02-15', '2025-02-16', 4500.00, 109, 112, 'Completed', '2025-03-15', 'Seat repaired'),
(18, 1, 'Horse Ride', 3, 'Horse shoe replacement', '2025-02-18', '2025-02-19', 2000.00, 112, 102, 'Completed', '2025-03-18', 'Shoes replaced'),
(19, 1, 'Kid Train', 4, 'Signal light failure', '2025-02-20', '2025-02-21', 3000.00, 102, 109, 'Completed', '2025-03-20', 'Signal fixed'),
(20, 1, 'Water Balloon Walk', 5, 'Fence loose', '2025-02-23', NULL, NULL, 109, 112, 'Pending', '2025-03-01', 'Fence tightening scheduled')
GO



INSERT INTO AttendanceStaffShift 
(
    AttendanceID, EmployeeID, ParkID, ShiftDate, ShiftType,
    StartTime, EndTime, TotalHours, Status, SupervisorID, Notes
)
VALUES
(1, 101, 1, '2025-12-01', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'On time'),
(2, 102, 1, '2025-12-01', 'Afternoon', '13:00', '17:00', 4.00, 'Late', 109, 'Arrived 30 mins late'),
(3, 103, 1, '2025-12-01', 'Evening', '17:00', '21:00', 4.00, 'Absent', 112, 'Called in sick'),
(4, 104, 1, '2025-12-02', 'Morning', '09:00', '13:00', 4.00, 'OnLeave', 102, 'Approved leave for family event'),
(5, 105, 1, '2025-12-02', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Worked full shift'),
(6, 106, 1, '2025-12-02', 'Evening', '17:00', '21:00', 4.00, 'Present', 112, 'Completed assigned tasks'),
(7, 107, 1, '2025-12-03', 'Morning', '09:00', '13:00', 4.00, 'Late', 102, 'Traffic delay'),
(8, 108, 1, '2025-12-03', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Worked overtime'),
(9, 109, 1, '2025-12-03', 'Evening', '17:00', '21:00', 4.00, 'Absent', 112, 'Family emergency'),
(10, 110, 1, '2025-12-04', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'Regular duties'),
(11, 111, 1, '2025-12-04', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Assisted visitors'),
(12, 112, 1, '2025-12-04', 'Evening', '17:00', '21:00', 4.00, 'OnLeave', 112, 'Medical leave'),
(13, 113, 1, '2025-12-05', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'Worked efficiently'),
(14, 114, 1, '2025-12-05', 'Afternoon', '13:00', '17:00', 4.00, 'Late', 109, 'Arrived 15 mins late'),
(15, 115, 1, '2025-12-05', 'Evening', '17:00', '21:00', 4.00, 'Present', 112, 'Handled ticket counter'),
(16, 101, 1, '2025-12-06', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'Routine gardening'),
(17, 102, 1, '2025-12-06', 'Afternoon', '13:00', '17:00', 4.00, 'Absent', 109, 'Uninformed absence'),
(18, 103, 1, '2025-12-06', 'Evening', '17:00', '21:00', 4.00, 'Present', 112, 'Supervised rides'),
(19, 104, 1, '2025-12-07', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'Led prayer session'),
(20, 105, 1, '2025-12-07', 'Afternoon', '13:00', '17:00', 4.00, 'OnLeave', 109, 'Personal leave'),
(21, 106, 1, '2025-12-08', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'Routine check'),
(22, 107, 1, '2025-12-08', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Kitchen duty'),
(23, 108, 1, '2025-12-08', 'Evening', '17:00', '21:00', 4.00, 'Late', 112, 'Arrived 20 mins late'),
(24, 109, 1, '2025-12-09', 'Morning', '09:00', '13:00', 4.00, 'Absent', 102, 'Uninformed absence'),
(25, 110, 1, '2025-12-09', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Maintenance work'),
(26, 111, 1, '2025-12-09', 'Evening', '17:00', '21:00', 4.00, 'Present', 112, 'Ticket counter duty'),
(27, 112, 1, '2025-12-10', 'Morning', '09:00', '13:00', 4.00, 'OnLeave', 102, 'Approved medical leave'),
(28, 113, 1, '2025-12-10', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'HR tasks'),
(29, 114, 1, '2025-12-10', 'Evening', '17:00', '21:00', 4.00, 'Present', 112, 'Safety supervision'),
(30, 115, 1, '2025-12-11', 'Morning', '09:00', '13:00', 4.00, 'Late', 102, 'Arrived 10 mins late'),
(31, 101, 1, '2025-12-11', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Gardening duty'),
(32, 102, 1, '2025-12-11', 'Evening', '17:00', '21:00', 4.00, 'Absent', 112, 'Family emergency'),
(33, 103, 1, '2025-12-12', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'Operations supervision'),
(34, 104, 1, '2025-12-12', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Mosque duties'),
(35, 105, 1, '2025-12-12', 'Evening', '17:00', '21:00', 4.00, 'OnLeave', 112, 'Personal leave'),
(36, 106, 1, '2025-12-13', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'Zoo veterinary check'),
(37, 107, 1, '2025-12-13', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Kitchen shift'),
(38, 108, 1, '2025-12-13', 'Evening', '17:00', '21:00', 4.00, 'Late', 112, 'Arrived 25 mins late'),
(39, 109, 1, '2025-12-14', 'Morning', '09:00', '13:00', 4.00, 'Present', 102, 'Ticket counter'),
(40, 110, 1, '2025-12-14', 'Afternoon', '13:00', '17:00', 4.00, 'Present', 109, 'Maintenance duty')
GO




INSERT INTO Payroll 
(
    PayrollID, EmployeeID, PayPeriodStart, PayPeriodEnd,
    BasicSalary, Allowance, OvertimePay, Deduction,
    PaymentDate, PaymentMethod, PaymentStatus
)
VALUES
(1, 101, '2025-11-01', '2025-11-30', 20000.00, 2000.00, 1500.00, 500.00, '2025-12-01', 'Cash', 'Paid'),
(2, 102, '2025-11-01', '2025-11-30', 45000.00, 6000.00, 2000.00, 1000.00, '2025-12-01', 'BankTransfer', 'Paid'),
(3, 103, '2025-11-01', '2025-11-30', 30000.00, 4000.00, 1200.00, 800.00, '2025-12-01', 'BankTransfer', 'Paid'),
(4, 104, '2025-11-01', '2025-11-30', 25000.00, 3000.00, 1000.00, 500.00, '2025-12-01', 'Cash', 'Paid'),
(5, 105, '2025-11-01', '2025-11-30', 20000.00, 2000.00, 800.00, 300.00, '2025-12-01', 'Cash', 'Paid'),
(6, 106, '2025-11-01', '2025-11-30', 55000.00, 7000.00, 2500.00, 1500.00, '2025-12-01', 'BankTransfer', 'Paid'),
(7, 107, '2025-11-01', '2025-11-30', 28000.00, 2500.00, 1000.00, 400.00, '2025-12-01', 'Cash', 'Paid'),
(8, 108, '2025-11-01', '2025-11-30', 27000.00, 2000.00, 1200.00, 600.00, '2025-12-01', 'BankTransfer', 'Paid'),
(9, 109, '2025-11-01', '2025-11-30', 20000.00, 1500.00, 500.00, 200.00, '2025-12-01', 'Cash', 'Paid'),
(10, 110, '2025-11-01', '2025-11-30', 22000.00, 1800.00, 700.00, 300.00, '2025-12-01', 'MobileBanking', 'Paid'),
(11, 111, '2025-11-01', '2025-11-30', 18500.00, 1000.00, 400.00, 200.00, '2025-12-01', 'Cash', 'Paid'),
(12, 112, '2025-11-01', '2025-11-30', 48000.00, 5000.00, 2000.00, 1000.00, '2025-12-01', 'BankTransfer', 'Paid'),
(13, 113, '2025-11-01', '2025-11-30', 31000.00, 2500.00, 1000.00, 500.00, '2025-12-01', 'BankTransfer', 'Paid'),
(14, 114, '2025-11-01', '2025-11-30', 29000.00, 2200.00, 900.00, 400.00, '2025-12-01', 'BankTransfer', 'Paid'),
(15, 115, '2025-11-01', '2025-11-30', 21000.00, 1500.00, 600.00, 300.00, '2025-12-01', 'Cash', 'Paid'),
(16, 101, '2025-10-01', '2025-10-31', 20000.00, 2000.00, 1000.00, 400.00, '2025-11-01', 'Cash', 'Paid'),
(17, 102, '2025-10-01', '2025-10-31', 45000.00, 6000.00, 1800.00, 900.00, '2025-11-01', 'BankTransfer', 'Paid'),
(18, 103, '2025-10-01', '2025-10-31', 30000.00, 4000.00, 1000.00, 700.00, '2025-11-01', 'BankTransfer', 'Paid'),
(19, 104, '2025-10-01', '2025-10-31', 25000.00, 3000.00, 800.00, 400.00, '2025-11-01', 'Cash', 'Paid'),
(20, 105, '2025-10-01', '2025-10-31', 20000.00, 2000.00, 600.00, 300.00, '2025-11-01', 'Cash', 'Paid'),
(21, 106, '2025-10-01', '2025-10-31', 55000.00, 7000.00, 2200.00, 1200.00, '2025-11-01', 'BankTransfer', 'Paid'),
(22, 107, '2025-10-01', '2025-10-31', 28000.00, 2500.00, 900.00, 400.00, '2025-11-01', 'Cash', 'Paid'),
(23, 108, '2025-10-01', '2025-10-31', 27000.00, 2000.00, 1000.00, 500.00, '2025-11-01', 'BankTransfer', 'Paid'),
(24, 109, '2025-10-01', '2025-10-31', 20000.00, 1500.00, 600.00, 300.00, '2025-11-01', 'Cash', 'Paid'),
(25, 110, '2025-10-01', '2025-10-31', 22000.00, 1800.00, 700.00, 200.00, '2025-11-01', 'MobileBanking', 'Paid'),
(26, 111, '2025-10-01', '2025-10-31', 18500.00, 1000.00, 400.00, 200.00, '2025-11-01', 'Cash', 'Paid'),
(27, 112, '2025-10-01', '2025-10-31', 48000.00, 5000.00, 1800.00, 900.00, '2025-11-01', 'BankTransfer', 'Paid'),
(28, 113, '2025-10-01', '2025-10-31', 31000.00, 2500.00, 900.00, 400.00, '2025-11-01', 'BankTransfer', 'Paid'),
(29, 114, '2025-10-01', '2025-10-31', 29000.00, 2200.00, 800.00, 300.00, '2025-11-01', 'BankTransfer', 'Paid'),
(30, 115, '2025-10-01', '2025-10-31', 21000.00, 1500.00, 500.00, 200.00, '2025-11-01', 'Cash', 'Paid'),
(31, 101, '2025-09-01', '2025-09-30', 20000.00, 2000.00, 1200.00, 400.00, '2025-10-01', 'Cash', 'Paid'),
(32, 102, '2025-09-01', '2025-09-30', 45000.00, 6000.00, 2000.00, 1000.00, '2025-10-01', 'BankTransfer', 'Paid'),
(33, 103, '2025-09-01', '2025-09-30', 30000.00, 4000.00, 1000.00, 700.00, '2025-10-01', 'BankTransfer', 'Paid'),
(34, 104, '2025-09-01', '2025-09-30', 25000.00, 3000.00, 800.00, 400.00, '2025-10-01', 'Cash', 'Paid'),
(35, 105, '2025-09-01', '2025-09-30', 20000.00, 2000.00, 600.00, 300.00, '2025-10-01', 'Cash', 'Paid'),
(36, 106, '2025-09-01', '2025-09-30', 55000.00, 7000.00, 2200.00, 1200.00, '2025-10-01', 'BankTransfer', 'Paid'),
(37, 107, '2025-09-01', '2025-09-30', 28000.00, 2500.00, 900.00, 400.00, '2025-10-01', 'Cash', 'Paid'),
(38, 108, '2025-09-01', '2025-09-30', 27000.00, 2000.00, 1000.00, 500.00, '2025-10-01', 'BankTransfer', 'Paid'),
(39, 109, '2025-09-01', '2025-09-30', 20000.00, 1500.00, 600.00, 300.00, '2025-10-01', 'Cash', 'Paid'),
(40, 110, '2025-09-01', '2025-09-30', 22000.00, 1800.00, 700.00, 200.00, '2025-10-01', 'MobileBanking', 'Paid')
GO




INSERT INTO RevenueSummary 
(
    SummaryID, ParkID, TotalIncome, TotalExpense, LastUpdated
)
VALUES
(1, 1, 150000.00, 80000.00, '2025-11-01'),
(2, 1, 175000.00, 95000.00, '2025-11-02'),
(3, 1, 160000.00, 70000.00, '2025-11-03'),
(4, 1, 180000.00, 85000.00, '2025-11-04'),
(5, 1, 200000.00, 100000.00, '2025-11-05'),
(6, 1, 155000.00, 75000.00, '2025-11-06'),
(7, 1, 165000.00, 82000.00, '2025-11-07'),
(8, 1, 170000.00, 90000.00, '2025-11-08'),
(9, 1, 185000.00, 95000.00, '2025-11-09'),
(10, 1, 190000.00, 97000.00, '2025-11-10'),
(11, 1, 175000.00, 88000.00, '2025-11-11'),
(12, 1, 160000.00, 76000.00, '2025-11-12'),
(13, 1, 200000.00, 110000.00, '2025-11-13'),
(14, 1, 210000.00, 120000.00, '2025-11-14'),
(15, 1, 195000.00, 95000.00, '2025-11-15'),
(16, 1, 185000.00, 87000.00, '2025-11-16'),
(17, 1, 170000.00, 80000.00, '2025-11-17'),
(18, 1, 165000.00, 78000.00, '2025-11-18'),
(19, 1, 180000.00, 92000.00, '2025-11-19'),
(20, 1, 190000.00, 95000.00, '2025-11-20')
GO



INSERT INTO TicketSales
(
    TicketID, VisitorID, ParkID, TicketType,
    PurchaseDate, ValidDate, Price, Quantity, PaymentMethod
)
VALUES
(91, 21, 1, 'Ferris Wheel', '2026-01-16', '2026-01-16', 250.00, 2, 'Cash'),
(92, 22, 1, 'Boat Ride', '2026-01-16', '2026-01-16', 300.00, 1, 'Card'),
(93, 23, 1, 'Zoo', '2026-01-17', '2026-01-17', 200.00, 3, 'Online'),
(94, 24, 1, 'Park', '2026-01-17', '2026-01-17', 150.00, 1, 'Cash'),
(95, 25, 1, 'Parking', '2026-01-18', '2026-01-18', 100.00, 1, 'Card'),
(96, 26, 1, 'Horse Ride', '2026-01-18', '2026-01-18', 350.00, 2, 'Online'),
(97, 27, 1, 'Water Balloon Walks', '2026-01-19', '2026-01-19', 180.00, 1, 'Cash'),
(98, 28, 1, 'Kid Train Ride', '2026-01-19', '2026-01-19', 220.00, 2, 'Card'),
(99, 29, 1, 'Ferris Wheel', '2026-01-20', '2026-01-20', 250.00, 1, 'Online'),
(100, 30, 1, 'Boat Ride', '2026-01-20', '2026-01-20', 300.00, 1, 'Cash'),
(101, 31, 1, 'Zoo', '2026-01-21', '2026-01-21', 200.00, 2, 'Card'),
(102, 32, 1, 'Park', '2026-01-21', '2026-01-21', 150.00, 3, 'Online'),
(103, 33, 1, 'Parking', '2026-01-22', '2026-01-22', 100.00, 1, 'Cash'),
(104, 34, 1, 'Horse Ride', '2026-01-22', '2026-01-22', 350.00, 1, 'Card'),
(105, 35, 1, 'Water Balloon Walks', '2026-01-23', '2026-01-23', 180.00, 2, 'Online'),
(106, 36, 1, 'Kid Train Ride', '2026-01-23', '2026-01-23', 220.00, 1, 'Cash'),
(107, 37, 1, 'Ferris Wheel', '2026-01-24', '2026-01-24', 250.00, 3, 'Card'),
(108, 38, 1, 'Boat Ride', '2026-01-24', '2026-01-24', 300.00, 2, 'Online'),
(109, 39, 1, 'Zoo', '2026-01-25', '2026-01-25', 200.00, 1, 'Cash'),
(110, 40, 1, 'Park', '2026-01-25', '2026-01-25', 150.00, 2, 'Card'),
(111, 21, 1, 'Parking', '2026-01-26', '2026-01-26', 100.00, 1, 'Online'),
(112, 22, 1, 'Horse Ride', '2026-01-26', '2026-01-26', 350.00, 2, 'Cash'),
(113, 23, 1, 'Water Balloon Walks', '2026-01-27', '2026-01-27', 180.00, 1, 'Card'),
(114, 24, 1, 'Kid Train Ride', '2026-01-27', '2026-01-27', 220.00, 2, 'Online'),
(115, 25, 1, 'Ferris Wheel', '2026-01-28', '2026-01-28', 250.00, 1, 'Cash'),
(116, 26, 1, 'Boat Ride', '2026-01-28', '2026-01-28', 300.00, 2, 'Card'),
(117, 27, 1, 'Zoo', '2026-01-29', '2026-01-29', 200.00, 3, 'Online'),
(118, 28, 1, 'Park', '2026-01-29', '2026-01-29', 150.00, 2, 'Cash'),
(119, 29, 1, 'Parking', '2026-01-30', '2026-01-30', 100.00, 1, 'Card'),
(120, 30, 1, 'Horse Ride', '2026-01-30', '2026-01-30', 350.00, 2, 'Online'),
(121, 31, 1, 'Water Balloon Walks', '2026-01-31', '2026-01-31', 180.00, 1, 'Cash'),
(122, 32, 1, 'Kid Train Ride', '2026-02-01', '2026-02-01', 220.00, 2, 'Card'),
(123, 33, 1, 'Ferris Wheel', '2026-02-01', '2026-02-01', 250.00, 1, 'Online'),
(124, 34, 1, 'Boat Ride', '2026-02-02', '2026-02-02', 300.00, 1, 'Cash'),
(125, 35, 1, 'Zoo', '2026-02-02', '2026-02-02', 200.00, 2, 'Card'),
(126, 36, 1, 'Park', '2026-02-03', '2026-02-03', 150.00, 3, 'Online'),
(127, 37, 1, 'Parking', '2026-02-03', '2026-02-03', 100.00, 1, 'Cash'),
(128, 38, 1, 'Horse Ride', '2026-02-04', '2026-02-04', 350.00, 1, 'Card'),
(129, 39, 1, 'Water Balloon Walks', '2026-02-04', '2026-02-04', 180.00, 2, 'Online'),
(130, 40, 1, 'Kid Train Ride', '2026-02-05', '2026-02-05', 220.00, 1, 'Cash')
GO


INSERT INTO ResortBookings (
    BookingID, VisitorID, RoomID, BookingDate,
    CheckInDate, CheckOutDate, TotalAmount,
    PaymentStatus, BookingStatus
)
VALUES
(1, 21, 1, '2025-12-01', '2025-12-05', '2025-12-08', 15000.00, 'Paid', 'Confirmed'),
(2, 22, 2, '2025-12-02', '2025-12-06', '2025-12-09', 12000.00, 'Pending', 'Confirmed'),
(3, 23, 3, '2025-12-03', '2025-12-07', '2025-12-10', 21000.00, 'Partial', 'Confirmed'),
(4, 24, 4, '2025-12-04', '2025-12-08', '2025-12-11', 9000.00, 'Paid', 'CheckedOut'),
(5, 25, 5, '2025-12-05', '2025-12-09', '2025-12-12', 18000.00, 'Paid', 'Cancelled'),
(6, 26, 6, '2025-12-06', '2025-12-10', '2025-12-13', 24000.00, 'Pending', 'Confirmed'),
(7, 27, 7, '2025-12-07', '2025-12-11', '2025-12-14', 14000.00, 'Paid', 'Confirmed'),
(8, 28, 8, '2025-12-08', '2025-12-12', '2025-12-15', 13500.00, 'Partial', 'Confirmed'),
(9, 29, 9, '2025-12-09', '2025-12-13', '2025-12-16', 26000.00, 'Paid', 'CheckedOut'),
(10, 30, 10, '2025-12-10', '2025-12-14', '2025-12-17', 8000.00, 'Paid', 'Confirmed'),
(11, 31, 11, '2025-12-11', '2025-12-15', '2025-12-18', 12000.00, 'Pending', 'Confirmed'),
(12, 32, 12, '2025-12-12', '2025-12-16', '2025-12-19', 27000.00, 'Paid', 'Cancelled'),
(13, 33, 13, '2025-12-13', '2025-12-17', '2025-12-20', 9000.00, 'Partial', 'Confirmed'),
(14, 34, 14, '2025-12-14', '2025-12-18', '2025-12-21', 22500.00, 'Paid', 'Confirmed'),
(15, 35, 15, '2025-12-15', '2025-12-19', '2025-12-22', 28500.00, 'Paid', 'CheckedOut'),
(16, 36, 16, '2025-12-16', '2025-12-20', '2025-12-23', 6000.00, 'Pending', 'Confirmed'),
(17, 37, 17, '2025-12-17', '2025-12-21', '2025-12-24', 16000.00, 'Paid', 'Confirmed'),
(18, 38, 18, '2025-12-18', '2025-12-22', '2025-12-25', 36000.00, 'Partial', 'Confirmed'),
(19, 39, 19, '2025-12-19', '2025-12-23', '2025-12-26', 7000.00, 'Paid', 'Cancelled'),
(20, 40, 20, '2025-12-20', '2025-12-24', '2025-12-27', 20000.00, 'Paid', 'Confirmed'),
(21, 21, 2, '2025-12-21', '2025-12-25', '2025-12-28', 16000.00, 'Pending', 'Confirmed'),
(22, 22, 3, '2025-12-22', '2025-12-26', '2025-12-29', 21000.00, 'Paid', 'Confirmed'),
(23, 23, 4, '2025-12-23', '2025-12-27', '2025-12-30', 9000.00, 'Partial', 'Confirmed'),
(24, 24, 5, '2025-12-24', '2025-12-28', '2025-12-31', 18000.00, 'Paid', 'CheckedOut'),
(25, 25, 6, '2025-12-25', '2025-12-29', '2026-01-01', 24000.00, 'Paid', 'Confirmed')
GO




INSERT INTO CustomerFeedback (
    FeedbackID, VisitorID, ServiceType, ReferenceID,
    Rating, Comments, SubmissionDate
)
VALUES
(1, 21, 'Park', 1, 5, 'Beautiful park, very clean and well maintained.', '2025-12-01'),
(2, 22, 'Resort', 2, 4, 'Comfortable stay, but food service was slow.', '2025-12-02'),
(3, 23, 'Ride', 3, 5, 'The roller coaster was thrilling!', '2025-12-03'),
(4, 24, 'Food', 4, 3, 'Snacks were average, could be fresher.', '2025-12-04'),
(5, 25, 'Staff', NULL, 5, 'Staff were very friendly and helpful.', '2025-12-05'),
(6, 26, 'Park', 2, 4, 'Nice environment, but crowded on weekends.', '2025-12-06'),
(7, 27, 'Resort', 5, 5, 'Luxury suite was excellent, highly recommended.', '2025-12-07'),
(8, 28, 'Ride', 6, 2, 'Boat ride was too short.', '2025-12-08'),
(9, 29, 'Food', 7, 4, 'Restaurant had good variety of dishes.', '2025-12-09'),
(10, 30, 'Staff', NULL, 3, 'Staff seemed busy, slow response.', '2025-12-10'),
(11, 31, 'Park', 3, 5, 'Loved the garden view and peaceful atmosphere.', '2025-12-11'),
(12, 32, 'Resort', 8, 4, 'Room was clean but AC noisy.', '2025-12-12'),
(13, 33, 'Ride', 9, 5, 'Ferris wheel ride was amazing at night.', '2025-12-13'),
(14, 34, 'Food', 10, 2, 'Food court lacked seating space.', '2025-12-14'),
(15, 35, 'Staff', NULL, 4, 'Helpful staff guided us properly.', '2025-12-15'),
(16, 36, 'Park', 4, 5, 'River view was stunning.', '2025-12-16'),
(17, 37, 'Resort', 11, 3, 'Room service was delayed.', '2025-12-17'),
(18, 38, 'Ride', 12, 4, 'Kid train ride was fun for children.', '2025-12-18'),
(19, 39, 'Food', 13, 5, 'Delicious meals, especially seafood.', '2025-12-19'),
(20, 40, 'Staff', NULL, 5, 'Staff ensured smooth check-in.', '2025-12-20'),
(21, 21, 'Park', 5, 4, 'Parking area was spacious.', '2025-12-21'),
(22, 22, 'Resort', 14, 5, 'Honeymoon suite was perfect.', '2025-12-22'),
(23, 23, 'Ride', 15, 3, 'Horse ride was enjoyable but expensive.', '2025-12-23'),
(24, 24, 'Food', 16, 4, 'Breakfast buffet was good.', '2025-12-24'),
(25, 25, 'Staff', NULL, 5, 'Staff were polite and professional.', '2025-12-25')
GO



INSERT INTO IncidentReport (
    IncidentID, ParkID, IncidentDate, Location,
    IncidentType, Description, SeverityLevel,
    ReportedBy, ActionTaken
)
VALUES
(1, 1, '2025-12-01 10:15', 'Main Gate', 'Medical', 'Visitor fainted due to heat.', 'Medium', 2, 'Provided first aid and sent to hospital'),
(2, 1, '2025-12-01 14:30', 'Ferris Wheel', 'Technical Failure', 'Ride stopped unexpectedly.', 'High', 12, 'Ride shut down, maintenance team called'),
(3, 1, '2025-12-02 09:45', 'Food Court', 'Lost Item', 'Visitor lost wallet.', 'Low', 2, 'Security notified, item logged'),
(4, 1, '2025-12-02 16:20', 'Parking Area', 'Theft', 'Car window broken, bag stolen.', 'High', 12, 'Police informed, CCTV footage checked'),
(5, 1, '2025-12-03 11:00', 'Resort Lobby', 'Other', 'Visitor complaint about noise.', 'Low', 2, 'Shift manager resolved issue'),
(6, 1, '2025-12-03 15:10', 'Swimming Pool', 'Medical', 'Child slipped near pool.', 'Medium', 12, 'First aid given, safety signs added'),
(7, 1, '2025-12-04 13:00', 'Boat Ride Dock', 'Technical Failure', 'Engine malfunction during ride.', 'Critical', 2, 'Ride suspended, mechanic repaired engine'),
(8, 1, '2025-12-04 17:30', 'Zoo Area', 'Lost Item', 'Visitor lost mobile phone.', 'Low', 12, 'Security logged and announced'),
(9, 1, '2025-12-05 09:00', 'Park Entrance', 'Theft', 'Pickpocket incident reported.', 'Medium', 2, 'Security patrol increased'),
(10, 1, '2025-12-05 18:45', 'Roller Coaster', 'Technical Failure', 'Safety harness issue.', 'High', 12, 'Ride closed, maintenance check done'),
(11, 1, '2025-12-06 12:20', 'Food Court', 'Other', 'Visitor complained about food quality.', 'Low', 2, 'Chef replaced meal'),
(12, 1, '2025-12-06 15:40', 'Garden Area', 'Medical', 'Visitor had allergic reaction.', 'Medium', 12, 'Medical team assisted'),
(13, 1, '2025-12-07 10:10', 'River View Resort', 'Lost Item', 'Guest lost room key.', 'Low', 2, 'Duplicate key issued'),
(14, 1, '2025-12-07 14:00', 'Horse Ride Track', 'Technical Failure', 'Saddle broke during ride.', 'High', 12, 'Horse handler fixed equipment'),
(15, 1, '2025-12-08 11:30', 'Parking Lot', 'Theft', 'Motorbike stolen.', 'Critical', 2, 'Police informed, CCTV reviewed'),
(16, 1, '2025-12-08 16:00', 'Resort Room 801L', 'Other', 'Complaint about AC noise.', 'Low', 12, 'Maintenance scheduled'),
(17, 1, '2025-12-09 09:50', 'Fantasy Island Pool', 'Medical', 'Guest slipped near pool.', 'Medium', 2, 'First aid provided'),
(18, 1, '2025-12-09 13:20', 'Beach Area', 'Lost Item', 'Visitor lost sunglasses.', 'Low', 12, 'Item logged'),
(19, 1, '2025-12-09 18:00', 'Deluxe Room 902N', 'Other', 'Complaint about late housekeeping.', 'Low', 2, 'Housekeeping improved schedule'),
(20, 1, '2025-12-10 11:15', 'Kid Train Ride', 'Technical Failure', 'Train stopped mid-track.', 'High', 12, 'Ride closed, repaired'),
(21, 1, '2025-12-10 15:00', 'Heritage Resort Lobby', 'Theft', 'Visitor bag stolen.', 'Medium', 2, 'Security alerted'),
(22, 1, '2025-12-11 09:30', 'Resort Room 1201R', 'Other', 'Complaint about water supply.', 'Low', 12, 'Plumber fixed issue'),
(23, 1, '2025-12-11 14:45', 'Park Garden', 'Medical', 'Visitor fainted.', 'Medium', 2, 'First aid given'),
(24, 1, '2025-12-12 10:20', 'Skyline Resort Pool', 'Lost Item', 'Visitor lost watch.', 'Low', 12, 'Security logged'),
(25, 1, '2025-12-12 17:00', 'Deluxe Room 1302T', 'Other', 'Complaint about noise from adjacent room.', 'Low', 2, 'Manager resolved issue')
GO




INSERT INTO AnimalMedicalHistory (
    RecordID, AnimalID, VeterinarianID, CheckupDate,
    Diagnosis, TreatmentGiven, MedicinePrescribed, NextFollowUpDate
)
VALUES
(1, 1, 106, '2025-11-20', 'Routine checkup', 'General health examination', 'Vitamin supplements', '2026-05-20'),
(2, 2, 6, '2025-11-18', 'Minor skin infection', 'Applied ointment', 'Antibiotic cream', '2025-12-02'),
(3, 3, 106, '2025-11-10', 'Dental checkup', 'Teeth cleaned', 'Calcium tablets', '2026-11-10'),
(4, 4, 6, '2025-11-15', 'Joint stiffness', 'Physiotherapy', 'Pain reliever', '2025-12-15'),
(5, 5, 106, '2025-11-05', 'Feather loss', 'Diet adjustment', 'Multivitamins', '2025-12-05'),
(6, 6, 6, '2025-11-12', 'Eye irritation', 'Eye drops applied', 'Saline solution', '2025-11-26'),
(7, 7, 106, '2025-11-08', 'Routine vaccination', 'Vaccination given', 'Flu vaccine', '2026-11-08'),
(8, 8, 6, '2025-11-02', 'Minor injury on leg', 'Bandaged wound', 'Antibiotic cream', '2025-11-16'),
(9, 9, 106, '2025-11-01', 'Digestive upset', 'Hydration therapy', 'Probiotics', '2025-11-15'),
(10, 10, 6, '2025-11-03', 'Respiratory issue', 'Nebulization', 'Bronchodilator', '2025-11-17'),
(11, 11, 106, '2025-11-06', 'Routine checkup', 'General health examination', 'Vitamin supplements', '2026-05-06'),
(12, 12, 6, '2025-11-07', 'Skin rash', 'Applied ointment', 'Antihistamine', '2025-11-21'),
(13, 13, 106, '2025-11-09', 'Minor cut', 'Wound dressing', 'Antibiotic cream', '2025-11-23'),
(14, 14, 6, '2025-11-11', 'Routine vaccination', 'Vaccination given', 'Rabies vaccine', '2026-11-11'),
(15, 15, 106, '2025-11-04', 'Digestive issue', 'Diet adjustment', 'Probiotics', '2025-11-18'),
(16, 1, 6, '2025-06-20', 'Dental checkup', 'Teeth cleaned', 'Calcium tablets', '2025-12-20'),
(17, 2, 106, '2025-07-18', 'Eye infection', 'Eye drops applied', 'Antibiotic drops', '2025-08-01'),
(18, 3, 6, '2025-08-10', 'Skin infection', 'Applied ointment', 'Antibiotic', '2025-08-24'),
(19, 4, 106, '2025-09-15', 'Respiratory infection', 'Nebulization', 'Antibiotic', '2025-09-29'),
(20, 5, 6, '2025-10-05', 'Routine checkup', 'General health examination', 'Vitamin supplements', '2026-04-05'),
(21, 6, 106, '2025-10-12', 'Minor injury', 'Bandaged wound', 'Pain reliever', '2025-10-26'),
(22, 7, 6, '2025-10-08', 'Digestive upset', 'Hydration therapy', 'Probiotics', '2025-10-22'),
(23, 8, 106, '2025-09-02', 'Skin rash', 'Applied ointment', 'Antihistamine', '2025-09-16'),
(24, 9, 6, '2025-08-01', 'Joint stiffness', 'Physiotherapy', 'Pain reliever', '2025-08-15'),
(25, 10, 106, '2025-07-03', 'Routine vaccination', 'Vaccination given', 'Tetanus vaccine', '2026-07-03')
GO




INSERT INTO FinancialTransactions 
(
    TransactionDate, TransactionType, Category, Amount,
    PaymentMethod, Description, ReferenceID, SourceTable
)
VALUES
('2025-12-01 10:00', 'Income', 'Ticket', 15000.00, 'Cash', 'Daily ticket sales', 1, 'TicketSales'),
('2025-12-01 11:30', 'Expense', 'Salary', 8000.00, 'Bank', 'Monthly staff salary', 2, 'SalaryPayments'),
('2025-12-01 12:15', 'Income', 'Shop', 5000.00, 'MobileBanking', 'Souvenir shop sales', 3, 'ShopSales'),
('2025-12-01 14:00', 'Expense', 'Maintenance', 2000.00, 'Cash', 'Ride maintenance cost', 4, 'MaintenanceRecords'),
('2025-12-02 09:45', 'Income', 'Ticket', 18000.00, 'Card', 'Weekend ticket sales', 5, 'TicketSales'),
('2025-12-02 10:30', 'Expense', 'Utility', 2500.00, 'Bank', 'Electricity bill payment', 6, 'UtilityPayments'),
('2025-12-02 13:00', 'Income', 'Resort', 12000.00, 'Cash', 'Room booking income', 7, 'ResortBookings'),
('2025-12-02 15:20', 'Expense', 'Food', 3000.00, 'MobileBanking', 'Restaurant supplies', 8, 'FoodPurchases'),
('2025-12-03 10:10', 'Income', 'Parking', 2500.00, 'Cash', 'Parking fees collected', 9, 'ParkingRecords'),
('2025-12-03 11:00', 'Expense', 'Marketing', 4000.00, 'Bank', 'Advertisement expenses', 10, 'MarketingExpenses'),
('2025-12-03 12:30', 'Income', 'Ride', 7000.00, 'Card', 'Ferris wheel tickets', 11, 'RideSales'),
('2025-12-03 14:15', 'Expense', 'Maintenance', 3500.00, 'Cash', 'Zoo animal care cost', 12, 'AnimalCare'),
('2025-12-04 09:00', 'Income', 'Ticket', 20000.00, 'Cash', 'Holiday ticket sales', 13, 'TicketSales'),
('2025-12-04 10:45', 'Expense', 'Salary', 9000.00, 'Bank', 'Trainer salary payment', 14, 'SalaryPayments'),
('2025-12-04 12:00', 'Income', 'Shop', 6000.00, 'MobileBanking', 'Gift shop sales', 15, 'ShopSales'),
('2025-12-04 13:30', 'Expense', 'Maintenance', 2500.00, 'Card', 'Water ride repair', 16, 'MaintenanceRecords'),
('2025-12-05 09:20', 'Income', 'Resort', 15000.00, 'Cash', 'VIP room booking', 17, 'ResortBookings'),
('2025-12-05 11:10', 'Expense', 'Utility', 2800.00, 'Bank', 'Water bill payment', 18, 'UtilityPayments'),
('2025-12-05 12:40', 'Income', 'Food', 4500.00, 'Card', 'Restaurant sales', 19, 'FoodSales'),
('2025-12-05 14:00', 'Expense', 'Maintenance', 3200.00, 'Cash', 'Garden cleaning cost', 20, 'MaintenanceRecords'),
('2025-12-06 09:00', 'Income', 'Ticket', 17000.00, 'Cash', 'Weekend ticket sales', 21, 'TicketSales'),
('2025-12-06 10:30', 'Expense', 'Salary', 8500.00, 'Bank', 'Security staff salary', 22, 'SalaryPayments'),
('2025-12-06 12:00', 'Income', 'Shop', 5200.00, 'MobileBanking', 'Clothing shop sales', 23, 'ShopSales'),
('2025-12-06 13:45', 'Expense', 'Maintenance', 2700.00, 'Card', 'Playground repair', 24, 'MaintenanceRecords'),
('2025-12-06 15:00', 'Income', 'Resort', 14000.00, 'Cash', 'Family room booking', 25, 'ResortBookings')
GO




INSERT INTO ResortDining 
(
    MealID, VisitorID, RoomID, KitchenID, MenuItem, MealType, Quantity, UnitPrice, OrderDateTime, 
    DeliveryType, ServedBy, PaymentStatus, PaymentMethod, DiscountApplied, Note
)
VALUES
(1, 1, 1, 1, 'Continental Breakfast', 'Breakfast', 2, 15.50, '2025-12-10 08:15:00', 'Room Service', 10, 'Paid', 'Card', 0.00, NULL),
(2, 2, 2, 2, 'Chicken Caesar Salad', 'Lunch', 1, 18.00, '2025-12-10 13:00:00', 'Dine-In', 11, 'Paid', 'Cash', 1.80, '10% loyalty discount applied'),
(3, 3, NULL, 3, 'Spaghetti Bolognese', 'Dinner', 3, 22.00, '2025-12-10 19:30:00', 'Takeaway', NULL, 'Pending', 'MobileBanking', 0.00, 'Waiting for pickup'),
(4, 4, 4, 1, 'Kids Pancake Combo', 'Breakfast', 1, 10.00, '2025-12-10 09:00:00', 'Dine-In', 10, 'Paid', 'Card', 0.00, 'Table 4'),
(5, 5, 1, 2, 'Club Sandwich', 'Lunch', 2, 14.50, '2025-12-10 12:45:00', 'Room Service', 12, 'Paid', 'Card', 0.00, NULL),
(6, 1, NULL, 3, 'Espresso Shot', 'Snack', 1, 4.00, '2025-12-10 16:00:00', 'Takeaway', 13, 'Paid', 'Cash', 0.00, NULL),
(7, 2, 3, 1, 'Grilled Salmon', 'Dinner', 2, 28.50, '2025-12-10 20:15:00', 'Dine-In', 10, 'Pending', 'Card', 0.00, 'Large table reservation'),
(8, 3, 4, 2, 'Vegetable Curry', 'Dinner', 1, 19.00, '2025-12-10 18:45:00', 'Room Service', 11, 'Paid', 'MobileBanking', 0.00, NULL),
(9, 4, 2, 3, 'Muffin and Coffee', 'Breakfast', 2, 8.50, '2025-12-11 07:30:00', 'Dine-In', 12, 'Paid', 'Cash', 0.00, NULL),
(10, 5, NULL, 1, 'Cheeseburger', 'Lunch', 4, 16.00, '2025-12-11 13:30:00', 'Takeaway', 13, 'Paid', 'Card', 0.00, 'Rush order'),
(11, 1, 3, 2, 'Fruit Platter', 'Snack', 1, 12.00, '2025-12-11 15:00:00', 'Room Service', 10, 'Paid', 'Card', 1.20, '10% seasonal discount'),
(12, 2, 1, 3, 'Steak Frites', 'Dinner', 1, 35.00, '2025-12-11 21:00:00', 'Dine-In', 11, 'Paid', 'Card', 0.00, 'Requested medium rare'),
(13, 3, 2, 1, 'Omelette', 'Breakfast', 2, 13.00, '2025-12-11 08:45:00', 'Dine-In', 12, 'Paid', 'Cash', 0.00, NULL),
(14, 4, 3, 2, 'Tuna Melt', 'Lunch', 1, 11.50, '2025-12-11 14:00:00', 'Room Service', 13, 'Paid', 'MobileBanking', 0.00, NULL),
(16, 1, 1, 1, 'Full English Breakfast', 'Breakfast', 1, 18.00, '2025-12-12 07:45:00', 'Room Service', 11, 'Paid', 'Card', 0.00, NULL),
(17, 2, 2, 2, 'Beef Stir Fry', 'Dinner', 2, 21.00, '2025-12-12 19:15:00', 'Dine-In', 12, 'Paid', 'Cash', 2.10, 'Manager comped 10%'),
(18, 3, NULL, 3, 'Iced Coffee', 'Snack', 2, 5.00, '2025-12-12 15:45:00', 'Takeaway', 13, 'Paid', 'MobileBanking', 0.00, NULL),
(19, 4, 4, 1, 'Pizza Margherita', 'Dinner', 1, 17.50, '2025-12-12 20:30:00', 'Room Service', 10, 'Pending', 'Card', 0.00, NULL),
(20, 5, 1, 2, 'Yogurt Parfait', 'Breakfast', 2, 9.50, '2025-12-12 09:30:00', 'Dine-In', 11, 'Paid', 'Cash', 0.00, NULL),
(21, 1, 2, 3, 'Chicken Noodle Soup', 'Lunch', 1, 10.00, '2025-12-13 12:00:00', 'Dine-In', 12, 'Paid', 'Card', 0.00, NULL),
(22, 2, 3, 1, 'Shrimp Tacos', 'Lunch', 3, 15.00, '2025-12-13 13:45:00', 'Room Service', 13, 'Paid', 'MobileBanking', 0.00, 'Extra hot sauce requested'),
(23, 3, 4, 2, 'Milkshake', 'Snack', 2, 7.00, '2025-12-13 16:30:00', 'Dine-In', 10, 'Paid', 'Cash', 0.00, NULL),
(24, 4, 1, 3, 'Lamb Chops', 'Dinner', 1, 30.00, '2025-12-13 19:45:00', 'Room Service', 11, 'Paid', 'Card', 3.00, 'VIP guest discount'),
(25, 5, 2, 1, 'Waffles', 'Breakfast', 2, 11.00, '2025-12-14 08:00:00', 'Dine-In', 12, 'Paid', 'Cash', 0.00, NULL),
(26, 1, 3, 2, 'Caesar Wrap', 'Lunch', 1, 13.50, '2025-12-14 12:30:00', 'Room Service', 13, 'Pending', 'Card', 0.00, NULL),
(27, 2, 4, 3, 'Tiramisu', 'Snack', 2, 8.00, '2025-12-14 15:30:00', 'Dine-In', 10, 'Paid', 'MobileBanking', 0.00, NULL),
(28, 3, 1, 1, 'Pasta Primavera', 'Dinner', 2, 20.00, '2025-12-14 18:30:00', 'Dine-In', 11, 'Paid', 'Cash', 0.00, NULL),
(29, 4, 2, 2, 'French Toast', 'Breakfast', 1, 12.00, '2025-12-15 09:15:00', 'Room Service', 12, 'Paid', 'Card', 0.00, NULL),
(30, 5, 3, 3, 'Quesadilla', 'Lunch', 3, 14.00, '2025-12-15 13:15:00', 'Dine-In', 13, 'Paid', 'Cash', 0.00, NULL),
(31, 1, 4, 1, 'Hot Chocolate', 'Snack', 2, 4.50, '2025-12-15 16:45:00', 'Room Service', 10, 'Paid', 'MobileBanking', 0.00, NULL),
(32, 2, 1, 2, 'Pork Tenderloin', 'Dinner', 1, 26.00, '2025-12-15 20:00:00', 'Dine-In', 11, 'Cancelled', 'Card', 0.00, 'Item out of stock'),
(33, 3, 2, 3, 'Scrambled Eggs', 'Breakfast', 1, 9.00, '2025-12-16 07:00:00', 'Dine-In', 12, 'Paid', 'Cash', 0.00, NULL),
(34, 4, 3, 1, 'Soup of the Day', 'Lunch', 2, 8.00, '2025-12-16 12:15:00', 'Room Service', 13, 'Paid', 'Card', 0.00, NULL),
(35, 5, 4, 2, 'Brownie', 'Snack', 4, 5.00, '2025-12-16 17:00:00', 'Dine-In', 10, 'Paid', 'Cash', 0.00, NULL),
(36, 1, NULL, 3, 'Pad Thai', 'Dinner', 2, 19.50, '2025-12-16 19:00:00', 'Takeaway', 11, 'Pending', 'MobileBanking', 0.00, 'Customer collecting'),
(37, 2, 1, 1, 'Croissant', 'Breakfast', 3, 5.50, '2025-12-17 08:30:00', 'Room Service', 12, 'Paid', 'Card', 0.00, NULL),
(38, 3, 2, 2, 'Chicken Wrap', 'Lunch', 1, 13.00, '2025-12-17 14:15:00', 'Dine-In', 13, 'Paid', 'Cash', 0.00, NULL),
(39, 4, 3, 3, 'Churros', 'Snack', 2, 6.00, '2025-12-17 18:00:00', 'Room Service', 10, 'Paid', 'Card', 0.00, NULL),
(40, 5, 4, 1, 'T-Bone Steak', 'Dinner', 1, 40.00, '2025-12-17 20:45:00', 'Dine-In', 11, 'Paid', 'MobileBanking', 4.00, '10% promotional offer')
GO





                /*==============================  SECTION 02  ==============================
                				        	RETRIEVE DATA USING VIEW
                ==========================================================================*/

--summarize employee payroll information
SELECT * FROM vw_EmployeePayrollDetails
GO


--summarize the operational status of key park assets
SELECT * FROM vw_AssetMaintenanceSummary
GO

--CONFIDENTIAL EMPLOYEE DATA
SELECT * FROM vw_ConfidentialEmployeeData
GO

-- Get all active employees in the 'Operations' department
SELECT * 
FROM dbo.vw_ActiveEmployeeDirectory
GO

-- Get all active employees in the 'Operations' department
SELECT FullName, Role, PhoneNumber 
FROM dbo.vw_ActiveEmployeeDirectory
WHERE Department = 'Operations'
ORDER BY FullName
GO

-- Find available 'Deluxe' rooms that can fit at least 4 people
SELECT RoomNumber, RatePerNight 
FROM dbo.vw_AvailableResortRooms
WHERE RoomType = 'Deluxe' AND Capacity >= 4
GO

-- See which rides in 'Magic Kingdom' are currently operating
SELECT RideName, RideType, OperatingHours
FROM dbo.vw_ParkRideStatus
WHERE ParkName = 'Magic Kingdom'
GO

-- List all active VIP members
SELECT FullName, PhoneNumber
FROM dbo.vw_VisitorMembershipContacts
WHERE VisitorType = 'VIP'
GO

                    
                    /*==============================  SECTION 03  ==============================
                    					INSERT DATA THROUGH STORED PROCEDURE
                    ==========================================================================*/
                    

--Example: Adding a Park
EXEC sp_InsertPark 
    @ParkID = 2, 
    @ParkName = 'Magic Land', 
    @Location = 'Dhaka', 
    @Address = '123 Park Street', 
    @ParkType = 'Theme Park', 
    @EntryFee = 500.00
    GO

--Adding a Visitor
EXEC sp_InsertVisitor 
    @VisitorID = 101, 
    @FullName = 'John Doe', 
    @Age = 25, 
    @PhoneNumber = '01700000000', 
    @VisitorType = 'Individual', 
    @VisitPurpose = 'Tourism', 
    @MembershipStatus = 'None'
    GO

--Adding a Transaction
    EXEC sp_InsertFinancialTransaction 
    @TransactionType = 'Income', 
    @Category = 'Ticketing', 
    @Amount = 1500.50, 
    @PaymentMethod = 'Cash', 
    @Description = 'Bulk ticket sale for group'
    GO

--Resort Room
-- Example 1: Mark Room 1 as clean and available
EXEC sp_UpdateRoomStatus 
    @RoomID = 1, 
    @NewStatus = 'Available'
GO

-- Example 2: Mark Room 4 as requiring maintenance
EXEC sp_UpdateRoomStatus 
    @RoomID = 4, 
    @NewStatus = 'Maintenance'
GO


-- USE sp_GetParkTotalRevenue
-- 1. Declare a variable to hold the result
DECLARE @RevenueResult DECIMAL(18, 2);

-- 2. Execute the procedure, marking the parameter as OUTPUT
EXEC sp_GetParkTotalRevenue 
    @ParkID = 1, 
    @TotalRevenue = @RevenueResult OUTPUT;

-- 3. Use the result
PRINT 'The total revenue for Park 1 is: ' + CAST(@RevenueResult AS VARCHAR(20))
GO

--INsert Data Visetor
EXEC sp_AddVisitorSecure @ID = 500, @Name = 'Jane Doe', @Type = 'VIP'
GO



--To Insert a new visitor
EXEC dbo.sp_VisitorMasterControl 
    @Action = 'INSERT', 
    @VisitorID = 701, 
    @FullName = 'Alice Smith', 
    @Age = 30, 
    @VisitorType = 'Adult'
GO
--To Update that visitor's type
EXEC dbo.sp_VisitorMasterControl 
    @Action = 'UPDATE', 
    @VisitorID = 701, 
    @VisitorType = 'VIP'
GO
--To Delete the visitor
EXEC dbo.sp_VisitorMasterControl 
    @Action = 'DELETE', 
    @VisitorID = 701
GO
                        /*==============================  SECTION 04  ==============================
                        			RETRIEVE DATA USING USER-DEFINED FUNCTIONS (UDF)
                        ==========================================================================*/
                        
--calculates salary
SELECT dbo.fn_CalculateEmployeeNetSalary(13) AS Sallery
GO


-- This query retrieves the summary for ParkID 1 and the 'Morning' shift today.
SELECT * 
FROM dbo.fn_GetParkAttendanceSummary(1, 'Evening')
GO

-- Get a full report for Park ID 1
SELECT * 
FROM dbo.fn_GetDetailedParkReport(1)
GO


                        /*==============================  SECTION 05  ==============================
                        			                    USING AN INDEX
                        ==========================================================================*/
                        

SELECT MealID, MenuItem, Quantity, UnitPrice
FROM ResortDining 
WHERE OrderDateTime >= '2025-12-01'
AND PaymentStatus = 'Paid'
GO


SELECT TransactionDate, TransactionType, Amount
FROM FinancialTransactions 
WHERE TransactionDate >= '2025-01-01'
AND TransactionType = 'Income'
AND SourceTable = 'TicketSales'
GO


SELECT BookingID,RoomID,BookingStatus
FROM ResortBookings
WHERE CheckInDate = '2025-12-12'
AND BookingStatus = 'Confirmed'
GO




                          /*==============================  SECTION 06  ==============================
			                                   SQL DML QUERIES FROM TPRMS PROJECT
                           ==========================================================================*/

---------------------------------------------
----6.1:: All Types of JOIN-----
---------------------------------------------


-- INNER JOIN: Get employee details with their park information
SELECT 
    E.EmployeeID,
    E.FullName,
    E.Role,
    P.ParkName,
    P.Location
FROM Employees E
INNER JOIN Park P ON E.ParkID = P.ParkID
WHERE E.EmploymentStatus = 'Active'
GO

-- LEFT OUTER JOIN: All parks and their employees (including parks with no employees)
SELECT 
    P.ParkID,
    P.ParkName,
    E.EmployeeID,
    E.FullName,
    E.Role
FROM Park P
LEFT JOIN Employees E ON P.ParkID = E.ParkID
GO

-- RIGHT OUTER JOIN: All employees and their assigned parks
SELECT 
    E.EmployeeID,
    E.FullName,
    P.ParkName,
    P.Location
FROM Park P
RIGHT JOIN Employees E ON P.ParkID = E.ParkID
GO

-- FULL OUTER JOIN: All parks and all employees (showing unmatched records from both sides)
SELECT 
    P.ParkID,
    P.ParkName,
    E.EmployeeID,
    E.FullName
FROM Park P
FULL OUTER JOIN Employees E ON P.ParkID = E.ParkID
GO

-- CROSS JOIN: All possible combinations of visitors and ticket types
SELECT 
    V.VisitorID,
    V.FullName,
    TS.TicketType
FROM Visitors V
CROSS JOIN (SELECT DISTINCT TicketType FROM TicketSales) TS
GO

-- SELF JOIN: Find employees who work in the same department
SELECT 
    E1.FullName AS Employee1,
    E2.FullName AS Employee2,
    E1.Department
FROM Employees E1
INNER JOIN Employees E2 
    ON E1.Department = E2.Department 
    AND E1.EmployeeID < E2.EmployeeID
WHERE E1.Department IS NOT NULL
GO

-- MULTIPLE JOINS: Complete shop sales information
SELECT 
    SS.ShopSalesID,
    S.ShopName,
    P.ProductName,
    V.FullName AS CustomerName,
    SS.QuantitySold,
    SS.TotalPrice,
    SS.SaleDate
FROM ShopSales SS
INNER JOIN Shop S ON SS.ShopID = S.ShopID
INNER JOIN Products P ON SS.ProductID = P.ProductID
INNER JOIN Visitors V ON SS.VisitorID = V.VisitorID
WHERE SS.PaymentStatus = 'Paid'
GO


-----------------------------------------------------
----6.2:: ALL, DISTINCT, TOP, PERCENT, WITH TIES----
-----------------------------------------------------

-- DISTINCT: Get unique visitor types
SELECT DISTINCT VisitorType
FROM Visitors
GO

-- ALL: Show all ticket prices (including duplicates)
SELECT ALL Price
FROM TicketSales
ORDER BY Price
GO

-- TOP: Get top 5 highest paid employees
SELECT TOP 5 
    EmployeeID,
    FullName,
    Salary
FROM Employees
ORDER BY Salary DESC
GO

-- TOP WITH PERCENT: Get top 10% of sales by amount
SELECT TOP 10 PERCENT
    ShopSalesID,
    ProductName,
    TotalPrice
FROM ShopSales
ORDER BY TotalPrice DESC
GO

-- TOP WITH TIES: Get top 5 employees by salary (including ties)
SELECT TOP 5 WITH TIES
    EmployeeID,
    FullName,
    Salary,
    Department
FROM Employees
ORDER BY Salary DESC
GO

-- DISTINCT with multiple columns
SELECT DISTINCT 
    VisitorType,
    MembershipStatus
FROM Visitors
ORDER BY VisitorType, MembershipStatus
GO

-- TOP with WHERE clause
SELECT TOP 10
    FruitSalesID,
    FruitName,
    QuantitySold,
    UnitPrice,
    (QuantitySold * UnitPrice) AS TotalAmount
FROM FruitSales
WHERE PaymentStatus = 'Paid'
ORDER BY (QuantitySold * UnitPrice) DESC
GO



-----------------------------------------------------
----6.3:: String Expressions, Concatenate----
-----------------------------------------------------

-- CONCAT: Create full employee details
SELECT 
    EmployeeID,
    CONCAT(FullName, ' (', Role, ')') AS EmployeeInfo,
    CONCAT(PhoneNumber, ' | ', Email) AS ContactInfo
FROM Employees
GO

-- String concatenation with +
SELECT 
    VisitorID,
    FullName + ' - ' + VisitorType AS VisitorDetails,
    CASE 
        WHEN NationalID IS NOT NULL THEN 'NID: ' + NationalID
        WHEN PassportNo IS NOT NULL THEN 'Passport: ' + PassportNo
        ELSE 'No ID'
    END AS Identification
FROM Visitors
GO

-- CONCAT_WS: Concatenate with separator
SELECT 
    ShopID,
    CONCAT_WS(' | ', ShopName, ShopType, Location) AS ShopDetails
FROM Shop
GO

-- String functions with concatenation
SELECT 
    EmployeeID,
    UPPER(CONCAT(LEFT(FullName, 1), '. ', RIGHT(FullName, LEN(FullName) - CHARINDEX(' ', FullName)))) AS ShortName,
    LOWER(Email) AS EmailLower,
    SUBSTRING(PhoneNumber, 1, 5) + '-' + SUBSTRING(PhoneNumber, 6, 6) AS FormattedPhone
FROM Employees
WHERE PhoneNumber IS NOT NULL
GO

-- FORMAT with concatenation
SELECT 
    TicketID,
    CONCAT('Ticket #', FORMAT(TicketID, '0000')) AS TicketNumber,
    CONCAT(TicketType, ' - ', FORMAT(Price, 'C', 'en-US')) AS TicketInfo
FROM TicketSales
GO

-- REPLACE and TRIM
SELECT 
    ProductID,
    ProductName,
    REPLACE(Description, 'organic', 'premium') AS UpdatedDescription,
    TRIM(ProductName) AS TrimmedName
FROM Products
WHERE Description IS NOT NULL
GO



-----------------------------------------------------
----6.4:: GROUP BY, HAVING----
-----------------------------------------------------

-- GROUP BY: Total sales by shop
SELECT 
    ShopID,
    COUNT(*) AS TotalTransactions,
    SUM(TotalPrice) AS TotalRevenue,
    AVG(TotalPrice) AS AverageTransaction
FROM ShopSales
WHERE PaymentStatus = 'Paid'
GROUP BY ShopID
GO

-- GROUP BY with HAVING: Shops with revenue > 50000
SELECT 
    ShopID,
    SUM(TotalPrice) AS TotalRevenue,
    COUNT(*) AS TransactionCount
FROM ShopSales
WHERE PaymentStatus = 'Paid'
GROUP BY ShopID
HAVING SUM(TotalPrice) > 50000
ORDER BY TotalRevenue DESC
GO

-- Multiple column GROUP BY
SELECT 
    VisitorType,
    MembershipStatus,
    COUNT(*) AS VisitorCount
FROM Visitors
GROUP BY VisitorType, MembershipStatus
ORDER BY VisitorType, MembershipStatus
GO

-- GROUP BY with JOIN
SELECT 
    E.Department,
    COUNT(E.EmployeeID) AS EmployeeCount,
    AVG(E.Salary) AS AverageSalary,
    MAX(E.Salary) AS MaxSalary,
    MIN(E.Salary) AS MinSalary
FROM Employees E
WHERE E.EmploymentStatus = 'Active'
GROUP BY E.Department
HAVING COUNT(E.EmployeeID) >= 2
ORDER BY AverageSalary DESC
GO

-- GROUP BY with multiple aggregates
SELECT 
    YEAR(SaleDate) AS SaleYear,
    MONTH(SaleDate) AS SaleMonth,
    COUNT(DISTINCT VisitorID) AS UniqueCustomers,
    COUNT(*) AS TotalTransactions,
    SUM(TotalPrice) AS TotalRevenue,
    AVG(TotalPrice) AS AvgTransactionValue
FROM ShopSales
WHERE PaymentStatus = 'Paid'
GROUP BY YEAR(SaleDate), MONTH(SaleDate)
HAVING SUM(TotalPrice) > 10000
ORDER BY SaleYear, SaleMonth
GO

-- Complex HAVING clause
SELECT 
    E.Role,
    COUNT(*) AS EmployeeCount,
    AVG(E.Salary) AS AvgSalary
FROM Employees E
WHERE E.EmploymentStatus = 'Active'
GROUP BY E.Role
HAVING COUNT(*) > 1 AND AVG(E.Salary) > 20000
ORDER BY AvgSalary DESC
GO



-----------------------------------------------------
----6.5:: Arithmetic Expressions----
-----------------------------------------------------


-- Basic arithmetic operations
SELECT 
    FruitSalesID,
    FruitName,
    QuantitySold,
    UnitPrice,
    (QuantitySold * UnitPrice) AS GrossAmount,
    (QuantitySold * UnitPrice * 0.15) AS TaxAmount,
    (QuantitySold * UnitPrice) - DiscountApplied AS NetAmount,
    ((QuantitySold * UnitPrice) - DiscountApplied) * 1.15 AS TotalWithTax
FROM FruitSales
WHERE PaymentStatus = 'Paid'
GO

-- Percentage calculations
SELECT 
    EmployeeID,
    FullName,
    Salary,
    Bonus,
    (Bonus * 100.0 / Salary) AS BonusPercentage,
    (Salary * 0.10) AS ProposedRaise,
    (Salary + (Salary * 0.10)) AS NewSalary
FROM Employees
WHERE Salary > 0
GO

-- Complex calculations with CASE
SELECT 
    ProductID,
    ProductName,
    StockQuantity,
    ReorderLevel,
    UnitPrice,
    (StockQuantity * UnitPrice) AS StockValue,
    CASE 
        WHEN StockQuantity < ReorderLevel THEN (ReorderLevel - StockQuantity) * UnitPrice
        ELSE 0
    END AS ReorderCost,
    CASE 
        WHEN StockQuantity = 0 THEN 'Out of Stock'
        WHEN StockQuantity < ReorderLevel THEN 'Low Stock'
        WHEN StockQuantity >= ReorderLevel * 2 THEN 'Overstocked'
        ELSE 'Normal'
    END AS StockStatus
FROM Products
GO

-- Modulo and division operations
SELECT 
    AttendanceID,
    EmployeeID,
    TotalHours,
    TotalHours / 8 AS FullDays,
    TotalHours % 8 AS ExtraHours,
    CEILING(TotalHours / 8.0) AS BillableDays
FROM AttendanceStaffShift
WHERE TotalHours > 0
GO

-- Financial calculations
SELECT 
    PayrollID,
    EmployeeID,
    BasicSalary,
    Allowance,
    OvertimePay,
    Deduction,
    (BasicSalary + Allowance + OvertimePay) AS GrossPay,
    (BasicSalary + Allowance + OvertimePay - Deduction) AS NetSalary,
    (Deduction * 100.0 / (BasicSalary + Allowance + OvertimePay)) AS DeductionPercentage
FROM Payroll
WHERE PaymentStatus = 'Paid'
GO

-- Revenue and profit calculations
SELECT 
    SummaryID,
    ParkID,
    TotalIncome,
    TotalExpense,
    (TotalIncome - TotalExpense) AS NetRevenue,
    ((TotalIncome - TotalExpense) * 100.0 / NULLIF(TotalIncome, 0)) AS ProfitMargin,
    CASE 
        WHEN (TotalIncome - TotalExpense) > 0 THEN 'Profit'
        WHEN (TotalIncome - TotalExpense) < 0 THEN 'Loss'
        ELSE 'Break Even'
    END AS Status
FROM RevenueSummary
GO



-----------------------------------------------------
----6.6:: ROLLUP, CUBE, GROUPING SETS----
-----------------------------------------------------

-- ROLLUP: Hierarchical subtotals for shop sales
SELECT 
    YEAR(SaleDate) AS Year,
    MONTH(SaleDate) AS Month,
    ShopID,
    SUM(TotalPrice) AS TotalRevenue,
    COUNT(*) AS TransactionCount
FROM ShopSales
WHERE PaymentStatus = 'Paid'
GROUP BY ROLLUP(YEAR(SaleDate), MONTH(SaleDate), ShopID)
ORDER BY Year, Month, ShopID
GO

-- CUBE: All possible combinations of groupings
SELECT 
    VisitorType,
    MembershipStatus,
    COUNT(*) AS VisitorCount,
    GROUPING(VisitorType) AS IsVisitorTypeTotal,
    GROUPING(MembershipStatus) AS IsMembershipTotal
FROM Visitors
GROUP BY CUBE(VisitorType, MembershipStatus)
ORDER BY VisitorType, MembershipStatus
GO

-- GROUPING SETS: Specific grouping combinations
SELECT 
    E.Department,
    E.Role,
    COUNT(*) AS EmployeeCount,
    AVG(E.Salary) AS AvgSalary,
    GROUPING(E.Department) AS IsDeptTotal,
    GROUPING(E.Role) AS IsRoleTotal
FROM Employees E
WHERE E.EmploymentStatus = 'Active'
GROUP BY GROUPING SETS (
    (E.Department, E.Role),
    (E.Department),
    (E.Role),
    ()
)
ORDER BY E.Department, E.Role
GO

-- ROLLUP with aggregates
SELECT 
    YEAR(ExpenseDate) AS Year,
    MONTH(ExpenseDate) AS Month,
    ExpenseType,
    SUM(Amount) AS TotalExpense,
    COUNT(*) AS ExpenseCount,
    AVG(Amount) AS AvgExpense
FROM Expense
GROUP BY ROLLUP(YEAR(ExpenseDate), MONTH(ExpenseDate), ExpenseType)
ORDER BY Year, Month, ExpenseType
GO

-- CUBE with CASE for better readability
SELECT 
    CASE 
        WHEN GROUPING(TransactionType) = 1 THEN 'ALL TYPES'
        ELSE TransactionType
    END AS TransactionType,
    CASE 
        WHEN GROUPING(Category) = 1 THEN 'ALL CATEGORIES'
        ELSE Category
    END AS Category,
    SUM(Amount) AS TotalAmount,
    COUNT(*) AS TransactionCount
FROM FinancialTransactions
WHERE TransactionDate >= '2025-12-01'
GROUP BY CUBE(TransactionType, Category)
ORDER BY TransactionType, Category
GO

-----------------------------------------------------
----6.7:: Logical Operators (AND, OR, NOT)----
-----------------------------------------------------


-- AND operator: Multiple conditions must be true
SELECT 
    EmployeeID,
    FullName,
    Department,
    Salary,
    EmploymentStatus
FROM Employees
WHERE Department = 'Maintenance' 
    AND Salary > 18000 
    AND EmploymentStatus = 'Active'
GO

-- OR operator: Any condition can be true
SELECT 
    VisitorID,
    FullName,
    VisitorType,
    MembershipStatus
FROM Visitors
WHERE VisitorType = 'Corporate' 
    OR MembershipStatus = 'Active'
    OR Age > 50
GO

-- NOT operator: Exclude specific conditions
SELECT 
    ProductID,
    ProductName,
    StockQuantity,
    VendorID
FROM Products
WHERE NOT (StockQuantity < ReorderLevel)
    AND NOT (VendorID IN (1, 2, 3))
GO

-- Complex combinations
SELECT 
    ShopSalesID,
    ShopID,
    ProductName,
    TotalPrice,
    PaymentStatus,
    PaymentMethod
FROM ShopSales
WHERE (PaymentStatus = 'Paid' OR PaymentStatus = 'Partial')
    AND (PaymentMethod = 'Cash' OR PaymentMethod = 'Card')
    AND NOT (DiscountApplied = 0)
    AND TotalPrice > 500
GO

-- AND with OR (precedence matters)
SELECT 
    EmployeeID,
    FullName,
    Role,
    Salary,
    Department
FROM Employees
WHERE (Role = 'Manager' OR Role = 'Supervisor')
    AND Salary > 30000
    AND EmploymentStatus = 'Active'
    AND NOT (Department = 'HR')
GO

-- NOT IN combination
SELECT 
    ResortID,
    ResortName,
    TotalRooms,
    AvailableRooms
FROM Resort
WHERE MaintenanceStatus = 'Active'
    AND NOT (ResortID IN (SELECT DISTINCT ResortID FROM ResortBookings WHERE BookingStatus = 'Confirmed'))
    AND AvailableRooms > 5
GO

-- Complex business logic
SELECT 
    TicketID,
    VisitorID,
    TicketType,
    Price,
    Quantity
FROM TicketSales
WHERE (
    (TicketType = 'Park' AND Price < 200)
    OR (TicketType = 'Zoo' AND Quantity > 2)
    OR (TicketType IN ('Ferris Wheel', 'Boat Ride') AND PaymentMethod = 'Online')
)
AND NOT (ValidDate < GETDATE())
GO


-----------------------------------------------------
----6.8:: Comparison Operators, BETWEEN----
-----------------------------------------------------


-- Equal to (=)
SELECT EmployeeID, FullName, Role
FROM Employees
WHERE Role = 'Manager'
GO

-- Not equal to (<> or !=)
SELECT ProductID, ProductName, StockQuantity
FROM Products
WHERE StockQuantity <> 0
    AND VendorID != 5
GO

-- Greater than and Less than
SELECT 
    EmployeeID,
    FullName,
    Salary,
    Age
FROM Employees
WHERE Salary > 25000
    AND Age < 40
GO

-- Greater than or equal to, Less than or equal to
SELECT 
    VisitorID,
    FullName,
    Age
FROM Visitors
WHERE Age >= 18 AND Age <= 60
GO

-- BETWEEN operator (inclusive range)
SELECT 
    ShopSalesID,
    ProductName,
    TotalPrice,
    SaleDate
FROM ShopSales
WHERE TotalPrice BETWEEN 100 AND 500
    AND SaleDate BETWEEN '2025-11-01' AND '2025-12-31'
GO

-- NOT BETWEEN
SELECT 
    EmployeeID,
    FullName,
    Salary,
    HireDate
FROM Employees
WHERE Salary NOT BETWEEN 15000 AND 25000
    AND HireDate BETWEEN '2015-01-01' AND '2020-12-31'
GO

-- BETWEEN with dates
SELECT 
    BookingID,
    VisitorID,
    CheckInDate,
    CheckOutDate,
    TotalAmount
FROM ResortBookings
WHERE CheckInDate BETWEEN '2025-12-01' AND '2025-12-31'
    AND TotalAmount BETWEEN 10000 AND 50000
GO

-- Multiple BETWEEN conditions
SELECT 
    AnimalID,
    CommonName,
    Age,
    DateOfBirth
FROM Animal
WHERE Age BETWEEN 5 AND 15
    AND ArrivalDate BETWEEN '2015-01-01' AND '2020-12-31'
GO

-- Comparison with NULL handling
SELECT 
    VisitorID,
    FullName,
    NationalID,
    PassportNo
FROM Visitors
WHERE (NationalID IS NOT NULL AND LEN(NationalID) > 5)
    OR (PassportNo IS NOT NULL AND LEN(PassportNo) >= 6)
GO


-----------------------------------------------------
----6.9:: Range of Selected Rows (OFFSET FETCH)----
-----------------------------------------------------


-- Basic OFFSET FETCH: Skip first 10 rows, get next 10
SELECT 
    EmployeeID,
    FullName,
    Department,
    Salary
FROM Employees
WHERE EmploymentStatus = 'Active'
ORDER BY Salary DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY
GO

-- Pagination example: Page 1 (rows 1-20)
DECLARE @PageNumber INT = 1
DECLARE @PageSize INT = 20

SELECT 
    ShopSalesID,
    ProductName,
    TotalPrice,
    SaleDate
FROM ShopSales
WHERE PaymentStatus = 'Paid'
ORDER BY SaleDate DESC
OFFSET (@PageNumber - 1) * @PageSize ROWS
FETCH NEXT @PageSize ROWS ONLY
GO

-- OFFSET without FETCH (skip rows but get all remaining)
SELECT 
    VisitorID,
    FullName,
    VisitPurpose,
    Age
FROM Visitors
ORDER BY Age DESC
OFFSET 5 ROWS
GO

-- FETCH without OFFSET (get first N rows - similar to TOP)
SELECT 
    FruitSalesID,
    FruitName,
    QuantitySold,
    UnitPrice
FROM FruitSales
ORDER BY QuantitySold DESC
OFFSET 0 ROWS
FETCH NEXT 15 ROWS ONLY
GO

-- Complex pagination with filtering
DECLARE @Page INT = 2
DECLARE @Size INT = 25

SELECT 
    E.EmployeeID,
    E.FullName,
    E.Role,
    E.Department,
    E.Salary
FROM Employees E
WHERE E.EmploymentStatus = 'Active'
    AND E.Salary > 20000
ORDER BY E.Salary DESC, E.FullName
OFFSET (@Page - 1) * @Size ROWS
FETCH NEXT @Size ROWS ONLY
GO

-- Using OFFSET FETCH with JOIN
SELECT 
    RB.BookingID,
    V.FullName AS GuestName,
    RR.RoomNumber,
    RB.CheckInDate,
    RB.TotalAmount
FROM ResortBookings RB
INNER JOIN Visitors V ON RB.VisitorID = V.VisitorID
INNER JOIN ResortRoom RR ON RB.RoomID = RR.RoomID
WHERE RB.BookingStatus = 'Confirmed'
ORDER BY RB.CheckInDate DESC
OFFSET 10 ROWS
FETCH NEXT 20 ROWS ONLY
GO

-- Dynamic page size calculation
DECLARE @TotalRows INT
DECLARE @CurrentPage INT = 3
DECLARE @RowsPerPage INT = 15

SELECT @TotalRows = COUNT(*)
FROM Products
WHERE StockQuantity > 0

SELECT 
    ProductID,
    ProductName,
    StockQuantity,
    UnitPrice,
    @TotalRows AS TotalRecords,
    CEILING(@TotalRows * 1.0 / @RowsPerPage) AS TotalPages
FROM Products
WHERE StockQuantity > 0
ORDER BY ProductName
OFFSET (@CurrentPage - 1) * @RowsPerPage ROWS
FETCH NEXT @RowsPerPage ROWS ONLY
GO


-----------------------------------------------------
----6.10:: Compound Join----
-----------------------------------------------------


-- Compound join with multiple conditions
SELECT 
    VP.VendorID,
    V.VendorName,
    VP.ProductID,
    P.ProductName,
    P.StockQuantity
FROM VendorProducts VP
INNER JOIN Vendors V 
    ON VP.VendorID = V.VendorID 
    AND V.Status = 'Active'
INNER JOIN Products P 
    ON VP.ProductID = P.ProductID 
    AND P.StockQuantity > 0
GO

-- Multiple join conditions in single JOIN
SELECT 
    E1.EmployeeID AS ManagerID,
    E1.FullName AS ManagerName,
    E2.EmployeeID AS StaffID,
    E2.FullName AS StaffName,
    E1.Department
FROM Employees E1
INNER JOIN Employees E2 
    ON E1.Department = E2.Department 
    AND E1.Role = 'Manager'
    AND E2.Role <> 'Manager'
    AND E1.EmployeeID <> E2.EmployeeID
WHERE E1.EmploymentStatus = 'Active'
    AND E2.EmploymentStatus = 'Active'
GO

-- Complex compound join with date ranges
SELECT 
    RB.BookingID,
    V.FullName,
    RR.RoomNumber,
    R.ResortName
FROM ResortBookings RB
INNER JOIN Visitors V 
    ON RB.VisitorID = V.VisitorID
INNER JOIN ResortRoom RR 
    ON RB.RoomID = RR.RoomID 
    AND RR.AvailabilityStatus IN ('Available', 'Booked')
INNER JOIN Resort R 
    ON RR.ResortID = R.ResortID 
    AND R.MaintenanceStatus = 'Active'
WHERE RB.CheckInDate >= GETDATE()
    AND RB.BookingStatus = 'Confirmed'
GO

-- Compound join with calculated conditions
SELECT 
    SS.ShopSalesID,
    S.ShopName,
    P.ProductName,
    SS.QuantitySold,
    SS.UnitPrice
FROM ShopSales SS
INNER JOIN Shop S 
    ON SS.ShopID = S.ShopID 
    AND S.MaintenanceStatus = 'Active'
INNER JOIN Products P 
    ON SS.ProductID = P.ProductID 
    AND P.StockQuantity >= SS.QuantitySold
    AND (SS.QuantitySold * SS.UnitPrice) > 1000
GO

-- Multiple tables with compound conditions
SELECT 
    A.AnimalID,
    A.CommonName,
    Z.ZooName,
    E.EnclosureName,
    V.FullName AS VetName
FROM Animal A
INNER JOIN Zoo Z 
    ON A.ZooID = Z.ZooID 
    AND Z.MaintenanceStatus = 'Active'
INNER JOIN Enclosure E 
    ON A.EnclosureID = E.EnclosureID 
    AND E.MaintenanceStatus = 'Active'
    AND E.Capacity >= 5
INNER JOIN Employees V 
    ON A.VeterinarianID = V.EmployeeID 
    AND V.Role = 'Veterinarian'
    AND V.EmploymentStatus = 'Active'
WHERE A.HealthStatus = 'Healthy'
GO

-- Compound join with aggregation
SELECT 
    S.ShopID,
    S.ShopName,
    P.ProductID,
    P.ProductName,
    COUNT(SS.ShopSalesID) AS SalesCount,
    SUM(SS.TotalPrice) AS TotalRevenue
FROM Shop S
INNER JOIN ShopSales SS 
    ON S.ShopID = SS.ShopID 
    AND SS.PaymentStatus = 'Paid'
    AND SS.SaleDate >= '2025-01-01'
INNER JOIN Products P 
    ON SS.ProductID = P.ProductID 
    AND P.StockQuantity > 0
GROUP BY S.ShopID, S.ShopName, P.ProductID, P.ProductName
HAVING SUM(SS.TotalPrice) > 5000
GO


-----------------------------------------------------
----6.11:: UNION, UNION ALL, EXCEPT, INTERSECT----
-----------------------------------------------------


-- UNION: Combine unique records from multiple queries
SELECT EmployeeID, FullName, 'Employee' AS Type, PhoneNumber
FROM Employees
WHERE EmploymentStatus = 'Active'
UNION
SELECT VisitorID, FullName, 'Visitor' AS Type, PhoneNumber
FROM Visitors
WHERE MembershipStatus = 'Active'
GO

-- UNION ALL: Include duplicates
SELECT ProductName, 'Shop' AS Source, UnitPrice
FROM Products
WHERE SourceTable = 'ShopSales'
UNION ALL
SELECT FruitName, 'Fruit Garden' AS Source, UnitPrice
FROM FruitSales
UNION ALL
SELECT FishName, 'Fish Farm' AS Source, UnitPrice
FROM FishSales
ORDER BY Source, UnitPrice DESC
GO

-- EXCEPT: Records in first query but not in second
SELECT EmployeeID, FullName
FROM Employees
WHERE Department = 'Maintenance'
EXCEPT
SELECT SupervisorID, E.FullName
FROM AttendanceStaffShift A
INNER JOIN Employees E ON A.SupervisorID = E.EmployeeID
WHERE A.Status = 'Present'
GO

-- INTERSECT: Common records between queries
SELECT VisitorID
FROM TicketSales
WHERE PurchaseDate >= '2025-12-01'
INTERSECT
SELECT VisitorID
FROM ResortBookings
WHERE BookingDate >= '2025-12-01'
GO

-- Complex UNION with calculations
SELECT 
    'Income' AS TransactionType,
    'Ticket Sales' AS Source,
    SUM(Price * Quantity) AS Amount,
    COUNT(*) AS Count
FROM TicketSales
WHERE PurchaseDate >= '2025-12-01'
UNION ALL
SELECT 
    'Income' AS TransactionType,
    'Shop Sales' AS Source,
    SUM(TotalPrice) AS Amount,
    COUNT(*) AS Count
FROM ShopSales
WHERE SaleDate >= '2025-12-01' AND PaymentStatus = 'Paid'
UNION ALL
SELECT 
    'Expense' AS TransactionType,
    'Park Expenses' AS Source,
    SUM(Amount) AS Amount,
    COUNT(*) AS Count
FROM Expense
WHERE ExpenseDate >= '2025-12-01'
ORDER BY TransactionType, Source
GO

-- EXCEPT with filtering
SELECT E.EmployeeID, E.FullName, E.Role
FROM Employees E
WHERE E.EmploymentStatus = 'Active' AND E.Department = 'Operations'
EXCEPT
SELECT A.EmployeeID, E.FullName, E.Role
FROM AttendanceStaffShift A
INNER JOIN Employees E ON A.EmployeeID = E.EmployeeID
WHERE A.ShiftDate = CAST(GETDATE() AS DATE) AND A.Status = 'Present'
GO

-- Multiple UNION queries
SELECT 'Fish' AS ProductType, FishName AS ProductName, QuantitySold, UnitPrice
FROM FishSales
WHERE SaleDate >= '2025-01-01'
UNION
SELECT 'Fruit', FruitName, QuantitySold, UnitPrice
FROM FruitSales
WHERE SaleDate >= '2025-01-01'
UNION
SELECT 'Shop Product', ProductName, QuantitySold, UnitPrice
FROM ShopSales
WHERE SaleDate >= '2025-01-01'
ORDER BY ProductType, ProductName
GO

-- INTERSECT with aggregation
SELECT VisitorID
FROM (
    SELECT VisitorID, COUNT(*) AS VisitCount
    FROM TicketSales
    GROUP BY VisitorID
    HAVING COUNT(*) > 3
) AS FrequentTicketBuyers
INTERSECT
SELECT VisitorID
FROM (
    SELECT VisitorID, SUM(TotalAmount) AS TotalSpent
    FROM ResortBookings
    GROUP BY VisitorID
    HAVING SUM(TotalAmount) > 20000
) AS HighSpenders
GO


-----------------------------------------------------
----6.12:: GROUP BY with HAVING (Advanced)----
-----------------------------------------------------

-- GROUP BY with multiple aggregates and HAVING
SELECT 
    E.Department,
    E.Role,
    COUNT(E.EmployeeID) AS EmployeeCount,
    AVG(E.Salary) AS AvgSalary,
    MIN(E.Salary) AS MinSalary,
    MAX(E.Salary) AS MaxSalary,
    SUM(E.Salary) AS TotalSalary
FROM Employees E
WHERE E.EmploymentStatus = 'Active'
GROUP BY E.Department, E.Role
HAVING COUNT(E.EmployeeID) >= 2
AND AVG(E.Salary) > 20000
ORDER BY TotalSalary DESC
GO

-- Complex HAVING with multiple conditions
SELECT
    ShopID,
    YEAR(SaleDate) AS SaleYear,
    MONTH(SaleDate) AS SaleMonth,
    SUM(TotalPrice) AS MonthlyRevenue,
    AVG(TotalPrice) AS AvgTransaction,
    MAX(TotalPrice) AS LargestSale
FROM ShopSales
WHERE PaymentStatus = 'Paid'
    GROUP BY ShopID, YEAR(SaleDate), MONTH(SaleDate)
    HAVING SUM(TotalPrice) > 10000
    AND AVG(TotalPrice) > 200
ORDER BY MonthlyRevenue DESC
GO

-- GROUP BY with subquery in HAVING
SELECT
    V.VendorID,
    V.VendorName,
    COUNT(P.ProductID) AS ProductCount,
    AVG(P.UnitPrice) AS AvgPrice
FROM Vendors V
INNER JOIN Products P ON V.VendorID = P.VendorID
WHERE V.Status = 'Active'
    GROUP BY V.VendorID, V.VendorName
    HAVING COUNT(P.ProductID) > (
    SELECT AVG(ProductCount)
FROM 
(
SELECT COUNT(ProductID) AS ProductCount
FROM Products
    GROUP BY VendorID
) AS AvgProducts
)
GO

-- Multiple GROUP BY levels with HAVING
SELECT
    VisitorType,
    MembershipStatus,
    COUNT(*) AS VisitorCount,
    AVG(Age) AS AvgAge
FROM Visitors
WHERE Age IS NOT NULL
GROUP BY VisitorType, MembershipStatus
HAVING COUNT(*) > 5
   AND AVG(Age) BETWEEN 25 AND 50
ORDER BY VisitorCount DESC;
GO


-- GROUP BY with CASE in HAVING
SELECT
    YEAR(PurchaseDate) AS Year,
    TicketType,
    SUM(Price * Quantity) AS TotalRevenue,
    COUNT(*) AS TicketCount
FROM TicketSales
GROUP BY YEAR(PurchaseDate), TicketType
HAVING SUM(Price * Quantity) >
    CASE
        WHEN TicketType = 'Park' THEN 50000
        WHEN TicketType = 'Zoo'  THEN 30000
        ELSE 20000
    END
ORDER BY Year, TotalRevenue DESC;
GO

-- Nested aggregates in HAVING
SELECT
    FruitGardenID,
    COUNT(*) AS SalesCount,
    SUM(QuantitySold * UnitPrice) AS TotalRevenue,
    AVG(QuantitySold) AS AvgQuantity,
    STDEV(QuantitySold * UnitPrice) AS RevenueStdDev
FROM FruitSales
WHERE PaymentStatus = 'Paid'
GROUP BY FruitGardenID
HAVING SUM(QuantitySold * UnitPrice) > 50000
   AND COUNT(*) > 10
   AND STDEV(QuantitySold * UnitPrice) < 5000
ORDER BY TotalRevenue DESC;
GO

-----------------------------------------------------
----6.13:: Subqueries----
-----------------------------------------------------
-- Scalar subquery: Single value return
SELECT 
    EmployeeID,
    FullName,
    Salary,
    (SELECT AVG(Salary) FROM Employees WHERE EmploymentStatus = 'Active') AS AvgSalary,
    Salary - (SELECT AVG(Salary) FROM Employees WHERE EmploymentStatus = 'Active') AS SalaryDiff
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- Subquery in WHERE clause with IN
SELECT 
    ProductID,
    ProductName,
    StockQuantity,
    VendorID
FROM Products
WHERE VendorID IN (
    SELECT VendorID 
    FROM Vendors 
    WHERE Status = 'Active' AND VendorType = 'Local'
)
GO

-- Correlated subquery
SELECT 
    E.EmployeeID,
    E.FullName,
    E.Department,
    E.Salary,
    (
        SELECT AVG(E2.Salary)
        FROM Employees E2
        WHERE E2.Department = E.Department
            AND E2.EmploymentStatus = 'Active'
    ) AS DeptAvgSalary
FROM Employees E
WHERE E.EmploymentStatus = 'Active'
GO

-- EXISTS subquery
SELECT 
    V.VendorID,
    V.VendorName,
    V.VendorType
FROM Vendors V
WHERE EXISTS (
    SELECT 1
    FROM Products P
    WHERE P.VendorID = V.VendorID
        AND P.StockQuantity > 100
)
GO

-- NOT EXISTS
SELECT 
    E.EmployeeID,
    E.FullName,
    E.Role
FROM Employees E
WHERE E.EmploymentStatus = 'Active'
    AND NOT EXISTS (
        SELECT 1
        FROM AttendanceStaffShift A
        WHERE A.EmployeeID = E.EmployeeID
            AND A.ShiftDate = CAST(GETDATE() AS DATE)
            AND A.Status = 'Present'
    )
GO

-- Subquery with ANY/ALL
SELECT 
    ProductID,
    ProductName,
    UnitPrice
FROM Products
WHERE UnitPrice > ALL (
    SELECT AVG(UnitPrice)
    FROM Products
    GROUP BY SourceTable
)
GO

-- Multi-level nested subquery
SELECT 
    ShopID,
    ShopName,
    (
        SELECT COUNT(*)
        FROM ShopSales SS
        WHERE SS.ShopID = S.ShopID
            AND SS.PaymentStatus = 'Paid'
            AND SS.SaleDate >= (
                SELECT MAX(SaleDate)
                FROM ShopSales
                WHERE YEAR(SaleDate) = YEAR(GETDATE())
            )
    ) AS RecentSalesCount
FROM Shop S
WHERE S.MaintenanceStatus = 'Active'
GO

-- Subquery in FROM clause (derived table)
SELECT 
    DeptStats.Department,
    DeptStats.EmployeeCount,
    DeptStats.AvgSalary,
    DeptStats.TotalSalary
FROM (
    SELECT 
        Department,
        COUNT(*) AS EmployeeCount,
        AVG(Salary) AS AvgSalary,
        SUM(Salary) AS TotalSalary
    FROM Employees
    WHERE EmploymentStatus = 'Active'
    GROUP BY Department
) AS DeptStats
WHERE DeptStats.AvgSalary > 25000
ORDER BY DeptStats.TotalSalary DESC
GO

-- Subquery with comparison operators
SELECT 
    VisitorID,
    FullName,
    Age
FROM Visitors
WHERE Age > (
    SELECT AVG(Age)
    FROM Visitors
    WHERE MembershipStatus = 'Active'
)
AND MembershipStatus = 'Active'
GO

-- Complex correlated subquery with aggregation
SELECT 
    P.ProductID,
    P.ProductName,
    P.StockQuantity,
    (
        SELECT SUM(SS.QuantitySold)
        FROM ShopSales SS
        WHERE SS.ProductID = P.ProductID
            AND SS.PaymentStatus = 'Paid'
            AND SS.SaleDate >= DATEADD(MONTH, -3, GETDATE())
    ) AS Sales3Months,
    CASE 
        WHEN P.StockQuantity < (
            SELECT ISNULL(SUM(SS.QuantitySold), 0) / 3
            FROM ShopSales SS
            WHERE SS.ProductID = P.ProductID
                AND SS.PaymentStatus = 'Paid'
                AND SS.SaleDate >= DATEADD(MONTH, -3, GETDATE())
        ) THEN 'Reorder Needed'
        ELSE 'Stock OK'
    END AS StockStatus
FROM Products P
WHERE P.StockQuantity > 0
GO


---------------------------------------------------------------
----6.14:: CTE (Common Table Expressions) and Recursive CTE----
---------------------------------------------------------------

-- Basic CTE
WITH EmployeeCTE AS (
    SELECT 
        EmployeeID,
        FullName,
        Department,
        Salary,
        ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank
    FROM Employees
    WHERE EmploymentStatus = 'Active'
)
SELECT 
    EmployeeID,
    FullName,
    Department,
    Salary,
    SalaryRank
FROM EmployeeCTE
WHERE SalaryRank <= 3
GO

-- Multiple CTEs
WITH 
ShopRevenue AS (
    SELECT 
        ShopID,
        SUM(TotalPrice) AS TotalRevenue,
        COUNT(*) AS TransactionCount
    FROM ShopSales
    WHERE PaymentStatus = 'Paid'
    GROUP BY ShopID
),
ShopInfo AS (
    SELECT 
        ShopID,
        ShopName,
        ShopType,
        Location
    FROM Shop
    WHERE MaintenanceStatus = 'Active'
)
SELECT 
    SI.ShopName,
    SI.ShopType,
    SI.Location,
    ISNULL(SR.TotalRevenue, 0) AS Revenue,
    ISNULL(SR.TransactionCount, 0) AS Transactions
FROM ShopInfo SI
LEFT JOIN ShopRevenue SR ON SI.ShopID = SR.ShopID
ORDER BY Revenue DESC
GO

-- CTE with aggregation and filtering
WITH MonthlySales AS (
    SELECT 
        YEAR(SaleDate) AS SaleYear,
        MONTH(SaleDate) AS SaleMonth,
        SUM(TotalPrice) AS MonthlyRevenue,
        AVG(TotalPrice) AS AvgTransaction,
        COUNT(*) AS TransactionCount
    FROM ShopSales
    WHERE PaymentStatus = 'Paid'
    GROUP BY YEAR(SaleDate), MONTH(SaleDate)
)
SELECT 
    SaleYear,
    SaleMonth,
    MonthlyRevenue,
    AvgTransaction,
    TransactionCount,
    MonthlyRevenue - LAG(MonthlyRevenue) OVER (ORDER BY SaleYear, SaleMonth) AS RevenueChange
FROM MonthlySales
WHERE MonthlyRevenue > 10000
ORDER BY SaleYear, SaleMonth
GO

-- Recursive CTE: Employee hierarchy (if we had manager structure)
WITH EmployeeHierarchy AS (
    SELECT 
        EmployeeID,
        FullName,
        Role,
        Department,
        0 AS Level,
        CAST(FullName AS VARCHAR(MAX)) AS HierarchyPath
    FROM Employees
    WHERE Role = 'Manager' AND EmploymentStatus = 'Active'
    
    UNION ALL
    
    -- Recursive member: subordinates
    SELECT 
        E.EmployeeID,
        E.FullName,
        E.Role,
        E.Department,
        EH.Level + 1,
        CAST(EH.HierarchyPath + ' -> ' + E.FullName AS VARCHAR(MAX))
    FROM Employees E
    INNER JOIN EmployeeHierarchy EH 
        ON E.Department = EH.Department
        AND E.Role <> 'Manager'
    WHERE E.EmploymentStatus = 'Active'
        AND EH.Level < 3 
)
SELECT 
    EmployeeID,
    FullName,
    Role,
    Department,
    Level,
    HierarchyPath
FROM EmployeeHierarchy
ORDER BY Department, Level, FullName
GO

-- Recursive CTE: Number series
WITH NumberSeries AS (
    SELECT 1 AS Number
    UNION ALL
    SELECT Number + 1
    FROM NumberSeries
    WHERE Number < 100
)
SELECT 
    Number,
    CASE 
        WHEN Number % 15 = 0 THEN 'FizzBuzz'
        WHEN Number % 3 = 0 THEN 'Fizz'
        WHEN Number % 5 = 0 THEN 'Buzz'
        ELSE CAST(Number AS VARCHAR(10))
    END AS FizzBuzz
FROM NumberSeries
OPTION (MAXRECURSION 100)
GO

-- CTE with JOIN
WITH VisitorPurchases AS (
    SELECT 
        V.VisitorID,
        V.FullName,
        V.VisitorType,
        V.MembershipStatus,
        COUNT(DISTINCT TS.TicketID) AS TicketCount,
        ISNULL(SUM(TS.Price * TS.Quantity), 0) AS TicketSpending
    FROM Visitors V
    LEFT JOIN TicketSales TS ON V.VisitorID = TS.VisitorID
    GROUP BY V.VisitorID, V.FullName, V.VisitorType, V.MembershipStatus
)
SELECT 
    VP.VisitorID,
    VP.FullName,
    VP.VisitorType,
    VP.MembershipStatus,
    VP.TicketCount,
    VP.TicketSpending,
    CASE 
        WHEN VP.TicketSpending >= 5000 THEN 'Premium'
        WHEN VP.TicketSpending >= 2000 THEN 'Regular'
        ELSE 'Occasional'
    END AS CustomerTier
FROM VisitorPurchases VP
WHERE VP.TicketCount > 0
ORDER BY VP.TicketSpending DESC
GO

-- Nested CTE
WITH 
DailyRevenue AS (
    SELECT 
        CAST(SaleDate AS DATE) AS SaleDate,
        SUM(TotalPrice) AS DailyTotal
    FROM ShopSales
    WHERE PaymentStatus = 'Paid'
        AND SaleDate >= DATEADD(DAY, -30, GETDATE())
    GROUP BY CAST(SaleDate AS DATE)
),
RevenueStats AS (
    SELECT 
        AVG(DailyTotal) AS AvgDailyRevenue,
        STDEV(DailyTotal) AS StdDevRevenue
    FROM DailyRevenue
)
SELECT 
    DR.SaleDate,
    DR.DailyTotal,
    RS.AvgDailyRevenue,
    DR.DailyTotal - RS.AvgDailyRevenue AS Variance,
    CASE 
        WHEN DR.DailyTotal > RS.AvgDailyRevenue + RS.StdDevRevenue THEN 'Above Average'
        WHEN DR.DailyTotal < RS.AvgDailyRevenue - RS.StdDevRevenue THEN 'Below Average'
        ELSE 'Normal'
    END AS PerformanceCategory
FROM DailyRevenue DR
CROSS JOIN RevenueStats RS
ORDER BY DR.SaleDate DESC
GO


-----------------------------------------------------
----6.16:: CAST, CONVERT, TRY_CONVERT----
-----------------------------------------------------

-- CAST examples
SELECT 
    EmployeeID,
    FullName,
    CAST(Salary AS VARCHAR(20)) AS SalaryText,
    CAST(HireDate AS VARCHAR(20)) AS HireDateText,
    CAST(Age AS DECIMAL(5,2)) AS AgeDecimal
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- CONVERT with style parameter for dates
SELECT 
    TicketID,
    PurchaseDate,
    CONVERT(VARCHAR(20), PurchaseDate, 101) AS US_Format,        -- MM/DD/YYYY
    CONVERT(VARCHAR(20), PurchaseDate, 103) AS UK_Format,        -- DD/MM/YYYY
    CONVERT(VARCHAR(20), PurchaseDate, 105) AS Italian_Format,   -- DD-MM-YYYY
    CONVERT(VARCHAR(20), PurchaseDate, 112) AS ISO_Format,       -- YYYYMMDD
    CONVERT(VARCHAR(30), PurchaseDate, 113) AS Long_Format       -- DD Mon YYYY HH:MI:SS
FROM TicketSales
WHERE PurchaseDate >= '2026-01-01'
GO

-- TRY_CONVERT: Safe conversion (returns NULL on failure)
SELECT 
    VisitorID,
    FullName,
    NationalID,
    TRY_CONVERT(INT, NationalID) AS NationalIDAsInt,
    CASE 
        WHEN TRY_CONVERT(INT, NationalID) IS NULL THEN 'Invalid Format'
        ELSE 'Valid Format'
    END AS ValidationStatus
FROM Visitors
WHERE NationalID IS NOT NULL
GO

-- CAST with arithmetic operations
SELECT 
    ProductID,
    ProductName,
    StockQuantity,
    UnitPrice,
    CAST(StockQuantity AS DECIMAL(10,2)) / 100 AS StockInHundreds,
    CAST((StockQuantity * UnitPrice) AS MONEY) AS TotalValue
FROM Products
WHERE StockQuantity > 0
GO


-- Complex type conversions
SELECT 
    EmployeeID,
    FullName,
    HireDate,
    DATEDIFF(DAY, HireDate, GETDATE()) AS DaysWorked,
    CAST(DATEDIFF(DAY, HireDate, GETDATE()) / 365.25 AS INT) AS YearsWorked,
    CONVERT(VARCHAR(10), CAST(Salary / 12 AS MONEY), 1) AS MonthlySalary
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- TRY_CONVERT with error handling
SELECT 
    FeedbackID,
    VisitorID,
    Rating,
    Comments,
    TRY_CONVERT(DATE, Comments) AS CommentAsDate,
    CASE 
        WHEN TRY_CONVERT(DATE, Comments) IS NOT NULL THEN 'Date Found in Comment'
        WHEN TRY_CONVERT(INT, Comments) IS NOT NULL THEN 'Number Found in Comment'
        ELSE 'Text Only'
    END AS CommentType
FROM CustomerFeedback
GO

-- CAST in WHERE clause
SELECT 
    BookingID,
    VisitorID,
    CheckInDate,
    CheckOutDate,
    TotalAmount
FROM ResortBookings
WHERE CAST(TotalAmount AS INT) % 1000 = 0 
    AND YEAR(CheckInDate) = 2025
GO

-- CONVERT with precision
SELECT 
    AnimalID,
    CommonName,
    Age,
    CONVERT(DECIMAL(5,2), Age * 7) AS AgeInDogYears,
    CONVERT(VARCHAR(50), DateOfBirth, 107) AS FormattedBirthDate
FROM Animal
WHERE HealthStatus = 'Healthy'
GO


-----------------------------------------------------
----6.17:: Other Data Conversion Functions----
-----------------------------------------------------

-- PARSE: Convert string to specific type (culture-aware)
SELECT 
    EmployeeID,
    FullName,
    PARSE('$45,000.00' AS MONEY) AS ParsedSalary,
    PARSE('12/25/2025' AS DATE USING 'en-US') AS ParsedDate
FROM Employees
WHERE EmployeeID = 101
GO

-- TRY_PARSE: Safe parsing
SELECT 
    'Valid Number' AS TestType,
    TRY_PARSE('123.45' AS DECIMAL(10,2)) AS ParsedValue
UNION ALL
SELECT 
    'Invalid Number',
    TRY_PARSE('ABC' AS DECIMAL(10,2))
GO

-- STR: Convert number to string with formatting
SELECT 
    ProductID,
    ProductName,
    UnitPrice,
    STR(UnitPrice, 10, 2) AS PriceFormatted,
    'BDT ' + STR(UnitPrice, 10, 2) AS PriceWithCurrency
FROM Products
WHERE StockQuantity > 0
GO

-- FORMAT: Culture-aware formatting
SELECT 
    TicketID,
    PurchaseDate,
    Price,
    FORMAT(PurchaseDate, 'D', 'en-US') AS LongDateUS,
    FORMAT(PurchaseDate, 'd', 'de-DE') AS ShortDateGerman,
    FORMAT(Price, 'C', 'en-US') AS CurrencyUS,
    FORMAT(Price, 'N2') AS NumberFormatted,
    FORMAT(Price, '0.00') AS CustomFormat
FROM TicketSales
WHERE PurchaseDate >= '2026-01-01'
GO

-- ISNUMERIC: Check if value is numeric
SELECT 
    VisitorID,
    PhoneNumber,
    ISNUMERIC(PhoneNumber) AS IsPhoneNumeric,
    CASE 
        WHEN ISNUMERIC(REPLACE(PhoneNumber, '-', '')) = 1 THEN 'Valid Format'
        ELSE 'Invalid Format'
    END AS PhoneValidation
FROM Visitors
WHERE PhoneNumber IS NOT NULL
GO

-- CONVERT with binary
SELECT 
    EmployeeID,
    FullName,
    CONVERT(VARBINARY(50), FullName) AS NameBinary,
    CONVERT(VARCHAR(100), CONVERT(VARBINARY(50), FullName), 1) AS BinaryAsHex
FROM Employees
WHERE EmployeeID <= 105
GO

-- Multiple conversion functions combined
SELECT 
    ShopSalesID,
    SaleDate,
    TotalPrice,
    FORMAT(SaleDate, 'MMMM dd, yyyy') AS FormattedDate,
    CONVERT(VARCHAR(10), SaleDate, 101) AS ConvertedDate,
    STR(TotalPrice, 10, 2) AS StrPrice,
    FORMAT(TotalPrice, 'C', 'en-BD') AS BDTPrice,
    PARSE(FORMAT(TotalPrice, 'N2') AS DECIMAL(10,2)) AS ParsedPrice
FROM ShopSales
WHERE PaymentStatus = 'Paid'
    AND SaleDate >= '2025-12-01'
GO

-- JSON functions (if available)
SELECT 
    EmployeeID,
    FullName,
    Department,
    Salary,
    (
        SELECT 
            E.EmployeeID AS id,
            E.FullName AS name,
            E.Department AS dept,
            E.Salary AS salary
        FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
    ) AS EmployeeJSON
FROM Employees E
WHERE E.EmployeeID <= 105
GO


-----------------------------------------------------
----6.18:: Numeric Functions----
-----------------------------------------------------


SELECT 
    SummaryID,
    TotalIncome,
    TotalExpense,
    (TotalIncome - TotalExpense) AS NetRevenue,
    ABS(TotalIncome - TotalExpense) AS AbsoluteNetRevenue
FROM RevenueSummary
GO

-- ROUND, CEILING, FLOOR
SELECT 
    ProductID,
    ProductName,
    UnitPrice,
    ROUND(UnitPrice, 0) AS RoundedPrice,
    CEILING(UnitPrice) AS CeilingPrice,
    FLOOR(UnitPrice) AS FloorPrice,
    ROUND(UnitPrice * 1.15, 2) AS PriceWithTax
FROM Products
WHERE StockQuantity > 0
GO

-- POWER and SQRT
SELECT 
    EmployeeID,
    FullName,
    Salary,
    POWER(Salary / 1000, 2) AS SalarySquared,
    SQRT(Salary) AS SalarySqrt,
    POWER(2, 10) AS TwoToTen
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- SIGN: Returns -1, 0, or 1
SELECT 
    ExpenseID,
    ExpenseType,
    Amount,
    SIGN(Amount) AS SignValue,
    CASE SIGN(Amount)
        WHEN -1 THEN 'Negative'
        WHEN 0 THEN 'Zero'
        WHEN 1 THEN 'Positive'
    END AS SignDescription
FROM Expense
GO

-- MOD (using %)
SELECT 
    TicketID,
    Price,
    Quantity,
    (Price * Quantity) AS Total,
    (Price * Quantity) % 100 AS RemainderBy100,
    CASE 
        WHEN (Price * Quantity) % 100 = 0 THEN 'Round Number'
        ELSE 'Not Round'
    END AS RoundCheck
FROM TicketSales
GO

-- Complex numeric calculations
SELECT
    ShopSalesID,
    QuantitySold,
    UnitPrice,
    TotalPrice,
    DiscountApplied,
    ROUND((TotalPrice - DiscountApplied) * 0.15, 2) AS TaxAmount,
    CEILING((TotalPrice - DiscountApplied) * 1.15) AS TotalWithTax,
    POWER((TotalPrice - DiscountApplied) / 1000, 2) AS PriceScore
FROM ShopSales
WHERE PaymentStatus = 'Paid'
GO

SELECT
    Department,
    COUNT(*) AS EmployeeCount,
    AVG(Salary) AS AvgSalary,
    STDEV(Salary) AS StdDevSalary,
    VAR(Salary) AS VarianceSalary,
    MIN(Salary) AS MinSalary,
    MAX(Salary) AS MaxSalary,
    SUM(Salary) AS TotalSalary
FROM Employees
WHERE EmploymentStatus = 'Active'
GROUP BY Department;
GO


-----------------------------------------------------
----6.19:: Date Functions----
-----------------------------------------------------


-- Current Date/Time
SELECT  
    GETDATE() AS CurrentDateTime,
    SYSDATETIME() AS CurrentDateTime2,
    CURRENT_TIMESTAMP AS CurrentTimestamp,
    GETUTCDATE() AS UTCDateTime;
GO

-- Extracting Parts of Date
SELECT  
    TicketID,
    PurchaseDate,
    YEAR(PurchaseDate) AS PurchaseYear,
    MONTH(PurchaseDate) AS PurchaseMonth,
    DAY(PurchaseDate) AS PurchaseDay,
    DATEPART(QUARTER, PurchaseDate) AS Quarter,
    DATEPART(WEEK, PurchaseDate) AS WeekNumber,
    DATEPART(WEEKDAY, PurchaseDate) AS WeekDay
FROM TicketSales
WHERE PurchaseDate >= '2026-01-01';
GO

-- Date Name Examples
SELECT  
    EventID,
    EventName,
    StartDate,
    DATENAME(MONTH, StartDate) AS MonthName,
    DATENAME(WEEKDAY, StartDate) AS WeekDayName,
    DATENAME(QUARTER, StartDate) AS QuarterName
FROM Event
WHERE EventStatus = 'Scheduled';
GO

-- Difference Between Dates
SELECT  
    EmployeeID,
    FullName,
    HireDate,
    DATEDIFF(DAY, HireDate, GETDATE()) AS DaysEmployed,
    DATEDIFF(MONTH, HireDate, GETDATE()) AS MonthsEmployed,
    DATEDIFF(YEAR, HireDate, GETDATE()) AS YearsEmployed,
    DATEDIFF(WEEK, HireDate, GETDATE()) AS WeeksEmployed
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- EOMONTH: End of month
SELECT 
    GETDATE() AS Today,
    EOMONTH(GETDATE()) AS EndOfCurrentMonth,
    EOMONTH(GETDATE(), 1) AS EndOfNextMonth,
    EOMONTH(GETDATE(), -1) AS EndOfLastMonth,
    DATEDIFF(DAY, GETDATE(), EOMONTH(GETDATE())) AS DaysLeftInMonth
GO

-- DATEFROMPARTS: Construct date from parts
SELECT 
    DATEFROMPARTS(2025, 12, 25) AS ChristmasDay,
    DATETIMEFROMPARTS(2025, 1, 1, 0, 0, 0, 0) AS NewYear2025,
    TIMEFROMPARTS(14, 30, 0, 0, 0) AS TwoThirtyPM
GO

-- ISDATE: Validate date
SELECT 
    '2025-12-31' AS DateString,
    ISDATE('2025-12-31') AS IsValidDate,
    ISDATE('2025-13-31') AS IsInvalidDate,
    ISDATE('Not a date') AS IsTextDate
GO

-- Complex date calculations
SELECT 
    VisitorID,
    FullName,
    Age,
    DATEADD(YEAR, -Age, GETDATE()) AS ApproximateBirthYear,
    CASE 
        WHEN DATEPART(MONTH, GETDATE()) >= 6 THEN 'H2'
        ELSE 'H1'
    END AS CurrentHalf,
    DATEDIFF(DAY, 
        DATEFROMPARTS(YEAR(GETDATE()), 1, 1), 
        GETDATE()
    ) AS DayOfYear
FROM Visitors
WHERE Age IS NOT NULL
GO

-- Date ranges and comparisons
SELECT 
    ShopSalesID,
    SaleDate,
    TotalPrice,
    CASE 
        WHEN DATEDIFF(DAY, SaleDate, GETDATE()) <= 7 THEN 'This Week'
        WHEN DATEDIFF(DAY, SaleDate, GETDATE()) <= 30 THEN 'This Month'
        WHEN DATEDIFF(DAY, SaleDate, GETDATE()) <= 90 THEN 'Last Quarter'
        ELSE 'Older'
    END AS SaleAge,
    DATEADD(MONTH, 3, SaleDate) AS WarrantyExpiry
FROM ShopSales
WHERE PaymentStatus = 'Paid'
GO

-- Working with time
SELECT 
    AttendanceID,
    EmployeeID,
    ShiftDate,
    StartTime,
    EndTime,
    DATEDIFF(MINUTE, StartTime, EndTime) AS MinutesWorked,
    DATEDIFF(MINUTE, StartTime, EndTime) / 60.0 AS HoursWorked,
    DATEADD(MINUTE, 30, StartTime) AS BreakTime
FROM AttendanceStaffShift
WHERE ShiftDate >= CAST(GETDATE() AS DATE)
GO

-- FORMAT with dates
SELECT 
    EventID,
    EventName,
    StartDate,
    FORMAT(StartDate, 'dd/MM/yyyy') AS FormattedDate,
    FORMAT(StartDate, 'dddd, MMMM dd, yyyy') AS LongDate,
    FORMAT(StartDate, 'MMM-yy') AS ShortMonthYear
FROM Event
WHERE EventStatus = 'Scheduled'
GO

-----------------------------------------------------
----6.20:: COALESCE, ISNULL, CASE----
-----------------------------------------------------


-- ISNULL: Replace NULL with default value
SELECT 
    VisitorID,
    FullName,
    ISNULL(NationalID, 'No NID') AS NationalID,
    ISNULL(PassportNo, 'No Passport') AS PassportNo,
    ISNULL(PhoneNumber, 'No Phone') AS PhoneNumber
FROM Visitors
GO


-- CASE: Simple CASE expression
SELECT 
    EmployeeID,
    FullName,
    Role,
    Salary,
    CASE Role
        WHEN 'Manager' THEN Salary * 1.15
        WHEN 'Supervisor' THEN Salary * 1.10
        WHEN 'Veterinarian' THEN Salary * 1.12
        ELSE Salary * 1.05
    END AS AdjustedSalary
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- CASE: Searched CASE expression
SELECT 
    ProductID,
    ProductName,
    StockQuantity,
    ReorderLevel,
    CASE 
        WHEN StockQuantity = 0 THEN 'Out of Stock - URGENT'
        WHEN StockQuantity < ReorderLevel THEN 'Low Stock - Reorder Soon'
        WHEN StockQuantity >= ReorderLevel * 2 THEN 'Overstocked'
        ELSE 'Normal Stock Level'
    END AS StockStatus,
    CASE 
        WHEN StockQuantity < ReorderLevel 
        THEN (ReorderLevel - StockQuantity) * UnitPrice
        ELSE 0
    END AS ReorderCost
FROM Products
GO

-- Complex CASE with multiple conditions
SELECT 
    VisitorID,
    FullName,
    Age,
    VisitorType,
    MembershipStatus,
    CASE 
        WHEN MembershipStatus = 'Active' AND VisitorType = 'Corporate' THEN 'Premium'
        WHEN MembershipStatus = 'Active' AND Age >= 60 THEN 'Senior Member'
        WHEN MembershipStatus = 'Active' THEN 'Regular Member'
        WHEN VisitorType = 'Corporate' THEN 'Corporate Guest'
        WHEN Age < 18 THEN 'Youth'
        ELSE 'Standard'
    END AS CustomerCategory,
    CASE 
        WHEN MembershipStatus = 'Active' THEN 0.20
        WHEN Age >= 60 OR Age < 12 THEN 0.15
        WHEN VisitorType = 'Group' THEN 0.10
        ELSE 0.00
    END AS DiscountPercentage
FROM Visitors
GO

-- Nested CASE
SELECT 
    ShopSalesID,
    TotalPrice,
    PaymentStatus,
    DeliveryStatus,
    CASE PaymentStatus
        WHEN 'Paid' THEN 
            CASE DeliveryStatus
                WHEN 'Delivered' THEN 'Complete'
                WHEN 'Pending' THEN 'Awaiting Delivery'
                ELSE 'Payment Verified'
            END
        WHEN 'Pending' THEN 'Awaiting Payment'
        ELSE 'Cancelled/Failed'
    END AS OverallStatus
FROM ShopSales
GO

-- COALESCE with CASE
SELECT 
    EmployeeID,
    FullName,
    COALESCE(Email, PhoneNumber, 'No Contact') AS PrimaryContact,
    CASE 
        WHEN Email IS NOT NULL AND PhoneNumber IS NOT NULL THEN 'Complete'
        WHEN Email IS NOT NULL OR PhoneNumber IS NOT NULL THEN 'Partial'
        ELSE 'Missing'
    END AS ContactInfoStatus
FROM Employees
GO

-- Using NULLIF with CASE
SELECT 
    ProductID,
    ProductName,
    StockQuantity,
    ReorderLevel,
    NULLIF(StockQuantity, 0) AS NonZeroStock,
    CASE 
        WHEN NULLIF(StockQuantity, 0) IS NULL THEN 'No Stock'
        WHEN StockQuantity < ReorderLevel THEN 'Reorder'
        ELSE 'OK'
    END AS Status
FROM Products
GO

-- Complex business logic with CASE
SELECT 
    FeedbackID,
    VisitorID,
    ServiceType,
    Rating,
    CASE 
        WHEN Rating = 5 THEN 'Excellent'
        WHEN Rating = 4 THEN 'Good'
        WHEN Rating = 3 THEN 'Average'
        WHEN Rating = 2 THEN 'Poor'
        WHEN Rating = 1 THEN 'Very Poor'
        ELSE 'Not Rated'
    END AS RatingDescription,
    CASE 
        WHEN Rating >= 4 THEN 'Satisfied'
        WHEN Rating = 3 THEN 'Neutral'
        ELSE 'Unsatisfied'
    END AS SatisfactionLevel,
    CASE 
        WHEN Rating <= 2 THEN 'Follow-up Required'
        ELSE 'No Action Needed'
    END AS ActionRequired
FROM CustomerFeedback
GO

-- COALESCE in aggregation
SELECT 
    Department,
    COUNT(*) AS EmployeeCount,
    AVG(COALESCE(Bonus, 0)) AS AvgBonus,
    SUM(Salary + COALESCE(Bonus, 0)) AS TotalCompensation
FROM Employees
WHERE EmploymentStatus = 'Active'
GROUP BY Department
GO


-----------------------------------------------------
----6.21:: IIF, CHOOSE----
-----------------------------------------------------

-- IIF: Inline IF function (SQL Server 2012+)
SELECT 
    EmployeeID,
    FullName,
    Salary,
    IIF(Salary > 30000, 'High', 'Standard') AS SalaryCategory,
    IIF(EmploymentStatus = 'Active', 'Working', 'Not Working') AS WorkStatus,
    IIF(Bonus > 0, Bonus, Salary * 0.05) AS EffectiveBonus
FROM Employees
GO

-- Nested IIF
SELECT 
    ProductID,
    ProductName,
    StockQuantity,
    ReorderLevel,
    IIF(StockQuantity = 0, 'Out of Stock',
        IIF(StockQuantity < ReorderLevel, 'Low Stock',
            IIF(StockQuantity >= ReorderLevel * 2, 'Overstocked', 'Normal')
        )
    ) AS StockStatus
FROM Products
GO

-- CHOOSE: Return item at specified index
SELECT 
    VisitorID,
    FullName,
    DATEPART(WEEKDAY, GETDATE()) AS DayNumber,
    CHOOSE(DATEPART(WEEKDAY, GETDATE()), 
        'Sunday', 'Monday', 'Tuesday', 'Wednesday', 
        'Thursday', 'Friday', 'Saturday'
    ) AS DayName
FROM Visitors
WHERE VisitorID <= 110
GO

-- CHOOSE with calculations
SELECT 
    EventID,
    EventName,
    MONTH(StartDate) AS MonthNumber,
    CHOOSE(MONTH(StartDate),
        'January', 'February', 'March', 'April',
        'May', 'June', 'July', 'August',
        'September', 'October', 'November', 'December'
    ) AS MonthName,
    CHOOSE(
        CASE 
            WHEN MONTH(StartDate) <= 3 THEN 1
            WHEN MONTH(StartDate) <= 6 THEN 2
            WHEN MONTH(StartDate) <= 9 THEN 3
            ELSE 4
        END,
        'Q1', 'Q2', 'Q3', 'Q4'
    ) AS Quarter
FROM Event
WHERE EventStatus = 'Scheduled'
GO

-- IIF with aggregation
SELECT 
    Department,
    COUNT(*) AS TotalEmployees,
    SUM(IIF(Gender = 'Male', 1, 0)) AS MaleCount,
    SUM(IIF(Gender = 'Female', 1, 0)) AS FemaleCount,
    AVG(IIF(Salary > 25000, Salary, NULL)) AS AvgHighSalary
FROM Employees
WHERE EmploymentStatus = 'Active'
GROUP BY Department
GO

-- CHOOSE for categorization
SELECT 
    TicketID,
    Price,
    CHOOSE(
        CASE 
            WHEN Price < 100 THEN 1
            WHEN Price < 200 THEN 2
            WHEN Price < 300 THEN 3
            ELSE 4
        END,
        'Budget', 'Standard', 'Premium', 'Luxury'
    ) AS PriceCategory
FROM TicketSales
GO

-- Complex IIF with multiple conditions
SELECT 
    ShopSalesID,
    TotalPrice,
    PaymentStatus,
    DeliveryStatus,
    IIF(PaymentStatus = 'Paid' AND DeliveryStatus = 'Delivered', 'Complete',
        IIF(PaymentStatus = 'Paid' AND DeliveryStatus = 'Pending', 'In Transit',
            IIF(PaymentStatus = 'Pending', 'Awaiting Payment', 'Issue')
        )
    ) AS OrderStatus
FROM ShopSales
GO

-- IIF for discount calculation
SELECT 
    VisitorID,
    FullName,
    MembershipStatus,
    Age,
    IIF(MembershipStatus = 'Active', 0.20,
        IIF(Age >= 60 OR Age < 12, 0.15, 0.00)
    ) AS DiscountRate,
    100 * IIF(MembershipStatus = 'Active', 0.80,
        IIF(Age >= 60 OR Age < 12, 0.85, 1.00)
    ) AS EffectivePrice
FROM Visitors
WHERE VisitorID <= 120
GO

-- Combining IIF and CHOOSE
SELECT 
    EmployeeID,
    FullName,
    Department,
    Salary,
    IIF(Salary > 30000, 'Senior', 'Junior') AS Level,
    CHOOSE(
        IIF(Salary > 40000, 1, IIF(Salary > 30000, 2, IIF(Salary > 20000, 3, 4))),
        'Executive', 'Senior', 'Mid-Level', 'Entry-Level'
    ) AS Grade
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- IIF in calculations
SELECT 
    ResortID,
    ResortName,
    TotalRooms,
    AvailableRooms,
    IIF(AvailableRooms > 0, 
        CAST(AvailableRooms AS FLOAT) / TotalRooms * 100,
        0
    ) AS AvailabilityPercentage,
    IIF(AvailableRooms < TotalRooms * 0.2, 'High Occupancy', 'Normal') AS OccupancyStatus
FROM Resort
WHERE MaintenanceStatus = 'Active'
GO


-----------------------------------------------------
----6.22:: Temporary Tables, Table Variables----
-----------------------------------------------------

-- Global Temporary Table (##)
CREATE TABLE ##GlobalTempEmployees (
    EmployeeID INT,
    FullName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
)

INSERT INTO ##GlobalTempEmployees
SELECT EmployeeID, FullName, Department, Salary
FROM Employees
WHERE EmploymentStatus = 'Active'

SELECT * FROM ##GlobalTempEmployees
ORDER BY Salary DESC

DROP TABLE ##GlobalTempEmployees
GO


-- Table Variable
DECLARE @VisitorStats TABLE (
    VisitorType VARCHAR(50),
    MembershipStatus VARCHAR(50),
    VisitorCount INT,
    AvgAge DECIMAL(5,2)
)

INSERT INTO @VisitorStats
SELECT 
    VisitorType,
    MembershipStatus,
    COUNT(*) AS VisitorCount,
    AVG(CAST(Age AS DECIMAL(5,2))) AS AvgAge
FROM Visitors
WHERE Age IS NOT NULL
GROUP BY VisitorType, MembershipStatus

SELECT * FROM @VisitorStats
ORDER BY VisitorCount DESC
GO

-- Table variable with identity column
DECLARE @RankedProducts TABLE (
    RowID INT IDENTITY(1,1),
    ProductID INT,
    ProductName VARCHAR(100),
    TotalSold INT,
    Revenue DECIMAL(15,2)
)

INSERT INTO @RankedProducts (ProductID, ProductName, TotalSold, Revenue)
SELECT 
    P.ProductID,
    P.ProductName,
    ISNULL(SUM(SS.QuantitySold), 0) AS TotalSold,
    ISNULL(SUM(SS.TotalPrice), 0) AS Revenue
FROM Products P
LEFT JOIN ShopSales SS ON P.ProductID = SS.ProductID AND SS.PaymentStatus = 'Paid'
GROUP BY P.ProductID, P.ProductName

SELECT 
    RowID AS Rank,
    ProductID,
    ProductName,
    TotalSold,
    Revenue
FROM @RankedProducts
WHERE TotalSold > 0
ORDER BY Revenue DESC
GO


-- Table variable in stored procedure context
DECLARE @DailyStats TABLE (
    StatDate DATE,
    Visitors INT,
    TicketRevenue DECIMAL(12,2),
    ShopRevenue DECIMAL(12,2),
    TotalRevenue DECIMAL(12,2)
)

INSERT INTO @DailyStats
SELECT 
    CAST(TS.PurchaseDate AS DATE) AS StatDate,
    COUNT(DISTINCT TS.VisitorID) AS Visitors,
    SUM(TS.Price * TS.Quantity) AS TicketRevenue,
    ISNULL((SELECT SUM(SS.TotalPrice)
            FROM ShopSales SS
            WHERE CAST(SS.SaleDate AS DATE) = CAST(TS.PurchaseDate AS DATE)
            AND SS.PaymentStatus = 'Paid'), 0) AS ShopRevenue,
    0 AS TotalRevenue
FROM TicketSales TS
WHERE TS.PurchaseDate >= DATEADD(DAY, -7, GETDATE())
GROUP BY CAST(TS.PurchaseDate AS DATE)

UPDATE @DailyStats
SET TotalRevenue = TicketRevenue + ShopRevenue

SELECT 
    StatDate,
    Visitors,
    FORMAT(TicketRevenue, 'N2') AS TicketRevenue,
    FORMAT(ShopRevenue, 'N2') AS ShopRevenue,
    FORMAT(TotalRevenue, 'N2') AS TotalRevenue,
    FORMAT(TotalRevenue / NULLIF(Visitors, 0), 'N2') AS RevenuePerVisitor
FROM @DailyStats
ORDER BY StatDate DESC
GO


-----------------------------------------------------
----6.23:: Ranking Functions----
-----------------------------------------------------


-- ROW_NUMBER: Unique sequential number
SELECT 
    ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum,
    EmployeeID,
    FullName,
    Department,
    Salary
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- RANK: Rank with gaps for ties
SELECT 
    RANK() OVER (ORDER BY Salary DESC) AS SalaryRank,
    EmployeeID,
    FullName,
    Department,
    Salary
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- DENSE_RANK: Rank without gaps
SELECT 
    DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseSalaryRank,
    EmployeeID,
    FullName,
    Department,
    Salary
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- NTILE: Divide into N groups
SELECT 
    NTILE(4) OVER (ORDER BY Salary DESC) AS Quartile,
    EmployeeID,
    FullName,
    Department,
    Salary
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- ROW_NUMBER with PARTITION BY
SELECT 
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS DeptRank,
    Department,
    EmployeeID,
    FullName,
    Salary
FROM Employees
WHERE EmploymentStatus = 'Active'
ORDER BY Department, DeptRank
GO

-- Multiple ranking functions together
SELECT 
    EmployeeID,
    FullName,
    Department,
    Salary,
    ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS RowNum,
    RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS Rank,
    DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS DenseRank,
    NTILE(3) OVER (PARTITION BY Department ORDER BY Salary DESC) AS Tier
FROM Employees
WHERE EmploymentStatus = 'Active'
ORDER BY Department, Salary DESC
GO

-- Top N per group using ROW_NUMBER
WITH RankedEmployees AS (
    SELECT 
        EmployeeID,
        FullName,
        Department,
        Salary,
        ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank
    FROM Employees
    WHERE EmploymentStatus = 'Active'
)
SELECT *
FROM RankedEmployees
WHERE SalaryRank <= 2
ORDER BY Department, SalaryRank
GO

-- Ranking products by sales
SELECT 
    ROW_NUMBER() OVER (ORDER BY SUM(SS.TotalPrice) DESC) AS SalesRank,
    P.ProductID,
    P.ProductName,
    COUNT(SS.ShopSalesID) AS TransactionCount,
    SUM(SS.QuantitySold) AS TotalQuantitySold,
    SUM(SS.TotalPrice) AS TotalRevenue
FROM Products P
INNER JOIN ShopSales SS ON P.ProductID = SS.ProductID
WHERE SS.PaymentStatus = 'Paid'
GROUP BY P.ProductID, P.ProductName
ORDER BY SalesRank
GO

-- Percentile ranking with PERCENT_RANK
SELECT 
    EmployeeID,
    FullName,
    Salary,
    PERCENT_RANK() OVER (ORDER BY Salary) AS PercentileRank,
    FORMAT(PERCENT_RANK() OVER (ORDER BY Salary), 'P') AS PercentileFormatted
FROM Employees
WHERE EmploymentStatus = 'Active'
ORDER BY Salary DESC
GO

-- CUME_DIST: Cumulative distribution
SELECT 
    EmployeeID,
    FullName,
    Salary,
    CUME_DIST() OVER (ORDER BY Salary) AS CumulativeDist,
    FORMAT(CUME_DIST() OVER (ORDER BY Salary), 'P') AS CumulativePercent
FROM Employees
WHERE EmploymentStatus = 'Active'
ORDER BY Salary DESC
GO


------------------------------------------------------------------------------
---- 6.24:: Analytic Functions (LAG, LEAD, FIRST_VALUE, LAST_VALUE)----
------------------------------------------------------------------------------

-- LEAD: Accesses data from a subsequent row
SELECT 
    EmployeeID, FullName, Salary,
    LEAD(Salary) OVER (ORDER BY Salary) AS NextHigherSalary,
    LEAD(Salary) OVER (ORDER BY Salary) - Salary AS SalaryGap
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- LAG: Accesses data from a previous row
SELECT 
    EmployeeID, FullName, Salary,
    LAG(Salary) OVER (ORDER BY Salary) AS PreviousLowerSalary
FROM Employees
WHERE EmploymentStatus = 'Active'
GO

-- FIRST_VALUE and LAST_VALUE
SELECT 
    EmployeeID, FullName, Department, Salary,
    FIRST_VALUE(FullName) OVER (PARTITION BY Department ORDER BY Salary DESC) AS HighestPaidInDept,
    LAST_VALUE(FullName) OVER (PARTITION BY Department ORDER BY Salary ASC 
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LowestPaidInDept
FROM Employees
GO

--------------------------------------------------------------------
----- 6.25:: System Stored Procedures----
--------------------------------------------------------------------

EXEC sp_helpdb 'TPRMS';           -- Database information
EXEC sp_help 'Employees';        -- Table information
EXEC sp_columns 'Employees';     -- Column details
EXEC sp_depends 'Employees';     -- Dependencies
GO

------------------------------------------------------------------------------------------------------
-- 6.26:: TRY-CATCH block to handle errors
------------------------------------------------------------------------------------------------------

BEGIN TRY
    -- Intentionally causing a divide-by-zero error
    SELECT 100 / 0;
END TRY
BEGIN CATCH
    SELECT 
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState;
END CATCH
GO



                        /*====================================  SECTION 08  ====================================
                                                          DECLARE VARIABLES
                        ======================================================================================*/
                

-- Example 1: Simple Variable Declaration and Assignment
DECLARE @ParkName VARCHAR(100);
SET @ParkName = 'Fantasy Kingdom';

SELECT * FROM Park
WHERE ParkName = @ParkName;
GO

-- Example 2: Using variables to store aggregate results
DECLARE @TotalRevenue MONEY;
DECLARE @AverageSalary MONEY;

SELECT @TotalRevenue = SUM(TotalPrice) FROM ShopSales;
SELECT @AverageSalary = AVG(Salary) FROM Employees;

PRINT 'Total Revenue: ' + CAST(@TotalRevenue AS VARCHAR(20));
PRINT 'Average Employee Salary: ' + CAST(@AverageSalary AS VARCHAR(20));
GO

-- Example 3: Using variables in a dynamic calculation
DECLARE @TargetParkID INT = 1;
DECLARE @ActiveRides INT;
DECLARE @TotalRides INT;

SELECT @TotalRides = COUNT(*) FROM BoatRides WHERE ParkID = @TargetParkID;
PRINT 'Park ID ' + CAST(@TargetParkID AS VARCHAR(5)) + ' has ' + 
      CAST(@ActiveRides AS VARCHAR(5)) + ' out of ' + 
      CAST(@TotalRides AS VARCHAR(5)) + ' rides operational.';
GO



                                /*
                                ==============================  SECTION 09 ==============================
				                                 INSERT, UPDATE, DELETE DATA USING TRIGGER
                                ==========================================================================
                                */


--check the current data for the record you want to test
SELECT ParkID, ParkName, Location, OpeningTime 
FROM Park
WHERE ParkID = 1
GO

-- Verify the stock has decreased by 2 in both tables
SELECT StockQuantity FROM Products WHERE ProductID = 17
GO
SELECT CurrentStockLevel FROM Shop WHERE ShopID = 1
GO





                            --=================================== END OF DML =======================================
