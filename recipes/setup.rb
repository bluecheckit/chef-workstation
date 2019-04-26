['tree','ntp','git'].each do |p|
  package p do
    action :install
  end
end

node['ipaddress']
node['memory']['total']


file "/etc/motd" do
   content "server is property of mike 
   Hostname: #{node['hostname']}
   IPADDRESS: #{node['ipaddress']}
   CPU: #{node['cpu']['0']['mhz']}
   Memory: #{node['memory']['total']}
   " 
   owner "root"
   group "root"
end

service 'ntpd' do
  action [:enable, :start ]
end
