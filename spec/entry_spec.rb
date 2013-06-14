require 'spec_helper'

module Mfs
  describe Entry do

    describe "needs a filename" do
      before do
        @entry = Entry.new
      end

      subject { @entry }

      it { should_not be_valid }
    end

    describe "has proper fields" do
      before do
        @entry = Entry.create(
            data: "HarderBetterFasterStronger",
            filename: "spec/fixtures/file1",
            filepath: "spec/fixtures",
            filetype: "fake"
        )
      end

      subject { @entry }

      it { should be_valid }
      its(:data) { should eq "HarderBetterFasterStronger" }
      its(:filename) { should eq "file1" }
      its(:filepath) { should match "spec/fixtures" }
      its(:filetype) { should eq "fake"}
      its(:created_at) { should be }
    end

  end
end