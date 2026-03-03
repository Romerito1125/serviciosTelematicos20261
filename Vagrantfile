Vagrant.configure("2") do |config|
        config.vm.boot_timeout = 600


        config.vm.define :servidor do |servidor|
                servidor.vm.box = "bento/ubuntu-22.04"
                servidor.vm.network :private_network, ip: "192.168.50.3"
                servidor.vm.hostname = "servidor"
                servidor.vm.network "forwarded_port", guest: 80, host: 1234
                
        end
        config.vm.define :servidordns2 do |servidordns2|
                servidordns2.vm.box = "bento/ubuntu-22.04"
                servidordns2.vm.network :private_network, ip: "192.168.50.4"
                servidordns2.vm.hostname = "servidor-dns2"
        end
        config.vm.define :cliente do |cliente|
                cliente.vm.box = "bento/ubuntu-22.04"
                cliente.vm.network :private_network, ip: "192.168.50.2"
                cliente.vm.hostname = "cliente"
        end
end
  