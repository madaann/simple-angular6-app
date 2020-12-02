##Using base image alpine
FROM nginx:alpine

LABEL Author="Madan Narayanaswamy <Madan.Narayanaswamy@msg-global.com>"
LABEL app-version="1.0"

##updating the packages
RUN apk update
RUN apk fix
RUN apk add curl wget

##Copying the nginx configuration folder 
COPY nginx.conf /etc/nginx/nginx.conf

##Copying the dist folder to serve the application
WORKDIR /usr/share/nginx/html
COPY dist/ .
