require 'rails_helper'

describe "footer" do
  before(:each) {visit root_path}

  context "copyright section" do
    it 'has the copyright css style' do
      expect(page).to have_css("div.footer_copy_right")   
    end

    it 'has the copyright message' do
      expect(page).to have_content("Copyright 2016. All Rights Reserved by Shri Maya Travels Ltd.")
    end

    it 'has the Designed and Developed message' do
      expect(page).to have_content("Designed and Developed by")
    end

    it 'has the Syseris link' do
      expect(page).to have_link("Syseris", :href=>"http://syseris.com/")
    end
  end
end