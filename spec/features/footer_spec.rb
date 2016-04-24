require 'rails_helper'

describe "footer" do
  before(:each) {visit root_path}

  context "footer_top" do
    it "have the footer_top css class" do
      expect(page).to have_css("div.footer_top")
    end

    it "have the foot_titel header(h2)" do
      expect(page).to have_css("h2.foot_title", text: 'About Shri Maya')
      expect(page).to have_css("h2.foot_title", text: 'Latest Tweets')
      expect(page).to have_css("h2.foot_title", text: 'Contact Info')
      expect(page).to have_css("h2.foot_title", text: 'Useful Links')
    end

    it "have the contact details: Address" do
      expect(page).to have_content("The Apex, 2 Sheriffs Orchard")
    end

    it "have the contact details: Phone" do
      expect(page).to have_content("Phone: +91 7500113007 / 9897874915")
    end

    it "have the contact details: Email" do
      expect(page).to have_content("Email: ask@shrimayatravels.com")
    end

    it "have the contact details: Company Registration" do
      expect(page).to have_content("Company Registration No: 07060437")
    end

    it "have the useful links" do
      expect(page).to have_link("Car Hire", href: "#")
      expect(page).to have_link("Why Book with Us", href: "#")
      expect(page).to have_link("Contact Us", href: "#")
      expect(page).to have_link("FAQS", href: "#")
      expect(page).to have_link("PR Agents", href: "#")
      expect(page).to have_link("Partners", href: "#")
      expect(page).to have_link("Privacy Policy", href: "#")
    end
  end

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