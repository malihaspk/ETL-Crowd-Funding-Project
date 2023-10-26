# Crowdfunding_ETL

This repository contains solutions to the Project 2 Crowdfunding ETL challenge 

## Part 1: ETL Mini Project

* In this part of the project the crowdfunding.xslx and contacts.xslx files were imported to extract, process and clean data to transform to a CSV ready to load using pgAdmin
* This is performed via a jupyter notebook file 'ETL_Mini_Project.ipynb'
* Outputs from this are four .csv files as follows: 'campaign.csv', 'contacts.csv', 'category.csv' and 'subcategory.csv'

## Part 2: Load CSV files using pgAdmin

* An ERD was generated using QuickDBD. The commands for this are included in the 'QuickDBD_ERD.txt' file. The exported PNG file is below.
* A schema for the four entities is saved as 'crowdfunding_db_schema.sql'
* Four CSV files were imported into the tables and correct import verified using the SELECT * FROM commands

![ERD Diagram](https://github.com/smmr89/Crowdfunding_ETL/blob/main/ERD.png)

## References

QuickDBD: https://www.quickdatabasediagrams.com/