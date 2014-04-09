#
# Cookbook Name:: promet_postfix
# Recipe:: mailutils
#
# Copyright (C) 2014 gregpalmier 
# 
# All rights reserved - Redistribute
#

case node['platform_family']
when 'rhel', 'fedora'
  package 'bind-utils' do
    action :install
  end
when 'debian'
  package 'mailutils' do
    action :install
  end
end
