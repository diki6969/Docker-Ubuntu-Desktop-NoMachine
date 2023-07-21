# Menggunakan base image Ubuntu
FROM ubuntu:latest

# Install dependensi yang diperlukan
RUN apt-get update && apt-get install -y wget unzip curl

# Unduh dan install ngrok
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
RUN unzip ngrok-stable-linux-amd64.zip -d /usr/local/bin

# Salin file nomachine-windows10.sh ke dalam image
COPY nomachine-windows10.sh /opt/

# Berikan hak akses eksekusi pada script
RUN chmod +x /opt/nomachine-windows10.sh

# Menjalankan perintah sh nomachine-windows10.sh saat container berjalan
CMD ["sh", "/opt/nomachine-windows10.sh"]