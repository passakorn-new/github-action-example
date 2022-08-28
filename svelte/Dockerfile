FROM node:18.7.0-alpine
RUN apk add --no-cache build-base git

WORKDIR /app
COPY package.json .
COPY pnpm-lock.yaml .
RUN npm i -g pnpm && pnpm i

COPY . .
RUN pnpm build

EXPOSE 4000
CMD ["pnpm", "preview", "--host", "0.0.0.0", "--port", "4000"]
