require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text=> 'Sample App')
    end
    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text=> 'RoR Tutorial | Home')
    end
  end

  describe "Help Page" do
    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text=> 'Help')
    end
    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	page.should have_selector('title', :text=> 'RoR Tutorial | Help')
    end
  end

  describe "About Page" do
    it "should have the content 'About Page'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text=> 'About')
    end
    it "should have the title 'Help'" do
    	visit '/static_pages/about'
    	page.should have_selector("title", :text => 'RoR Tutorial | About')
    end
   end
   
end
