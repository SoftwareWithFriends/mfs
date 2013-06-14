module Mfs
  module CanBeCreatedFromFiles

    def load_directory(path)
      Dir.glob("#{path}/**/*").map do |file|
        next if File.directory?(file)

        additional_metadata = block_given? ? yield(file) : {}

        load_file(file, additional_metadata)
      end.compact
    end

    def load_file(filename, additional_metadata = {})
      create(
          additional_metadata.merge(
              data: File.read(filename),
              filename: filename
          )
      )
    end

  end
end