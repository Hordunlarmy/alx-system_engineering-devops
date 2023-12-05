# Use Puppet to automate the task of creating a custom HTTP header response

exec { 'update':
  command => '/usr/bin/apt-get update',
}

package { 'nginx':
  ensure => 'present',
  require => Exec['update'],
}

file_line { 'http_header':
  path  => '/etc/nginx/nginx.conf',
  match => 'http {',
  line  => "http {\n\tadd_header X-Served-By \"${hostname}\";",
  require => Package['nginx'],
service { 'nginx':
  ensure => 'running',
  enable => true,
  subscribe => File_line['http_header'],
}
