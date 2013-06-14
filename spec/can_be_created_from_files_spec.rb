require 'spec_helper'

module Mfs

  describe CanBeCreatedFromFiles do

    class FileHolder
      extend CanBeCreatedFromFiles

      attr_reader :hash

      def self.create(params)
        new(params)
      end

      def initialize(initialization_hash)
        @hash = initialization_hash
      end

    end


    describe "can load files from directory" do
      before do
        @file_holders = FileHolder.load_directory('spec/fixtures/files') do |filename|
          {additional_field: filename}
        end
      end
      subject { @file_holders }
      its(:size) { should eq 11 }

      specify "they should all have additional_field" do
        @file_holders.reject { |file| file.hash[:additional_field].match /#{file.hash[:filename]}/ }.should be_empty
      end

    end

    describe "can load file" do
      before do
        @file_holder = FileHolder.load_file('spec/fixtures/files/file1')
      end
      subject { @file_holder }
      its(:hash) { should have_key :data }
      it "should have file contents" do
        @file_holder.hash[:data].should eq 'This is File One'
      end
    end
  end

end
