# syntax=docker/dockerfile:1.7
FROM node:22-bookworm-slim AS build
WORKDIR /app
COPY frontend-estudiantes/package.json frontend-estudiantes/package-lock.json ./
RUN npm ci
COPY frontend-estudiantes/ ./
ENV VITE_API_URL=
RUN npm run build

FROM nginx:1.27-alpine
COPY docker/nginx-preview.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
HEALTHCHECK --interval=15s --timeout=4s --start-period=5s --retries=5 CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
