# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    url = "https://api.openweathermap.org/data/2.5/weather?lat=25.04776&lon=121.53185&units=metric&appid=cda8498c63a04d3ca45e4797a9419edb"
    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @data = JSON.parse(res.body)
  end
end

 