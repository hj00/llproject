require 'httparty'
require 'nokogiri'

url = "http://music.naver.com/"

response = HTTParty.get(url)
text = Nokogiri::HTML(response.body)

weather = text.css('#content > div._top100_container.top100_container.home_section.NE\3d a\3a t1k > div._top100_content.top100_content > div.tc_panel.tc_selected > table > tbody > tr._tracklist_move._track_dsc.list4 > td.name > span > a')
puts weather.text