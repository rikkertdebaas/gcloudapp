require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gcloudapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
#
#private
#config.action_mailer.smpt_settings = {
#  addres: "smtp.gmail.com",
#  port: 587,
#  domain: "www.cesarwise.nl",
#  user_name: "Richard.felius@gmail.com",
#  password: "Richard@1994",
#  authentication: :plain,
#  enable_starttls_auto: true,
#}
#config.action_mailer.default_url_options = {
#  host: "cesarwise.nl"
#}
#end