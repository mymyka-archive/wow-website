# frozen_string_literal: true

require 'net/http'
require 'json'

class DictionaryModule
  @@url = URI.parse('https://processing-module.onrender.com/api/process')

  def self.get_info_about(word_list)
    url = @@url
    request = Net::HTTP::Get.new(url.path)
    request['Content-Type'] = 'application/json'
    payload = {
      "word_list" => word_list
    }
    json_payload = payload.to_json
    request.body = json_payload

    response = Net::HTTP.start(url.host, url.port, use_ssl: url.scheme == 'https') do |http|
      http.request(request)
    end

    return JSON.parse(response.body)
  end
end
