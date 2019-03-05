server {
        listen 80;
     
        root /var/www/devops_ru;
        index index.html index.htm index.nginx-debian.html;

        server_name www.devops.ru devops.ru;

        location / {
                try_files $uri $uri/ =404;
        }
}