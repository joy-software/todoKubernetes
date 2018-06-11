# todoKubernetes
[todo application](https://todo-cloud.herokuapp.com/) deploy using docker container and managed with kubernetes.
**Source Code of the application** [joy-software/TODO](https://github.com/joy-software/TODO)

## Requirements
To use test the deployment using docker and kubernetes, you have to:

1. **Install Docker** (https://docs.docker.com/install/)
2. **Install Kubectl** (https://kubernetes.io/docs/tasks/tools/install-kubectl/)
3. **Install an hypervisor**
      - For OS X, install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or [VMware Fusion](https://www.vmware.com/products/fusion), or [HyperKit](https://github.com/moby/hyperkit).
      - For Linux, install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or [KVM](http://www.linux-kvm.org/).
4. **Install Minikube** (https://github.com/kubernetes/minikube/releases)
5. **Install docker-compose** (https://docs.docker.com/compose/install/)
5. **Install Kompose** (http://kompose.io/)

## Deployement

1. Start minkube

2. Deploy the app
    - **Using Docker-compose **
      - Download the project
      - Go to the Root directory
      - Exectute the command: ```sudo docker-compose up –d```
      - Two containers must be created, to check that both containers are created, type the command  ```sudo docker ps ```
      - To view the aplication just connect to (localhost:8000/app)
     
     - **Using kompose**
      - Download the project
      - Go to the directory called "kubernetes"
      - Exectute the command: ```sudo kompose convert ```
      - Then: ``` kubectl create –f db-deployment.yaml,db-service.yaml,php-deployment.yaml,php-service.yaml```
      - Finally: ``` minikube service php –url``` , to get the url from which you could connect to the app
      

