# Basicly you need to Create a host-bridge as a master to the physical interface used by your server
# you can then assign the physical interface as a slave to the bridge, only the bridge will be active
# To do this start my loading the network manager text user interface
#yum install -y nmtui
#
# Next run the interface #nmtui
# create a bridge by selecting edit an interface
#tab to the "ADD" and press enter
# Select a Bridge type device
# Name it whatever you want but it is important suggest use Bridge-0 "Note the Capitol B and lower case ridge"
#
#then add the Ethernet interface as a slave to the Bridge
#
#save and go to main menu
# Select activate an Device select the Brisdge and activate it
