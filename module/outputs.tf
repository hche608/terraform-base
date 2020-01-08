output "database_id" {
  value = data.heroku_addon.database.id
}

output "database_name" {
  value = data.heroku_addon.database.name
}

output "database_config_vars" {
  value = data.heroku_addon.database.config_vars
}