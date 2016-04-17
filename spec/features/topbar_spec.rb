require 'rails_helper'

describe "top bar" do
  before(:each) {visit root_path}

  it 'display Shri Maya travels caption' do
    expect(page).to have_content('Shri Maya Travels - Explore Your Sprituality')
  end

  it 'call experts contact number' do
    expect(page).to have_content('Call Our Travel Experts')
    expect(page).to have_content('+91 7500113007 / 9897874915')
  end
end