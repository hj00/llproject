require 'httparty'
require 'nokogiri'

url = "http://finance.naver.com/"
response = HTTParty.get(url) #HTTParty를 통해 url에 있는 정보를 가져온다.
text = Nokogiri::HTML(response.body) #Nokogiri를 통해 검색에 용이한 문서를 가져온다.
# Nokogiri::XML : xml parsing에 사용?
kospi = text.css('#KOSPI_now') #.css를 통해 셀렉터를 참조하여 가져온다.

puts kospi.text # .text를 쓰는 이유는 tag 안에 있는 내용을 가져오기 위해서.

