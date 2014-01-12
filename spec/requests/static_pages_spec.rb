require 'spec_helper'

describe "StaticPages" do

	let(:base_title) {"RoR Tutorial"}
  
  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the base title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "RoR Tutorial")
    end

    it "should not have a custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '|Home')    	
    end
  end

  describe "Help Page" do
    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Page'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end
    it "should have the title 'Help'" do
    	visit '/static_pages/about'
    	page.should have_selector("title", :text => "#{base_title} | About")
    end
   end

   describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the title 'Contact'" do
    	visit '/static_pages/contact'
    	page.should have_selector("title", :text => "#{base_title} | Contact")
    end
   end
   
end
