module RailsAppVersioning
  module File
    def write(version="0.0.0")
      ::File.open(RailsAppVersioning.version_file, 'w') {|f| f.write(version) }
    end
    
    def read
      IO.read(RailsAppVersioning.version_file) rescue nil
    end
  end
end