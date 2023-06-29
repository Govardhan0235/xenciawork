/* output "availability_set_name" {
  value = {
    for k, availability_set in azurerm_availability_set.infinite-availability-set : k => availability_set.name
  }
}

output "availability_set_id" {
  value = {
    for k, availability_set in azurerm_availability_set.infinite-availability-set : k => availability_set.id
  }
}
 */