# city_weather_flight_forcast
The projects show how to use web scraping and API to get data online, create functions using the Pandas library, send the data to a SQL database, and retrieve the data from SQL using the Pandas library.
CREATING A DATABASE FOR COLLECTED DATA USING API
OVERVIEW
This project explains how to store collected data online using an API in a SQL database locally on your computer. The store data includes three cities in Germany (Berlin, Hamburg, and Munich). There are four tables in the SQL database, which include: city, population, weather, city's airport, and flights. The projects show how to use web scraping, API to get data online, create functions using the pandas library, send the data to a SQL database, and retrieve the data from SQL using the pandas library.

Data Sources
•	https://en.wikipedia.org/wiki/
•	https://aerodatabox.p.rapidapi.com/airports/search/location
•	https://api.openweathermap.org/data/2.5/forecast?lat={lat}&lon={lon}&appid={api-key}&units=metric
•	https://aerodatabox.p.rapidapi.com/flights/airports/icao/EDDB/2025-05-22T00:00/2025-05-22T24:00
These datasets are combined programmatically within the Jupyter notebook and MySQL Workbench to compile the population, weather, and flight data of Berlin, Hamburg and Munich.
Methodology
Data were obtained from the above website using data collection with Python (requests and beautiful soup)
•	Data Cleaning & Preparation: The raw data was cleaned of duplicates and inconsistent formats. Data types were unified and datasets merged to create a comprehensive view of city, population, weather, and flight data
Tools & Technologies
•	Python (Pandas, beautiful soup, requests) for data manipulation and analysis
•	Jupyter environment on VS Code for an integrated code and report environment
•	SQL for data storage on a local computer
Repository Contents
•	City_population.ipynb: Jupyter notebook containing all cities' code, analysis, and narrative report.
•	weather.ipynb: Jupyter notebook containing all cities' code and weather report.
•	Cities_airports.ipynb: Jupyter notebook containing all cities' code and airports' codes.
•	flight.ipynb: Jupyter notebook containing all airport codes and flight data
How to Run
1.	Clone the repository.
2.	Ensure all files are in the city_weather_flight_forecast directory.
3.	Open the Jupyter notebook city_weather_flight_forecast.ipynb.
4.	Run the cells sequentially to reproduce the analysis and visualizations.
