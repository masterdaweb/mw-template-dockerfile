# What this Dockerfile builds is what runs: the platform sees a Dockerfile at
# the root and builds it as it is (no detection, no Railpack).
#
# nginx serving a static page. Two things every Dockerfile on the platform
# needs: listen on $PORT (nginx fills it in from the template at start) and
# on 0.0.0.0, never only localhost.
FROM nginx:1.29.3-alpine

COPY default.conf.template /etc/nginx/templates/default.conf.template
COPY site/ /usr/share/nginx/html/

ENV PORT=8080
EXPOSE 8080
