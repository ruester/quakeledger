FROM python:3.6.9-buster

RUN apt-get update && apt-get install python3 python3-pip git python3-sqlalchemy -y && \
    pip3 install pandas scipy lxml

# quakeml is provided as stand alone python script inside of the github repository

WORKDIR /usr/share/git/quakeledger
COPY . .
