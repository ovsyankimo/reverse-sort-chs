Feature: Reverse sort a CSV file to output file
    Read in a specific one-line CSV file of comma-separated strings
    Sort the strings in descending order
    Write the sorted strings to an output CSV file

Scenario: Input correctly-formatted CSV file should result in descending-sorted, correctly-formatted output file
    Given that the input CSV file is correctly formatted with comma-separated strings
        And the input CSV file is one line ending in new line character
    When the user provides the input CSV file to the program
    Then an output CSV file will be created
        And the output CSV file will have one line of comma-separated strings
        And the strings will be the descending sorted version of the strings in the input file

Scenario: Input CSV file with incorrect number of lines
    Given that the input CSV file has more than one line
    When the user provides the input CSV file to the program
    Then an output CSV file will be created
        And the output CSV will have the descending sorted version of the strings on only the first line of the input file
        And the strings in the imput file on lines past one will not be included in the output file

Scenario: An output file already existing should result in the program overwriting the output file with the new output
    Given that there exists a file with the name of the output file that the program should create
        And the input CSV file is correctly formatted
    When the user provides the input CSV file to the program
    Then the program will overwrite the existing file with the new output file
