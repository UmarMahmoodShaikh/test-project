module Types
  class MutationType < Types::BaseObject
    field :destroy_post, mutation: Mutations::DestroyPost
    field :update_post, mutation: Mutations::UpdatePost
    field :create_post, mutation: Mutations::CreatePost
    # TODO: remove me
  
    
   
  end
end
