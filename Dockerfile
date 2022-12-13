FROM kong:3.1.1-alpine
USER root

ENV KONG_PLUGINS=external-auth

COPY ./external-auth /usr/local/share/lua/5.1/kong/plugins/external-auth

USER kong
