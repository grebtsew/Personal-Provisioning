FROM ubuntu:22.04

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y dos2unix
RUN find /app -type f -name "*.sh" -exec dos2unix {} \;


RUN chmod +x install.sh
RUN ./install.sh