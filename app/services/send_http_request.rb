# frozen_string_literal: true

class SendHttpRequest
  def self.send(url_string, payload_string)
    url = URI.parse(url_string)
    request = Net::HTTP::Get.new(url.path)
    request['Content-Type'] = 'application/json'
    request.body = payload_string.to_json

    response = Net::HTTP.start(url.host, url.port, use_ssl: url.scheme == 'https') do |http|
      http.request(request)
    end

    return JSON.parse(response.body)
  end
end
