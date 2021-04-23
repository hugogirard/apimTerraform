# Introduction

This Github show a simple CI/CD using Terraform to publish your APIs in Azure API Management.

# Workflow

For this Github I used Terraform Cloud but you can easily do the same using Azure DevOps or Github Action.

The folder structure contains the following.

<img src='https://github.com/hugogirard/apimTerraform/blob/main/files/structure.png?raw=true'/>

Now in Terraform Cloud I have three different workspace, one related to each folder structure.

<img src='https://github.com/hugogirard/apimTerraform/blob/main/files/tfc.png?raw=true' />

Doing so, all team can have their own CI/CD related to their APIs and the Ops Team can manage the Terraform related to the Azure Infrastructure.

# Security

Now to be sure to give least privilege to your Service Principal running your pipeline refer to this [article](https://docs.microsoft.com/en-us/azure/api-management/api-management-role-based-access-control).