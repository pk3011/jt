FROM alpine

# Install Node and NPM
RUN apk add --update nodejs npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 443

ENTRYPOINT ["node", "./src/index.js"]                              

