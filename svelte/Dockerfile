FROM node:18.7.0-alpine AS builder

WORKDIR .
RUN apk update && apk upgrade && \
    apk add --no-cache git
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build && npm prune --production

FROM node:18.7.0-alpine
USER node:node
WORKDIR .
COPY --from=builder --chown=node:node ./build ./build
COPY --from=builder --chown=node:node ./node_modules ./node_modules
COPY package.json .
ENV PORT 5050
EXPOSE 5050
CMD ["node", "build"]
