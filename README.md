 Enterprise Web Portal  Manual & DB Testing Suite

An enterprise-grade Quality Assurance (QA) project demonstrating Manual Testing, Requirement Traceability Matrix (RTM) mapping, Defect Lifecycle Management in JIRA, and Backend Database Integrity Verification using SQL.

📌 Project Overview
This repository contains end-to-end QA deliverables for an Enterprise Web Portal focusing on **User Management, Role-Based Access Control (RBAC), and Order Processing**.

### Key Highlights:
* **Test Design Techniques:** Applied **Equivalence Partitioning (EP)** and **Boundary Value Analysis (BVA)** to construct optimal test cases.
* **100% Requirement Coverage:** Mapped all Functional Requirements to Test Cases via Requirement Traceability Matrix (RTM).
* **Defect Management:** Documented production-grade Bug Reports following standard JIRA issue tracking conventions.
* **Database Verification:** Executed SQL queries (JOINs, Aggregation, Data Integrity checks) to validate frontend-backend data synchronization.

 📂 Repository Artifacts

| File Name | Description |
| :--- | :--- |
| 📄 **`Enterprise_Web_Portal_Test_Suite.xlsx`** | Comprehensive Test Cases & RTM Sheet (Multi-Tab Workbook). |
| 🐛 **`Bug_Report_Password_Reset.md`** | High-severity JIRA Defect Report format. |
| 🗄️ **`database_integrity_tests.sql`** | SQL verification scripts for DB testing. |

 📋 Sample Test Coverage Summary

| Test Case ID | Module | Purpose | Tech / Method |
| :--- | :--- | :--- | :--- |
| **TC_REG_001** | User Registration | Valid details flow | Manual |
| **TC_REG_002** | Registration | Password strength validation (BVA) | Manual |
| **TC_RBAC_001** | Access Control | Standard user vs Admin permission check | Manual |
| **TC_ORD_001** | Order System | Payment status & order lifecycle | Manual |
| **TC_DB_001** | Database | User record & password hashing verification | SQL Query |


