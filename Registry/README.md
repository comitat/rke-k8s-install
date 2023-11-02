# Registry  
Copy to the server %servername%  
config.yml, docker-compose.yml files (from the computer of the administrator/installer of the system)  
scp ./registry root@remoteserver:/opt/registry    
Make an ssh connection to the server and start our caching docker registry server using Docker-Compose tools.   
```   
ssh root@remoteserver  
cd /opt/registry  
docker-compose up -d  
```  
   
For all servers that need to be updated through this proxy, edit the /etc/docker/daemon.json file  
and add the registry-mirrors key and value, in order to make this setting permanent  
For example:     
{    
  { "registry-mirrors": ["https://<my-docker-mirror-host>".]    
}  