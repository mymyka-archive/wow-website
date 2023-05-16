class DjangoContentType < ActiveRecord::Base
  self.table_name = "django_content_type"
  self.primary_key = :id

end
