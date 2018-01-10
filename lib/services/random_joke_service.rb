require "httparty"
require "json"
require 'nokogiri'
require 'open-uri'

class RandomJoke
  include HTTParty

  headers 'Accept' => 'application/json'
  base_uri 'https://icanhazdadjoke.com'

  def initialize
    @json = JSON.parse(self.class.get("/").body)
    # @block = HTTParty.get('https://icanhazdadjoke.com/', headers: {"User-Agent" => 'a'})
    # html_data = open('https://icanhazdadjoke.com/').read
    # @response=  Nokogiri::HTML(html_data)

  end

  def joke
    # @block[662..720]
    @json['joke']
  end

  def id
    @json['id']
  end

  def status
    @json['status']
  end

end
