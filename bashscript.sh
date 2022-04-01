#!/bin/sh
if [ "$PROXY_PATH_1" != "" ]; 
then
	echo 'location /${PROXY_PATH_1}/ {
  proxy_pass ${PROXY_HOST_1};
} ' >> /etc/nginx/conf.d/default.conf.template
fi

if [ "$PROXY_PATH_2" != "" ]; 
then
	echo 'location /${PROXY_PATH_2}/ {
  proxy_pass ${PROXY_HOST_2};
} ' >> /etc/nginx/conf.d/default.conf.template
fi

if [ "$PROXY_PATH_3" != "" ];  
then
	echo 'location /${PROXY_PATH_3}/ {
  proxy_pass ${PROXY_HOST_3};
} ' >> /etc/nginx/conf.d/default.conf.template
fi

if [ "$PROXY_PATH_4" != "" ]; 
then
	echo 'location /${PROXY_PATH_4}/ {
  proxy_pass ${PROXY_HOST_4};
} ' >> /etc/nginx/conf.d/default.conf.template
fi

if [ "$PROXY_PATH_5" != "" ]; 
then
	echo 'location /${PROXY_PATH_5}/ {
  proxy_pass ${PROXY_HOST_5};
} ' >> /etc/nginx/conf.d/default.conf.template
fi	

echo ' } ' >> /etc/nginx/conf.d/default.conf.template

envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
