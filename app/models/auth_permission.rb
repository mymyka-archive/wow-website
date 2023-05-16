class AuthPermission < ActiveRecord::Base
  self.table_name = "auth_permission"
  self.primary_key = :id

  belongs_to :content_type,
    class_name: "DjangoContentType",
    foreign_key: :content_type_id,
    primary_key: :id

end
