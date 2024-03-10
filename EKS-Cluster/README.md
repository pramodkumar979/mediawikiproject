# **MEDIAWIKI AWS Infrastructure**

### Production Deployment: 

This document aims at describing various components of the infrastructure for the **"mediawiki"** project. infrastructure is hosted the on AWS. The cloud infrastructure is for **production environment**.

### Components of architecture:

- S3 bucket to store terraform state file.
- VPC (subnets, Internet gateway, NAT gateway, Route tables (Public and Private), Subnets association, Security groups)
- ECR
- EKS cluster with public and private endpoint 
- Jenkins Server (EC2 instance)
- Load balancer for EKS

Setup has been done using **Terraform**. We keep terraform state file into AWS S3 bucket. To start with terraform create provider.tf and s3.tf files.

Before deploying terraform template we need to provide access key and secret key details.

### **VPC :**

------

Amazon VPC is a service that lets you launch AWS resources in a logically isolated virtual network that hold all our infrastructure. EKS cluster has specific requirement of VPC. 


Created a VPC with one public subnet and one private subnet. 

Cretaed a internet gateway, routing table. Route table assoictaed with igw, attached to public subnet.



### Amazon Elastic Container Service for Kubernetes (Amazon EKS) :

------

Amazon Elastic Container Service for Kubernetes (Amazon EKS) is a  managed service that makes it easy for users to run Kubernetes on AWS  without needing to stand up or maintain your own Kubernetes control  plane. Since Amazon EKS is a managed service it handles tasks such as  provisioning, upgrades, and patching.



#### How does Amazon EKS work?

![06_eks-intro.png](https://box.indianic.biz/index.php/s/aTcsj9zcdmTKEtS/download?path=%2FAWS%2Fpompah%2FEKS&files=06_eks-intro.png)



##### Steps to create Amazon EKS:

- Create an AWS IAM service role for EKS cluster 
- AWS VPC (**Already created with terraform**)
- Create Amazon EKS cluster
- Create an AWS IAM service role for worker nodes
- Launch and configure Amazon EKS worker nodes
- Deploy applications to the EKS
