['tree','ntp','git'].each do |p|
  package p do
    action :install
  end
end

template '/etc/motd' do
    source 'motd.erb'
    action :create
end


service 'ntpd' do
  action [:enable, :start ]
end
