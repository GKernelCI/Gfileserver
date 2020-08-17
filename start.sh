#!/bin/sh
envsubst < /default.conf.template > /etc/nginx/conf.d/default.conf && envsubst < /nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'