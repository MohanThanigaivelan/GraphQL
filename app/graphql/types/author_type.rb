class Types::AuthorType < Types::BaseObject
    description 'One author'

    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :dob, String, null: false
    field :is_alive, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601Date, null: true
    field :age , Integer , null: true
    def age
      (Date.today - Date.parse(object.dob))/365
    end

    field :coordinates, Types::CoordinateType,  null: false

    field :publication_years, [Integer], null: false


end
