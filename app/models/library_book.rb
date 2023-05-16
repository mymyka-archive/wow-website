class LibraryBook < ActiveRecord::Base
  self.table_name = "library_book"
  self.primary_key = :id

  belongs_to :category,
    class_name: "LibraryCategory",
    foreign_key: :category_id,
    primary_key: :id

end
