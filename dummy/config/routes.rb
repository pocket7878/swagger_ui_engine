Rails.application.routes.draw do
  mount SwaggerUiEngine::Engine => "/swagger_ui_engine"
end
