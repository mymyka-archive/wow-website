class DjangoAdminLog < ActiveRecord::Base
  self.table_name = "django_admin_log"
  self.primary_key = :id

  belongs_to :content_type,
    class_name: "DjangoContentType",
    foreign_key: :content_type_id,
    primary_key: :id

  belongs_to :user,
    class_name: "AuthUser",
    foreign_key: :user_id,
    primary_key: :id

end
