source ${script_path}/common.sh

component=catalogue



cp /home/centos/  /etc/systemd/system/catalogue.service

systemctl daemon-reload
systemctl enable catalogue
systemctl start catalogue

yum install mongodb-org-shell -y