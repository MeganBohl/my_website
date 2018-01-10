apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic end

package 'nginx'

service 'nginx' do
  supports status: true
  action [:enable, :start]
end

file '/usr/share/nginx/html/index.html' do
  content '<html>
  <body>
    <h1>Hello, Michael!</h1>
    
        <p><img style="display: block; margin-left: auto; margin-right: auto;" title="CO" src="https://sd.keepcalm-o-matic.co.uk/i-w600/i-can-t-keep-calm-i-m-moving-to-colorado.jpg" 
	alt="CO" width="150" height="250"></p>
        
  </body>
 </html>'
end

