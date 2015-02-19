describe "Entry creation process", :type => feature do
  # before :each do
  #   User.create(:email => 'test@test.com', :password => 'testtest')
  # end

  # it "signs me in" do
  #   visit '/session/new'
  #   within("body") do
  #     fill_in 'email', :with => 'test@test.com'
  #     fill_in 'password', :with => 'testtest'
  #   end
  #   click_button('Login')
  #   expect(page).to have_content 'New Entry'
  # end

  it "creates an entry" do
    visit '/entires/new'
    within("body") do

    end
  end

end
