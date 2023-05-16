class AuthGroupPermission < ActiveRecord::Base
  self.table_name = "auth_group_permissions"
  self.primary_key = :id

  belongs_to :permission,
    class_name: "AuthPermission",
    foreign_key: :permission_id,
    primary_key: :id

  belongs_to :group,
    class_name: "AuthGroup",
    foreign_key: :group_id,
    primary_key: :id

end
