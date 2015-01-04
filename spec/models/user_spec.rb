require 'rails_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  before(:each) do
  	@attr = {
  		# :name => "Example User",
  		:email => "user@example.com",
  		:password => "changeme",
  		:password_confirmation => "changeme"
  	}
  end

  it "should create a new instance given a valid attribute" do
  	User.create!(@attr)
  end

  it "should require an email address" do
  	no_email_user = User.new(@attr.merge(:email => ""))
  	# no_email_user.should_not be_valid
  	expect(no_email_user).to_not be_valid
  end

  it "should accept valid email addresses" do
  	addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
  	addresses.each do |address|
  		valid_email_user = User.new(@attr.merge(:email => address))
  		# valid_email_user.should be_valid
  		expect(valid_email_user).to be_valid
  	end
  end

  it "should reject invalid email addresses" do
  	addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
  	addresses.each do |address|
  		invalid_email_user = User.new(@attr.merge(:email => address))
  		# invalid_email_user.should_not be_valid
  		expect(invalid_email_user).to_not be_valid
  	end
  end

  it "should reject duplicate email addresses" do
  	User.create!(@attr)
  	user_with_duplicate_email = User.new(@attr)
  	# user_with_duplicate_email.should_not be_valid
  	expect(user_with_duplicate_email).to_not be_valid
  end

  it "should reject email addresses identical up to case" do
  	upcased_email = @attr[:email].upcase
  	User.create!(@attr.merge(:email => upcased_email))
  	user_with_duplicate_email = User.new(@attr)
  	# user_with_duplicate_email.should_not be_valid
  	expect(user_with_duplicate_email).to_not be_valid
  end

  describe "passwords" do
  	before(:each) do
  		@user = User.new(@attr)
  	end

  	it "should have a password attribute" do
  		# @user.should respond_to(:password)
  		expect(@user).to respond_to(:password) 
  	end

  	it "should have a password confirmation attribute" do
  		# @user.should respond_to(:password_confirmation)
  		expect(@user).to respond_to(:password_confirmation)
  	end

  end

  describe "password validations" do
  	it "should require a password" do
  		expect(User.new(@attr.merge(:password => "", :password_confirmation => ""))).to_not be_valid
  		# should_not be_valid

  	end

  	it "should require a matching password confirmation" do
  		expect(User.new(@attr.merge(:password_confirmation => "invalid"))).to_not be_valid
  		# should_not be_valid
  	end

  	it "should reject short passwords" do
  		short = "a" * 5
  		hash = @attr.merge(:password => short, :password_confirmation => short)
  		# User.new(hash).should_not be_valid
  		expect(User.new(hash)).to_not be_valid
  	end
  end

  describe "password encryption" do
  	before(:each) do
  		@user = User.create!(@attr)
  	end

  	it "should have an encrypted password attribute" do
  		# @user.should respond_to(:encrypted_password)
  		expect(@user).to respond_to(:encrypted_password)
  	end
  	it "should set the encrypted password attribute" do
  		# @user.encrypted_password.should_not be_blank
  		expect(@user.encrypted_password).to_not be_blank
  	end

  end


end
