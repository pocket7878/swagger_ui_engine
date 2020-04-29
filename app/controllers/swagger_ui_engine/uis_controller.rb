require_dependency "swagger_ui_engine/application_controller"

module SwaggerUiEngine
  class UisController < ApplicationController
    def index
    end

    def openapi
      render file: SwaggerUiEngine.config.openapi_file_path
    end
  end
end
