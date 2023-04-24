FROM ghcr.io/faelau/docker-rpmbuild:main

COPY . .

RUN npm install --silent --production

RUN npm run build

ENTRYPOINT ["node", "/lib/main.js"]
