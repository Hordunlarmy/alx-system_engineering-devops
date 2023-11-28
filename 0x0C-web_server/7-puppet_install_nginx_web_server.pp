# Script to install and configure  nginx using puppet

exec {'update':
  command => 'apt-get -y update',
  provider => shell,
}

package {'nginx':
  ensure => 'present',
}

exec {'install':
  command  => 'apt-get install -y nginx',
  provider => shell,
}

exec {'Hello':
  command  => 'echo "Hello World!" | sudo tee /var/www/html/index.html',
  provider => shell,
  require => Exec['nginx'], # Fix: Added closing quote
}

exec {'sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https:\/\/blog.ehoneahobed.com\/;\\n\\t}/" /etc/nginx/sites-available/default':
  provider => shell,
  require => Exec['nginx'],
}

exec {'run':
  command  => 'service nginx restart',
  provider => shell,
  require => Exec['nginx'],
}

