class AuthUser < ActiveRecord::Base
  self.table_name = "auth_user"
  self.primary_key = :id

end
