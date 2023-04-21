yum install mongodb-org -y

systemctl enable mongod
systemctl start mongod

sed -e -i "s|127.0.0.1|0.0.0.0"  /etc/mongod.conf &>>$log_file
vim /etc/mongod.conf

systemctl restart mongod