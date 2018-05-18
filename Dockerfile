# official Python runtime as a parent image
FROM python:3

COPY . /code/

# set the working directory to /code
WORKDIR /code

# Run when the container launches
CMD ["python", "./reverse_sort.py"]
