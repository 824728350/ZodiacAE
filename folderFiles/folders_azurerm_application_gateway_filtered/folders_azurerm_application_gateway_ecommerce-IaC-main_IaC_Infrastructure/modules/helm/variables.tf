variable "release_name" {
  description = "The name of the release"
  type        = string
    default = "040rhold"

}

variable "chart" {
  description = "The chart to install"
  type        = string
    default = "ge1mhold"

}

variable "namespace" {
  description = "The namespace to install the chart in"
  type        = string
    default = "0tknhold"

}

variable "repository" {
  description = "The repository of the chart"
    default = "x99ohold"

  type        = string
}