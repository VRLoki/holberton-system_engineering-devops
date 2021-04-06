# Script that setup a nginx web server on our server + redirection.

apt update -y && apt upgrade -y
apt install nginx -y

# Index page
echo "Holberton School" >/var/www/html/index.nginx-debian.html

# Redirect to fabulous Rick Astley page
sed -i '/listen \[::\]:80 default_server;/a\        rewrite ^\/redirect_me$ https://www.youtube.com/watch?v=dQw4w9WgXcQ permanent;' /etc/nginx/sites-enabled/default

# 404 Page not Found
echo "Ceci n'est pas une page" >/var/www/html/404.html
sed -i '/dQw4w9WgXcQ permanent;$/a\        error_page 404 /404.html;' /etc/nginx/sites-enabled/default

service nginx restart
