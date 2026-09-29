# Customer Segmentation Analysis

## Project Overview

This project analyzes customer shopping behavior and segments customers into different groups using data analysis and K-Means clustering.

The analysis is based on the shopping trends dataset containing 3,900 customer records.

## Dataset

The dataset contains customer information such as:

- Customer ID
- Age
- Gender
- Item Purchased
- Category
- Purchase Amount
- Location
- Season
- Review Rating
- Subscription Status
- Payment Method
- Discount Applied
- Previous Purchases
- Preferred Payment Method
- Frequency of Purchases

## Tasks

### Task 1: Product Categories and Discounts

Identify product categories where discounts should be applied based on:

- Order volume
- Average purchase amount
- Review rating
- Existing discount usage
- Sales performance

### Task 2: Card Spending Analysis

Analyze Credit Card and Debit Card spending based on:

- Age groups
- Seasons
- Locations

### Task 3: Customer Segmentation

Use K-Means clustering to divide customers into three groups based on:

- Age
- Purchase Amount
- Review Rating
- Previous Purchases
- Discount Applied
- Subscription Status

## Customer Segments

### Cluster 0 - Budget / Low-Spending Customers

These customers have the lowest average purchase amount.

Marketing strategies:

- Coupons
- Cashback
- Free shipping
- Affordable product bundles

### Cluster 1 - High-Spending Customers

These customers have the highest average purchase amount.

Marketing strategies:

- Loyalty programs
- VIP offers
- Premium bundles
- Repeat-purchase incentives

### Cluster 2 - Subscribed & Discount-Oriented Customers

These customers have both subscription status and discount usage.

Marketing strategies:

- Subscriber-exclusive offers
- Discount bundles
- Personalized promotions
- Subscription retention campaigns

## Technologies Used

- Python
- Pandas
- NumPy
- Scikit-learn
- Matplotlib
- Jupyter Notebook
- MySQL
- phpMyAdmin
- K-Means Clustering

## Project Files

- `shopping_table (1).csv` — Dataset
- `SQL_Queries.sql` — SQL queries used for Tasks 1, 2, and 3
- `Customer_segmentation.ipynb` — Data analysis and K-Means clustering notebook
- `customer_segmentation_clusters.csv` — Customer cluster results
- `customer_cluster_profile.csv` — Cluster summary/profile
- `customer_segmentation_final.csv` — Final segmentation dataset

## Conclusion

The analysis identifies customer purchasing patterns, card spending behavior across age groups, seasons and locations, and three customer segments using K-Means clustering.

The customer segments can be used as a basis for targeted marketing campaigns according to spending behavior, discount usage, and subscription status.
