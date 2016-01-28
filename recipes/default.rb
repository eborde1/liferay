#
# Cookbook Name:: liferay
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


group 'liferay' do
  action :create
end

user 'liferay' do
  action :create
  comment 'Liferay User'
  gid 'users'
  home '/home/liferay'
  shell '/bin/bash'
  password ''
  supports :manage_home => true
end

# create directory for installation

directory '/opt/liferay' do
  owner 'liferay'
  group 'liferay'
  mode '0755'
  action :create
end
