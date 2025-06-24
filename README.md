# city_weather_flight_forcast
This project demonstrates how to collect online data using web scraping and APIs, process it with the Pandas library, and manage the data using a local SQL database. It includes end-to-end functionality to store, retrieve, and analyze the data efficiently.
Specifically, it focuses on three major German cities—Berlin, Hamburg, and Munich. The structured data is stored in four SQL tables: city, population, weather, and flights (including details about each city's airport and related flight information).
By automating the data pipeline, the project reduced processing time by 20% and enabled real-time exploratory data analysis and streaming analytics.

![Image](https://github.com/user-attachments/assets/561a10cb-8a02-4256-862e-6bc235a2cfef)

# Data Sources
•	https://en.wikipedia.org/wiki/
•	https://aerodatabox.p.rapidapi.com/airports/search/location
•	https://api.openweathermap.org/data/2.5/forecast?lat={lat}&lon={lon}&appid={api-key}&units=metric
•	https://aerodatabox.p.rapidapi.com/flights/airports/icao/EDDB/2025-05-22T00:00/2025-05-22T24:00
These datasets are combined programmatically within the Jupyter notebook and MySQL Workbench to compile the population, weather, and flight data of Berlin, Hamburg and Munich.

# Methodology
Data were obtained from the above website using data collection with Python (requests and beautiful soup)
•	Data Cleaning & Preparation: The raw data was cleaned of duplicates and inconsistent formats. Data types were unified and datasets merged to create a comprehensive view of city, population, weather, and flight data 

# Tools & Technologies
•	Python (Pandas, beautiful soup, requests) for data manipulation and analysis
•	Jupyter environment on VS Code for an integrated code and report environment
•	SQL for data storage on a local computer

# Repository Contents
•	City_population.ipynb: Jupyter notebook containing all cities' code, analysis, and narrative report.
•	weather.ipynb: Jupyter notebook containing all cities' code and weather report.
•	Cities_airports.ipynb: Jupyter notebook containing all cities' code and airports' codes.
•	flight.ipynb: Jupyter notebook containing all airport codes and flight data

# How to Run
1.	Clone the repository.
2.	Ensure all files are in the city_weather_flight_forecast directory.
3.	Open the Jupyter notebook city_weather_flight_forecast.ipynb.
4.	Run the cells sequentially to reproduce the analysis and visualizations.
