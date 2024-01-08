FROM node:20-alpine as build

ENV HUGO_VERSION=0.120.4
ENV HUGO_ENVIRONMENT=production
ENV HUGO_ENV=production

ARG TARGETOS linux 
ARG TARGETARCH amd64

RUN mkdir -p /tmp
WORKDIR /tmp

RUN apk add --no-cache git tzdata go hugo=~${HUGO_VERSION}

# Copy source files
RUN mkdir -p /src
WORKDIR /src
COPY ./src .

# Build site
RUN hugo --gc --minify

FROM nginx:latest as publish
# Copy static files
COPY --from=build /src/public /usr/share/nginx/html
