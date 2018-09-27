#
#This cookbook is for apache server installation
# Cookbook:: apache_server
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#Resource to install the apache server
package 'httpd' do
	action :install
end
#Resource to start the apache server
service 'httpd' do
	action :start
end
#Resource to Create directory to store log files
directory '/root/apache_log' do
	action :create
end
#Resource to create the lof file for apache server
file '/root/apache_log/log.txt' do
	action :create
	content 'APACHE SERVER IS SUCCESSFULLY INSTALLED AND RUNNING'
end
