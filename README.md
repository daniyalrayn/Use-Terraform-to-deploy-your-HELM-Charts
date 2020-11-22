# Use-Terraform-to-deploy-your-HELM-Charts on your K8S Cluster  
How to use Helm provider from Terraform to install Helm Charts on your EKS Cluster

You need to have the below to run Terraform to Deploy your Helm Charts. If you dont have an active EKS, Terraform and Helm on your VM. Follow the below steps. 

Setting up a workstation in AWS
From which we can create and interact with EKS cluster.

(1) Launch an EC2 instance as a workstation
Provisioning an EC2 instance in AWS as a workstation to manage all AWS resources including EKS.
Login to the AWS console and launch an Amazon Linux EC2, ssh login then configure AWS CLI, then we can start to install kubectl and eksctl.

(2) Install kubectl
$curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
$chmod +x ./kubectl
$sudo mv ./kubectl /usr/local/bin/kubectl
Verify that kubectl is installed correctly.

$ kubectl version
Client Version: version.Info{Major:”1", Minor:”13", GitVersion:”v1.13.1", GitCommit:”eec55b9ba98609a46fee712359c7b5b365bdd920", GitTreeState:”clean”, BuildDate:”2018–12–13T10:39:04Z”, GoVersion:”go1.11.2", Compiler:”gc”, Platform:”linux/amd64"}

(3) Download aws-iam-authenticator
$ curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.11.5/2018-12-06/bin/linux/amd64/aws-iam-authenticator
$ chmod +x ./aws-iam-authenticator
$ mkdir bin
$ cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$HOME/bin:$PATH

(4) Install eksctl
$ curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
$ sudo mv /tmp/eksctl /usr/local/bin

The workstation is ready after above steps.
