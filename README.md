# Theme Park and Resort Management System (TPRMS)

**A comprehensive Enterprise Resource Planning (ERP) solution designed to streamline the complex operations of a modern entertainment complex.**

## 📋 Project Overview
[cite_start]The **Theme Park and Resort Management System (TPRMS)** is an integrated database solution built using **Microsoft SQL Server**[cite: 32]. [cite_start]Unlike traditional fragmented systems, TPRMS unifies visitor management, asset maintenance, payroll, and multi-stream revenue tracking into a single cohesive platform[cite: 24].

[cite_start]The system manages diverse operational units including hospitality (resorts), human resources, retail, specialized attractions, and unique ecological assets like zoos and farms[cite: 416].

## 🚀 Key Objectives
* [cite_start]**Seamless Visitor Experience:** Integrated ticketing, resort check-in, and dining[cite: 28].
* [cite_start]**Financial Transparency:** Real-time consolidation of revenue from tickets, shops, dining, and agricultural sales into a central ledger[cite: 30, 79].
* [cite_start]**Asset Reliability:** Proactive tracking of ride maintenance and safety inspections[cite: 29].
* [cite_start]**Workforce Optimization:** Precise tracking of shifts, attendance, and automated payroll calculations[cite: 31].

## 🛠️ Database Architecture & Modules
[cite_start]The database features a highly normalized schema comprising **45+ tables**, organized into five core functional domains[cite: 419]:

### 1. Administration & Human Resources
* **Focus:** Workforce management and legal compliance.
* **Key Tables:** `Employees`, `EmployeeSalaryGrade`, `AttendanceStaffShift`, `Payroll`.
* [cite_start]**Features:** Automated net salary calculation and shift management[cite: 43, 44].

### 2. Park Operations & Asset Management
* **Focus:** Lifecycle management of rides and facilities.
* **Key Tables:** `PlaygroundFacilities`, `MaintenanceLog`, `FerrisWheel`, `ParkingArea`.
* [cite_start]**Features:** Tracks inspection dates, costs, and technician assignments to ensure safety[cite: 49].

### 3. Resort & Hospitality Management
* **Focus:** Hotel operations, booking, and dining.
* **Key Tables:** `Resort`, `ResortRoom`, `ResortBookings`, `ResortDining`.
* [cite_start]**Features:** Real-time room status updates via triggers and integrated food ordering[cite: 54, 55].

### 4. Commercial & Revenue Management
* **Focus:** Sales tracking and inventory control.
* **Key Tables:** `Shop`, `ShopSales`, `TicketSales`, `FinancialTransactions`.
* [cite_start]**Features:** Centralized financial logging where $Net Profit = Revenue - Expense$[cite: 412, 423].

### 5. Ecological & Agro-Management
* **Focus:** Management of living assets and production units.
* **Key Tables:** `Zoo`, `Animal`, `FishFarms`, `FruitGarden`.
* [cite_start]**Features:** Tracks animal health history and manages agricultural yield for commercial sale[cite: 383, 386].

## 💻 Technical Highlights (SQL Implementation)

This project demonstrates advanced T-SQL capabilities including:

* **Automation Triggers:**
    * [cite_start]`trg_UpdateStock_AfterSale`: Automatically updates inventory levels upon sale[cite: 62].
    * [cite_start]`trg_LogTicketSales_Income` & `trg_LogShopSales_Income`: Automatically populates the central `FinancialTransactions` table[cite: 92].
    * [cite_start]`trg_MaintainRevenueSummary`: Provides real-time dashboard updates of Net Revenue[cite: 95].

* **Stored Procedures:**
    * `sp_AddShopSale`: Streamlines the insertion of sales records.
    * [cite_start]`sp_UpdateRoomStatus`: Manages operational status changes for resort rooms[cite: 54].

* **User-Defined Functions (UDF):**
    * [cite_start]`fn_CalculateEmployeeNetSalary`: Computes complex payroll logic including bonuses and allowances[cite: 43].
    * [cite_start]`fn_GetParkAttendanceSummary`: Returns instant insights into workforce availability[cite: 101].

* **Views & Security:**
    * [cite_start]`vw_AssetMaintenanceSummary`: Aggregates maintenance data across different facility types[cite: 102].
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
