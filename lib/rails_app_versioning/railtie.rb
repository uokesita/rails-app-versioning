require 'rails'
require 'rails_app_versioning'

module RailsAppVersioning
  class Railtie < Rails::Railtie
    initializer "set_module_var" do
      RailsAppVersioning.version_file = "#{Rails.root}/VERSION"
    end
    
    rake_tasks do
      load "rails_app_versioning/railties/rails_app_versioning.rake"
    end
  end
end