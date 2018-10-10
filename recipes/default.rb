#
# Cookbook:: my-reaper
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
passwords = data_bag_item('passwords', 'jmxremote')
node.default['reaper']['jmx']['username'] = passwords['jmx_user']
node.default['reaper']['jmx']['password'] = passwords['jmx_password']

include_recipe 'cassandra-reaper'
