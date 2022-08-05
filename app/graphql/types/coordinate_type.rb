class Types::CoordinateType < Types::BaseObject
    field :latitude, Integer, null: false
    field :longitude, Integer, null: false

    def latitude
        object.first
    end

    def longitude
        object.last
    end

end
