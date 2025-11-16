require "json"
require "http/client"

class NameDay
  API_PATH = "api/V2"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://nameday.abalin.net")
    @http_client = HTTP::Client.new(uri)
  end

  def get_today_namedays() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/today", headers: @headers).body)
  end

  def get_date_namedays(day : Int32, month : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/date?day=#{day}&month=#{month}", headers: @headers).body)
  end
end
