[![Code Climate](https://codeclimate.com/repos/534f96d46956804534004a9e/badges/329128e3245c4d61ce86/gpa.png)](https://codeclimate.com/repos/534f96d46956804534004a9e/feed)
[![Semaphore](https://semaphoreapp.com/api/v1/projects/0788db8e-457f-4a32-889f-164793c4ac16/154771/shields_badge.png)](https://semaphoreapp.com/reverse-retail/buddy)

# Hotwire Test (ToDos App)

## About this app

This app is a demo for managing a ToDo list with Ruby on Rails, using [Hotwire (Turbo)](https://hotwire.dev/) as a driver for reactivity in the UI/UX.
## Development

1. Clone this repo: `git clone git@github.com:CharlieIGG/hotwire_test.git`
2. Set up and run the application (see below)
3. Enjoy

### Setting up and running the app
#### Directly on your Host

This is NOT recommended. This application is fully dockerized, and therefore the Docker approach (see below) is preferred.

You will need the following Pre-Requisites:

1. Ruby 2.6.X or higher
2. Rails 6.1.3
3. PostgresSQL

Follow the standard approach for installing a Rails application using `bundle install`, `rails db:create`, `rails db:migrate`.

Finally start your Rails server with `rails s`
#### Using Docker

You will need the following Pre-Requisites:

 1. Docker Desktop

All you need to do is run `docker compose up`, which will automatically download all dependencies, start all necessary services, and setup the whole project for you (might take a couple of minutes).

Alternatively if you want to attach and have TTY on the main (Puma) HTTP server, you can run `docker compose run --service-ports web`, where `web` is the main Rails server service.

To log into the Rails console, you can always do `docker compose run web rails c`, or to do other commands (such as rake tasks) inside the container simply do `docker compose run web bash`.