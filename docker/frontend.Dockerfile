# syntax=docker/dockerfile:1.7
FROM node:22-bookworm-slim AS build
ARG FRONTEND
ARG VITE_API_URL=
ARG VITE_GATEWAY_PORT=
ARG VITE_STUDENT_APP_URL=
ENV VITE_API_URL=${VITE_API_URL}
ENV VITE_GATEWAY_PORT=${VITE_GATEWAY_PORT}
ENV VITE_STUDENT_APP_URL=${VITE_STUDENT_APP_URL}
WORKDIR /app
COPY ${FRONTEND}/package.json ${FRONTEND}/package-lock.json ./
RUN npm ci
COPY ${FRONTEND}/ ./
RUN npm run build

FROM nginx:1.27-alpine
COPY docker/nginx-spa.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
HEALTHCHECK --interval=15s --timeout=4s --start-period=5s --retries=5 \
  CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
