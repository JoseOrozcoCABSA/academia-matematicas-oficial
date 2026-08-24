# syntax=docker/dockerfile:1.7
FROM node:22-bookworm-slim AS build
ARG SERVICE
WORKDIR /app
COPY ${SERVICE}/package.json ${SERVICE}/package-lock.json ./
RUN npm ci
COPY ${SERVICE}/ ./
RUN npm run build && npm prune --omit=dev

FROM node:22-bookworm-slim AS runtime
ENV NODE_ENV=production
WORKDIR /app
COPY --from=build --chown=node:node /app ./
USER node
CMD ["node", "dist/server.js"]
