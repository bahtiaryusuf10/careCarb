FROM node:16-slim
WORKDIR /src/app
ENV PORT 3000
ENV HOST 0.0.0.0
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start"]
