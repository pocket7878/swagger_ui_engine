require 'swagger_ui_engine/config'
require 'swagger_ui_engine/view_helper'

module SwaggerUiEngine
  def self.config
    @config ||= SwaggerUiEngine::Config.new
  end

  def self.configure(&block)
    yield(config) if block_given?
  end

  class Engine < ::Rails::Engine
    isolate_namespace SwaggerUiEngine

    initializer 'swagger_ui_engine.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include SwaggerUiEngine::ViewHelper
      end
    end

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
