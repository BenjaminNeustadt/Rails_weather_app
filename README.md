# Weather API

## Resource Notes

We use the OpenWeather API:
https://openweathermap.org/weather-conditions

And are considering using the OpenWeather geolocator:
https://openweathermap.org/api/geocoding-api

To get returned json (parse) in the browser, just for testing what sort
of data we can manipulate, we can try:

https://api.openweathermap.org/geo/1.0/direct?q=Alaska&appid=cda8498c63a04d3ca45e4797a9419edb

Going beyond the tutorial, we tried to render a form that would render
dynamically the users input an doutput the weather for the given
location...

We encountered an issue in doing so, as we were not able to pass the
params correctly. We were able to do so after som etrial and error, and
using these specifically:

https://stackoverflow.com/questions/57800642/passing-user-input-in-link-to-params

https://dev.to/ionabrabender/params-and-rails-fh6

https://www.rubyguides.com/2019/06/rails-params/

https://www.youtube.com/watch?v=y57OnWV6dRE

https://api.rubyonrails.org/v6.1.3/classes/ActionController/StrongParameters.html

https://backend.turing.edu/module2/lessons/form_with

## Program Notes

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
