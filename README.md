# Data Warehouse and Analysis with Power BI

## Project Overview

This project aims to optimize data management for an e-commerce platform. The key objectives include setting up an efficient data extraction, transformation, and loading (ETL) process using Talend and establishing a data warehouse on SQL Server. The structured data will be used to create an analytical environment in Power BI, enabling deeper insights into market trends and supplier performance. Additionally, stringent data security and GDPR compliance measures will be implemented to protect sensitive information.

![Project Diagram](images/project_diagram.png)

## Getting Started

To get started with the project, please follow these steps:

1. **Data Splitter**: Apply the data splitting script you have previously developed to split the provided CSV dataset into two parts: JSON and CSV. This will facilitate subsequent data processing.

2. **ETL using Talend**: Develop an ETL process using Talend to perform the following tasks:
   - **Data Extraction**: Connect Talend to data sources (CSV files, JSON) and extract the data.
   - **Data Transformation**: Clean and transform the extracted data, handling missing values, converting data types, and applying business logic.
   - **Data Loading**: Load the transformed data into the SQL Server data warehouse. Ensure that the ETL job is optimized, use sub-jobs, and adhere to best practices such as error handling.

![Talend ETL](images/talend_etl.png)

3. **Star Schema**: Create a star schema with dimension and fact tables:
   - **Dimension Tables**: Set up tables like Date Dimension, Product Dimension, Customer Dimension, Supplier Dimension, and Shipper Dimension with specified attributes.
   - **Fact Tables**: Establish Sales Fact and Inventory Fact tables and define relationships with dimension tables.

![Star Schema](images/star_schema.png)

4. **Physical Data Marts**: Build physical data marts for sales and inventory data:
   - **Sales Data Mart**: Include tables related to sales transactions such as Sales Fact, Time Dimension, Product Dimension, Customer Dimension, etc.
   - **Inventory Data Mart**: Integrate tables related to product inventory, including Inventory Fact, Time Dimension, Product Dimension, Supplier Dimension, etc.

5. **Analytical Insights with Power BI**: Leverage Power BI for data analysis. Create various analytics, including:
   - Trend Analysis
   - Best Products and Categories Analysis
   - Customer Segmentation Analysis
   - Impact of Discounts Analysis
   - Carrier Performance Analysis
   - Inventory Level Monitoring
   - Stock Availability Analysis
   - Supplier Performance Evaluation
   - Demand Forecasting

Use appropriate visualizations like line charts, bar charts, pie charts, scatter plots, tables, and maps for each analysis.

6. **Optimization**: Implement optimization measures, such as indexing frequently queried columns and partitioning. Justify the optimization strategies employed.

7. **Validation of Transformation Logic**: Write and execute SQL test cases to validate that the transformation logic has been correctly applied.

8. **Authorization**: Create database users, assign them to specific database roles, and grant permissions based on their responsibilities.

9. **Applying GDPR Policies to Sensitive Data**:
   - Identify and classify sensitive data, such as personal information in the Customer Dimension table.
   - Implement data protection measures, including encryption, pseudonymization, and access controls.
   - Ensure mechanisms are in place to address GDPR data subject rights, including access, rectification, deletion, and data portability.

## Prerequisites

Before starting this project, you should have the following:

- Knowledge of data warehousing concepts
- Talend ETL tool installed and configured
- SQL Server installed and set up
- Power BI Desktop for data analysis
- Access to the project dataset

## Authors

- [Your Name]

## License

This project is licensed under the [License Name] - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

- Mention any references, tools, or resources you used for inspiration or guidance.

