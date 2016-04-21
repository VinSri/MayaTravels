require 'rails_helper'

describe "top bar" do
  before(:each) {visit root_path}

  it 'has the necessary div styles' do
    expect(page).to have_css("section.top_sec")
    expect(page).to have_css("div.container")
    expect(page).to have_css("div.col-xs-12.col-md-6.top_lft")
    expect(page).to have_css("div.soc_ico")
    expect(page).to have_css("div.inf_txt")
    expect(page).to have_css("i.fa-phone-square")
    expect(page).to have_css("div.submit_prop")
  end

  it 'display Shri Maya travels caption' do
    expect(page).to have_content('Shri Maya Travels - Forever Success')
  end

  it 'call experts contact number' do
    expect(page).to have_content('Call Our Travel Experts')
    expect(page).to have_content('+91 7500113007 / 9897874915')
  end

  it 'display the free callback link' do
    expect(page).to have_css("a", :text => "Free Callback")
  end

end