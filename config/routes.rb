SwaggerUiEngine::Engine.routes.draw do
  get '/ui', to: 'uis#index'
  get '/openapi', to: 'uis#openapi', as: :openapi_file
end
