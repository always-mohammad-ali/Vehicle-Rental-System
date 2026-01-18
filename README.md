# Vehicle Rental System – Database Design & SQL Queries

This project is a **database design and SQL practice assignment** based on a **Vehicle Rental System**.  
It focuses on **relational database design**, **ERD modeling**, **writing structured SQL queries**, and **professional interview preparation**. The system manages users, vehicles, and bookings.

## Objectives

**Part 1:** Designed an ERD with **One-to-One**, **One-to-Many**, and **Many-to-One** relationships using DrawSQL.  
**Part 2:** Wrote structured SQL queries to retrieve data using **INNER JOIN**, **NOT EXISTS**, **WHERE**, **GROUP BY**, and **HAVING**.  
**Part 3:** Answered **4 interview questions** in a professional manner.

##  SQL Queries

This section explains all the SQL queries used in the **Vehicle Rental System** project.

### Query 1: Retrieve Booking Info with Customer and Vehicle Names (JOIN)
- **Purpose:** Retrieves all bookings along with the customer name and vehicle name
- **Technique:** Uses `INNER JOIN` to link the Bookings table with Users and Vehicles

### Query 2: Find Vehicles That Have Never Been Booked (NOT EXISTS)
- **Purpose:** Identifies vehicles with no booking history
- **Technique:** Uses `NOT EXISTS` to check if a vehicle ID exists in the Bookings table

### Query 3: Retrieve Available Vehicles of a Specific Type (WHERE)
- **Purpose:** Filters vehicles by type and availability status
- **Technique:** Uses `WHERE` clause to filter by type and status

### Query 4: Count Bookings per Vehicle (GROUP BY & HAVING)
- **Purpose:** Shows vehicle booking statistics
- **Technique:** Uses `GROUP BY` to group bookings by vehicle and `HAVING` to filter results

## Technologies Used
- **PostgreSQL** – Database management system
- **Beekeeper Studio** – SQL client and database manager
- **DrawSQL** – ERD design and visualization
- **Google Drive** – Interview videos