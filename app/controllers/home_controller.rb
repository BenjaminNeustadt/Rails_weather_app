# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    @data = CurrentWeatherService.new(latitude: "25.04776",longtitude:"121.53185", units:"metric").call
  end
end

 