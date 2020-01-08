# Create a new Heroku app
data "heroku_app" "application" {
  name = var.app_name
}

# Create a database, and configure the app to use it
data "heroku_addon" "database" {
  name = format("%s-db", data.heroku_app.application.name)
}