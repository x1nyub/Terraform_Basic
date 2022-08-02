#! /bin/bash
sudo su -
yum install -y httpd

cat > /var/www/html/index.html << EOF
<html>
<body>
<h1>TERRAFORM TEST-1</h1>
</body>
</html>
EOF

cat > /var/www/html/health.html << EOF
<html>
<body>
<h1>TERRAFORM TEST-2</h1>
</body>
</html>
EOF
systemctl start httpd
systemctl enable httpd

