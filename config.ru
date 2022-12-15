# This file is used by Rack-based servers to start the application.
#\ -p 8080 -o 0.0.0.0

require_relative "config/environment"

run Rails.application
Rails.application.load_server
