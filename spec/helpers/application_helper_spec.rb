require 'rails_helper'

RSpec.describe ApplicationHelper, :type => :helper do
  describe "#create_link_to" do
    context "links to a navigation using its name and add active class" do
      let(:text) { "Home" }

      it "should have the 'Home' text" do
        expect(helper.create_active_link(text, root_path)).to include("Home")
      end

      it "should have the root_path" do
        expect(helper.create_active_link(text, root_path)).to include(root_path)
      end
    end
  end
end