#!/usr/bin/python

# Input: file, 'input.csv'
# contains a single line of comma-separated string terminated by a new line character

# TODO
# function: read in 'input.csv'
def read_in_to_list(input_file):
    # TODO check for bad inputs
    # file should be one-line CSV ending with new line char
    # if not that format, exit and return error about wrong format
    input_fh = open(input_file, 'rt')
    for line in input_fh:
        line = line.strip()
        line_list = line.split(',')
        break # input should only have 1 line so leave after 1st line
    # return a list
    return line_list

# function: sort its string into descending alphabetical order
def reverse_sort(input_list):
    # sort list in reverse
    input_list.sort(reverse=True)
    return input_list

# function: write sorted strings in CSV format to new file called 'output.csv'

input_file = 'input.csv'
read_list = read_in_to_list(input_file)
#print('list is is {}'.format(read_list))
sorted_list = reverse_sort(read_list)
#print('sorted list is {}'.format(sorted_list))

