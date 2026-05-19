FROM node:18-alpine

WORKDIR /usr/src/app

# Copy package.json trước để tận dụng Docker layer caching
COPY src/package*.json ./

RUN npm ci

# Copy toàn bộ mã nguồn
COPY src/ ./

EXPOSE 3000

CMD ["npm", "start"]