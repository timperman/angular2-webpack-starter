FROM node

RUN npm install -g webpack webpack-dev-server karma protractor typings typescript

WORKDIR /app

COPY package.json /app/package.json
RUN npm install

COPY typings.json /app/typings.json
RUN typings install

COPY . /app

ENTRYPOINT [ "npm", "run" ]
CMD [ "server" ]
