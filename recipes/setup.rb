['tree','ntp'].each do |p|
  package p do
    action :install
  end
end

file "/etc/motd" do
   content 'server is property of mike'
   owner "root"
   group "root"
end

service 'ntpd' do
  action [:enable, :start ]
end
