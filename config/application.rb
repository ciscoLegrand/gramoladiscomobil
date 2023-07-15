require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Gramoladiscomobil
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults Rails::VERSION::STRING.to_f

    config.exceptions_app = ->(env) { ErrorsController.action(:show).call(env) }

    config.time_zone = 'Europe/Madrid'

    config.i18n.available_locales = %i[es en]
    config.i18n.default_locale = :es
    config.i18n.fallbacks = true
    config.generators do |gen|
      gen.assets            false
      gen.helper            false
      gen.test_framework    :rspec
      gen.jbuilder          false
      gen.orm               :active_record, primary_key_type: :uuid
      gen.system_tests      false
    end

    config.active_storage.variant_processor = :vips
    # to use component previews in tests
    config.view_component.preview_paths << Rails.root.join('/spec/components/previews')
  end
end
