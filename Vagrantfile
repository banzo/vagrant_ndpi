# info:
# Link Utili:
#  - http://ntraft.com/installing-gdb-on-os-x-mavericks/
# - vagrant plugin install vagrant-vbguest
#
VAGRANTFILE_API_VERSION = "2"

require 'yaml'
current_dir    = File.dirname(File.expand_path(__FILE__))
configs        = YAML.load_file("#{current_dir}/config.yml")
vagrant_config = configs['configs']

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = vagrant_config['box']
  
  config.vm.network :private_network, ip: vagrant_config['private_ip']
  
  config.vm.provider :virtualbox do |vb|
     vb.cpus = "#{vagrant_config['cpus']}"
     vb.memory = "#{vagrant_config['memory']}"
  end
 
 config.vm.provision :shell, path: "bootstrap.sh"
end
