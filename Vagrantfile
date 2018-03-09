Vagrant.configure('2') do |config|
  7.times do
    config.vm.network :private_network, type: :dhcp
  end

  Pathname.glob('*.json').sort.each do |template|
    name = template.basename('.json').to_s
    escaped_name = name.gsub(/[.]/, '_')

    #config.vm.define "#{escaped_name}-libvirt" do |c|
    #  c.vm.box = name
    #
    #  c.vm.provider :libvirt do |v, override|
    #    override.vm.synced_folder '', '/vagrant', disabled: true
    #  end
    #end

    config.vm.define "#{escaped_name}-virtualbox" do |c|
      c.vm.box = "builds/#{name}"
      c.vm.hostname = "virtualbox-#{name}"
      #c.vm.network :private_network, ip: "172.16.3.2"

      c.vm.provider :virtualbox do |v|
        v.name = name
        v.gui = false
        v.cpus = 1
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        v.customize ["modifyvm", :id, "--ioapic", "on"]
      end

      c.vm.provision "shell", inline: "echo Hello, World"

    end

    config.vm.define "#{escaped_name}-vmware_fusion" do |c|
      c.vm.box = name

      c.vm.provider :vmware_fusion do |v|
        v.gui = false
      end
    end
  end
end
