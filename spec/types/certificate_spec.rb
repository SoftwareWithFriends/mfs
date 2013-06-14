require 'spec_helper'
module Mfs
  module Types

    describe Certificate do
      describe "has correct filetype" do
        before do
          @certificate = Certificate.load_file("spec/fixtures/test.pem")
        end
        subject { @certificate}
        its(:filetype) {should eq "certificate"}
        its(:dn) { should eq "/C=US/ST=NJ/O=SoftwareWithFriends/CN=Tim"}
      end
    end
  end
end
