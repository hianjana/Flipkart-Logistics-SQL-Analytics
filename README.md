# 🚚 Flipkart Logistics — SQL Analytics

![SQL](https://img.shields.io/badge/Language-SQL-orange)
![Domain](https://img.shields.io/badge/Domain-Logistics%20Analytics-blue)
![Tasks](https://img.shields.io/badge/Tasks-7%20Modules-green)
![Techniques](https://img.shields.io/badge/SQL-CTEs%20%7C%20Window%20Functions-purple)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen)

> *"Can SQL alone uncover the bottlenecks in a logistics network?"*  
> This project uses advanced SQL to analyse Flipkart's delivery operations 
> across routes, warehouses, agents and shipment tracking.

---

## 🎯 Objective

Analyse Flipkart's logistics data using pure SQL to uncover delivery delays, 
optimise routes, evaluate warehouse and agent performance, and build KPI 
dashboards for operational decision-making.

---

## 🗄️ Database Schema

| Table | Description |
|-------|-------------|
| ORDERS | Order details — dates, routes, warehouses, agents |
| ROUTES | Route details — start/end location, distance, travel time |
| WAREHOUSES | Warehouse details — processing time, on-time delivery % |
| DELIVERYAGENTS | Agent details — speed, on-time delivery % |
| SHIPMENT_TRACKING | Checkpoint tracking — delay minutes, delay reasons |

## 📦 Dataset

| File | Description |
|------|-------------|
| Flipkart_Orders.csv | Order details — dates, routes, warehouses, agents |
| Flipkart_Routes.csv | Route details — distance, travel time, locations |
| Flipkart_Warehouses.csv | Warehouse details — processing time, performance |
| Flipkart_DeliveryAgents.csv | Agent details — speed, on-time delivery % |
| Flipkart_ShipmentTracking.csv | Checkpoint tracking — delays, delay reasons |

## 📋 Analysis Modules

### Task 1 — Data Cleaning & Preparation
- Duplicate Order ID detection and removal
- NULL traffic delay imputation using temporary tables
- Date format standardisation to YYYY-MM-DD
- Data integrity validation — flagging invalid delivery dates

### Task 2 — Delivery Delay Analysis
- Delivery delay calculation per order (in days)
- Top 10 most delayed routes by average delay
- Window functions to rank orders by delay within each warehouse

### Task 3 — Route Optimization Insights
- Average delivery time and traffic delay per route
- Distance-to-time efficiency ratio calculation
- Identification of 3 worst efficiency routes
- Routes with more than 20% delayed shipments

### Task 4 — Warehouse Performance
- Top 3 warehouses with highest processing time
- Total vs delayed shipments per warehouse
- CTE-based bottleneck warehouse identification (processing time > global average)
- Warehouse ranking by on-time delivery percentage

### Task 5 — Delivery Agent Performance
- Agent ranking by on-time delivery percentage
- Agents with on-time delivery below 80%
- Speed comparison — Top 5 vs Bottom 5 agents using UNION and subqueries

### Task 6 — Shipment Tracking Analytics
- Last checkpoint and time per order using CTE and window functions
- Most common delay reasons (excluding None)
- Orders with more than 2 delayed checkpoints

### Task 7 — Advanced KPI Reporting
- Average delivery delay per region
- On-time delivery percentage — overall KPI
- Average traffic delay per route

---

## 🛠️ SQL Techniques Used

| Technique | Usage |
|-----------|-------|
| Window Functions | RANK(), PARTITION BY for order and agent ranking |
| CTEs | Bottleneck warehouse analysis, checkpoint tracking |
| Subqueries | Complex multi-level aggregations |
| Temporary Tables | NULL imputation workaround |
| CROSS JOIN | Global average comparison |
| Multi-table JOINs | Connecting Orders, Routes, Warehouses, Agents |
| Date Functions | STR_TO_DATE, date arithmetic |
| Aggregate Functions | AVG, COUNT, SUM, ROUND |

---

## 📁 Project Structure

    Flipkart-Logistics-SQL-Analytics/
    ├── FLIPKART_TASK1.sql             # Data Cleaning & Preparation
    ├── FLIPKART_TASK2.sql             # Delivery Delay Analysis
    ├── FLIPKART_TASK3.sql             # Route Optimization Insights
    ├── FLIPKART_TASK4.sql             # Warehouse Performance
    ├── FLIPKART_TASK5.sql             # Delivery Agent Performance
    ├── FLIPKART_TASK6.sql             # Shipment Tracking Analytics
    ├── FLIPKART_TASK7.sql             # Advanced KPI Reporting
    ├── Flipkart_Orders.csv            # Orders dataset
    ├── Flipkart_Routes.csv            # Routes dataset
    ├── Flipkart_Warehouses.csv        # Warehouses dataset
    ├── Flipkart_DeliveryAgents.csv    # Delivery agents dataset
    ├── Flipkart_ShipmentTracking.csv  # Shipment tracking dataset
    ├── SQL Project_Queries.PDF        # Details of all the queries
    └── README.md

---

**Author:** Anjana Ambika | **Date:** November 2025
