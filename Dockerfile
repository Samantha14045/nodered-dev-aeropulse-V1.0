FROM nodered/node-red:latest
COPY data/package.json /data/package.json
WORKDIR /data
RUN npm install --unsafe-perm
COPY data/flows.json /data/flows.json
