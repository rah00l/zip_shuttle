require 'rails_helper'

RSpec.describe Location, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # it "has a valid factory" do
  #   expect(build(:location)).to be_valid
  # end


  #  it "is valid with a description, image and associated board" do
  #   expect(build(:pin)).to be_valid
  # end

  # it "is uploaded at specified location" do
  #   board = create(:board)
  #   pin = create(:pin, member_id: board.member.id, board_id: board.id)
  #   expect(pin.image.path).to eq "#{Rails.root}/public/uploads/pins/images/#{pin.id}/original/#{pin.image_file_name}"
  # end

  # it "is invalid without a description" do
  #   expect(build(:pin, description: nil)).to have(1).errors_on(:description)
  # end

  # it "is invalid without an image" do
  #   expect(build(:pin, image: nil)).to have(1).errors_on(:image)
  # end

  # it "is invalid without an associated board" do
  #   expect(build(:pin, board_id: nil)).to have(1).errors_on(:board_id)
  # end


  # it "is invalid without a name" do
  #   expect(build(:location, name: nil)).to_not be_valid
  #   # expect(build(:route, name: nil)).to eq(1).errors_on(:name)
  # end

end