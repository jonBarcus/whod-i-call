require 'spec_helper'


describe "the sign-in process", :type => feature do
  before :each do
    User.create(:email => 'test@test.com', :password => 'test')
  end

  it "signs me in" do
    visit '/session/new'
    within("body") do
      fill_in 'email', :with => 'test@test.com'
      fill_in 'password', :with => 'test'
    end
    click_button('Login')
  end


end
