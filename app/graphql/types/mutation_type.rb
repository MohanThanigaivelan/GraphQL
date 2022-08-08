module Types
  class MutationType < Types::BaseObject

    field :create_author, Types::AuthorType , mutation: Mutations::CreateAuthor

    field :update_author,  mutation: Mutations::UpdateAuthor

    field :delete_author, Boolean, null: true, description: "Delete" do
      argument :id, ID, required: true
    end

    def delete_author(id: )
      Author.where(id: id).destroy_all
      return true
    end



  end
end
