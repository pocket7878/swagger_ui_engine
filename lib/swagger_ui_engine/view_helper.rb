module SwaggerUiEngine
  module ViewHelper
    def swagger_ui_version
      if SwaggerUiEngine.config.swagger_ui_version.nil?
        ""
      else
        "@#{SwaggerUiEngine.config.swagger_ui_version}"
      end
    end
  end
end
