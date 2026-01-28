# README for Username Validation Script

## Author Information
- **Name:** Malcolm Clayborne
- **Course:** CPSC-298-01
- **Assignment:** Username Validation
- **Date:** 01/27/25

## Program Description
This program presents a menu to the user that allows them to manage a list of cars. The user can enter a new car by providing its year, make, and model, or display the current list of cars sorted by year. The menu continues to display until the user chooses to quit, at which point the program prints “Goodbye” and exits.

## Username Requirements
This script manages a list of cars and presents a menu to the user. It functions according to the following rules:
Continuously displays a menu with three options until the user chooses to quit
Option 1: Prompts the user to enter a new car by asking separately for the Year, Make, and Model
Combines the entered Year, Make, and Model into a colon-separated string (e.g., 1972:Chevrolet:Corvette) and appends it to the my_old_cars file
Option 2: Displays all cars in the my_old_cars file sorted by year
Option 3: Prints a “Goodbye” message and exits the program
Handles invalid menu choices by prompting the user again
Automatically creates my_old_cars if it does not exist when a new car is added

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with the provided input file:
```bash
./cars.sh < cars-input
```

## How the Script Works
The program uses a while loop to repeatedly display a menu and prompt the user for a choice. A case statement processes the user’s input: entering a new car appends a colon-separated string of year, make, and model to the my_old_cars file, while listing cars sorts the file by year before displaying it. Choosing the quit option breaks the loop, printing a farewell message, and the program ends.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]


## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]
