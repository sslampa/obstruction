require 'rspec'
require_relative 'user'

describe 'User' do

  it "Can get the user-input" do
    new_user = User.new
    expect(new_user.get_input).to be == "T"
  end
end
