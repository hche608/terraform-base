output "database_id" {
  value = heroku_addon.database.id
}

output "database_name" {
  value = heroku_addon.database.name
}

output "database_config_vars" {
  value = heroku_addon.database.config_vars
}