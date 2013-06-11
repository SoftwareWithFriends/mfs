require 'spec_helper'

module Mfs
  describe "Integration" do
    before do
      Loader.load_directory('spec/fixtures/files') do |filename|
        {even: (filename[-1].to_i % 2 == 0) ? true : false}
      end
    end

    describe "find even entries" do
      before do
        @entries = Entry.where(even: true)
      end
      subject { @entries }
      its(:count) { should eq 5 }

    end

    describe "find odd entries" do
      before do
        @entries = Entry.where(even: false)
      end
      subject { @entries }
      its(:count) { should eq 6 }
    end
  end
end
