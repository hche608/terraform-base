# Create a new Heroku app
resource "heroku_app" "application" {
  name   = var.application_name
  region = var.region
}

# Create a database, and configure the app to use it
resource "heroku_addon" "database" {
  app  = heroku_app.application.name
  plan = "heroku-postgresql:hobby-dev"
  name = format("%s-db", heroku_app.application.name)
}