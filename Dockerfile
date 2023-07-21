# Menggunakan base image Ubuntu
FROM ubuntu:latest

# Install dependensi yang diperlukan
RUN apt-get update && apt-get install -y wget unzip curl

COPY nomachine-windows10.sh .

CMD ["bash", "nomachine-windows10.sh"]