module Mfs
  module Loader

    def self.load(path)
      Dir.glob("#{path}/**")
    end

  end
end