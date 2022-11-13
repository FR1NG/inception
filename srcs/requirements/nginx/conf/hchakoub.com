	server {
		listen       443 ssl;
		#listen 80;
		server_name hchakoub.com;
		access_log /logs/nginx/access.log;
		error_log /logs/nginx/error.log;

		ssl_certificate /etc/ssl/certs/hchakoub.42.fr.crt;
		ssl_certificate_key /etc/ssl/private/hchakoub.42.fr.key;

		index index.html;

        location / {
            root /var/www/html/;
            index index.html;
                }

}