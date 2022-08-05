/// provisioners 
/// file   ===> provisioner is used to copy files or dir
/// remote-exec  ===> invokes a command/script on remote resource
/// local-exec   ===> provisioner invokes a local executable after a resource is created.

###  More Provisioner
/// pupper ==> provisioner installs, configures and runs the Pupper agent on a remote resource
/// chef   ===> provisiner installs, configures and runs the Chef Client on a remote resource
/// ansible  ===> run terraform. Output IP address, run playbook with local-exec

#provisioner "file" {
# source = "files/test.conf"
#destination = 

#}