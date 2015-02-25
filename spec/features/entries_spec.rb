describe "Entry creation process", :type => feature do
  before :each do
    User.create(:email => 'test@test.com', :password => 'testtest')
    visit '/session/new'
    within("body") do
      fill_in 'email', :with => 'test@test.com'
      fill_in 'password', :with => 'testtest'
    end
    click_button('Login')
    expect(page).to have_content 'New Entry'
  end

  it "creates an entry" do
    click_link('New Entry')
    expect(page).to have_content 'Create a New Entry'
  end

end
