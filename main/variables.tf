variable "location" {
    type = string
    default = "eastus"
}

variable "resourceGroupName" {
    type = string
    default = "apim-demo-rg"
}

variable "apimName" {
    type = string
}

variable "publisherName" {
    type = string
}

variable "publisherEmail" {
    type = string
}

variable subscriptionId {
    type = string
}

variable clientId {
    type = string
}

variable clientSecret {
    type = string    
}

variable tenantID {
    type = string
}