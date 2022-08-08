class Mutations::CreateAuthor < GraphQL::Schema::Mutation
   
    
    argument :author, Types::AuthorInputType ,required: false

    def resolve(author: )
        Author.create author.to_h
    end



end
