FROM node:latest
# Create app directory
WORKDIR /usr/src/app
# setup healthcheck
HEALTHCHECK CMD curl --fail http://localhost:8080/health || exit 1
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json .
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
# Bundle app source
COPY . ./
EXPOSE 8080
CMD [ "node", "app.js" ]