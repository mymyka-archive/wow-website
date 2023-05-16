# frozen_string_literal: true

class VocabularyModule
  @base_url = 'https://vocabulary-module.onrender.com/api/vocabulary'

  def self.get_new_words_for_user(user_id, word_list)
    raise ArgumentError, 'user_id must be integer' unless user_id.is_a? Integer
    raise ArgumentError, 'word_list must be array of strings' unless word_list.is_a? Array

    # send request to vocabulary-module
    SendHttpRequest(@base_url + '/get_new_words_for_user', { user_id: user_id, word_list: word_list })
  end

  # @param (int, list[String])
  def self.add_words_to_user_vocabulary(user_id, word_list)
    raise ArgumentError, 'user_id must be integer' unless user_id.is_a? Integer
    raise ArgumentError, 'word_list must be array of strings' unless word_list.is_a? Array

    SendHttpRequest(@base_url + '/add_new_words_for_user', { user_id: user_id, word_list: word_list })
  end



end
