class LearnController < ApplicationController
  def index
    @word_list = %w[fly blue move book sea sun]
    @word_cards = DictionaryModule.get_info_about(@word_list)
  end
end
