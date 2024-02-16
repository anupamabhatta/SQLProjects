# SQL Final Project: Fruits and Vegetable Prices in USA

This repository contains the final project for analyzing a dataset containing information on fruits and vegetable prices in the USA.

## Project Overview

**Project Title:** Fruits and Vegetable Prices in USA  
**Author:** Anupama Bhatta  
**Submission Date:** November 29, 2023   

## Project Description

The project aims to decipher a massive dataset containing information on fruits and vegetable prices in the USA. Dr. Lawrence Summerset, the head of the research group, has requested support from the database administration (DBA) team to analyze the dataset and extract relevant insights.

## Project Deliverables

The project includes the following deliverables:

1. **Database Queries and Analysis:** The dataset analysis involves several SQL queries to extract specific data points and insights.
2. **Database Design Choices:** An explanation of the database design choices made during the project, including table structures, primary keys, foreign keys, and normalization.
3. **Database Export:** The database export file (`fruits_n_veggies.sql`) has been provided for reference.

## Database Queries and Analysis

The SQL queries performed on the dataset include:

1. Count of items with a priceUnit of "pound"
2. Listing all distinct forms and the count of items associated with each form
3. Identifying the top 5 most expensive items with their prices and associated forms
4. Calculating the average price for each priceUnit across all items
5. Determining the average price of items for each form, displayed in descending order of average price
6. Calculating the total amount spent on items for each form
7. Identifying the forms with the highest price variation among their items

## Database Design Choices

The database design choices aim to establish a normalized structure that optimizes data integrity and flexibility. The core tables include:

- **Items:** Contains information about fruits and vegetables.
- **Forms:** Stores different varieties or forms of fruits and vegetables.
- **Prices:** Establishes relationships between items, forms, and pricing information.

The **prices** table serves as the central table, connecting items and forms with pricing data. Foreign key constraints ensure referential integrity, preventing orphaned records and maintaining consistency in relationships.

## Database Export

The database export file (`fruits_n_veggies.sql`) has been included in the repository.

## Contact Information

For any inquiries regarding the project, please contact Anupama Bhatta at [bhatta.anupama1@gmail.com](mailto:bhatta.anupama1@gmail.com).

Thank you for your support and collaboration on this project!
