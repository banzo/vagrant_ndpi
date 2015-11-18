#nDPI demo

This is a Vagrantfile for running a testing setup for [nDPI](https://github.com/ntop/nDPI).

##Installation

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Install [Vagrant](http://downloads.vagrantup.com/)
- Install vagrant plugin ``vagrant plugin install vagrant-vbguest``
- cd to the cloned directory
- Type in ``vagrant up`` to your terminal window

##The headlines
<table>
<tr><th>IP Address</th><td>192.168.22.11</td></tr>
<tr><th>SSH</th><td>vagrant ssh</td></tr>
<tr><th>Example</th><td>~/nDPI/example/ndpiReader -i /tmp/capture.pcap -s 20</td></tr>
</table>

##References

* http://www.ntop.org/wp-content/uploads/2013/12/nDPI_QuickStartGuide.pdf
* https://github.com/fontanellif/vagrant_ntopng

##Misc

* http://luca.ntop.org/nDPI.pdf
* https://wiki.wireshark.org/SampleCaptures
* http://www.slideshare.net/alienvault/a-quick-chat-with-luca-deri-creator-of-ntop
* http://www.ntop.org/ndpi/configuring-ndpi-for-custom-protocol-detection/
* http://www.areteix.net/blog/2013/08/network-flow-monitoring-with-open-vswitch/