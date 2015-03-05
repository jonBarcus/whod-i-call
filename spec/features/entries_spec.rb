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
    within("body") do
      fill_in 'Contact name', :with => 'Tester Testee'
      fill_in 'Organization name', :with => 'Test Inc.'
      fill_in 'Notes', :with => 'Wooo Capybara!'
      select('Google Hangout', :from => 'entry_communication_type_id')
    end
    click_button('Create Entry')
    expect(page).to have_content 'New Entry'
    click_link('View Entries')
    expect(page).to have_content 'Tester Testee'

  end

end
