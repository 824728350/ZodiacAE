variable "name" {
  description = "The name of the PostgreSQL server"
  type = string
    default = "b2p2hold"

}

variable "resource_group" {
    description = "The resource group properties"
    type = object({
        name = string,
        location = string 
    })
  
    default = null

}

variable "database_name" {
  description = "The name of the database to create"
  type = string
    default = "jwtlhold"

}

variable "virtual_network" {
  description = "values for the virtual network"
  type = object({
    name = string,
    id = string
  })
    default = null

}

variable "subnet_prefix" {
  description = "The address prefix to use for the PostgreSQL subnet"
    default = "zodiac"

  type = string
}