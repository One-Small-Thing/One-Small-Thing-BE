Rails.application.routes.draw do
  get 'render/index'
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end
  post "/graphql", to: "graphql#execute"
  root 'render#index'
end
