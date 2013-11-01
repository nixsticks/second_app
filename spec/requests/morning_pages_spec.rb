require 'spec_helper'

describe "Morning Pages" do

  describe "Home page" do

  	it "should have the content 'Morning Pages'" do
  		visit '/morning_pages/home'
  		expect(page).to have_content('Morning Pages')
  	end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  		visit '/morning_pages/help'
  		expect(page).to have_content('Help')
  	end
  end

  describe "About page" do

  	it "should have the content 'About'" do
  		visit '/morning_pages/about'
  		expect(page).to have_content('About')
  	end
  end
end
