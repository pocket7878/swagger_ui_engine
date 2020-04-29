module SwaggerUiEngine
  class Config
    attr_accessor :swagger_ui_version
    attr_accessor :openapi_file_path

    def initialize
      # default is nil to use latest
      @swagger_ui_version = nil
      @openapi_file_path = Rails.root.join("docs/openapi.yaml")
    end
  end
end
