script_location=$(pwd)
dnf install nginx -y
rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html

unzip /tmp/frontend.zip

cp ${script_location}/file/roboshop.conf /etc/nginx/default.d/roboshop.conf

systemctl enable nginx
systemctl start nginx
