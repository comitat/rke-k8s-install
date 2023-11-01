# rke-k8s-install
cube is installed via RKE (in order to proxy everything uniformly on the registry)

### Server preparation
For all servers participating in the IS under the centos8 operating system:  
  - Perform a repository swap, to the Vault repositories (details - https://vault.centos.org/)
    VaultRepoInstall.sh command file
  - Install Docker-CE on all servers:
    Centos8-Docker.sh command file
  - add an unassigned docker-rke user to run Docker and install the RKE environment cluster and include it in the docker group (after running the script, you must enter the user's password)
    AddUserDocker-RKE.sh command file
  - Creating SSH key and configuring login under users
    sample instructions:  
    https://selectel.ru/blog/tutorials/how-to-generate-ssh/  
    the key must be located in ~/.ssh on the administrator's computer,  
    copy the key for both users:  
    scp root@servername - for general administration  
    scp docker-rke@servername - for RKE cluster installation  
    Verify that at the next login, the ssh login is done without password
  
Documentation on Kubernetes can be found at:    
https://kubernetes.io/ru/docs/home/  
  
Each, logically allocated part of the application runs in a separate nymspace. This allows you to customize resource quotas for different groups of applications and isolates parts of the application from each other.    
  
There is a documentation section on namespaces:  
https://kubernetes.io/ru/docs/concepts/overview/working-with-objects/namespaces/  
  
All third-party services in a Kubernetes cluster are installed using helm.  
Helm is the Kubernetes package manager.    
Documentation for helm can be found at:    
https://helm.sh/ru/docs/    