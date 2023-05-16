# frozen_string_literal: true

class VocabularyModule
  # @param (int, list[String])
  def self.get_new_words_for_user(user_id, word_list)

  end

  # @param (int, list[String])
  def self.add_words_to_user_vocabulary(user_id, word_list)

  end


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
