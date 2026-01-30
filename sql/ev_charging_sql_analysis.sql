CREATE TABLE ev_charging_stations (
    award_number VARCHAR(50) PRIMARY KEY,
    month INT,
    year INT,
    city VARCHAR(100),
    zip VARCHAR(20),
    charging_station_brand VARCHAR(100),
    county VARCHAR(100),
    cost_of_charging_station NUMERIC,
    rebate_amount NUMERIC
);

ALTER TABLE ev_charging_stations
ADD COLUMN installation_date DATE,
ADD COLUMN area_type VARCHAR(20);

DROP TABLE IF EXISTS ev_charging_stations;

CREATE TABLE ev_charging_stations (
    id SERIAL PRIMARY KEY,
    award_number VARCHAR(50),
    month INT,
    year INT,
    city VARCHAR(100),
    zip VARCHAR(20),
    charging_station_brand VARCHAR(100),
    county VARCHAR(100),
    cost_of_charging_station NUMERIC,
    rebate_amount NUMERIC
);

ALTER TABLE ev_charging_stations
ADD COLUMN installation_date DATE,
ADD COLUMN area_type VARCHAR(20);

SELECT 
    COUNT(*) FILTER (WHERE city IS NULL) AS missing_city,
    COUNT(*) FILTER (WHERE county IS NULL) AS missing_county,
    COUNT(*) FILTER (WHERE cost_of_charging_station IS NULL) AS missing_cost,
    COUNT(*) FILTER (WHERE rebate_amount IS NULL) AS missing_rebate
FROM ev_charging_stations;

SELECT 
    city,
    COUNT(*) AS total_stations
FROM ev_charging_stations
GROUP BY city
ORDER BY total_stations DESC
LIMIT 10;

SELECT 
    county,
    COUNT(*) AS station_count,
    SUM(cost_of_charging_station) AS total_cost
FROM ev_charging_stations
GROUP BY county
HAVING COUNT(*) < 5
ORDER BY total_cost DESC;

SELECT 
    year,
    month,
    COUNT(*) AS installations
FROM ev_charging_stations
GROUP BY year, month
ORDER BY installations DESC;

SELECT 
    county,
    ROUND(SUM(rebate_amount) / SUM(cost_of_charging_station), 2) AS rebate_efficiency
FROM ev_charging_stations
GROUP BY county
ORDER BY rebate_efficiency DESC;

SELECT 
    charging_station_brand,
    ROUND(AVG(cost_of_charging_station), 2) AS avg_cost,
    ROUND(AVG(rebate_amount), 2) AS avg_rebate
FROM ev_charging_stations
GROUP BY charging_station_brand
ORDER BY avg_cost DESC;

SELECT 
    year,
    SUM(rebate_amount) AS total_rebate
FROM ev_charging_stations
GROUP BY year
ORDER BY year;
