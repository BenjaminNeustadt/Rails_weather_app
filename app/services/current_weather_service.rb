# frozen_string_literal: true

class CurrentWeatherService
  BASE_URL = "https://api.openweathermap.org/data/2.5/weather"
  API_KEY  = "cda8498c63a04d3ca45e4797a9419edb"

  def initialize(latitude:, longtitude:, units: "metric")
    @latitude = latitude
    @longtitude = longtitude
    @units = units
  end

  def call
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
  end

  private 

  attr_reader :latitude, :longtitude, :units

  def uri
    return @uri if defined?(@uri)

    @uri = URI(BASE_URL)
    params = { lat: latitude, lon: longtitude, units: units, appid: API_KEY }
    @uri.query = URI.encode_www_form(params)
    @uri
  end
end