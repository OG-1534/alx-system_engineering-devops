#Increase the amonut of traffic handleed by Nginx server

#Increse default files ULIMIT
exec { 'fix--for-nginx':
	# Modify the vlue of ULIMIT
	command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
	# Specify the sed command path
	path => 'usr/local/bin/:/bin/',
}

# Restart Nginx
exec { 'nginx-restart':
	# Restart Nginx service
	command => '/etc/init.d/nginx restart',
	# Specify the init.d script path
	path => '/etc/init,d/',
}
