FROM nginx:alpine

RUN sed -i 's/listen[[:space:]]*80;/listen 8188;/g' /etc/nginx/conf.d/default.conf \
    && sed -i 's/listen[[:space:]]*\[::]:80;/listen [::]:8188;/g' /etc/nginx/conf.d/default.conf

COPY . /usr/share/nginx/html

EXPOSE 8188

HEALTHCHECK --interval=10s --timeout=3s --start-period=10s --retries=5 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:8188/ || exit 1

CMD ["nginx", "-g", "daemon off;"]