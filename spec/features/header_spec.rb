require 'rails_helper'

describe "Home Page - logo and navigations" do
  before(:each) {visit root_path}

  context "Logo" do
    it "should have a logo message" do
      expect(page).to have_css("img[alt*='Shri Maya Logo']")
    end

    it "link should redirect to root path" do
      expect(page).to have_link('Shri Maya Logo', href: '/')
    end
  end

  context "Main Navigations" do
    it "should have the link 'Home'" do
      expect(page).to have_link('Home', href: '/')
    end
    it "should have the link 'About'" do
      expect(page).to have_link('About', href: '#')
    end

    it "should have the link 'Destinations'" do
      expect(page).to have_link('Destinations', href: '#')
    end

    it "should have the link 'Offers'" do
      expect(page).to have_link('Offers', href: '#')
    end

    it "should have the link 'Contact'" do
      expect(page).to have_link('Contact', href: '#')
    end
  end
end