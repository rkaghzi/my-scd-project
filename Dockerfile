FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY backend/.env backend/.env

# Copy the env file explicitly
COPY backend/config/config.env backend/config/config.env

EXPOSE 3000

CMD ["npm", "start"]
