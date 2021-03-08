#
# Cookbook Name:: book1
# Recipe:: default
#
# Copyright (c) 2021 The Authors, All Rights Reserved.

package 'nginx' do
  action :install
end


template '/var/www/html/index.nginx-debian.html' do
  source 'index.html.erb'
end

service 'nginx' do
  action :start
end


service 'nginx' do
  action :reload
end
