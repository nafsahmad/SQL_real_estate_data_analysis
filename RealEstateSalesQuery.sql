-- What are the properties with the highest 'Sale Amount'?
SELECT *
FROM realestatesales
ORDER BY "Sale Amount" DESC
LIMIT 10;

-- Which 'Town' has the highest average 'Assessed Value'?
SELECT "Town", AVG("Assessed Value") AS "Average Assessed Value"
FROM realestatesales
GROUP BY "Town"
ORDER BY "Average Assessed Value" DESC
LIMIT 1;

-- What is the avarage sales ratio
SELECT AVG("Sales Ratio") FROM realestatesales AS avgsr;

-- How many properties have a 'Sales Ratio' higher han the average?
SELECT COUNT(*)
FROM realestatesales
WHERE "Sales Ratio" > 10.4;

-- What is the property with the earliest 'Date Recorded'?
SELECT *
FROM realestatesales
ORDER BY "Date Recorded" ASC
LIMIT 1;

-- How many properties were listed in a specific 'List Year'?
SELECT COUNT(*)
FROM realestatesales
WHERE "List Year" = 2017; -- The first list year

-- What is the average 'Sale Amount' for all properties in the dataset?
SELECT AVG("Sale Amount") AS "Average Sale Amount"
FROM realestatesales;

-- What are the top 10 properties with the highest 'Assessed Value'?
SELECT *
FROM realestatesales
ORDER BY "Assessed Value" DESC
LIMIT 10;

-- What is the latest 'Date Recorded' for properties in each 'Town'?
SELECT "Town", MAX("Date Recorded") AS "Latest Date Recorded"
FROM realestatesales
GROUP BY "Town";

-- How many properties are of a specific 'Property Type' (e.g., residential, commercial, etc.)?
SELECT "Property Type", COUNT(*) AS "Property Count"
FROM realestatesales
GROUP BY "Property Type";

-- What is the total 'Assessed Value' for properties in each town?
SELECT "Town", "List Year", SUM("Assessed Value") AS "Total Assessed Value"
FROM realestatesales
GROUP BY "Town", "List Year";

-- What is the average 'Sales Ratio' for properties in each 'Residential Type'?
SELECT "Residential Type", AVG("Sales Ratio") AS "Average Sales Ratio"
FROM realestatesales
GROUP BY "Residential Type";

-- What is the total 'Assessed Value' for all properties in the dataset for each 'List Year'?
SELECT "List Year", SUM("Assessed Value") AS "Total Assessed Value"
FROM realestatesales
GROUP BY "List Year"
ORDER BY "List Year";

-- How many properties were recorded in each 'List Year'?
SELECT "List Year", COUNT(*) AS "Property Count"
FROM realestatesales
GROUP BY "List Year"
ORDER BY "List Year";

-- Properties with 'Assessed Value' higher than the 'Sale Amount'?
SELECT *
FROM realestatesales
WHERE "Assessed Value" > "Sale Amount";










