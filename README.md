# SwaggerUiEngine

Swagger UI mountable engine for rails.

## Usage

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'swagger_ui_engine'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install swagger_ui_engine
```

Then mount `SwaggerUiEngine::Engine`

```ruby:config/routes.rb
Rails.application.routes.draw do
  mount SwaggerUiEngine::Engine => "/swagger_ui_engine"
  # ...
end
```


## Configuration


### Specify swagger ui dist version & document file path

```ruby:config/initializers/swagger_ui_engine.rb
SwaggerUiEngine.configure do |config|
  config.swagger_ui_version = "3.25.0" // default is `nil` to use latest version.
  config.openapi_file_path = Rails.root.join("docs/openapi.yaml")
end
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
