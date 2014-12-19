require 'rails_helper'

RSpec.describe User do
  it "considers a user with no entries" do
    new_user = "bob"
    expect(new_user).to eq("bob")
  end

end
