FROM node:20

WORKDIR /app

COPY package.json package-lock.json ./ 

RUN npm install

COPY . . 

RUN wget https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem

EXPOSE 3000

CMD ["npm", "run", "dev"]