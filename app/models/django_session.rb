class DjangoSession < ActiveRecord::Base
  self.table_name = "django_session"
  self.primary_key = :session_key

end
