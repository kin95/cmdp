#!/bin/sh
APP_NAME=corporate-mobile-donation-registration

tpid=`ps -ef|grep $APP_NAME|grep -v grep|grep -v kill|awk '{print $2}'`
if [ ${tpid} ]; then
    echo 'CMDP App is running.'
else
    echo 'CMDP App is NOT running.'
fi