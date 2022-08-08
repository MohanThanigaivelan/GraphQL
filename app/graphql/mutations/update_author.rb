class Mutations::UpdateAuthor < GraphQL::Schema::Mutation
    
    null false
    argument :author, Types::AuthorInputType ,required: false

    def resolve(author: )
        existing_author = Author.where(id: author[:id]).first
        existing_author.update author.to_h  
        existing_author 
    end
end

