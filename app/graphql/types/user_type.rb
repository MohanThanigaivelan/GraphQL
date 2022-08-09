class Types::UserType < Types::BaseObject

    field :id, ID, null: true
    field :email, String, null: true
    field :is_super_admin, Boolean, null: true

end
