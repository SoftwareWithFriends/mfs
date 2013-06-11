module Mfs
  class Entry
    include Mongoid::Document
    include Mongoid::Timestamps

    field :data
    field :filename, type: String
    field :filepath

    validates_presence_of :filename
    before_create :calculate_metadata

    def calculate_metadata
      self.filepath = File.realdirpath(filename)
      self.filename = File.basename(filename)
    end

  end
end