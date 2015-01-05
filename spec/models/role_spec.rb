require 'rails_helper'

RSpec.describe Role, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"


  before(:each) do
    @user = FactoryGirl.create(:user)
  end

  it "should not approve incorrect roles" do
    @user.add_role :moderator
    # @user.has_role?(:admin).should be_false
    expect(@user.has_role?(:admin)).to be_falsey
  end

  it "should approve correct roles" do
    @user.add_role :moderator
    # @user.has_role?(:moderator).should be_true
      expect(@user.has_role?(:moderator)).to be_truthy
  end

end
