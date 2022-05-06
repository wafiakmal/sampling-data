#!/usr/bin/bash

wget http://github.com/labusiam/dataset/raw/main/weather_data.xlsx
in2csv --sheet weather_2014 weather_data.xlsx>weather_2014.csv
in2csv --sheet weather_2015 weather_data.xlsx>weather_2015.csv
csvstack weather_2014.csv weather_2015.csv>weather.csv
rm weather_data.xlsx
cat weather.csv | sample -r 0.3 > sampling_weather.csv
