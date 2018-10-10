default['reaper']['version'] = '1.2.2'
default['reaper']['url'] = "https://github.com/thelastpickle/cassandra-reaper/releases/download/#{node['reaper']['version']}/cassandra-reaper-#{node['reaper']['version']}-release.tar.gz"

default['reaper']['conf']['datacenterAvailability'] = 'EACH'
default['reaper']['conf']['storageType'] = 'cassandra'

default['reaper']['cassandra']['clusterName'] = 'Test Cluster'
default['reaper']['cassandra']['contactPoints'] = []

default['reaper']['jmx']['auth_enabled'] = false
# default['reaper']['jmx']['username'] = 'cassandra'
# default['reaper']['jmx']['password'] = 'cassandra'
default['reaper']['jmx']['ports_mapping'] = {
  '10.142.0.2' => 7199
}

default['java']['install_flavor'] = 'openjdk'
default['java']['openjdk_packages'] = ['openjdk-8-jre-headless']
default['java']['jdk_version'] = '8'
