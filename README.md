#!/usr/bin/bash # Initializing Bash Script

wget http://github.com/labusiam/dataset/raw/main/weather_data.xlsx  *# Downloading the initial xlsx file*
in2csv --sheet weather_2014 weather_data.xlsx>weather_2014.csv *# Converting first sheet, weather_2014 to .csv file*
in2csv --sheet weather_2015 weather_data.xlsx>weather_2015.csv *# Converting second sheet, weather_2015 to .csv file*
csvstack weather_2014.csv weather_2015.csv>weather.csv *# Combining two sheets into one .csv file*
rm weather_data.xlsx *# Deleting the initial sheet*
cat weather.csv | sample -r 0.3 > sampling_weather.csv *# Creating a new file to store sampling result from combined .csv with rate 0.3*