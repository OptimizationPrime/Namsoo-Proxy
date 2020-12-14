FROM node:lts-alpine
WORKDIR /proxy
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "run", "start"]