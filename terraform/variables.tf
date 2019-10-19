variable "do_token" {

}

variable "prefix" {

}

variable "pvt_key" {
  default = "~/.ssh/dbt_dev"
}

variable "dropletname" {
  default = "webserver"
}

variable "number_of_servers" {
  default = "1"
}

variable "repo" {
	default="https://github.com/detroitblacktech/webportal.git"
}

variable "branch" {
	default="dev"
}