require 'spec_helper'

module Mfs

  describe Loader do

    describe "can load files from directory" do
      before do
        @files = Loader.load_directory('spec/fixtures/files') do |filename|
          {additional_field: filename}
        end
      end
      subject { @files }
      its(:size) { should eq 11 }

      specify "they should all have additional_field" do
        @files.reject { |file| file.additional_field.match /#{file.filename}/ }.should be_empty
      end

    end

    describe "can load file" do
      before do
        @file = Loader.load_file('spec/fixtures/files/file1')
      end
      subject { @file }
      its(:data) { should eq 'This is File One' }
    end
  end

end
