class AuthUserUserPermission < ActiveRecord::Base
  self.table_name = "auth_user_user_permissions"
  self.primary_key = :id

  belongs_to :permission,
    class_name: "AuthPermission",
    foreign_key: :permission_id,
    primary_key: :id

  belongs_to :user,
    class_name: "AuthUser",
    foreign_key: :user_id,
    primary_key: :id

end
