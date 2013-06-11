module Mfs
  module Loader

    def self.load_directory(path)
      Dir.glob("#{path}/**/*").map do |file|
        unless File.directory?(file)
          additional_metadata = block_given? ? yield(file) : {}
          load_file(file, additional_metadata)
        end
      end.compact!
    end

    def self.load_file(filename, additional_metadata = {})

      Entry.create(
          additional_metadata.merge(
              data: File.read(filename),
              filename: filename
          )
      )
    end

  end
end