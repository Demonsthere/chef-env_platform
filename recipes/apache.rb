#
# Cookbook Name:: chef-env_platform
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
execute 'apt-get update' do
  action :run
end

include_recipe 'platform_apache'
