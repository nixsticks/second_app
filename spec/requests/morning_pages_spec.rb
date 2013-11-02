require 'spec_helper'

describe "Morning pages" do

  subject { page }

  shared_examples_for "all morning pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Morning Pages' }
    let(:page_title) { '' }

    it_should_behave_like "all morning pages"
    it { should_not have_title('| Home') }
  end

  describe "Help page" do

  	before { visit help_path }
    let(:heading)     { 'Help' }
    let(:page_title)  { 'Help' }

    it_should_behave_like "all morning pages"
  end

  describe "About page" do

  	before { visit about_path }
    let(:heading)    { 'About' }
    let(:page_title) { 'About' }

    it_should_behave_like "all morning pages"
  end

  describe "Contact page" do

  	before { visit contact_path }
    let(:heading)     { 'Contact' }
    let(:page_title)  { 'Contact' }

    it_should_behave_like "all morning pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    expect(page).to have_title('Morning Pages')
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "morning pages"
    expect(page).to have_title('Morning Pages')
  end
end
