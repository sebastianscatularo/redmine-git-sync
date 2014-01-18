redmine-git-sync
================

## OpenShift configuration

In the redmine gear, into the data dir, create an bash script named

* ssh_git_client.sh

And put into this script the next commands:

```bash
 #!/bin/bash
 ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i ${OPENSHIFT_DATA_DIR}.ssh/id_rsa $1 $2
```

Next that, setup and enviroment variable that named GIT_SSH and fillin with the path at the ssh_git_client.sh script
Using OpenShift console:

```bash 
 rhc env set GIT_SSH=${OPENSHIFT_DATA_DIR}git_ssh_client.sh --app redmine
```

Next, we are beable to clone our git repositories from GitHub or Bitbucket for example as a mirror of that ones.
Running in the OPENSHIFT_DATA_DIR the following command to do this last one.

```bash
 git clone --mirror https://github.com/abloos/redmine-git-sync.git
```

Now we can fetch changes into the mirrired repository after each commit, setting the correct hook in GitHub or Bitbucket
To fetch the changes, we need add another script encharge to do that like this.

```bash
  #!/bin/bash
  cd ${OPENSHIFT_DATA_DIR}redmine-git-sync.git
  git remote update
  git fetch --all
```
