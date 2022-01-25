require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Testing
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # original version is the one bellow
    # config.load_defaults 6.0
    # added version to try to auto load modules
    config.eager_load_paths += %W(#{config.root}/lib)
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
