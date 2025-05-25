-- Drop the database if it already exists
DROP DATABASE IF EXISTS city_workshop ;

-- Create the database
CREATE DATABASE city_workshop;

-- Use the database
USE city_workshop;

#Create the 'city' table
CREATE TABLE city (
    City_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
    city_name VARCHAR(255) NOT NULL, -- Name of the city
    Country VARCHAR(255) NOT NULL, -- Name of the county city belong to
    Latitude FLOAT NOT NULL, -- Latitude of the city
    Longitude FLOAT NOT NULL, -- Longitude of the city
    PRIMARY KEY (City_id) -- Primary key to uniquely identify each city
);
select * from city;

#-- Create the 'population' table
CREATE TABLE population (
    #Population_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
    Population INT NOT NULL, -- Population of the city
    Population_Timestamp VARCHAR(255) NOT NULL, -- #VARCHAR(255) to avoid error of timestamp
    city_id INT, -- ID of the city
    PRIMARY KEY (city_id, Population_Timestamp), -- Primary key to uniquely identify each population
    FOREIGN KEY (city_id) REFERENCES city(city_id) -- Foreign key to connect each population to its city
);

select * from population;


CREATE TABLE weather (
    forecast_time_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
    city_id INT, -- ID of the city
    city_name VARCHAR(255) NOT NULL, -- Name of the city
    forecast_time DATETIME NOT NULL, -- The day the data was retieved
    timestamp_weather DATETIME NOT NULL, -- #time of day forecast was rtieved
    outlook VARCHAR(255) NOT NULL, -- outlook of the city
    temperature FLOAT NOT NULL, -- Temperature of the city that day
    feels_Like FLOAT NOT NULL, -- Real Temperature  feel in the city taht day
    temp_Min FLOAT NOT NULL, -- Minimum Temperature of the city that day
    temp_Max FLOAT NOT NULL, -- Maximum Temperature of the city that day
    pressure INT NOT NULL, -- Pressure of the city that day
    humidity INT NOT NULL, -- Humidity of the city that day
    wind_speed FLOAT  NOT NULL, -- wind speed of the city that day
    rain FLOAT DEFAULT 0, -- amount of rain fall
    PRIMARY KEY (forecast_time_id, city_id ), -- composite key to replace duplicate
	FOREIGN KEY (city_id) REFERENCES city(city_id) -- Foreign key to connect each to the city table
);
select * from weather;


CREATE TABLE cities_airport (
    icao_codes VARCHAR(255) NOT NULL, --     icao_codes are unique identifiers for airports
    airport_name VARCHAR(255) NOT NULL, -- airport name
    city_id INT NOT NULL, -- ID of the city
    PRIMARY KEY (icao_codes),  -- ID of the airport
    FOREIGN KEY (city_id) REFERENCES city(city_id) -- Foreign key to connect each 
);
select * from cities_airport;


CREATE TABLE flights (
    id INT AUTO_INCREMENT PRIMARY KEY, -- Automatically generated ID for each airpot
    city_id INT NOT NULL, -- ID of the city
    arrival_airport_icao VARCHAR(10) NOT NULL, -- arrival airport code
	flight_number VARCHAR(10) NOT NULL, -- flight number
	departure_airport_icao VARCHAR(255) , -- arrival airport code
	scheduled_arrival_time DATETIME NOT NULL,  -- local time plane will arrive
	timestamp_flight DATETIME NOT NULL,  -- time data was retrieved
	FOREIGN KEY (arrival_airport_icao) REFERENCES cities_airport(icao_codes) -- Foreign key to connect each -- Foreign key to connect each
);
select * from flights;

