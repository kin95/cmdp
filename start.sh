#!/bin/sh
APP_NAME=corporate-mobile-donation-registration

tpid=`ps -ef|grep $APP_NAME|grep -v grep|grep -v kill|awk '{print $2}'`
if [ ${tpid} ]; then
    echo 'CMDP App is running.'
else
    echo 'CMDP App is NOT running.'
fi
bogon:test dy_bom$ cat start.sh 
#!/bin/sh
rm -f tpid
nohup java -jar ./corporate-mobile-donation-registration-0.0.1-8443.jar > /home/ec2-user/cmdp-app/log/cmdp.log  2>&1 &
echo $! > tpid
echo Start Success!