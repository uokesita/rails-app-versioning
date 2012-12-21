require 'rails_app_versioning/railtie'
require 'rails_app_versioning/git'
require 'rails_app_versioning/file'
require 'rails_app_versioning/version'
require 'systemu'

module RailsAppVersioning
  mattr_accessor :version_file
end