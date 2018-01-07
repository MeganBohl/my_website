package 'nginx' service 'nginx' do
  supports status: true
  action [:enable, :start]
end
