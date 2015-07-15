service_name = node['aptly']['api_service_name']
template "/etc/init.d/#{service_name}" do
  source 'api_init.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables({
      :service_name => service_name
  })
end

service service_name do
  action [ :enable, :start ]
end
