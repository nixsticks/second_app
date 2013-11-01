require 'spec_helper'

describe "Morning Pages" do

  describe "Home page" do

  	before do
  		visit '/morning_pages/home'
  	end

  	it "should have the content 'Morning Pages'" do
  		expect(page).to have_content('Morning Pages')
  	end

  	it "should have the right title" do
  		expect(page).to have_title('Morning Pages | Home')
  	end
  end

  describe "Help page" do

  	before do
  		visit '/morning_pages/help'
  	end

  	it "should have the content 'Help'" do
  		expect(page).to have_content('Help')
  	end

  	it "should have the right title" do
  		expect(page).to have_title('Morning Pages | Help')
  	end
  end

  describe "About page" do

  	before do
  		visit '/morning_pages/about'
  	end

  	it "should have the content 'About'" do
  		expect(page).to have_content('About')
  	end

  	it "should have the right title" do
  		expect(page).to have_title('Morning Pages | About')
  	end
  end
end
