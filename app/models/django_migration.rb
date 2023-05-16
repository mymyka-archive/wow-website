class DjangoMigration < ActiveRecord::Base
  self.table_name = "django_migrations"
  self.primary_key = :id

end
