class LibraryMusic < ActiveRecord::Base
  self.table_name = "library_music"
  self.primary_key = :id

  belongs_to :category,
    class_name: "LibraryCategory",
    foreign_key: :category_id,
    primary_key: :id

end
