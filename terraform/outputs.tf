output "public_ip" {
  description = "Public IP address of the Azure VM"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "ssh_command" {
  description = "Command to SSH into the VM"
  value       = "ssh -i ./ssh-keys/terraform-azure azureuser@${azurerm_public_ip.public_ip.ip_address}"
}

output "application_url" {
  description = "Streamlit application URL"
  value       = "http://${azurerm_public_ip.public_ip.ip_address}:8501"
}