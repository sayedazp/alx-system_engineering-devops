#puppet manifest to install and configure nginx 
package { 'nginx':
    ensure => installed,
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
  replace => true,
}

file { '/etc/nginx/sites-available/default':
  content => "server {
    listen 80;
    listen [::]:80 default_server;
    root   /var/www/html;
    index  index.html;
    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4&ab_channel=NyanCat;
    }
    }",
    replace => true,
}
