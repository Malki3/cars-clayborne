# README for Username Validation Script

## Author Information
- **Name:** Malcolm Clayborne
- **Course:** CPSC-298-01
- **Assignment:** Username Validation
- **Date:** 01/20/25

## Program Description
This script asks the user to enter a username and checks whether it follows the required rules for valid usernames. It keeps asking the user to try again until the input follows all of the guidelines. Once satisfied the script thanks the user and will exit.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
The while loop runs while the username is invalid and will end once it gets a valid username. The grep command checks the username where -e enambles extended regex, -q suppresses output and uses only the exit status and -v inverts the match so the loop will continue. When grep finds a match the loop ends and the script continues.

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
- Valid username examples: malki3, devmiller298
- JackandJill, 123
- ran ./username.sh < username-input

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]
