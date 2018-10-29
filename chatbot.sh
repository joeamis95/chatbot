#!/bin/bash

export DISPLAY=:0

printf "Good Morning! What are you in the mood for?\n\n\tWeather\n\n\tSports\n\n\tNews\n\n\tFood\n\n\tMusic\n\n"

read response

until [ "$response" = "Weather" ] || [ "$response" = "weather" ] || [ "$response" = "Sports" ] || [ "$response" = "sports" ] || [ "$response" = "News" ] || [ "$response" = "news" ] || [ "$response" = "Food" ] || [ "$response" = "food" ] || [ "$response" = "Music" ] || [ "$response" = "music" ]; do
	printf "Please choose an item from the menu.\n"
	sleep infinity
done

if [ "$response" = "Weather" ] || [ "$response" = "weather" ]; then
	python -m webbrowser https://www.accuweather.com/
elif [ "$response" = "Sports" ] || [ "$response" = "sports" ]; then
	python -m webbrowser http://www.espn.com/
elif [ "$response" = "News" ] || [ "$response" = "news" ]; then
	python -m webbrowser https://news.google.com/
elif [ "$response" = "Food" ] || [ "$response" = "food" ]; then
	python -m webbrowser https://www.yelp.com/nearme/restaurants
elif [ "$response" = "Music" ] || [ "$response" = "music" ] ; then
	python -m webbrowser https://www.pandora.com/
else
	printf "Please choose an item from the menu."
fi

done



