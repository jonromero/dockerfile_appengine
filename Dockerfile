
FROM ubuntu:14.04
MAINTAINER Jon Vlachogiannis <darksun4@gmail.com>

RUN apt-get update -y

# Install basic applications
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

# Install Python and Basic Python Tools
RUN apt-get install -y python python-dev python-distribute python-pip

# Download Google App Engine SDK
RUN wget -O /appengine.zip https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.36.zip

# Extract it
RUN apt-get install unzip -y
RUN unzip /appengine.zip -d /appengine

# Install flask
RUN pip install -r requirements.txt -t lib/

EXPOSE 22 8000 8080

