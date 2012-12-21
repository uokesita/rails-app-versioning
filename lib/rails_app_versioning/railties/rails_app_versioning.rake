namespace :version do
  desc "bump the patch version (1.2.x)"
  task :patch => :environment do
    rails_app_versioning = RailsAppVersioning::Version.new
    output = rails_app_versioning.release(:patch)
    puts output
  end

  desc "bump the patch version (1.2.x)"
  task :revision => :patch

  desc "bump the minor version (1.x.0)"
  task :minor => :environment do
    rails_app_versioning = RailsAppVersioning::Version.new
    output = rails_app_versioning.release(:minor)
    puts output
  end

  desc "bump the major version (x.0.0)"
  task :major => :environment do
    rails_app_versioning = RailsAppVersioning::Version.new
    output = rails_app_versioning.release(:major)
    puts output
  end
end
