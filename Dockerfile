FROM node:20-bookworm

RUN apt-get update && apt-get install -y build-essential python3

WORKDIR /app
COPY . .

RUN npm install && npm run buildProxy

CMD ["npm", "run", "proxy"]
