Lunchbox
=========

A collection of my [Packer](http://packer.io) templates for building [Vagrant](http://vagrantup.com) baseboxes.

## Current Baseboxes

The current basebox set includes Red Hat 7 and rhel varitants Centos and OEL
At time or writing  only Red Hat has an offical release the others are in Beta or RC state

- centos-7.0rc-x86_64.json
- oel-7.0rc-x86_64.json
- rhel-7.0-x86_64.json

### VirtualBox

The boxes were built and tested with virtualbox 4.3.12

### VMware

Configuration for VMware is include in the templates but as of now untested.

## Build Your Own Boxes
 
First, download and install [Packer](http://packer.io) .

The templates are JSON files that describe how each box that can be built. You can use `packer build` to build the boxes.

     $ packer build -only=virtualbox-iso centos-7.0rc-x86_64.json
 
If you want to use a another mirror site, use mirror variable.
 
     $ packer build -var 'mirror=http://mirror.home.lan/centos' -only=virtualbox-iso centos-7.0rc-x86_64.json
 
### mirror URL

As Red Hat Enterprise Linux ISOs are not publicly retrievable the URL in the templates are fake. Likewise as the OEL ISO's required accpecting the license and seeting some cookie the URL is also no good. To use these templates you should substitute your local server where you host the ISOs, using the mirror variable as above.

### CentOS
As CentOS 7rc ISO images are not yet avialble the box currently uses the boot.iso file and installs over the network and hence will be slower to build. The template is based on Release Candidate 20140704-1 from 4th of July.
