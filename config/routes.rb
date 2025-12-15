Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  devise_for :users,
    controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions'
    },
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "/graphql", to: "graphql#execute"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
