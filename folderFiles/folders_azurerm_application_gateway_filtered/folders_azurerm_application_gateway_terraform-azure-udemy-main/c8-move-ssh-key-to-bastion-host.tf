# # create a null resource for provisioners
# resource "null_resource" "name" {
#   depends_on = [azurerm_linux_virtual_machine.bastion_host_linuxvm]
#   # connection block for provisioners to access and connect to azure vm instance
#   connection {
#     type        = "ssh"
#     host        = azurerm_linux_virtual_machine.bastion_host_linuxvm.public_ip_address
#     user        = azurerm_linux_virtual_machine.bastion_host_linuxvm.admin_username
#     private_key ="-----BEGIN OPENSSH PRIVATE KEY-----b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAABFwAAAAdzc2gtcnNhAAAAAwEAAQAAAQEA03DWQV3mvAwhWgl1Lh9MVFgWuc79mEVwSkp0QGiHMBdn0ScRXRvz4JyeB6ANdInfHUiC1Urlyy46fbE7ajYLZxKysv/s0z13G+rHh3fzMnGW+dfNY2CCMiwrmK39mR7puD5TEN0UFHpW42Ncnv5OeK5oHcfYJis78tL9KMkXdV0mrdJr71ZtUHrFXLuKldLsgR4Gvl2JupmISQLnDS28AfSVP4BwnOMonXJFsxbBcq6LGbZmxIuQvIVzaIySHjATBaGkEjuHmR7TYZV6bHEbfPlsz6ktVf+rd8Gv143RY2TxxUDo0zwW+XWWheRYdpcUQzPKGD8Zrlayz5bHHahiawAAA8AE4vH1BOLx9QAAAAdzc2gtcnNhAAABAQDTcNZBXea8DCFaCXUuH0xUWBa5zv2YRXBKSnRAaIcwF2fRJxFdG/PgnJ4HoA10id8dSILVSuXLLjp9sTtqNgtnErKy/+zPXcb6seHd/MycZb5181jYIIyLCuYrf2ZHum4PlMQ3RQUelbjY1ye/k54rmgdx9gmKzvy0v0oyRd1XSat0mvvVm1QesVcu4qV0uyBHga+XYm6mYhJAucNLbwB9JU/gHCc4yidckWzFsFyrosZtmbEi5C8hXNojJIeMBMFoaQSO4eZHtNhlXpscRt8+WzPqS1V/6t3wa/XjdFjZPHFQOjTPBb5dZaF5Fh2lxRDM8oYPxmuVrLPlscdqGJrAAAAAwEAAQAAAQBg6GV6niQDaffbQVxwoC2mtpzr2l/Ga4T0t70iTAYx13hgluxRZV9YQc/4JLYmBI666CH2yhYaEn0CYLmfi1ecjShT/BI6GwC9TdTXVPWk2ATfS7Y55uClSDNPDeeeR1nNdNszbnAmlo++NiscP+gNTbowdAiwLb6TI3qeN9RFmG9xrTw72za5JfwapFLHHmrLWGk2VGew0S/oJyQlS7yqgfZO/vbtjFbryFJ71lYZw5F9fJG90lOeLJQlpU1e++0KZgexysgpPb+TlWRhIy4hHTswiox/ST+svFLduY0m8wSHb9vFDIXIwCg7yu9ijIGDD/dJ8w86ToxaZqvdEYqZAAAAgQDMqQ2A0sQJlDkn0DNo1onrb4RXzXgVygT6GwGHmW5Uq86FBR8j2VJmAx61pKEJWGWP/7kW84F6+hMlSVlK4oPtPhhSkIqRxtlDToppWU8xCSHmfw9SZl4DDlYaY7gwVeUWKVQCC+QPl+0/YRgXLMM3iARTe4l+DEckerzUBFEYZwAAAIEA9VvDlA9Er8wkAfQGY2xqN5xtKeCvahlxpJBEaXcIeqq4doOmXGprDaiqJWGkxNp2JAA66HQBeZAuft+AI/yRZrbsnOP6k/9GrJ/TC2gAqSrptSwRAAnXr8AjhiPjEICVU8VxWa2+4XfZAr2gkAGQdD/54CA70HpFQijLdAqPbW8AAACBANyce2QD52k5IKQotMQQKan+ofFs2YwSbwX7AjXazm7+1K4dE/DkKMD6zih7TWhDN23Qp4U2+pi3QGAiUbQcGl+DmWNDRFXk+3i1ob2M9iip7+hXI3CEtQ/W+1inVLd0mde2QWntld3wxEszzecB3/2WnadN038598OAmEDly5TFAAAABm5vbmFtZQECAwQ=-----END OPENSSH PRIVATE KEY-----"
#   }

#   # file provisioner: copies terraform-azure.pem file to /tmp/terraform-azure.pem on bastion host
#   provisioner "file" {
#     source      = "ssh-keys/terraform-azure.pem"
#     destination = "/tmp/terraform-azure.pem"
#   }

#   # remote-exec provisioner: used to remotely execute commands on bastion host to change permmisions of terraform-azure.pem file
#   provisioner "remote-exec" {
#     inline = [
#       "sudo chmod 400 /tmp/terraform-azure.pem"
#     ]
#   }
# }

# # createion time provsioners: by default they are created during resource creations (terraform apply)
# # destroy time provisioners: executed during "terraform destroy" command (when = destroy)