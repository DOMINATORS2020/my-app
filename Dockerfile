FROM nginx:17.17.1-alpine
COPY ./dist/appcloud /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]
