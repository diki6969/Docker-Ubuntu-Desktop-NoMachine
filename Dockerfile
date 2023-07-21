# Menggunakan base image Ubuntu
FROM ubuntu:latest

# Install dependensi yang diperlukan
RUN apt-get update && apt-get install -y wget unzip curl

CMD ["sh", "/opt/nomachine-windows10.sh"]