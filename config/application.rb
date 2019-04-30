require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DemoApp
  class Application < Rails::Application
    config.load_defaults 5.2

    config.action_mailer.default_url_options = {host: "localhost:3000"}
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address:              "smtp.gmail.com",
      port:                 587,
      domain:               "gmail.com",
      user_name:            "your email",
      password:             "your email password",
      authentication:       "plain",
      enable_starttls_auto: true }
  end
end
