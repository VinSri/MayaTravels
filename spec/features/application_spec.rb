require 'rails_helper'

RSpec.describe 'application.html.erb', type: :view do
  context "Topbar" do
    before do
      render :partial => "layouts/topbar"
    end
    it "says the company caption" do
      expect(rendered).to have_content("Shri Maya Travels - Forever Success")
    end
    it "should have a section tag top section class" do
      expect(rendered).to have_css("section.top_sec")
    end
  end
  context "Header" do
    before do
      render :partial => "layouts/header"
    end
    it "should have the logo image" do
      expect(rendered).to have_css("img[alt*='Shri Maya Logo']")
    end
    it "should have the nav tag for main navigations" do
      expect(rendered).to have_css("nav.navbar")
    end
  end
  context "Footer" do
    before do
      render :partial => "layouts/footer"
    end
    it "should have a copyright 2016" do
      expect(rendered).to have_content("Copyright 2016")
    end
    it "should have a copyright footer section" do
      expect(rendered).to have_css("div.footer_copy_right")
    end
  end
end