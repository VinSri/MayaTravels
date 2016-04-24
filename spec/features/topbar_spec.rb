require 'rails_helper'

describe "top bar" do
  before(:each) {visit root_path}

  it "have the title" do
    expect(page.title).to include("Shri Maya Travels")
  end

  context "social icons" do
    it 'has the necessary div styles' do
      expect(page).to have_css("section.top_sec")
      expect(page).to have_css("div.container")
      expect(page).to have_css("div.col-xs-12.col-md-6.top_lft")
      expect(page).to have_css("div.soc_ico")     
    end

    it 'has the twitter icon' do
      expect(page).to have_css("i.fa-twitter")
    end

    it 'has the facebook icon' do
      expect(page).to have_css("i.fa-facebook")
    end
  end

  context "Site name and Caption" do
    it 'display Shri Maya travels caption' do
      expect(page).to have_content('Shri Maya Travels - Forever Success')
    end

    it 'should have the div class of info-text' do
      expect(page).to have_css("div.inf_txt")
    end
  end

  context "Call Travel Experts" do
    it 'should have call experts text' do
      expect(page).to have_content('Call Our Travel Experts')
    end

    it 'should have the phone icon' do
      expect(page).to have_css("i.fa-phone-square")
    end

    it 'should have call expert contact number' do
      expect(page).to have_content('+91 7500113007 / 9897874915')
    end
  end

  context "Free Callback Modal" do
    it 'display the free callback link' do
      expect(page).to have_css("a", :text => "Free Callback")
    end

    it 'should have the display prop css div' do
      expect(page).to have_css("div.submit_prop")
    end
  end

end