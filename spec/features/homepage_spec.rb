require 'spec_helper'


describe "the sign-in process", :type => feature do
  before :each do
    User.create(:email => 'test@test.com', :password => 'testtest')
  end

  it "signs me in" do
    visit '/session/new'
    within("body") do
      fill_in 'email', :with => 'test@test.com'
      fill_in 'password', :with => 'testtest'
    end
    click_button('Login')
    expect(page).to have_content 'New Entry'
  end

end

describe "the log-out process", :type => feature do
  before :each do
    User.create(:email => 'test@test.com', :password => 'testtest')
  end

  it "logs me out" do
    visit '/session/new'
    within("body") do
      fill_in 'email', :with => 'test@test.com'
      fill_in 'password', :with => 'testtest'
    end
    click_button('Login')
    click_link('Log Out')
    expect(page).to have_content 'Sign In'
  end


end
