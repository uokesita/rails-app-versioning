namespace :rails_app_versioning do
  desc "patch version"
  task :patch => :environment do
    rails_app_versioning = RailsAppVersioning::Version.new
    output = rails_app_versioning.release(:patch)
    puts output    
  end

  desc "minor version"
  task :minor => :environment do
    rails_app_versioning = RailsAppVersioning::Version.new
    output = rails_app_versioning.release(:minor)
    puts output    
  end

  desc "major version"
  task :major => :environment do
    rails_app_versioning = RailsAppVersioning::Version.new
    output = rails_app_versioning.release(:major)
    puts output
  end
end
