# Theme Park and Resort Management System (TPRMS)

![SQL Server](https://img.shields.io/badge/Database-SQL%20Server-CC2927?style=flat&logo=microsoft-sql-server)

**A comprehensive Enterprise Resource Planning (ERP) solution designed to streamline the complex operations of a modern entertainment complex.**

## 📋 Project Overview
The **Theme Park and Resort Management System (TPRMS)** is an integrated database solution built using **Microsoft SQL Server**. Unlike traditional fragmented systems, TPRMS unifies visitor management, asset maintenance, payroll, and multi-stream revenue tracking into a single cohesive platform.

The system manages diverse operational units including hospitality (resorts), human resources, retail, specialized attractions, and unique ecological assets like zoos and farms.

## 🚀 Key Objectives
* **Seamless Visitor Experience:** Integrated ticketing, resort check-in, and dining.
* **Financial Transparency:** Real-time consolidation of revenue from tickets, shops, dining, and agricultural sales into a central ledger.
* **Asset Reliability:** Proactive tracking of ride maintenance and safety inspections.
* **Workforce Optimization:** Precise tracking of shifts, attendance, and automated payroll calculations.

## 🛠️ Database Architecture & Modules
The database features a highly normalized schema comprising **45+ tables**, organized into five core functional domains:

### 1. Administration & Human Resources
* **Focus:** Workforce management and legal compliance.
* **Key Tables:** `Employees`, `EmployeeSalaryGrade`, `AttendanceStaffShift`, `Payroll`.
* **Features:** Automated net salary calculation and shift management.

### 2. Park Operations & Asset Management
* **Focus:** Lifecycle management of rides and facilities.
* **Key Tables:** `PlaygroundFacilities`, `MaintenanceLog`, `FerrisWheel`, `ParkingArea`.
* **Features:** Tracks inspection dates, costs, and technician assignments to ensure safety.

### 3. Resort & Hospitality Management
* **Focus:** Hotel operations, booking, and dining.
* **Key Tables:** `Resort`, `ResortRoom`, `ResortBookings`, `ResortDining`.
* **Features:** Real-time room status updates via triggers and integrated food ordering.

### 4. Commercial & Revenue Management
* **Focus:** Sales tracking and inventory control.
* **Key Tables:** `Shop`, `ShopSales`, `TicketSales`, `FinancialTransactions`.
* **Features:** Centralized financial logging where $Net Profit = Revenue - Expense$].

### 5. Ecological & Agro-Management
* **Focus:** Management of living assets and production units.
* **Key Tables:** `Zoo`, `Animal`, `FishFarms`, `FruitGarden`.
* **Features:** Tracks animal health history and manages agricultural yield for commercial sale.

## 💻 Technical Highlights (SQL Implementation)

This project demonstrates advanced T-SQL capabilities including:

* **Automation Triggers:**
    * `trg_UpdateStock_AfterSale`: Automatically updates inventory levels upon sale.
    * `trg_LogTicketSales_Income` & `trg_LogShopSales_Income`: Automatically populates the central `FinancialTransactions` table.
    * `trg_MaintainRevenueSummary`: Provides real-time dashboard updates of Net Revenue.

* **Stored Procedures:**
    * `sp_AddShopSale`: Streamlines the insertion of sales records.
    * `sp_UpdateRoomStatus`: Manages operational status changes for resort rooms.

* **User-Defined Functions (UDF):**
    * `fn_CalculateEmployeeNetSalary`: Computes complex payroll logic including bonuses and allowances.
    * `fn_GetParkAttendanceSummary`: Returns instant insights into workforce availability.

* **Views & Security:**
    * `vw_AssetMaintenanceSummary`: Aggregates maintenance data across different facility types.
    * `vw_ConfidentialEmployeeData`: Uses **Encryption** and **Schema Binding** to protect sensitive HR data.

## 📂 Repository Structure
* **`DDL_Theme Park and Resort Management System.sql`**: Contains scripts to create the database, tables, relationships, triggers, views, and procedures.
* **`DML_Theme Park and Resort Management System.sql`**: Contains sample data insertion scripts and example queries for testing.
* **`CaseStudy_Theme Park and Resort Management System.pdf`**: Detailed project documentation and requirements analysis.

## ⚙️ How to Run
1.  Open **Microsoft SQL Server Management Studio (SSMS)**.
2.  Open and execute the **DDL** script first to create the schema and objects.
3.  Open and execute the **DML** script to populate the database with sample data.
4.  Execute the sample queries in the DML file to test Views, Functions, and Procedures.

## 👤 Author
**Sheikh Ahasunul Islam**
