FROM nginx:1.29.0-alpine

# Actualiza paquetes para mitigar vulnerabilidades
RUN apk update && apk upgrade && apk --no-cache add tini

COPY ./server /usr/share/nginx/html

EXPOSE 80

# Usa tini como init para manejo de señales (opcional)
ENTRYPOINT ["/sbin/tini", "--"]

CMD ["nginx", "-g", "daemon off;"]
