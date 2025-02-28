FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY frontend/package*.json frontend/
RUN npm install --prefix frontend

COPY . .

RUN npm run build --prefix frontend

EXPOSE 5000
EXPOSE 3000

CMD ["sh", "-c", "npm run start & npm run preview --prefix frontend"]
