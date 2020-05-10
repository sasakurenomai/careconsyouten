require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Naosu
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end

    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'
    Time::DATE_FORMATS[:datetime_jp] = '%Y年 %m月 %d日 %H時 %M分'

    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag}
  end
end
