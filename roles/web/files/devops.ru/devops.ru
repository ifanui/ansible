server {
        listen 80 devops.ru;
        listen [::]:80 devops.ru;

        root /var/www/devops_ru;
        index index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
                try_files $uri $uri/ =404;
        }
}