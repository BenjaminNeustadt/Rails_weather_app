# frozen_string_literal: true

require 'net/http'

class HomeController < ApplicationController
  def index

    @user_input = params[:q]

    if @user_input.nil?
      @user_input = "Alaska"
    end

    # request_station = "Alaska"
    url = "https://api.openweathermap.org/geo/1.0/direct?q=#{@user_input}&appid=cda8498c63a04d3ca45e4797a9419edb"

    uri = URI(url)
    res = Net::HTTP.get_response(uri)
    @station = JSON.parse(res.body)

    data = CurrentWeatherService.new(latitude: @station.first["lat"] ,longitude: @station.first["lon"], units:"metric").call
    @weather = Weather.new(data)
  end
end


