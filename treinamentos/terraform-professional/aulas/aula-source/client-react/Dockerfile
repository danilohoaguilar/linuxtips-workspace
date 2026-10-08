# syntax=docker/dockerfile:1.5

FROM node:lts-trixie-slim AS build

# Specify working directory other than /
WORKDIR /usr/src/app

# Copy only files required to install
# dependencies (better layer caching)
COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Use separate stage for deployable image
FROM nginx:1.30.4

# Use COPY --link to avoid breaking cache if we change the second stage base image
COPY --link nginx.conf /etc/nginx/conf.d/default.conf

COPY --link --from=build usr/src/app/dist/ /usr/share/nginx/html

EXPOSE 8080