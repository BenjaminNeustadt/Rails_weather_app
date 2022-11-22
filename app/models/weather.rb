# frozen_string_literal: true

class Weather

  private

  def initialize(data)
    @data = data.with_indifferent_access
  end

  def current_weather
    @current_weather ||= data[:weather].first
  end

  public

  attr_reader :data

  def icon_url
    "http://openweathermap.org/img/wn/#{current_weather[:icon]}@2x.png"
  end

  def status
    current_weather[:main]
  end

  def description
    current_weather[:description]
  end

  def temperature
    data.dig(:main, :temp)
  end

  def city_name
    data[:name]
  end

end
