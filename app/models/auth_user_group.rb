class AuthUserGroup < ActiveRecord::Base
  self.table_name = "auth_user_groups"
  self.primary_key = :id

  belongs_to :group,
    class_name: "AuthGroup",
    foreign_key: :group_id,
    primary_key: :id

  belongs_to :user,
    class_name: "AuthUser",
    foreign_key: :user_id,
    primary_key: :id

end
