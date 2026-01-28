#!/bin/bash
# cars
# Malcolm Clayborne

CAR_FILE="my_old_cars"

while true; do
	echo "Menu:"
	echo "1 Enter a new car"
	echo "2 Display the list of cars"
	echo "3 Quit"
	echo -n "Enter your choice (1-3): "
	read -r choice

	case "$choice" in
		1)
			echo -n "Enter Year: "
			read -r year
            		echo -n "Enter Make: "
            		read -r make
            		echo -n "Enter Model: "
            		read -r model
            		echo "${year}:${make}:${model}" >> "$CAR_FILE"
            		echo "Car added!"
            		;;
        	2)
            		if [ -s "$CAR_FILE" ]; then
                		echo "Cars sorted by year:"
                		sort -t ":" -k1,1n "$CAR_FILE"
            		else
                		echo "No cars in the list yet."
            		fi
            		;;
        	3)
            		echo "Goodbye!"
            		break
            		;;
        	*)
            		echo "Invalid choice, please enter 1, 2, or 3."
            		;;
    esac

    echo
done
