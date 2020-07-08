package 'tree' do
	action :install
end
package 'emacs'
package 'nano'

package 'ntp'

package 'git' do
	action :install
end
file '/etc/motd' do
     content "This is the HCL"
     action :create 
     owner 'root'
     group 'root'
end

service 'ntp' do
	action [ :enable, :start ] 
end

