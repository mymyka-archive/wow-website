class LibraryGame < ActiveRecord::Base
  self.table_name = "library_games"
  self.primary_key = :id

  belongs_to :category,
    class_name: "LibraryCategory",
    foreign_key: :category_id,
    primary_key: :id

end
