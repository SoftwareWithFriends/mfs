require 'spec_helper'

module Mfs

  describe Loader do

    describe "can load files from directory" do
      before do
        @files = Loader.load('spec/fixtures/files')
      end

      subject { @files }

      its(:size) {should eq 10}

    end
  end

end
