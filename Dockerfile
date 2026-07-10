FROM nodered/node-red:latest

# Copy package.json dan install dependencies di /data
WORKDIR /data
COPY data/package.json /data/package.json
RUN npm install --unsafe-perm

# Copy flow files
COPY data/flows.json /data/flows.json

# WAJIB: kembalikan WORKDIR ke folder asli image sebelum selesai,
# supaya entrypoint.sh bawaan Node-RED bisa ditemukan
WORKDIR /usr/src/node-red
