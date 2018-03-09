# BigData-packer-vagrant-ansible
Choose correct operating system supported by Cloduera and MapR 

[Cloudera  5.14 requirement for OS are described at]( https://www.cloudera.com/documentation/enterprise/release-notes/topics/rn_consolidated_pcm.html)
-  RHEL / CentOS / Oracle Linux RHCK : 7.4, 7.3, 7.2, 7.1, 6.9 , 6.8, 6.7, 6.6, 6.5, 6.4, 5.11, 5.10, 5.7
-  Ubuntu: 16.04 LTS (Xenial), 14.04 LTS (Trusty) , 12.04 LTS (Precise)

[MapR 5.22 / 6.0 requirement for OS are described at ](http://doc.mapr.com/display/MapR/Preparing+Each+Node)
- RedHat Enterprise Linux (RHEL) or Community Enterprise Linux (CentOS) 6.1 or later
- SUSE Enterprise Linux Server 11 SP2 or later
- Ubuntu Linux 12.04 or later

Choosen configuration
- Ubuntu 16.04 LTE
- Centos 7.4

## Requirements

The following software must be installed/present on your local machine before you can use Packer to build the Vagrant box file:

  - [Packer](http://www.packer.io/)
  - [Vagrant](http://vagrantup.com/)
  - [VirtualBox](https://www.virtualbox.org/) (if you want to build the VirtualBox box)
  - [VMware Fusion](http://www.vmware.com/products/fusion/) (or Workstation - if you want to build the VMware box)
  - [Ansible](http://docs.ansible.com/intro_installation.html)

## Usage - Build image using Packer and Ansible

Build ubuntu-16.04-amd64 

    packer build ubuntu-16.04-amd64.json -only TODO

Build centos-7.4-amd64 

    packer build centos-7.4-amd64.json -only TODO

Make sure all the required software (listed above) is installed, then cd to the directory containing this README.md file, and run:

After a few minutes, Packer should tell you the box was generated successfully.

If you want to only build a box for one of the supported virtualization platforms (e.g. only build the VMware box), add `--only=vmware-iso` to the `packer build` command:

    $ packer build --only=vmware-iso debian8.json

## Testing built boxes

There's an included Vagrantfile that allows quick testing of the built Vagrant boxes. From this same directory, run one of the following commands after building the boxes:

    # For VMware Fusion:
    $ vagrant up vmware --provider=vmware_fusion
    
    # For VirtualBox:
    $ vagrant up virtualbox --provider=virtualbox


## Using Pre-built Vagrant Boxes:

- download prebuilded

     vagrant init geerlingguy/ubuntu1604
     https://vagrantcloud.com/geerlingguy/boxes/ubuntu1604

- See older versions: http://files.midwesternmac.com/
    

### Build automation 
Via CircleCI and Vagrant boxes and Atlas

- [According tutorial](https://stefanscherer.github.io/automate-building-vagrant-boxes-with-atlas/)
- [CircleCi docs] (https://circleci.com/docs/2.0/)

## Build cluster using Vagrant
In repo: TODO
## Build Cloudera cluster using Ansible
In repo: TODO



## License

MIT license.

## Author Information

Created in 2018 by [Krzysztof Zielinski](https://www.linkedin.com/in/kzielins/), [Github TODO](http://githubTODO) 

Based on: 
- [Packer Example - Ubuntu 16.04 minimal Vagrant Box [Jeff Geerling](http://jeffgeerling.com/),, [Github TODO](http://githubTODO)
- [TODO Ansible templates] (http://TODO)