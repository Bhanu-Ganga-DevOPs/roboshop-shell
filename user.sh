component=user

curl -sL https://rpm.nodesource.com/setup_lts.x | bash

yum install nodejs -y

useradd $app_user

mkdir /app

curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/${component}.zip
cd /app
unzip /tmp/${component}.zip

cd /app
npm install
