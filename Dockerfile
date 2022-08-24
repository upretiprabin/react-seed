FROM node:17-alpine

WORKDIR /app
#copying package.json ahead of copying other directories for layer caching
#so that if not required npm install is cached
COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm","start"]