redmine-git-sync
================

# OpenShift configuration

In the redmine gear, into the data dir, create an bash script named

* ssh_git_client.sh

And put into this script the next commands:

´´´ 
 #!/bin/bash
 ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i ${OPENSHIFT_DATA_DIR}.ssh/id_rsa $1 $2
´´´

Next that, setup and enviroment variable that named GIT_SSH and fillin with the path at the ssh_git_client.sh script
Using OpenShift console:

´´´ rhc env set GIT_SSH=${OPENSHIFT_DATA_DIR}git_ssh_client.sh --app redmine ´´´  
