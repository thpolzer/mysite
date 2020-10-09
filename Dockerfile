# pull official base image
# see https://docs.docker.com/compose/django/
FROM python:3.8.3-alpine

# set work directory
WORKDIR /home/src/mysite

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .
