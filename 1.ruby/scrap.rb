require 'httparty'
require 'nokogiri'

url = "http://www.kma.go.kr/weather/main.jsp"

response = HTTParty.get(url)
text = Nokogiri::HTML(response.body)

weather = text.css('#weather > dl.po_incheon > dd.temp')
puts weather.text