class Meaning < ActiveRecord::Base
  self.table_name = "meaning"
  self.primary_key = :id

  belongs_to :word,
    class_name: "Word",
    foreign_key: :word_id,
    primary_key: :id

end
